# P2-MIPS汇编语言

## 1.宏定义

### 1.1.`.macro`

宏分为两种，不带参数的宏和带参数的宏。

* 不带参数的宏

  ```assembly
  .macro 宏名
  #代码段
  .end_macro
  ```

  

* 带参数的宏

  ```assembly
  .macro 宏名(%参数名1, %参数名2, ..., %参数名n)
  #代码段
  .end_macro
  ```

  * format：代码段中，有用到形参的时候都要加上%。
  * attention：应避免macro内部不可见的**修改其他寄存器**的情况

### 1.2.`.eqv`

* format

  ```assembly
  .eqv EQV_NAME string
  ```
  
* usage

  ```assembly
  .data
  .eqv constant 10
  .text
      la $a0, constant #$a0存的值就是10
  ```
  
  
  
* function

  定义一些常量
  
## 2.常量

### 2.1.`.eqv`

使用宏定义`.eqv`，具体格式、用法和作用见1.2

### 2.2.`.word`

* format

  ```assembly
  labelName: .word 有符号（十进制数或0x前导的十六进制数）
  ```

  输出：均为十进制

* usage

  ```assembly
  .data
      size: .word 12
  .text
      lw $a0, size #$a0存的值就是12
  ```

### 2.3.寄存器

将常量直接保存在寄存器中。但会浪费寄存器资源，以及容易bug。

## 3.课下

### 3.1.矩阵乘法

#### 计算地址

```assembly
.macro calc_addr(%dst, %row, %column, %colSize)
    #%dst: offset
    #%colSize: size of columns
    multu %row, %colSize
    mflo %dst
    addu %dst, %dst, %column
    sll %dst, %dst, 2
.end_macro
```

#### 乘法关键

$C[i,j] = \sum_{k = 1}^{n-1}{A[i,k]*B[k,j]}$

#### 卡点

* 循环结束条件。`bne` or `beq`想清楚再写
* sw。`sw 值, 基地址(offset)`

### 3.2.哈密顿回路

> 迷宫矩阵，值只有0和1. 给定起点终点，只能走上下左右且值为1的位置，用深度搜索的方式计算通路数目。

#### 关键-C代码

* 卡点：**起点**应设为1. 同时**走过的路**应设为1，递归返回时清零

* 巧思：矩阵行列数均为小于等于7的正整数。那么map设置为9*9的矩阵，初始化为全1矩阵。避免了复杂的边缘情景。

```c
#include <stdio.h>
int n, m, x1, y1, x2, y2, count = 0;
int map[9][9];

void dfs(int x, int y){
    if(x == x2 && y == y2){
        count++;
        return;
    }
    
    if(map[x-1][y] == 0){
        map[x-1][y] = 1;
        dfs(x-1,y);
        map[x-1][y] = 0;
    }
    if(map[x+1][y] == 0){
        map[x+1][y] = 1;
        dfs(x+1,y);
        map[x+1][y] = 0；
    }
    if(map[x][y-1] == 0){
        map[x][y-1] = 1;
        dfs(x,y-1);
        map[x][y-1] = 0;
    }
    if(map[x][y+1] == 0){
        map[x][y+1] = 1;
        dfs(x, y+1);
        map[x][y+1] = 0;
    }
    
    return;
}
int main(){
    scanf("%d %d",&n, &m);
    for(int i = 0; i < 9; i++){
        for(int j = 0; j < 9;j++){
            map[i][j] = 1;
        }
    }
    for(int i = 1; i <= n; i++){
        for(int j = 1; j <= m; j++){
            scanf("%d",map[i][j]);
        }
    }
  
    scanf("%d %d %d %d",&x1, &y1, &x2, &y2);
    map[x1][y1] = 1;
    dfs(x1, y1);
    printf("%d",count);
    return 0;
}
```

#### 翻译

##### 子过程调用

###### 维护参数

我的做法：使用栈。

* 压栈：✅在调用递归函数之前，将当前参数压栈。再改变参数。❌函数开头压栈->后果：return前取得的参数还是当前深度的。
* 弹栈：如果函数必定经过子过程调用，return前；如果函数有可能不经过子过程调用，则应该**在父过程调用指令之后**。综上所述，貌似在父过程调用指令之后弹栈是万金油选项。
* 特别地，**将压栈和弹栈写成宏**，方便使用。

