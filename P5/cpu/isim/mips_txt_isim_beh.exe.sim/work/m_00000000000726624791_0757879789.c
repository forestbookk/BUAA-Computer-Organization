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
static const char *ng0 = "C:/Users/shael/CO/P5/cpu/NPC.v";
static int ng1[] = {15, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {2, 0};
static unsigned int ng5[] = {65535U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {1U, 0U};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {3U, 0U};



static void Cont_34_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t11[8];
    char t38[8];
    char t42[8];
    char t47[8];
    char t51[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
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
    char *t39;
    char *t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    t2 = (t0 + 1648U);
    t7 = (t2 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB7;

LAB4:    if (t23 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t11) = 1;

LAB7:    memset(t4, 0, 8);
    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t27) != 0)
        goto LAB10;

LAB11:    t34 = (t4 + 4);
    t35 = *((unsigned int *)t4);
    t36 = *((unsigned int *)t34);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB12;

LAB13:    t43 = *((unsigned int *)t4);
    t44 = (~(t43));
    t45 = *((unsigned int *)t34);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t34) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t51, 8);

LAB20:    t52 = (t0 + 4152);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t3, 8);
    xsi_driver_vfirst_trans(t52, 0, 31);
    t57 = (t0 + 4056);
    *((int *)t57) = 1;

LAB1:    return;
LAB6:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t33 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB11;

LAB12:    t39 = (t0 + 1688U);
    t40 = *((char **)t39);
    t39 = ((char*)((ng3)));
    xsi_vlogtype_concat(t38, 32, 32, 2U, t39, 16, t40, 16);
    t41 = ((char*)((ng4)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_lshift(t42, 32, t38, 32, t41, 32);
    goto LAB13;

LAB14:    t48 = (t0 + 1688U);
    t49 = *((char **)t48);
    t48 = ((char*)((ng5)));
    xsi_vlogtype_concat(t47, 32, 32, 2U, t48, 16, t49, 16);
    t50 = ((char*)((ng4)));
    memset(t51, 0, 8);
    xsi_vlog_unsigned_lshift(t51, 32, t47, 32, t50, 32);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t42, 32, t51, 32);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

}

static void Always_36_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t32[8];
    char t33[8];
    char t59[8];
    char t62[8];
    char t68[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t69;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB42;

LAB39:    if (t18 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t6) = 1;

LAB42:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB50;

LAB47:    if (t18 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t6) = 1;

LAB50:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(55, ng0);

LAB55:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t3, 32, t2, 32);
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);

LAB53:
LAB45:
LAB20:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng6)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t29, 32, t28, 32);
    t31 = (t0 + 2568);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 32);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(43, ng0);

LAB21:    xsi_set_current_line(44, ng0);
    t21 = (t0 + 2008U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng8)));
    memset(t33, 0, 8);
    t28 = (t22 + 4);
    t29 = (t21 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t21);
    t36 = (t34 ^ t35);
    t37 = *((unsigned int *)t28);
    t38 = *((unsigned int *)t29);
    t39 = (t37 ^ t38);
    t40 = (t36 | t39);
    t41 = *((unsigned int *)t28);
    t42 = *((unsigned int *)t29);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB25;

LAB22:    if (t43 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t33) = 1;

LAB25:    memset(t32, 0, 8);
    t46 = (t33 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t33);
    t50 = (t49 & t48);
    t51 = (t50 & 1U);
    if (t51 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t46) != 0)
        goto LAB28;

LAB29:    t53 = (t32 + 4);
    t54 = *((unsigned int *)t32);
    t55 = *((unsigned int *)t53);
    t56 = (t54 || t55);
    if (t56 > 0)
        goto LAB30;

LAB31:    t63 = *((unsigned int *)t32);
    t64 = (~(t63));
    t65 = *((unsigned int *)t53);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t53) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t32) > 0)
        goto LAB36;

LAB37:    memcpy(t30, t68, 8);

LAB38:    t69 = (t0 + 2568);
    xsi_vlogvar_assign_value(t69, t30, 0, 0, 32);
    goto LAB20;

LAB24:    t31 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t32) = 1;
    goto LAB29;

LAB28:    t52 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB29;

LAB30:    t57 = (t0 + 1208U);
    t58 = *((char **)t57);
    t57 = ((char*)((ng6)));
    memset(t59, 0, 8);
    xsi_vlog_unsigned_add(t59, 32, t58, 32, t57, 32);
    t60 = (t0 + 2168U);
    t61 = *((char **)t60);
    memset(t62, 0, 8);
    xsi_vlog_unsigned_add(t62, 32, t59, 32, t61, 32);
    goto LAB31;

LAB32:    t60 = (t0 + 1048U);
    t67 = *((char **)t60);
    t60 = ((char*)((ng6)));
    memset(t68, 0, 8);
    xsi_vlog_unsigned_add(t68, 32, t67, 32, t60, 32);
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t30, 32, t62, 32, t68, 32);
    goto LAB38;

LAB36:    memcpy(t30, t62, 8);
    goto LAB38;

LAB41:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(47, ng0);

LAB46:    xsi_set_current_line(48, ng0);
    t21 = ((char*)((ng3)));
    t22 = (t0 + 1528U);
    t28 = *((char **)t22);
    t22 = (t0 + 1208U);
    t29 = *((char **)t22);
    memset(t32, 0, 8);
    t22 = (t32 + 4);
    t31 = (t29 + 4);
    t34 = *((unsigned int *)t29);
    t35 = (t34 >> 28);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t31);
    t37 = (t36 >> 28);
    *((unsigned int *)t22) = t37;
    t38 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t38 & 15U);
    t39 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t39 & 15U);
    xsi_vlogtype_concat(t30, 32, 32, 3U, t32, 4, t28, 26, t21, 2);
    t46 = (t0 + 2568);
    xsi_vlogvar_assign_value(t46, t30, 0, 0, 32);
    goto LAB45;

LAB49:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(51, ng0);

LAB54:    xsi_set_current_line(52, ng0);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    t21 = (t0 + 2568);
    xsi_vlogvar_assign_value(t21, t22, 0, 0, 32);
    goto LAB53;

}


extern void work_m_00000000000726624791_0757879789_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Always_36_1};
	xsi_register_didat("work_m_00000000000726624791_0757879789", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000726624791_0757879789.didat");
	xsi_register_executes(pe);
}
