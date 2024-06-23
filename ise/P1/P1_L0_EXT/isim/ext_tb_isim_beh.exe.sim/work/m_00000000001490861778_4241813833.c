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
static const char *ng0 = "D:/BUAA/practice/ise/P1_L0_EXT/ext.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {4294967295U, 0U};
static int ng4[] = {16, 0};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {3U, 0U};
static int ng9[] = {2, 0};



static void Always_31_0(char *t0)
{
    char t7[8];
    char t18[8];
    char t42[8];
    char t45[8];
    char t73[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2984);
    *((int *)t2) = 1;
    t3 = (t0 + 2696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(53, ng0);

LAB58:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);

LAB18:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 1184U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 15);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 15);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 1U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 1U);
    t17 = ((char*)((ng2)));
    memset(t18, 0, 8);
    t19 = (t7 + 4);
    t20 = (t17 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t20);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t19);
    t29 = *((unsigned int *)t20);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB22;

LAB19:    if (t30 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t18) = 1;

LAB22:    t34 = (t18 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(36, ng0);

LAB30:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t4);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t3 = (t2 + 4);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t21 = *((unsigned int *)t9);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB31;

LAB32:
LAB33:    t19 = (t0 + 1744);
    xsi_vlogvar_assign_value(t19, t7, 0, 0, 32);

LAB25:    goto LAB17;

LAB9:    xsi_set_current_line(40, ng0);

LAB34:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1184U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t8);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t4 = (t3 + 4);
    t9 = (t8 + 4);
    t10 = (t7 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 | t15);
    *((unsigned int *)t10) = t16;
    t21 = *((unsigned int *)t10);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB35;

LAB36:
LAB37:    t20 = (t0 + 1744);
    xsi_vlogvar_assign_value(t20, t7, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(43, ng0);

LAB38:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1184U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t8);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t4 = (t3 + 4);
    t9 = (t8 + 4);
    t10 = (t7 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 | t15);
    *((unsigned int *)t10) = t16;
    t21 = *((unsigned int *)t10);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB39;

LAB40:
LAB41:    t20 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_lshift(t18, 32, t7, 32, t20, 32);
    t33 = (t0 + 1744);
    xsi_vlogvar_assign_value(t33, t18, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(46, ng0);

LAB42:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 15);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 15);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 1U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 1U);
    t9 = ((char*)((ng2)));
    memset(t18, 0, 8);
    t10 = (t7 + 4);
    t17 = (t9 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t9);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t10);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB46;

LAB43:    if (t30 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t18) = 1;

LAB46:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(49, ng0);

LAB54:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t4);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t3 = (t2 + 4);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t21 = *((unsigned int *)t9);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB55;

LAB56:
LAB57:    t19 = ((char*)((ng9)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_lshift(t18, 32, t7, 32, t19, 32);
    t20 = (t0 + 1744);
    xsi_vlogvar_assign_value(t20, t18, 0, 0, 32);

LAB49:    goto LAB17;

LAB21:    t33 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(34, ng0);

LAB26:    xsi_set_current_line(35, ng0);
    t40 = ((char*)((ng3)));
    t41 = ((char*)((ng4)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_lshift(t42, 32, t40, 32, t41, 32);
    t43 = (t0 + 1184U);
    t44 = *((char **)t43);
    t46 = *((unsigned int *)t42);
    t47 = *((unsigned int *)t44);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t43 = (t42 + 4);
    t49 = (t44 + 4);
    t50 = (t45 + 4);
    t51 = *((unsigned int *)t43);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB27;

LAB28:
LAB29:    t72 = (t0 + 1744);
    xsi_vlogvar_assign_value(t72, t45, 0, 0, 32);
    goto LAB25;

LAB27:    t56 = *((unsigned int *)t45);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t45) = (t56 | t57);
    t58 = (t42 + 4);
    t59 = (t44 + 4);
    t60 = *((unsigned int *)t58);
    t61 = (~(t60));
    t62 = *((unsigned int *)t42);
    t63 = (t62 & t61);
    t64 = *((unsigned int *)t59);
    t65 = (~(t64));
    t66 = *((unsigned int *)t44);
    t67 = (t66 & t65);
    t68 = (~(t63));
    t69 = (~(t67));
    t70 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t70 & t68);
    t71 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t71 & t69);
    goto LAB29;

LAB31:    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t9);
    *((unsigned int *)t7) = (t23 | t24);
    t10 = (t2 + 4);
    t17 = (t4 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t2);
    t6 = (t27 & t26);
    t28 = *((unsigned int *)t17);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t63 = (t30 & t29);
    t31 = (~(t6));
    t32 = (~(t63));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB33;

