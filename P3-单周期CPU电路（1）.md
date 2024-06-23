# tP3-单周期CPU

## 1.设计综述

### 1.1.CPU顶层架构

#### 1.1.1.指令

add、sub、ori、lw、sw、beq、lui、nop

#### 1.1.2.整体设计

![cpu_ini_design](D:\BUAA\STAR\CO_LAB\img\cpu_ini_design.jpg)

#### 1.1.3.架构参考

高小鹏老师的PPT：

![gxp_cpu_ppt](D:\BUAA\STAR\CO_LAB\img\gxp_cpu_ppt.jpg)

### 1.2.PC

#### 1.2.1.设计要求

* 起始位置：**0x3000_0000**

* **异步复位**至起始位置

* 范围：0x0000_3000 - 0x0000_6FFF

  > 如何实现？
  >
  > PC和IM的初始位置不同，后者初始为0，为了保证映射成功，故不改变PC的值，只在输出pc的值时加上`0x0000_3000`

### 1.3.NPC

#### 1.3.1.端口信号

|   端口名   | 方向 |            说明            |
| :--------: | :--: | :------------------------: |
|  PC[31:0]  |  I   |          当前地址          |
|    Zero    |  I   | [beq]if(rs==rt) 1; else 0; |
| NPCOp[2:0] |  I   |       地址变化的类型       |
| IMM[25:0]  |  I   |           立即数           |
|  RA[31:0]  |  I   |          $ra的值           |
| NPC[31:0]  |  O   |         下一条地址         |
| PC4[31:0]  |  O   |         当前地址+4         |

#### 1.3.2.NPCOp控制信号

| 控制信号值 |    说明     |
| :--------: | :---------: |
|   3'b000   |    PC+4     |
|   3'b001   |     beq     |
|   3'b010   | jal(未实现) |
|   3'b011   | jr(未实现)  |



### 1.4.IM

* 将ROM中储存的指令取出。
* ROM规格：4096 * 32 bits

### 1.5.RF

#### 1.5.1.端口信号

|  端口名   | 方向 |     说明      |
| :-------: | :--: | :-----------: |
|    rst    |  I   |   异步复位    |
|   RFWr    |  I   |    写使能     |
|  A1[4:0]  |  I   | rs寄存器编号  |
|  A2[4:0]  |  I   | rt寄存器编号  |
|  A3[4:0]  |  I   | 写-寄存器编号 |
| WD[31:0]  |  I   |    写-数据    |
| RD1[31:0] |  O   | rs寄存器的值  |
| RD2[31:0] |  O   | rt寄存器的值  |

#### 1.5.2.WRSel控制信号

| 控制信号值 |     说明     |
| :--------: | :----------: |
|   2'b00    | rt寄存器编号 |
|   2'b01    | rd寄存器编号 |
|   2'b10    |     $31      |

#### 1.5.3.WDSel控制信号

| 控制信号值 |     说明      |
| :--------: | :-----------: |
|   2'b00    | 来自ALU的数据 |
|   2'b01    | 来自DM的数据  |
|   2'b10    |      PC4      |



### 1.6.EXT

#### 1.6.1.EXTOp控制信号

| 控制信号值 |    说明     |
| :--------: | :---------: |
|    1'b0    | zero_extend |
|    1'b1    | sign_extend |



### 1.7.CU

#### 1.7.1.端口信号

|   端口名    | 方向 |    说明     |
| :---------: | :--: | :---------: |
| opcode[5:0] |  I   |   opcode    |
| funct[5:0]  |  I   |    funct    |
| NPCOp[2:0]  |  O   |  NPC的控制  |
|    DMWr     |  O   | DM的写使能  |
| ALUOp[2:0]  |  O   |  ALU的控制  |
|    BSel     |  O   | ALUB的选择  |
|    EXTOp    |  O   |  EXT的控制  |
|    RFWr     |  O   | RF的写使能  |
|    WDSel    |  O   | RF-WD的选择 |
|    WRSel    |  O   | RF-A3的选择 |

#### 1.7.2.译码

* 和逻辑->指令种类
* 或逻辑->输出控制信号

### 1.8.ALU

#### 1.8.1.端口信号

|   端口名   | 方向 |         说明          |
| :--------: | :--: | :-------------------: |
|  A[31:0]   |  I   |     rs寄存器的值      |
|  B[31:0]   |  I   | rt寄存器的值或立即数  |
| ALUOp[2:0] |  I   |       控制信号        |
|    Zero    |  O   | if(rs==rt) 1; else 0; |
|   ALURes   |  O   |       计算结果        |

#### 1.8.2.ALUOp控制信号

| 控制信号值 | 说明 |
| :--------: | :--: |
|   3'b000   | ADD  |
|   3'b001   | SUB  |
|   3'b010   |  OR  |
|   3'b011   | LUI  |

#### 1.8.3.ALUBSel控制信号

| 控制信号值 |     说明      |
| :--------: | :-----------: |
|    1'b0    | rt寄存器的值  |
|    1'b1    | 立即数_extend |



### 1.9.DM

#### 1.9.1.端口信号

