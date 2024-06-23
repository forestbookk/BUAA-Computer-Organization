import random
import sys
grf = [0]*32
dm = [0]*3072
# 0.open test.asm
record_path = "C:\\Users\\shael\\CO\\P5\\test\\res\\record"
sys.stdout = open(record_path+"\\test.asm", "w")

# 1.instruction
def add(rd, rs, rt):
    if(rd):
        grf[rd] = grf[rs] + grf[rt]
    print("add $"+str(rd)+",$"+str(rs)+",$"+str(rt))
    return
def sub(rd, rs, rt):
    if(rd):
        grf[rd] = grf[rs] - grf[rt]
    print("sub $"+str(rd)+",$"+str(rs)+",$"+str(rt))
    return
def ori(rt, rs, imm):
    if(rt):
        grf[rt] = grf[rs] | imm
    print("ori $"+str(rt)+",$"+str(rs)+","+str(imm))
    return
def lui(rt, imm):
    if(rt):
        grf[rt] = imm << 16
    print("lui $"+str(rt)+","+str(imm))
    return
def lw(rt, base):
    if(grf[base]<-65534 or grf[base] > 65535):
        ori(base, 0, random.randint(0,300))
    offset = random.randint(-1*grf[base], 65535)   
    addr = offset + grf[base]     
    while((addr) % 4 != 0 or (addr) < 0):
        offset += 1
        addr += 1
    while((addr) % 4 != 0 or (addr) > 3071*4):
        offset -= 1
        addr -= 1
    if(rt):
        grf[rt] = dm[int((grf[base]+offset)/4)];    
    print("lw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
    return
def sw(base, rt):
    if(grf[base]<-65534 or grf[base] > 65535):
        ori(base, 0, random.randint(0,300))
    offset = random.randint(-1*grf[base], 65535)   
    addr = offset + grf[base]     
    while((addr) % 4 != 0 or (addr) < 0):
        offset += 1
        addr += 1
    while((addr) % 4 != 0 or (addr) > 3071*4):
        offset -= 1
        addr -= 1
    if(rt):
        dm[int((grf[base]+offset)/4)] = grf[rt];    
    print("sw $"+str(rt)+","+str(offset)+"($"+str(base)+")")
    return

def generate(op, rs, rt, rd):
    match op:
        case 0:
            add(rd, rs, rt)  
        case 1:
            sub(rd, rs, rt)
        case 2:
            imm = random.randint(0, 65535)
            ori(rt, rs, imm)
        case 3:
            imm = random.randint(0, 65535)
            lui(rt, imm) 
        case 4:
            sw(rs, rt)        
        case 5:
            lw(rt, rs)
        case 6:
            # cal_r <~~ cal / lui / load / sw
            generate(random.randint(0,1), random.randint(0,31), rt, rd)
            generate(random.randint(0,1), rs, rt, rd)
            generate(random.randint(0,3), rd, rs, rt)
            generate(random.randint(0,3), rs, rd, rt)    
        case 7:
            # cal_i / load <~~ cal / lui / load / sw
            type = random.randint(2,5)
            generate(type, random.randint(0,31), rt, rd)
            generate(type, rs, rt, rd)
            generate(random.randint(0,5), rd, rt, rs)
            generate(random.randint(0,5), rt, rs, rd) 
        case _:
            return    
    return
# 2.main logic
for index in range(0,31):
    imm = random.randint(0, 65535)
    ori(index, 0, imm)    
print("jal cal_r_test")
print("nop")
print("jal cal_i_test")
print("nop")
print("jal load_test:")
print("nop")
for index in range(0,200):
    #op = 5
    #op = random.randint(4,5)
    op = random.randint(0,7)
    generate(op,random.randint(0,31),random.randint(0,31),random.randint(0,31))

print("cal_r_test:")
generate(random.randint(0,1), 31, random.randint(0,31),random.randint(0,31))
generate(random.randint(2,3), 31, random.randint(0,31),random.randint(0,31))
ori(31, 0, 0x00003084)
print("jr $ra")   

print("call_i_test:")
generate(random.randint(2,3), 31, random.randint(0,31),random.randint(0,31))
generate(random.randint(0,1), 31, random.randint(0,31),random.randint(0,31))
ori(31, 0, 0x0000308c)
print("jr $ra")   

print("load_test:")
generate(5, 31, random.randint(0,31),random.randint(0,31))
generate(random.randint(0,1), 31, random.randint(0,31),random.randint(0,31))
ori(31, 0, 0x00003094)
print("jr $ra")  
