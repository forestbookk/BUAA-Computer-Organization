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
static const char *ng0 = "D:/BUAA/practice/ise/P1_L0_gray/gray.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {7U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {4U, 0U};
static int ng10[] = {1, 0};



static void Always_37_0(char *t0)
{
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
    int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
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

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(69, ng0);

LAB40:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);

LAB14:    t12 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t12, 3);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB12;

LAB15:    xsi_set_current_line(43, ng0);

LAB32:    xsi_set_current_line(44, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 3, 0LL);
    goto LAB31;

LAB17:    xsi_set_current_line(46, ng0);

LAB33:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB19:    xsi_set_current_line(49, ng0);

LAB34:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB21:    xsi_set_current_line(52, ng0);

LAB35:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB23:    xsi_set_current_line(55, ng0);

LAB36:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB25:    xsi_set_current_line(58, ng0);

LAB37:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB27:    xsi_set_current_line(61, ng0);

LAB38:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB31;

LAB29:    xsi_set_current_line(64, ng0);

LAB39:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB31;

}


extern void work_m_00000000000851927074_0735672237_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000000851927074_0735672237", "isim/gray_tb_isim_beh.exe.sim/work/m_00000000000851927074_0735672237.didat");
	xsi_register_executes(pe);
}