==🧙‍♀️待施工————学习别人的做法==

###### 维护`$ra`

我的做法：使用栈指针`$sp`

* 压栈：递归函数的开头

  ```assembly
  dfs:
      addi $sp, $sp, -4
      sw $ra, 0($sp)
  ```

  

* 弹栈：return前

  ```assembly
  lw $ra, 0 ($sp)
  addi $sp, $sp, 4
  ```

  

##### 报错

* `can not directly write on text segment!` 
  * 可能成因：某被我开辟出的空间发生了越界~~（本题中是我忘记将走过的路标记，从而导致死循环，存参数的栈爆了）~~

### 3.3.阶乘

> - 计算并输出n的阶乘，输出字符串长度小于等于1000
> - 步数限制为200,000

#### 3.3.1.竖式

* AC版本

  ```c
  #include <stdio.h>
  int res[1000];
  int size = 0;
  int main(){
      int n;
      scanf("%d",&n);
      
      for(int i = 2; i <= n;i++){
          int carry = 0;
          for(int j = 0; j <= size; j++){
              int temp = res[j] * i + carry; 
              res[j] = temp % 10;
              carry = temp / 10;
              if(j == size && carry > 0){
                  size++;
              }
          }
      }
      
      for(int i = size; i >= 0; i--){
          printf("%d",res[i]);
      }
      return 0;
  }
  ```

  ==int temp = res[j] * i + carry==尤其重要......`res[j]`直接自等会影响`carry`的计算，对`carry`亦然。

* TLE版本

  ```c
  void factorial()
  ```

  **成因：过度封装**。将双层循环里的j循环封装调用，会tle一个点。

  所以，**最好不要子过程调用，能不就不**。评测机的衡量标准是指令条数不超过20万条。进行子过程调用时，跳转、保护寄存器等等都会增大开销。

  

#### 3.3.2.优化-进阶竖式

> 初级版是将结果的每一位封装个位数做乘法。但是我们可以做更高位数的乘法。
>
> 在res的每一位里封装大数，实现效率的大幅度提升。

* 卡点：如何用模运算保留n位数？

  n_bit = large_number % ==10^N^== -> ==10^N^ =100...000(N 0s in total)==

* 重点：

  除却最高位直接输出，其他位应该**保留前导0**
  
#### 3.3.3.高精度乘法

##### 3.3.3.1.高精×低精

* C代码

  ```c
  #include <stdio.h>
  int res[1000];int a[1000];
  //a：高精； b:低精
  int main(){
  	int t = 0, flag = 0, b;
  	char c;
  	while(scanf("%c",&c)!=EOF){
  		if(c == ' '){
  			flag = 1;
  			break;
  		}
  		if(!flag){
  			a[t] = c - '0';
  			t++;
  		}
  	}
  	scanf("%d",&b);
  	t--;
  	for(int i = 0; i <= t; i++){
  		res[t-i] = a[i];
  	}
  	
  	int carry = 0;
  	for(int j = 0; j <= t; j++){
  		int temp = res[j] * b + carry;
  		res[j] = temp % 10;
  		carry = temp / 10;
  		if(j == t && carry > 0){
  			t++;
  		}
  	}
  	
  	for(int i = t; i >= 0; i--){
  		printf("%d",res[i]);
  	}
  	return 0;
  }
  ```

##### 3.3.3.2.双高精

