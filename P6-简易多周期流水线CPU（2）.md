# 简易多周期流水线CPU（2）

## 课下复习

### $signed()

```verilog
{temp_hi, temp_lo} <= {hi, lo} + $signed($signed(64'd0) + $signed(rs) * $signed(rt));
{temp_hi, temp_lo} <= {hi, lo} + $signed({{32{rs[31]}}, rs[31:0]} * $signed({{32{rt[31]}}, rt[31:0]})); // 手动进行符号位扩展
```

### for-break?

for_break的写法？Verilog没有break的写法

可以：

```verilog
integer i;
for(i=0;i<const_value;i++) 
    begin
        if(break_condition)
            begin
                const_value = const_value;
            end
        else 
            begin
                /**statement**/
            end
    end
```

### 等式运算符

#### `===`和`!==`

比较，包括x和z，结果只有0和1

#### `==`和`!=`

比较，不包括x和z。如果操作数中出现x态位或z态位，那么比较结果将为1位的x

## 设计要求

### 指令集

* add, sub, and, or, slt, sltu, lui
* addi, andi, ori
* lb, lh, lw, sb, sh, sw
* mult, multu, div, divu, mfhi, mflo, mthi, mtlo
* beq, bne, jal, jr

忽略溢出

### IO

* mips.v的output端口传出响应信号

* IM和DM外置

  将IFU拆分为PC和IM

  **IFU的写使能**：作用：Stall为1（阻塞）时，PC保持原值。转移给PC。

* **单独的乘除法模块**

  新增E级乘除法器，使用VerilogHDL的内置运算符

  行为模拟如下：

  * 延迟：执行乘法的时间为**5个周期**，执行除法的时间为**10个周期**（包含内部的**HI**和**LO**寄存器）。必须模拟这个延迟，即通过Busy输出标志来反映这个延迟。

  * 启动：**只能有效1个周期**的Start信号

  行为约定如下：

  * 自Start有效后的第一个clock上升沿开始，乘除法开始执行，Busy置1

  * 在运算结果保存到HI寄存器和LO寄存器后，Busy清0

  * 当Busy或Start为1，`mfhi`, `mflo`, `mthi`, `mtlo`读写HI/LO的信号均被阻塞在D流水级，而乘除法指令 `mult`, `multu`, `div`, `divu` 将取消先前的乘除法计算。

    ```verilog
    Stall_md = ((Start||Busy) && (D_Mf||D_Mt)) ? 1 : 0;
    ```
    
  * 数据写入HI寄存器或LO寄存器，均只需一个时钟周期
  
* 单独的数据扩展模块

  * 存储：字节使能
  * 访存：和DM的组合逻辑模块类似，将读出数据进行筛选和扩展

## 添加指令

### 数据通路

**CU控制信号真值表**-斟酌每个模块如何修改。

### 暂停

CU**分类指令**类型

列出**AT矩阵**

修改**Stall表达式**

### 转发

列出**转发矩阵**：[指令在哪一级恰好产生寄存器结果，寄存器结果的提供者]

修改**Forward表达式**

修改**转发数据表达式**

### 增加端口

内部

外部

