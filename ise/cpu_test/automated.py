import difflib
import os
import re
import sys
from filediff.diff import file_diff_compare
# 0.自动化生成数据
print("生成指令中"+'\n')
command = "python D:\BUAA\practice\ise\cpu_test\\generator.py"
os.system(command)

# 1.先运行Mars生成机器码
print("生成机器码中"+'\n')
os.system("java -jar D:\BUAA\software\Mars\Mars4_5.jar D:\BUAA\practice\ise\cpu_test\\test.asm nc mc CompactDataAtZero a dump .text HexText D:\BUAA\practice\ise\P4-cpu\\code.txt")

# 2.运行ISE获得结果
os.system("D:\\BUAA\\software\\ISE\\Xilinx\\14.7\\ISE_DS\\ISE\\bin\\nt64\\fuse -nodebug -prj D:\BUAA\practice\ise\P4-cpu\mips.prj -o mips.exe mips_tb")
os.popen("D:\BUAA\practice\ise\P4-cpu\mips.exe -nolog -tclbatch mips.tcl")