# Math

## 位运算

### 求余

设X对Y求余，Y = 2^N^, 余数 = X & (2^N^ -1)  或余数 = X & (~Y).

### 1的个数

* 纯位运算

```c
int bitCounter(int n){
    int count = 0;
    while(n){
        n &= (n - 1);
        count++;
    }
    return count; 
}
```

* [popcount]([popcount 算法分析 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/341488123))

* 硬件：位选择符（Verilog），位相加（Bit Adder）