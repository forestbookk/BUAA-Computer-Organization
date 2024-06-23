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
static const char *ng0 = "D:/BUAA/practice/ise/test_sign/test_sign.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void NetDecl_26_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 33, t3, 32, t4, 32);
    t2 = (t0 + 3352);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t5, 0, 33);
    xsi_driver_vfirst_trans(t2, 0, 32U);
    t10 = (t0 + 3256);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_27_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t18[8];
    char t19[8];
    char *t1;
    char *t2;
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
    char *t17;
    char *t20;
    char *t21;
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
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = (t0 + 1048U);
    t7 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    *((unsigned int *)t6) = t10;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB4:    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 4294967295U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 4294967295U);
    t17 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 32, t6, 32, t17, 32);
    memset(t19, 0, 8);
    t20 = (t5 + 4);
    t21 = (t18 + 4);
    t22 = *((unsigned int *)t5);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB9;

LAB6:    if (t31 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t19) = 1;

LAB9:    memset(t4, 0, 8);
    t35 = (t19 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t19);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t35) != 0)
        goto LAB12;

LAB13:    t42 = (t4 + 4);
    t43 = *((unsigned int *)t4);
    t44 = *((unsigned int *)t42);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB14;

LAB15:    t47 = *((unsigned int *)t4);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t42) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t4) > 0)
        goto LAB20;

LAB21:    memcpy(t3, t51, 8);

LAB22:    t52 = (t0 + 3416);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memset(t56, 0, 8);
    t57 = 1U;
    t58 = t57;
    t59 = (t3 + 4);
    t60 = *((unsigned int *)t3);
    t57 = (t57 & t60);
    t61 = *((unsigned int *)t59);
    t58 = (t58 & t61);
    t62 = (t56 + 4);
    t63 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t63 | t57);
    t64 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t64 | t58);
    xsi_driver_vfirst_trans(t52, 0, 0);
    t65 = (t0 + 3272);
    *((int *)t65) = 1;

LAB1:    return;
LAB5:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t8);
    *((unsigned int *)t6) = (t11 | t12);
    t13 = *((unsigned int *)t2);
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t2) = (t13 | t14);
    goto LAB4;

LAB8:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t41 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB13;

LAB14:    t46 = ((char*)((ng1)));
    goto LAB15;

LAB16:    t51 = ((char*)((ng2)));
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t3, 32, t46, 32, t51, 32);
    goto LAB22;

LAB20:    memcpy(t3, t46, 8);
    goto LAB22;

}


extern void work_m_00000000001283084660_3501005252_init()
{
	static char *pe[] = {(void *)NetDecl_26_0,(void *)Cont_27_1};
	xsi_register_didat("work_m_00000000001283084660_3501005252", "isim/test_sign_tb_isim_beh.exe.sim/work/m_00000000001283084660_3501005252.didat");
	xsi_register_executes(pe);
}
