# P3-一键样例对拍

> 本文主要实现了样例自动生成的程序并整理了Python一键对拍的必要步骤。在样例自动生成方面，尽可能地扩大覆盖范围并消除死循环的风险。若有建议，请不吝赐教~~

## 1.样例

### 1.1.覆盖范围

#### 1.1.1.指令

* `add`,`sub`
  * 注意：按**无符号**加减法处理。因此若用样例跑MARS会出现`Arithmetic Overflow`的报错提示。
* `ori`, `lw`, `sw`,`lui`,`beq`
* `jal`

#### 1.1.2.取值

任一样例中出现边界值的概率接近百分百。

* 寄存器
  * 0附近
  * 32位数边界附近
  * 32位数范围内的随机数（为保证lw和sw过程时地址不超过ROM和RAM的范围，故设置得较小）
* 无符号16位立即数（`ori`,`lui`）
  * 0附近
  * 16位无符号数边界附近
  * 随机数

#### 1.1.3.跳转方向

* 向后跳

* 向前跳

  beq不参与其他指令的随机生成程序，自成一个模块，以特定的频率穿插在代码中。

  设置独立的跳转区，避免死循环。

  ![P3自动测试生成器-beq向前跳](D:\BUAA\STAR\CO_LAB\img\P3自动测试生成器-beq向前跳.jpg)

### 1.2.代码结构

0. 输出重定向
1. 指令函数
2. 随机指令匹配
3. 主逻辑
   * 极端值测试
   * 跳转测试

### 1.3.源代码

```python
import random
import sys
label = [0]*3200
labelIndex = 0
extremeReg = [-2, -1, 0, 1, 2, -2147483648, -2147483647, 2147483646, 2147483647]
sizeER = 8
extremeImmu16 = [0, 1, 2, 3, 65533, 65534, 65535]
sizeEIu16 = 6 

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
    ori(base, 0, random.randint(1,6) * 4)
    offset = random.randint(0,40) * 4
    print("lw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
    return
def sw(base, rt):
    ori(base, 0, random.randint(1,6) * 4)
    offset = random.randint(0,40) * 4
    print("sw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
    return
def lui(rt, imm):
    if rt == 0:
        return
    print("lui $"+str(rt)+","+str(imm))
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
            imm = random.randint(0, 456)
            lui(rt, imm)  
        case 6:
            add(rd, rs, rt)
        case _:
            return    
    return

#3.main logic
for index in range(0,31):
    imm = random.randint(3, 12)
    ori(index, 0, imm)

for i in range(0, 200):
    rs = random.randint(0,31)
    rt = random.randint(0,31)
    rd = random.randint(0,31)
    isExtreme = random.randint(0, 1)
    op = random.randint(0,6)  
    
    if op == 2:
        if isExtreme == 0:
            generate(op, rs, rt, rd)
        else:
            ori(rs, 0, extremeReg[i%9])
            ori(rt, 0, extremeReg[random.randint(0,sizeER)])
            ori(rt, rs, extremeImmu16[random.randint(0,sizeEIu16)])
            ori(rt, 0, random.randint(3, 12))
            ori(rs, 0, random.randint(3, 12))
    elif op == 1 or op == 6:
        if isExtreme == 0:
            generate(op, rs, rt, rd)
        else:
            ori(rs, 0, extremeReg[i%9])
            ori(rt, 0, extremeReg[random.randint(0,sizeER)])
            ori(rd, 0, extremeReg[random.randint(0,sizeER)])
            generate(op, rs, rt, rd)
            ori(rs, 0, random.randint(3, 12))
            ori(rt, 0, random.randint(3, 12))
            ori(rd, 0, random.randint(3, 12))
    elif op == 5:
        if isExtreme == 0:
            generate(op, rs, rt, rd)
        else:
            ori(rt, 0, extremeReg[random.randint(0,sizeER)])
            lui(rt, extremeImmu16[random.randint(0,sizeEIu16)])
            ori(rt, 0, random.randint(3, 12))
    else:
        generate(op, rs, rt, rd)   

    if i % 30 == 0:
        index = int(i / 30)
        if index < 3:
            if index != 0:
                jumpZoneIndex = int(index - 1)
                rt = random.randint(0,31)
                rs = random.randint(0,31)
                print("beq $"+str(rt)+",$"+str(rs)+","+"JumpZone"+str(jumpZoneIndex))
                print("nop")
                print("JumpOut"+str(jumpZoneIndex)+":")  
            print("jal Text"+str(index))
            print("nop")
            print("JumpZone"+str(index)+":")
            generate(op, rs, rt, rd)
            print("jal JumpOut"+str(index))
            print("nop")
            print("Text"+str(index)+":")
        else:
            if index == 3:
                jumpZoneIndex = int(index - 1)
                rt = random.randint(0,31)
                rs = random.randint(0,31)
                print("beq $"+str(rt)+",$"+str(rs)+","+"JumpZone"+str(jumpZoneIndex))
                print("nop")
                print("JumpOut"+str(jumpZoneIndex)+":")  
            
            randomJump = random.randint(index,index+1) if index < 6 else index
            rt = random.randint(0,31)
            rs = random.randint(0,31)
            print("beq $"+str(rt)+",$"+str(rs)+","+"JumpOut"+str(randomJump))   
            print("nop")
            print("JumpOut"+str(index)+":")  

```

## 2.对拍

> 参考了网上资料，整理而得

### 2.1.Python调用系统命令

* `os.system(cmd)`：将字符串转化成命令行在服务器上运行，仅在一个子终端运行系统命令，而不获取命令执行后的返回信息。
* `os.popen(cmd)`：不仅执行命令而且返回执行后的信息对象，通过管道文件将结果返回。可以使用read()操作看到执行的输出。

### 2.2.Logisim自动化测试

#### 2.2.1.命令行

```
java -jar logisim-generic-2.7.1.jar myCpu_m.circ -tty table > cpuRes.txt
```

* 路径：

  * 命令行：若输出文件没有写明路径，会存在命令行开头的地址中。
  * 程序：若输出文件没有写明路径，会存在程序所在文件夹中。

* 如果将command写进python文件，目标文件前面应有**双**反斜杠

  ```python
  command = "java -jar logisim-generic-2.7.1.jar myCpu.circ -tty table > cpuRes.txt"
  ```


#### 2.2.2.CPU测试设置

设置halt，使程序自动停止。

* 官方文档：
  ![](D:\BUAA\STAR\CO_LAB\img\Logisim_halt.jpg)

* 实现：第一计数器的值是灵活可变的。两个计数器都应设置为**Stay At Value**

  ![halt_setting](D:\BUAA\STAR\CO_LAB\img\halt_setting.jpg)



### 2.3.Mars命令行导出机器码

```
java -jar Mars4_5.jar test.asm nc mc CompactTextAtZero a dump .text HexText hexTextCode.txt
```

* 同样地，若写入python或Cpp文件，目标文件前应有双反斜杠

  ```python
  os.system("java -jar Mars4_5.jar test.asm nc mc CompactTextAtZero a dump .text HexText hexTextCode.txt")
  ```

### 2.4.正则表达式匹配

显而易见，ROM数据从`<a name="contents">addr/data: 12 32`开始，只需在此处将机器码导入即可。

![P3-自动化测试-正则](D:\BUAA\STAR\CO_LAB\img\P3-自动化测试-正则.jpg)

## 3.集成

利用Python的系统调用命令，实现一键样例对拍。

## 4.致谢

我的工作主要集中在样例生成部分，感谢助教马瑀阔学长的指点✧*｡ (ˊᗜˋ*) ✧*｡