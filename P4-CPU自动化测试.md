# P4-CPU自动化测试

## 1.命令行学习

### 1.1.ISE

#### 环境变量配置

* Key: XILINX

* Value: ISE的安装路径，一般以`Xilinx\14.7\ISE_DS\ISE\`结尾。

  我的安装路径：`D:\BUAA\software\ISE\Xilinx\14.7\ISE_DS\ISE\`

* 关于环境变量

  环境变量通常以 key-value 对的形式出现。在环境变量的输入框中，前一输入框输入所需的环境变量 key，后一输入框输入所需的环境变量 value。 注意，key、value 的取值必须以字母起始，只能包含字母、数字及"_"，长度不小于 2 位且不大于 64 字节。

#### prj和tcl文件配置

##### prj文件

运行ISE工程时会自动生成。内容如下：

```
verilog work "file1.v"
verilog work "file2.v"
```

##### tcl文件

* 需要手动生成

* 功能：指定ISE仿真时间（单位自定义）

* 内容：

  ```
  run xxus
  exit
  ```

#### 命令行

* **编译**输出到compile.txt文件

  ```
  Xilinx\14.7\ISE_DS\ISE\bin\nt64\fuse -nodebug -prj mips.prj -o mips.exe mips_tb > compile.txt
  ```

* **仿真**输出

  ```
  mips.exe -nolog -tclbatch mips.tcl
  ```

* **过滤**仿真结果

  在仿真结果之前有许多冗余输出。考虑到有效行皆以@开头，进行如下过滤：

  ```python
  raw = os.popen("mips.exe -nolog -tclbatch mips.tcl", "r").read()
  j = 0
  while raw[j] != '@':
      j = j + 1
  deal = ''
  for i  in range(j, len(raw)):
      deal = deal + raw[i]
  os.chdir(res_path)
  with open("myCpu.txt","w",encoding="utf-8") as file:
      file.write(deal)  
  return         
  ```

  

### 1.2.Mars

> P4中我们可以借助Mars和CPU进行对拍。
>
> 命令行官方信息渠道有以下两种：
>
> * 命令行：java -jar Mars.jar h
> * 图形化界面：`F1` -> `Mars` -> `Command`

#### 1.2.1.正常版Mars

##### 常用命令

1. `java -jar mars.jar mc CompactDataAtZero a dump .text HexText hexcode.txt fibonacci.asm`

   编译asm文件但不运行，选取`.text`段生成`HexText`，即导出十六位机器码

2. `java -jar mars.jar db mc CompactDataAtZero nc fibonacci.asm`

   编译并运行，nc的目的是过滤输出。

##### 常用参数

|  Option  |                             描述                             |
| :------: | :----------------------------------------------------------: |
|    a     |                       仅编译，不运行。                       |
|    b     |                brief-不显示寄存器地址和内容。                |
|    db    |                         开启延迟槽。                         |
|   dump   | 导出内存信息，写入文件。e.g.`dump <segment><format><file>`，参数可选。segments包括`.text`和`.data`，format包括`Binary`, `HexText`, `AsciiText`。同时也支持地址范围的选取。 |
|    mc    | 设置内存配置。e.g.`mc <config>` 。config包括`Default`, `CompactDataAtZero`, `CompactTextAtZero`。 |
|    nc    |         版权声明将不显示。用于重定向或管道程序输出。         |
|    n     | 要模拟的执行步骤的最大整数计数。若0、负数或未定，则无最大值。 |
|   $reg   | reg是寄存器的编号或名称（如5、t3），其内容将在运行结束时显示。偶数编号的浮点寄存器同时显示浮点和双精度。**注意：可能需要转义**。 |
| reg_name | reg_name是寄存器的名称（如t3，f10），其内容将在运行结束时显示，偶数编号的浮点寄存器同时显示浮点和双精度。 |
|   m-n    | 内存地址方位从m到n，其内容将在运行结束时显示，m和n可以是十进制或十六进制（以0x开头），m<=n，两者都必须在字边界上。 |
|  ascii   |               以ascii格式显示内存和寄存器内容                |
|   dec    |                以dec格式显示内存和寄存器内容                 |
|   hex    |                以hex格式显示内存和寄存器内容                 |

#### 1.2.2.魔改版Mars

> [作者：学长Tobi Shi](https://github.com/Toby-Shi-cloud/Mars-with-BUAA-CO-extension)

##### 常用命令

1. `java -jar Mars_CO_v0.4.1.jar test.asm nc mc CompactLargeText coL1 cl addition_instr.class ig > mars.txt`

   加载自定义指令，将asm文件编译并纯净输出，输出至多可达4096行。

##### 常用参数

在正常版Mars的基础上，增加了如下参数：

|   Option   |                             描述                             |
| :--------: | :----------------------------------------------------------: |
|   coERR    | Output messages of CO extension in stderr (default at stdout). |
|    coL1    |           set display level at 1(print std answer)           |
|    coL2    |       set display level at 2(print std debug message)        |
| cl <class> |      load an additional instruction from a .class file       |
|     ig     |                  ignore arithmetic overflow                  |

##### 自定义指令

源码（`Mars-with-BUAA-CO-extension-main.zip`）下载后，在和`Mars.java`同级的目录中创建一个`.java`文件，文件名\类名为指令名称。

该指令类必须继承正确指令操作类型且接口`AdditionalInstrction`，必须重载以下五个方法：

* `simulate()`

  主要用于实现RTL语言描述。需要明确以下方法的使用

  * `statement.getOperands()`：获取操作数数组。数组下标从0到2，分别对应the **f**irst, **s**econd, **t**hird operator，操作数顺序按照指令顺序，例如`add $t0, $t1, $t2`，其中`$t0`即**f**，`$t1`即**s**，`$t2`即**t**。
  * `statement.getOperand(int:index)`：根据索引获得指定操作数。索引表参照上条。

* `getExample()`

  返回字符串。获得样例。e.g.`return "add $t0, $t1, $t2";`

* `getDescription()`

  返回字符串。为图形界面提供指令行为描述。

* `getInstructionFormat()`

  返回指令格式。格式如下：

  * `I_Format`
  * `I_Branch_Format`
  * `R_Format`
  * `J_Format`

* `getOperationMask()`

  返回字符串。用0,1,f,s,t构造机器码。

  举例如下：

  * `R_Format`：`add`: `000000 sssss ttttt fffff 00000 100000`
  * `I_Format`：`lw`: `100011 ttttt fffff ssssssssssssssss`
  * `I_Branch_Format`：`beq`: `000100 fffff sssss tttttttttttttttt`
  * `J_Format`：`jal`: `000011 ffffffffffffffffffffffffff`
