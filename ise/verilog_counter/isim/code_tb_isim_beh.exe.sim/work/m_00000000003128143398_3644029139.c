/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/BUAA/practice/ise/verilog_counter/counter.v";
static int ng1[] = {0, 0, 0, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {4, 0};
static int ng5[] = {1, 0, 0, 0};



static void Always_33_0(char *t0)
{
    char t20[8];
    char t22[16];
    char t23[8];
    char t39[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(38, ng0);

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(46, ng0);

LAB37:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 64, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(39, ng0);

LAB14:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(43, ng0);

LAB36:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t22, 64, t4, 64, t5, 32);
    t11 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t11, t22, 0, 0, 64, 0LL);

LAB17:    goto LAB13;

LAB15:    xsi_set_current_line(40, ng0);

LAB18:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 2248);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    t19 = ((char*)((ng3)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t18, 2, t19, 32);
    t21 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t21, t20, 0, 0, 2, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t23, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t13 = (t9 ^ t10);
    t14 = (t8 | t13);
    t15 = *((unsigned int *)t11);
    t16 = *((unsigned int *)t12);
    t17 = (t15 | t16);
    t24 = (~(t17));
    t25 = (t14 & t24);
    if (t25 != 0)
        goto LAB22;

LAB19:    if (t17 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t23) = 1;

LAB22:    memset(t20, 0, 8);
    t19 = (t23 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t28 = *((unsigned int *)t23);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t19) != 0)
        goto LAB25;

LAB26:    t31 = (t20 + 4);
    t32 = *((unsigned int *)t20);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB27;

LAB28:    t40 = *((unsigned int *)t20);
    t41 = (~(t40));
    t42 = *((unsigned int *)t31);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t31) > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t20) > 0)
        goto LAB33;

LAB34:    memcpy(t22, t46, 16);

LAB35:    t47 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t47, t22, 0, 0, 64, 0LL);
    goto LAB17;

LAB21:    t18 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB22;

LAB23:    *((unsigned int *)t20) = 1;
    goto LAB26;

LAB25:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB26;

LAB27:    t35 = (t0 + 2088);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t39, 64, t37, 64, t38, 32);
    goto LAB28;

LAB29:    t44 = (t0 + 2088);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    goto LAB30;

LAB31:    xsi_vlog_unsigned_bit_combine(t22, 64, t39, 64, t46, 64);
    goto LAB35;

LAB33:    memcpy(t22, t39, 16);
    goto LAB35;

}


extern void work_m_00000000003128143398_3644029139_init()
{
	static char *pe[] = {(void *)Always_33_0};
	xsi_register_didat("work_m_00000000003128143398_3644029139", "isim/code_tb_isim_beh.exe.sim/work/m_00000000003128143398_3644029139.didat");
	xsi_register_executes(pe);
}
