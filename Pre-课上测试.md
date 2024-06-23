# Pre

## 1.课上总结

每次考试前看课上说明，**交一定数量的题目就能过（不一定是全部）**。

### 1.1.Verilog

#### 1.1.1.位的拆分

使用位选择符`[x:y]`而不是位运算  

#### 1.1.2.易错

* if**()**
* 变量名！~~把输出名result写成output，导致了奇怪的语法错误，debug了好一会儿~~

### 1.2.Logism

#### 1.2.1.状态机

state_module和output_module分开

![Pre-Logism-FSM](D:\BUAA\STAR\CO_LAB\img\Pre-Logism-FSM.jpg)

寄存器右端是Q~prev~，左端是Q。

#### 1.2.2.易错

* circuit appearance注重模点的相对位置和绝对位置。拖不动就多拖几次。
* 与门输入端口个数和设定个数严格匹配，设定为偶数时中间无端口！连接电路的时候一定要**检查端口是否连接上**。