|   端口名   | 方向 |   说明   |
| :--------: | :--: | :------: |
| Addr[31:0] |  I   |   地址   |
|  WD[31:0]  |  I   |  写数据  |
|    DMWr    |  I   |  写使能  |
|    rst     |  I   | 异步复位 |
|     RD     |  O   |  读数据  |

#### 1.9.2.访问

* 读：`Wr = 0`时读。视为组合逻辑
* 写：`posedge clk && Wr = 1`时写。`clk`只在写时有作用。



## 2.测试方案

> 主要进行CPU之间的对拍。在有限的时间内，暂时先做到这^^

### 2.1.Logisim自动化测试

#### 2.1.1.命令行

```
java -jar 地址\logisim-generic-2.7.1.jar 地址\myCpu_m.circ -tty table > 地址\cpuRes.txt
```

* 路径：

  * 命令行：若输出文件没有写明路径，会存在命令行开头的地址中。
  * 程序：若输出文件没有写明路径，会存在程序所在文件夹中。

* 如果将command写进python或Cpp文件，目标文件前面应有**双**反斜杠

  ```python
  command = "java -jar D:\BUAA\software\Logisim\logisim-generic-2.7.1.jar D:\BUAA\practice\logism\cpu_test\\myCpu_m.circ -tty table > cpuRes.txt"
  ```

  ```c++
  sys.stdout = open("D:\BUAA\practice\logism\cpu_test\\test.asm", "w")
  ```

* 关于命令行

  > `d:`：进入D盘
  >
  > `cd 文件夹名`：进入本盘的文件夹

#### 2.2.2.CPU测试设置

设置halt，使程序自动停止。

* 官方文档：
  ![Logisim_halt](D:\BUAA\STAR\CO_LAB\Logisim_halt.jpg)

* 实现：第一计数器的值是灵活可变的。两个计数器都应设置为**Stay At Value**

  ![halt_setting](D:\BUAA\STAR\CO_LAB\halt_setting.bmp)



### 2.2.Mars命令行导出机器码

```
java -jar D:\BUAA\software\Mars\Mars4_5.jar D:\BUAA\practice\logism\cpu_test\test.asm nc mc CompactTextAtZero a dump .text HexText command.txt
```

* 同样地，若写入python或Cpp文件，目标文件前应有双反斜杠

  ```python
  os.system("java -jar D:\BUAA\software\Mars\Mars4_5.jar D:\BUAA\practice\logism\cpu_test\\test.asm nc mc CompactTextAtZero a dump .text HexText command.txt")
  ```

  

### 2.3.MIPS生成代码

**助教学长说，除了随机数测试外，应自己写一些边缘性数据进行测试。二者结合。**

* 语言：Python
* 思路：
  * 非零初始化31个寄存器
  * 随机生成指令
  * 对beq特殊处理
    * 随机放置跳转label
    * 标记数组->减小死循环的可能

* 代码如下：

  ```python
  import random
  import sys
  label = [0]*3200
  labelIndex = 0
  #0.open test.asm
  sys.stdout = open("D:\BUAA\practice\logism\cpu_test\\test.asm", "w")
  
  #1.instruction
  def add(rd, rs, rt):
      if rd == 0:
          return
      print("add $"+str(rd)+",$"+str(rs)+",$"+str(rt))
      return
  def sub(rd, rs, rt):
      if rd == 0: 
          return
      print("sub $"+str(rd)+",$"+str(rs)+",$"+str(rt))
      return
  def ori(rt, rs, imm):
      if rt == 0:
          return
      print("ori $"+str(rt)+",$"+str(rs)+","+str(imm))
      return
  def lw(rt, base):
      if rt == 0:
          return
      offset = random.randint(0,40) * 4
      print("lw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
      return
  def sw(base, rt):
      offset = random.randint(0,40) * 4
      print("sw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
      return
  def lui(rt):
      if rt == 0:
          return
      imm = random.randint(0,40) * 4
      print("lui $"+str(rt)+","+str(imm))
      return
  def beq(rs, rt):       
      jumpLabelIndex = random.randint(1, labelIndex)
      while(label[jumpLabelIndex]):
          jumpLabelIndex = random.randint(1, labelIndex) #防止跳进已经走过的地方形成循环
      print("beq $"+str(rt)+",$"+str(rs)+","+"Jump"+str(jumpLabelIndex))
      print("nop\n")
      return
  
  #2.generate instruction
  def generate(op, rs, rt, rd):
      match op:
          case 0:
              print("nop")    
          case 1:
              sub(rd, rs, rt)
          case 2:
              imm = random.randint(0, 456)
              ori(rt, rs, imm)
          case 3:
              lw(rt, rs)
          case 4:
              sw(rs, rt)        
          case 5:
              lui(rt)  
          case 6:
              add(rd, rs, rt)
          case 7:
              beq(rs, rt) 
          case _:
              return    
      return
  
  #3.main logic
  for index in range(0,31):
      imm = random.randint(3, 12)
      ori(index, 0, imm)
  
  for i in range(0, 512):
      op = random.randint(0,7)  
      if op <= 6:
          generate(op, random.randint(0,31), random.randint(0,31), random.randint(0,31))
      elif labelIndex > 0:
          isJump = 0
          for index in range(1,labelIndex):
              if label[index] == 0:
                  isJump = 1
          if isJump == 1:
              generate(op, random.randint(0,31), random.randint(0,31), random.randint(0,31))   
  
      isLabel = random.randint(0,1)
      if random.randint(18,35) % random.randint(7,11) == 0 and isLabel == 1:
          labelIndex = labelIndex + 1
          print("\nJump"+ str(labelIndex)+":")
  ```

  