LAB35:    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t10);
    *((unsigned int *)t7) = (t23 | t24);
    t17 = (t3 + 4);
    t19 = (t8 + 4);
    t25 = *((unsigned int *)t17);
    t26 = (~(t25));
    t27 = *((unsigned int *)t3);
    t63 = (t27 & t26);
    t28 = *((unsigned int *)t19);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t67 = (t30 & t29);
    t31 = (~(t63));
    t32 = (~(t67));
    t35 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t35 & t31);
    t36 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t36 & t32);
    goto LAB37;

LAB39:    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t10);
    *((unsigned int *)t7) = (t23 | t24);
    t17 = (t3 + 4);
    t19 = (t8 + 4);
    t25 = *((unsigned int *)t17);
    t26 = (~(t25));
    t27 = *((unsigned int *)t3);
    t63 = (t27 & t26);
    t28 = *((unsigned int *)t19);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t67 = (t30 & t29);
    t31 = (~(t63));
    t32 = (~(t67));
    t35 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t35 & t31);
    t36 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t36 & t32);
    goto LAB41;

LAB45:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(47, ng0);

LAB50:    xsi_set_current_line(48, ng0);
    t33 = ((char*)((ng3)));
    t34 = ((char*)((ng4)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_lshift(t42, 32, t33, 32, t34, 32);
    t40 = (t0 + 1184U);
    t41 = *((char **)t40);
    t46 = *((unsigned int *)t42);
    t47 = *((unsigned int *)t41);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t40 = (t42 + 4);
    t43 = (t41 + 4);
    t44 = (t45 + 4);
    t51 = *((unsigned int *)t40);
    t52 = *((unsigned int *)t43);
    t53 = (t51 | t52);
    *((unsigned int *)t44) = t53;
    t54 = *((unsigned int *)t44);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB51;

LAB52:
LAB53:    t58 = ((char*)((ng9)));
    memset(t73, 0, 8);
    xsi_vlog_unsigned_lshift(t73, 32, t45, 32, t58, 32);
    t59 = (t0 + 1744);
    xsi_vlogvar_assign_value(t59, t73, 0, 0, 32);
    goto LAB49;

LAB51:    t56 = *((unsigned int *)t45);
    t57 = *((unsigned int *)t44);
    *((unsigned int *)t45) = (t56 | t57);
    t49 = (t42 + 4);
    t50 = (t41 + 4);
    t60 = *((unsigned int *)t49);
    t61 = (~(t60));
    t62 = *((unsigned int *)t42);
    t63 = (t62 & t61);
    t64 = *((unsigned int *)t50);
    t65 = (~(t64));
    t66 = *((unsigned int *)t41);
    t67 = (t66 & t65);
    t68 = (~(t63));
    t69 = (~(t67));
    t70 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t70 & t68);
    t71 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t71 & t69);
    goto LAB53;

LAB55:    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t9);
    *((unsigned int *)t7) = (t23 | t24);
    t10 = (t2 + 4);
    t17 = (t4 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t2);
    t6 = (t27 & t26);
    t28 = *((unsigned int *)t17);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t63 = (t30 & t29);
    t31 = (~(t6));
    t32 = (~(t63));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB57;

}


extern void work_m_00000000001490861778_4241813833_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000001490861778_4241813833", "isim/ext_tb_isim_beh.exe.sim/work/m_00000000001490861778_4241813833.didat");
	xsi_register_executes(pe);
}
