#  P1-Verilog

## 1.for高级用法

==//待施工==

## 2.课下

### 2.1.细碎的点

* 某些按逻辑缕不出来的错误：**位宽设错了**

* 观察题目条件，仔细核对

* 三段式：**某状态有循环条件次数要求**。

  ```verilog
  int i; //循环变量
  ```

  * 计数器用`int`型。

  * 次态描述逻辑：`i`只放在条件。

  * 状态转移逻辑：`i`值修改。

  * 多用三目运算符简化代码

* 常数未指明位数时，默认32位

  ```verilog
  //imm为16位立即数
  assign res = {imm, {16{1'b0}}}; //Success!  res = imm << 16
  assign res = {imm, {16{0}}};    //Incorrect res = 0 (RHS位数=16+16*32，截取低32位，结果为0)
  ```

  

### 2.2.Binary-Gray Conversion

#### 2.2.1.Reflect and Prefix 

> 1. Genarate code for n=1:0 and 1 code
> 2. Take previous code in sequence: 0 and 1
> 3. Add reversed code in the follwing list
> 4. Add prefix 0 for orginal code and add prefix 1 for new generated code
> 5. repeat step 3 and step4 

| n = 1 | REVERT | n = 2 | REVERT | n = 3 |
| :---: | :----: | :---: | :----: | :---: |
|   0   |   0    |  00   |   00   |  000  |
|   1   |   1    |  01   |   01   |  001  |
|       |   1    |  11   |   11   |  011  |
|       |   0    |  10   |   10   |  010  |
|       |        |       |   10   |  110  |
|       |        |       |   11   |  111  |
|       |        |       |   01   |  101  |
|       |        |       |   00   |  100  |


#### 2.2.2.XOR operation

We have Binary Number[n:0], and Gray Number[n:0]

> g~n~ = b~n~
>
> g~n-1~ = b~n-1~ ⊕ b~n~
>
> g~n-2~ = b~n-2~ ⊕ b~n-1~
>
> ......
>
> g~1~ = b~1~ ⊕ b~2~
gray = binary ⊕ (binary >> 1)

In contrast

> b~n~ = g~n~
>
> b~n-1~ = g~n-1~  ⊕ g~n~
>
> b~n-2~ = g~n-2~  ⊕ g~n-1~ ⊕ g~n~ 
>
> ......
>
> b~1~ = g~1~ ⊕ g~2~ ⊕ ... ⊕ g~n~  


* 电路

  ![gray_crucuit](D:\BUAA\STAR\CO_LAB\img\gray_crucuit.bmp)

### 2.3.Verilog写法

#### 2.3.1.always组合逻辑中不能有任何存储功能

HDLBits的Lemming4中在组合逻辑中使用了计数器，生成了当时没想到的锁存器，出现了race。导致Incorrect。

总结：存储全放在时序逻辑中写。

#### 2.3.2.组合逻辑首选assign

尤其是状态机的输出逻辑块。——来自高小鹏老师的教诲

#### 2.3.3.状态机的输出逻辑

使用组合逻辑。用时序逻辑做对了是侥幸。

#### 2.3.4.多个时序逻辑块

假设有两个always时序逻辑块，某个信号只在一个的LHS，在另一个的RHS。那么在第一个时钟沿该信号被块1赋值，在第二个时钟沿该信号的新值被块2读取。

## 3.课上

AK了。一小时半。

* 第一题是32位点乘，先与得到中间变量，再Bit Add得到结果。一次AC。

* 第二题是涂色游戏。逻辑比较清晰。卡点：（1）条件和状态没匹配上；（2）题目说的“若检测到非法序列则擦除最近一次输入”，那么次态应该是现态，而不是前态。WA3次后AC。

* 第三题是嵌套序列匹配。状态图画好之后，敲出来花了点时间。一次AC。

* **总结**
  * **状态转移图**一定要审慎地画好，再开始敲代码。
  * 善用parameter和`define**命名常量**。

* 问答环节：助教问了同步复位和异步复位，看了一二两题的代码。问怎么调出波形图。最后问了个**怎么查看中间变量**，之前我都是在改到输出端口短暂地查看了一下，助教说回去再看看.......但是还是过了，助教大人善良。