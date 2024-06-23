import difflib
import os
import sys
from filediff.diff import file_diff_compare
from datetime import datetime, date
time = 1000
cpu_path = "C:\\Users\\shael\\CO\\P6\\cpu"
test_path = "C:\\Users\\shael\\CO\\P6\\test"
res_path = "C:\\Users\\shael\\CO\\P6\\test\\res"
record_path = "C:\\Users\\shael\\CO\\P6\\test\\res\\record"
log_path = "C:\\Users\\shael\\CO\\P6\\test\\res"
file_cpu = res_path + "\\myCpu.txt"
file_mars = res_path + "\\mars.txt"
addition_instr ="C:\\Users\\shael\\CO\\P6\\test\\bsoal.class"

# 0.自动化生成数据
def generate():
    print("自动生成指令中")
    os.system("python "+test_path+"\\lucidDream.py")
    return
def for_generate():
    print("自动生成指令中")
    os.system("foever_generator.exe")
    return
# 1.运行Mars生成机器码
def HexCode():
    print("自动生成机器码中")
    os.system("java -jar "+ test_path +"\\Mars_CO_v0.4.1.jar "+record_path+"\\test.asm nc mc CompactDataAtZero coL1 cl "+addition_instr+" ig a dump .text HexText "+cpu_path+"\\code.txt")
    return

# 2.运行Mars得到标答
def AC():
    print("Mars自动生成标答中")
    os.system("java -jar "+ test_path +"\\Mars_CO_v0.4.1.jar "+record_path+"\\test.asm db nc mc CompactLargeText coL1 cl "+addition_instr+" ig > " + res_path + "\\mars.txt")
    return

# 3.运行ISE获得结果
def cpu():
    print("cpu运行中")
    os.chdir(cpu_path)
    with open("mips.tcl","w",encoding="utf-8")as file:
        file.write("run "+str(time) + "us\nexit")
    os.system("D:\\BUAA\\software\\ISE\\Xilinx\\14.7\\ISE_DS\\ISE\\bin\\nt64\\fuse -nodebug -prj "+ cpu_path +"\\mips.prj -o mips.exe mips_txt > compile.txt")
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
        file.write('\n')  
    return         

# 4.读取文件
def read_file(filename):
    try:
        with open(filename, 'r') as f:
            return f.readlines()
    except IOError:
        print("ERROR: 没有找到文件:%s或读取文件失败！" % filename)
        sys.exit(1)

# 5. 具体比较
def compare_file(file1, file2, out_file):
    print("对拍中")
    file1_content = read_file(file1)
    file2_content = read_file(file2)
    d = difflib.HtmlDiff()
    result = d.make_file(file1_content, file2_content)
    with open(out_file, 'w') as f:
        f.writelines(result)

# 6.写日志
def logging(index):
    print("正在生成日志...")
    os.chdir(log_path)
    with open(file_cpu, "r") as out_1:
        out_std = out_1.readlines()
        out_std.remove('\n')
    with open(file_mars, "r+") as out_2:
        out_test = out_2.readlines()
        out_test.remove('\n')
    with open("log.txt".format(index), "a") as log:
        now_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        print(now_time + " 测试点 "+str(index)+" : ",file=log)
        flag = 0
        if len(out_std) > len(out_test):
            flag = 1
        else:
            for i in range(len(out_std)):
                if out_std[i] != out_test[i]:
                    flag = 1
        if flag:
            print("Wrong Answer!", file=log)
        else:
            print("Accepted!", file=log)
    log.close()        
    return

# 7.个性化测试    
test_time = 7
for i in range(1,test_time):
    print("-----------测试点 "+str(i)+" 进行中-----------")
    generate()
    # for_generate()
    HexCode()
    AC()
    cpu()
    os.chdir(res_path)
    compare_file(r'myCpu.txt', r'mars.txt', r'C:\\Users\\shael\\CO\\P6\\test\\res\\record\\detail_result_'+str(i)+'.html')
    os.chdir(record_path)
    file_diff_compare(file_cpu, file_mars, diff_out="C:\\Users\\shael\\CO\\P6\\test\\res\\record\\diff_result"+str(i)+".html")
    os.rename(record_path+"\\test.asm",record_path+"\\test"+str(i)+".asm")
    logging(i)
    print("-------------------------------------")