* C代码

  ```c
  #include <stdio.h>
  #define N 1000
  int res[N][N];
  int tempa[N], tempb[N];
  int a[N], b[N];
  
  int main(){
  	char str[2000];
  	fgets(str, 2000, stdin);//读入"a b"。对应syscall8
  	int flag = 0, asize = 0, bsize = 0;
  	for(int i = 0; str[i] != '\0'; i++){
  		if(str[i] == ' '){
  			flag = 1;
  			continue;
  		}else if(str[i] > '9' || str[i] < '0'){
  			break;
  		}
  		if(!flag){
  			tempa[asize] = str[i] - '0';
  			asize++;
  		}else{
  			tempb[bsize] = str[i] - '0';
  			bsize++;
  		}	
  	}
  	asize--; bsize--;
  	
  	for(int i = asize; i >= 0; i--){
  		a[i] = tempa[asize - i];//翻转
  	}
  	for(int i = bsize; i >= 0; i--){
  		b[i] = tempb[bsize - i];//翻转
  	}
  	
  	int colSize = asize;
  	for(int i = 0; i <= bsize; i++){
  		int size = asize;
  		int carry = 0;
  		for(int j = i; j <= size + i; j++){
  			int temp = a[j - i] * b[i] + carry;
  			res[i][j] = temp % 10;
  			carry = temp / 10;
  			if(j == size + i && carry > 0){
  				size++;
  			}
  		}
  		if(colSize < size + i) colSize = size + i;
  	}
  	
  	int carry = 0;
  	for(int i = 1; i <= bsize; i++){
  		for(int j = 0; j <= colSize; j++){
  			int temp = res[0][j] + res[i][j] + carry;
  			res[0][j] = temp % 10;
  			carry = temp / 10;
  		}
  	}
  	
  	for(int i = colSize; i >= 0; i--){
  		printf("%d",res[0][i]);
  	}
  	return 0;
  }
  ```

  

### 3.4.全排列

* C代码

  ```c
  #include <stdio.h>
  #define N 100
  int n;
  int array[N], symbol[N];
  
  void full(int index){
      if(index >= n){
          for(int i = 0; i < n; i++){
              printf("%d ",array[i]);
          }
          printf("\n");
          return ;
      }
      
      for(int i = 0; i < n; i++){
          if(symbol[i] == 0){
              array[index] = i + 1;
              symbol[i] = 1;
              full(index+1);
              symbol[i] = 0;
          }
      }
  }
  
  int main(){
      scanf("%d", &n);
      full(0);
      return 0;
  }
  ```

  

### 3.5.汉诺塔

> 经典递归。递归函数的核心在于抽象出一轮的行为规律。

#### 3.5.1.普版

* C代码

  ```c
  void hanoi(int n, char a, char b, char c){
      if(n == 1){
          move(a, c);
      }else{
          hanoi(n-1, a, c, b);
          move(a, c);
          hanoi(n-1, b, a, c);
      }
  }
  int main(){
      int n;
      scanf("%d", &n);
      hanoi(n, a, b, c);
      return 0;
  }
  ```
  


#### 3.5.2.单步

> A只能到B；B可以到A或C；而C只能到B。
>
> 故只需特判B。

##### 3.5.2.1.C代码

```c
void hanoi(int n, char a, char b, char c){
    if(n == 1){
        if(b == 'B'){
            move(a, b);
            move(b, c);
        }else{
            move(a, c);
        }
    }else{
        if(b == 'B'){
            hanoi(n-1, a, c, b);
            hanoi(n-1, b, a, c);
            move(a, b);
            hanoi(n-1, c, a, b);
            hanoi(n-1, b, c, a);
            move(b, c);
            hanoi(n-1, a, c, b);
            hanoi(n-1, b, a, c);
        }else{
            hanoi(n-1, a, c, b);
            move(a, c);
            hanoi(n-1, b, a, c);
        }
    }
}
```



##### 3.5.2.2.MIPS翻译

###### 3.5.2.2.1.遇到的问题

* `invalid program counter value`

  一般与`jal`与`jr $ra`有关。`$ra`的值为空，并没有如预期地返回。

  > `$sp`是向下延伸的，这与stack space相反。所以务必注意**方向**：
  >
  > * 压栈：`addi $sp, $sp, -4`
  > * 出栈：`addi $sp, $sp, 4`