### 2.4.对拍

同样使用python，集成上述步骤，实现一键自动对拍。

使用python提供的difflib库，还可以生成文本比较的html文件，简单直观。

**助教学长说linux的diff超快**



## 3.思考题

1. 上面我们介绍了通过 FSM 理解单周期 CPU 的基本方法。请大家指出单周期 CPU 所用到的模块中，哪些发挥状态存储功能，哪些发挥状态转移功能。

   状态存储功能：DM、GRF

   状态转移功能：IFU、EXT、CU、ALU

2. 现在我们的模块中 IM 使用 ROM， DM 使用 RAM， GRF 使用 Register，这种做法合理吗？ 请给出分析，若有改进意见也请一并给出。

   合理。

   ROM是随机存取存储器，所存数据事先写好，工作过程中只能读出，不能改变。这符合CPU读取指令的工作习惯；

   RAM是随机存储器，随时读写且速度很快，这符合CPU根据指令读取或存储数据的工作习惯；

   Register是寄存器。GRF使用了32个寄存器，32个寄存器独立读写，这也符合CPU寄存器堆的工作习惯。

3. 在上述提示的模块之外，你是否在实际实现时设计了其他的模块？如果是的话，请给出介绍和设计的思路。

   暂时没有设计其他的模块，为了维护CPU的整体架构，我将其他扩展的内容（比如控制信号的细化等）放进合适的上述模块。

4. 事实上，实现 `nop` 空指令，我们并不需要将它加入控制信号真值表，为什么？

   nop为空指令，不进行任何有效行为（修改寄存器等）。故无需考虑空指令。

5. 阅读 Pre 的 [“MIPS 指令集及汇编语言”](http://cscore.buaa.edu.cn/tutorial/mips/mips-6/mips6-1/) 一节中给出的测试样例，评价其强度（可从各个指令的覆盖情况，单一指令各种行为的覆盖情况等方面分析），并指出具体的不足之处。

   1.ori指令测试

   * 寄存器：测试了`$0`寄存器和普通寄存器，较为全面。

   * 立即数：只选取了正数进行测试。可以补充上立即数为0和0xFFFF的情况。
   
   2.lui指令测试
   
   * 寄存器：只选取了普通寄存器。可以补充上`$0`
   * 立即数：选取了符号位为0的普通数和符号位为1的极大数。可以补充上0，同时增加更多中间区间数的测试

   3.add指令测试
    * 符号：正负情况考虑全面，但可以补充0的情况
    * 寄存器值：可以考虑在寄存器中存极大值
   
   4.sw指令测试
     * offset：可以考虑添加负数的情况
   

   5.lw指令测试
     * offset：可以考虑添加负数的情况

   6.beq指令测试
     * 跳转方向：可以考虑添加向前跳转的情况

## 4.课上

> 惊心动魄......

### 第一题`qaq`：计算

RTL如下：

$temp1 = GPR[rs] \times GPR[rs]$

$temp2 = GPR[rt] \times GPR[rt]$

$GPR[rd]=temp1_{31..0} \ AND \ temp2_{31..0}$

### 第二题`booez`：跳转

* RTL如下：
  $temp1 = \sum_{i=0}^{15}GPR[rs]$

​       $temp2 = \sum_{i=16}^{31}GPR[rt]$

​       $if\quad temp1\; mod\;2=1 \ AND\ temp2\ mod\ 2 = 0$

​      $PC=PC+4+sign\_ext(offset||0^2) $

​      $else$

​      $PC = PC + 4$

* 问题：

  booez和beq**逻辑高度相似**。故实现RTL不是问题。

  然而，正因高度相似性，**booez和beq不能耦合判断**！

  > **反例：**
  >
  > 我在上机的时候将二者耦合，使用或门将两者的跳转条件扣在一起。
  >
  > 这意味着：假如当前指令为booez，它的跳转条件不符合但GPR[rs]=GPR[rt]时，仍然会进行不符合预期的跳转！
  >
  > 所以跳转飞了，全WA(˚ ˃̣̣̥᷄⌓˂̣̣̥᷅ )

### 第三题`cswc`：访存

和sw高度相似，多了一个条件判断WD

* BUG：注意题目的输出！

  | 信号名称 |        意义        |
  | :------: | :----------------: |
  | RegData  |  GRF32位写入数据   |
  | MemAddr  |   DM32位写入地址   |
  | MemData  | **DM32位写入数据** |

  这次的bug点在MemData。因为多了一个条件判断WD且我在DM中进行判断，所以MemData（写入数据）并不是电路外接的那个模点的值！
