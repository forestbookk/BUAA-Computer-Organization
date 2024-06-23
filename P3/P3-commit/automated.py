import difflib
import os
import re
import sys
from filediff.diff import file_diff_compare
# 0.自动化生成数据
print("生成指令中"+'\n')
command = "python D:\BUAA\practice\logism\cpu_test\generator.py"
os.system(command)

# 1.先运行Mars生成机器码
print("生成机器码中"+'\n')
os.system("java -jar D:\BUAA\software\Mars\Mars4_5.jar D:\BUAA\practice\logism\cpu_test\\test.asm nc mc CompactTextAtZero a dump .text HexText command.txt")

# 2.运行写好的circ文件将里面的ROM值更改为上述输出的机器码
print("adding command to my cpu"+'\n')
content = open("command.txt").read()
mymem = open("myCpu.circ", encoding="utf-8").read()
mymem = re.sub(r'addr/data: 12 32([\s\S]*?)</a>', "addr/data: 12 32\n" + content + "</a>", mymem)
with open("myCpu_m.circ", "w", encoding="utf-8") as file:
    file.write(mymem)
print("adding command to another cpu"+'\n')
myfriendmem = open("friendCpu.circ", encoding="utf-8").read()
myfriendmem = re.sub(r'addr/data: 12 32([\s\S]*?)</a>', "addr/data: 12 32\n" + content + "</a>", myfriendmem)
with open("friendCpu_m.circ", "w", encoding="utf-8") as file:
    file.write(myfriendmem)

# 3.运行logisim输出结果
print("running my cpu"+'\n')
command = "java -jar D:\BUAA\software\Logisim\logisim-generic-2.7.1.jar D:\BUAA\practice\logism\cpu_test\\myCpu_m.circ -tty table > 单周期cpu结果.txt"
os.system(command)
print("running another cpu"+'\n')
command = "java -jar D:\BUAA\software\Logisim\logisim-generic-2.7.1.jar D:\BUAA\practice\logism\cpu_test\\friendCpu_m.circ -tty table > 另一个单周期cpu结果.txt"
os.system(command)


# 4.找人对拍
print("正在比较结果，时间可能较长，请耐心等待"+'\n')
def read_file(filename):
    try:
        with open(filename, 'r') as f:
            return f.readlines()
    except IOError:
        print("ERROR: 没有找到文件:%s或读取文件失败！" % filename)
        sys.exit(1)


def compare_file(file1, file2, out_file):
    file1_content = read_file(file1)
    file2_content = read_file(file2)
    d = difflib.HtmlDiff()
    result = d.make_file(file1_content, file2_content)
    with open(out_file, 'w') as f:
        f.writelines(result)


compare_file(r'单周期cpu结果.txt', r'另一个单周期cpu结果.txt', r'result.html')
file_diff_compare("单周期cpu结果.txt","另一个单周期cpu结果.txt")
print("比较结束，测试完毕，请查看结果"+'\n')
#5.到文件中查看结果