* `fetch address not aligned on word boundary`

  本题中，我首次尝试load内存中连续存储的字符。

  所以此处将正式讨论`lw`，`lh`，`lb`指令以及`.asciiz`/`.ascii`伪指令的工作。

  * `.asciiz`/`.ascii`

    * 区别：`.asciiz`会在字符串后自加一个`\0`；而`.ascii`只申请字符串所需的空间
    * 空间：以字节为单位申请单位。每个字符占1个字节。假设有一个由$n$个字符组成的字符串，那么`.asciiz`申请$n+1$个字节，而`.ascii`申请$n$个字节。正因它以字节为单位申请空间，所以申请到的空间**不能保证字对齐**。
    * **注意**：最好将其放在伪指令的末尾；留神与其搭配的load指令选择。

  * `lw`, `lh`, `lb`

    * 工作机制：取出指定长度的数据，放在指定寄存器的最低位。

    * 应用举例

      ```assembly
      .data
          labelA: .asciiz "A"
          labelB: .asciiz "B"    
      ```

      现在我要分别取出`"A"`和`"B"`放在`$t1`和`$t2`寄存器中。

      根据对`.asciiz`的分析，它以字节为单位申请空间，且多申请了一个字节用来存放`\0`。所以内存中，`labelA`占2个字节，紧接着`labelB`占2个字节。

      显然地址没有字对齐，故lw不能使用，否则将会报错如题：`fetch address not aligned on word boundary`

      若使用`lb`，则取出`"A"`和`"B"`; 若使用lh，则取出`"A\0"`和`"B\0"`。

      所以如果只是想实现目的（要分别取出`"A"`和`"B"`放在`$t1`和`$t2`寄存器中）的话，将代码写成这样或许是最佳的方式：

      ```assembly
      .data
          labelA: .ascii "A"
          labelB: .ascii "B"
      .text
          lb $t1, labelA
          lb $t2, labelB
      ```

###### 3.5.2.2.2.代码

```assembly
.data
    stack: .word 0 : 1024
    A: .ascii "A"
    B: .ascii "B"
    C: .ascii "C"
    tran: .asciiz "->"
    enter: .asciiz "\n"

.macro mov(%x, %y)
    move $a0, %x
    li $v0, 11
    syscall
    la $a0, tran
    li $v0, 4
    syscall
    move $a0, %y
    li $v0, 11
    syscall
    la $a0, enter
    li $v0, 4
    syscall
.end_macro

.macro push
    addi $s0, $s0, 4
    sw $a1, 0($s0)
    addi $s0, $s0, 4
    sw $t6, 0($s0)
    addi $s0, $s0, 4
    sw $t7, 0($s0)
    addi $s0, $s0, 4
    sw $t8, 0($s0)
.end_macro

.macro pop
    lw $t8, 0($s0)
    addi $s0, $s0, -4
    lw $t7, 0($s0)
    addi $s0, $s0, -4
    lw $t6, 0($s0)
    addi $s0, $s0, -4
    lw $a1, 0($s0)
    addi $s0, $s0, -4
.end_macro

.macro done
    li $v0, 10
    syscall
.end_macro

.text
    li $v0, 5
    syscall
    move $a1, $v0
    lb $t6, A
    la $t0, B
    lb $t7, 0($t0)
    la $t0, C
    lb $t8, 0($t0)
    li $s0, 0 #stack space
    jal hanoi
    nop
    done

hanoi:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    la $t0, B
    lh $t1, 0($t0)
    if:
        bne $a1, 1, else
        nop
        if_b_1:
            bne $t7, $t1, if_b_1_else
            nop
            mov($t6, $t7)
            mov($t7, $t8)
            j end
            nop
        if_b_1_else:
            mov($t6, $t8)
            j end
            nop
    else:
        if_b_2:
            bne $t7, $t1, if_b_2_else
            nop
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            #mov
            mov($t6, $t7)
            #hanoi(n-1, c,a,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t2, $t8 
            move $t6, $t2
            move $t7, $t0
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,c,a);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t2, $t8 
            move $t6, $t1
            move $t7, $t2
            move $t8, $t0
            jal hanoi
            nop
            pop
            #mov
            mov($t7, $t8)
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8 
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            j end
            nop
        if_b_2_else:
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #mov
            mov($t6, $t8)
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            j end
            nop
    end:    
    #return:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra 
    
    done 
```

### 3.6.素数判断

* C代码

  ```c
  int isPrime(int n){
      if(n <= 1) 
          return 0;
      if(n == 2 || n == 3) 
          return 1;
      if(n % 6 != 1 && n % 6 != 5) 
          return 0;
      for(int i = 5; i * i <= n; i += 6){
          if(n % i == 0 || n % (i + 2) == 0)
              return 0;
      }
      return 1;
  }
  ```

  

