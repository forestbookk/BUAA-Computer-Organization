import random
import sys
calc_r_size = 5
calc_i_size = 2
md_size = 3
mft_size = 3
calc_r = ["add","sub","and","or","slt","sltu"]
calc_i = ["addi","andi","ori"]
md = ["mult","multu","div","divu"]
mft = ["mfhi","mflo","mthi","mtlo"]

# 0.open test.asm
record_path = "C:\\Users\\shael\\CO\\P6\\test\\res\\record"
sys.stdout = open(record_path+"\\test.asm", "w")

# 1.instruction declare
def inst_calc_r(rd,rs,rt):
    print(calc_r[random.randint(0,calc_r_size)]+" $"+str(rd)+",$"+str(rs)+",$"+str(rt))
    return
def inst_calc_i(rt,rs,imm):
    print(calc_i[random.randint(0,calc_i_size)]+" $"+str(rt)+",$"+str(rs)+","+str(imm))
    return
def lui(rt,imm):
    print("lui $"+str(rt)+" "+str(imm))
def inst_md(rs,rt):
    mdop = random.randint(0,0)
    match mdop:
        case 0:
            print(md[random.randint(0,1)]+" $"+str(rs)+",$"+str(rt))
        case 1:
            print(md[random.randint(2,3)]+" $"+str(rs)+",$"+str(rt))
    return
def inst_mft(rs):
    print(mft[random.randint(0,mft_size)]+" $"+str(rs))
    return
def lb(rt,offset,base):
    print("lb $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return
def lh(rt,offset,base):
    print("lh $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return
def lw(rt,offset,base):
    print("lw $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return
def sb(rt,offset,base):
    print("sb $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return
def sh(rt,offset,base):
    print("sb $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return
def sw(rt,offset,base):
    print("sb $"+str(rt)+", "+str(offset)+"($"+str(base)+")")     
    return

def random_match(r1,r2,r3):
    imm = random.randint(10,99)
    match random.randint(0,7):
        case 0:
            inst_calc_r(r1,r2,r3)
        case 1:
            inst_calc_i(r1,r2,imm)
        case 2:
            inst_md(r1,r2)
        case 3:
            inst_mft(r1)
        case 4:
            if(random.randint(0,1)):
                lw(r1,0,0)
            else:
                sw(r1,0,0)    
        case 5:
            match random.randint(0,2):
                case 0:
                    lw(r1,0,0)
                case 1:
                    lh(r1,random.randint(0,1)*2,0)
                case 2:
                    lb(r1,random.randint(0,3),0)          
        case 6:
            match random.randint(0,2):
                case 0:
                    sw(r1,0,0)
                case 1:
                    sh(r1,random.randint(0,1)*2,0)
                case 2:
                    sb(r1,random.randint(0,3),0)  
        case 7:
            lui(r1,imm)          
    return                                                   
# 2.continuous instructions
def generate():
    a = random.randint(0,31)
    b = random.randint(0,31)
    c = random.randint(0,31)

    random_match(a,b,c)
    match(random.randint(0,3)):
        case 0: random_match(b,a,c)
        case 1: random_match(b,c,a)
        case 2: random_match(c,a,b)
        case 3: random_match(c,b,a)
    match(random.randint(0,5)):
        case 0: random_match(b,a,c)
        case 1: random_match(b,c,a)
        case 2: random_match(c,a,b)
        case 3: random_match(c,b,a)
        case 4: random_match(a,b,c)
        case 5: random_match(a,c,b)
    match(random.randint(0,5)):
        case 0: random_match(b,a,c)
        case 1: random_match(b,c,a)
        case 2: random_match(c,a,b)
        case 3: random_match(c,b,a)
        case 4: random_match(a,b,c)
        case 5: random_match(a,c,b)  

# 3.main logic
for i in range(0,31):
    print("ori $"+str(i)+",$0,",random.randint(10,99))
for i in range(0,100):
    generate()          