### 3.7.约瑟夫环

> N个人围成一圈，第一个人从1开始报数，报M的将被杀掉，下一个人接着从1开始报。如此反复，最后剩下一个。

#### 3.7.1.胜利者编号递推公式

$f(N,M) = (f(N-1,M)+M)\%N$

$f(N,M)$表示本轮有N个人，第M个人将但还没被杀死，此时胜利者的编号（下标从0开始）。同时$f(1,M) = 0$

#### 3.7.2.出局序列-递归法

* C代码

  ```c
  int ysfdg(int N, int M, int i){
       if(i == 1){
           return (M - 1 + N) % N;
       }else{
           return (ysfdg(N-1,M,i-1) + M) % N;
       }
  }
  int main(){
      int N, M;
      scanf("%d %d", &N, &M);
      for(int i = 1; i <= N; i++){
          printf("%d", ysfdg(N, M, i));
      }
  }
  ```

  * 定义

    $ysfdg(N, M, i)$：初始$N$个人围成环，报数$M$的人出圈，第i轮出圈的人的编号。

  * 递推关系

    $ysfdg(N, M, i)$ 由 $ysfdg(N-1, M, i-1)$ 映射而来。因为当有$N$人时，每出圈一个人，都要将这个环重新编号为一个$N-1$围成的环。将新生成的编号映射回初始编号，需要一个递归的过程。

### 3.8.矩阵快速幂

* 快速幂

  ```c
  void qpow(int n){
      while(n){
          if(n & 1) ans *= base;
          base *= base;
          n >>= 1;
      }
  }
  ```

  

* 利用快速幂优化斐波那契

  $$\begin{bmatrix}{f_{1}}&{f_{2}}\\\end{bmatrix}{\begin{bmatrix}{0}&{1}\\{1}&{1}\\\end{bmatrix}}^{n-2} = \begin{bmatrix}{f_{n-1}}&{f_{n}}\\\end{bmatrix}$$

### 3.9.快排

* C代码

  ```c
  void quickSort(int *a, int low, int high){
      int i = low;
      int j = high;
      int key = a[i];//基准值
      
      while(i < j){
          while(i < j && a[j] >= key){
              j--;
          }
          a[i] = a[j];
          while(i < j && a[i] <= key){
              i++;
          }
          a[j] = a[i];
      }
      
      //跳出循环，将基准值放回a[i]
      a[i] = key;
      //对基准值左边的所有数据，再次进行快排
      if(i - 1 > low){
          quickSort(a, low, i-1);
      }
      //对基准值右边的所有数据，再次进行快排
      if(i + 1 < high){
          quickSort(a, i+1, high);
      }
  }
  ```
  
  

## 总结

### 伪指令

#### `.macro`

* 写法

  * 有参数

    ```assembly
    .macro 宏名(%parameter1, %parameter2, ..., %parametern)
        #代码段
    .end_macro
    ```

    

  * 无参数

    ```assembly
    .macro 宏名
        #代码段
    .end_macro
    ```

    

* 特别注意

  * 注意保护寄存器。避免被修改。

#### `.eqv`

* 写法

  ```assembly
  .eqv 宏名 数值
  
  .text
      la $a0, 宏名 #$a0存的就是数值
  ```

  

#### `.space`

* 写法

  ```assembly
  .data
      labelName: .space N
  ```

  

* 特别注意：以字节为单位申请空间。即申请N个字节大小的空间。

#### `.word`

* 写法

  * 存储一个整型常量

    ```assembly
    .data
        size: .word 12
    .text 
        lw $a0, size
    ```

    

  * 申请N个字大小的空间

    ```assembly
    .data
        array1: .word 0 : 1000
        array2: .word 0 : 200
    ```

    

* 特别注意：以字为单位申请空间

#### `.asciiz/.ascii`

参见3.5.2汉诺塔中转版-MIPS翻译-遇到的问题。

### Syscall

* `li $v0, 8 -> syscall`

  等同于`fgets`，可以读入带空白字符的字符串，遇换行结束。