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
static const char *ng0 = "C:/Users/shael/CO/P6/cpu/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {6U, 0U};



static void Always_30_0(char *t0)
{
    char t6[8];
    char t31[8];
    char t61[8];
    char t62[16];
    char t63[16];
    char t64[8];
    char t65[8];
    char t66[16];
    char t67[16];
    char t68[8];
    char t72[8];
    char t74[16];
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
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t69;
    char *t70;
    char *t71;
    char *t73;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
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

LAB11:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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

LAB19:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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
        goto LAB25;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
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
        goto LAB36;

LAB33:    if (t18 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t6) = 1;

LAB36:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
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
        goto LAB47;

LAB44:    if (t18 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t6) = 1;

LAB47:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
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
        goto LAB68;

LAB65:    if (t18 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t6) = 1;

LAB68:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB69;

LAB70:    xsi_set_current_line(56, ng0);

LAB86:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB71:
LAB50:
LAB39:
LAB28:
LAB20:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(32, ng0);

LAB13:    xsi_set_current_line(33, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = (t0 + 1208U);
    t30 = *((char **)t28);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_add(t31, 32, t29, 32, t30, 32);
    t28 = (t0 + 1768);
    xsi_vlogvar_assign_value(t28, t31, 0, 0, 32);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(36, ng0);

LAB21:    xsi_set_current_line(37, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1208U);
    t28 = *((char **)t21);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_minus(t31, 32, t22, 32, t28, 32);
    t21 = (t0 + 1768);
    xsi_vlogvar_assign_value(t21, t31, 0, 0, 32);
    goto LAB20;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(40, ng0);

LAB29:    xsi_set_current_line(41, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1208U);
    t28 = *((char **)t21);
    t32 = *((unsigned int *)t22);
    t33 = *((unsigned int *)t28);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t21 = (t22 + 4);
    t29 = (t28 + 4);
    t30 = (t31 + 4);
    t35 = *((unsigned int *)t21);
    t36 = *((unsigned int *)t29);
    t37 = (t35 | t36);
    *((unsigned int *)t30) = t37;
    t38 = *((unsigned int *)t30);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB30;

LAB31:
LAB32:    t56 = (t0 + 1768);
    xsi_vlogvar_assign_value(t56, t31, 0, 0, 32);
    goto LAB28;

LAB30:    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t30);
    *((unsigned int *)t31) = (t40 | t41);
    t42 = (t22 + 4);
    t43 = (t28 + 4);
    t44 = *((unsigned int *)t42);
    t45 = (~(t44));
    t46 = *((unsigned int *)t22);
    t47 = (t46 & t45);
    t48 = *((unsigned int *)t43);
    t49 = (~(t48));
    t50 = *((unsigned int *)t28);
    t51 = (t50 & t49);
    t52 = (~(t47));
    t53 = (~(t51));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t52);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t53);
    goto LAB32;

LAB35:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(44, ng0);

LAB40:    xsi_set_current_line(45, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1208U);
    t28 = *((char **)t21);
    t32 = *((unsigned int *)t22);
    t33 = *((unsigned int *)t28);
    t34 = (t32 & t33);
    *((unsigned int *)t31) = t34;
    t21 = (t22 + 4);
    t29 = (t28 + 4);
    t30 = (t31 + 4);
    t35 = *((unsigned int *)t21);
    t36 = *((unsigned int *)t29);
    t37 = (t35 | t36);
    *((unsigned int *)t30) = t37;
    t38 = *((unsigned int *)t30);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB41;

LAB42:
LAB43:    t56 = (t0 + 1768);
    xsi_vlogvar_assign_value(t56, t31, 0, 0, 32);
    goto LAB39;

LAB41:    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t30);
    *((unsigned int *)t31) = (t40 | t41);
    t42 = (t22 + 4);
    t43 = (t28 + 4);
    t44 = *((unsigned int *)t22);
    t45 = (~(t44));
    t46 = *((unsigned int *)t42);
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    t50 = (~(t49));
    t52 = *((unsigned int *)t43);
    t53 = (~(t52));
    t47 = (t45 & t48);
    t51 = (t50 & t53);
    t54 = (~(t47));
    t55 = (~(t51));
    t57 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t57 & t54);
    t58 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t58 & t55);
    t59 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t59 & t54);
    t60 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t60 & t55);
    goto LAB43;

LAB46:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(48, ng0);

LAB51:    xsi_set_current_line(49, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t64, 0, 8);
    t21 = (t64 + 4);
    t28 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = (t32 >> 0);
    *((unsigned int *)t64) = t33;
    t34 = *((unsigned int *)t28);
    t35 = (t34 >> 0);
    *((unsigned int *)t21) = t35;
    t36 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t36 & 4294967295U);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & 4294967295U);
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    memset(t65, 0, 8);
    t29 = (t65 + 4);
    t42 = (t30 + 4);
    t38 = *((unsigned int *)t30);
    t39 = (t38 >> 31);
    t40 = (t39 & 1);
    *((unsigned int *)t65) = t40;
    t41 = *((unsigned int *)t42);
    t44 = (t41 >> 31);
    t45 = (t44 & 1);
    *((unsigned int *)t29) = t45;
    xsi_vlogtype_concat(t63, 33, 33, 2U, t65, 1, t64, 32);
    t43 = (t0 + 1208U);
    t56 = *((char **)t43);
    memset(t68, 0, 8);
    t43 = (t68 + 4);
    t69 = (t56 + 4);
    t46 = *((unsigned int *)t56);
    t48 = (t46 >> 0);
    *((unsigned int *)t68) = t48;
    t49 = *((unsigned int *)t69);
    t50 = (t49 >> 0);
    *((unsigned int *)t43) = t50;
    t52 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t52 & 4294967295U);
    t53 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t53 & 4294967295U);
    t70 = (t0 + 1208U);
    t71 = *((char **)t70);
    memset(t72, 0, 8);
    t70 = (t72 + 4);
    t73 = (t71 + 4);
    t54 = *((unsigned int *)t71);
    t55 = (t54 >> 31);
    t57 = (t55 & 1);
    *((unsigned int *)t72) = t57;
    t58 = *((unsigned int *)t73);
    t59 = (t58 >> 31);
    t60 = (t59 & 1);
    *((unsigned int *)t70) = t60;
    xsi_vlogtype_concat(t67, 33, 33, 2U, t72, 1, t68, 32);
    xsi_vlog_signed_less(t74, 33, t63, 33, t67, 33);
    memset(t61, 0, 8);
    t75 = (t74 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t75) != 0)
        goto LAB54;

LAB55:    t82 = (t61 + 4);
    t83 = *((unsigned int *)t61);
    t84 = *((unsigned int *)t82);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB56;

LAB57:    t87 = *((unsigned int *)t61);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (t88 || t89);
    if (t90 > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t82) > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t61) > 0)
        goto LAB62;

LAB63:    memcpy(t31, t91, 8);

LAB64:    t92 = (t0 + 1768);
    xsi_vlogvar_assign_value(t92, t31, 0, 0, 32);
    goto LAB50;

LAB52:    *((unsigned int *)t61) = 1;
    goto LAB55;

LAB54:    t81 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB55;

LAB56:    t86 = ((char*)((ng2)));
    goto LAB57;

LAB58:    t91 = ((char*)((ng1)));
    goto LAB59;

LAB60:    xsi_vlog_unsigned_bit_combine(t31, 32, t86, 32, t91, 32);
    goto LAB64;

LAB62:    memcpy(t31, t86, 8);
    goto LAB64;

LAB67:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB68;

LAB69:    xsi_set_current_line(52, ng0);

LAB72:    xsi_set_current_line(53, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t64, 0, 8);
    t21 = (t64 + 4);
    t28 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = (t32 >> 0);
    *((unsigned int *)t64) = t33;
    t34 = *((unsigned int *)t28);
    t35 = (t34 >> 0);
    *((unsigned int *)t21) = t35;
    t36 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t36 & 4294967295U);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & 4294967295U);
    t29 = ((char*)((ng1)));
    xsi_vlogtype_concat(t62, 33, 33, 2U, t29, 1, t64, 32);
    t30 = (t0 + 1208U);
    t42 = *((char **)t30);
    memset(t65, 0, 8);
    t30 = (t65 + 4);
    t43 = (t42 + 4);
    t38 = *((unsigned int *)t42);
    t39 = (t38 >> 0);
    *((unsigned int *)t65) = t39;
    t40 = *((unsigned int *)t43);
    t41 = (t40 >> 0);
    *((unsigned int *)t30) = t41;
    t44 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t44 & 4294967295U);
    t45 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t45 & 4294967295U);
    t56 = ((char*)((ng1)));
    xsi_vlogtype_concat(t63, 33, 33, 2U, t56, 1, t65, 32);
    xsi_vlog_unsigned_less(t66, 33, t62, 33, t63, 33);
    memset(t61, 0, 8);
    t69 = (t66 + 4);
    t46 = *((unsigned int *)t69);
    t48 = (~(t46));
    t49 = *((unsigned int *)t66);
    t50 = (t49 & t48);
    t52 = (t50 & 1U);
    if (t52 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t69) != 0)
        goto LAB75;

LAB76:    t71 = (t61 + 4);
    t53 = *((unsigned int *)t61);
    t54 = *((unsigned int *)t71);
    t55 = (t53 || t54);
    if (t55 > 0)
        goto LAB77;

LAB78:    t57 = *((unsigned int *)t61);
    t58 = (~(t57));
    t59 = *((unsigned int *)t71);
    t60 = (t58 || t59);
    if (t60 > 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t71) > 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t61) > 0)
        goto LAB83;

LAB84:    memcpy(t31, t75, 8);

LAB85:    t81 = (t0 + 1768);
    xsi_vlogvar_assign_value(t81, t31, 0, 0, 32);
    goto LAB71;

LAB73:    *((unsigned int *)t61) = 1;
    goto LAB76;

LAB75:    t70 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB76;

LAB77:    t73 = ((char*)((ng2)));
    goto LAB78;

LAB79:    t75 = ((char*)((ng1)));
    goto LAB80;

LAB81:    xsi_vlog_unsigned_bit_combine(t31, 32, t73, 32, t75, 32);
    goto LAB85;

LAB83:    memcpy(t31, t73, 8);
    goto LAB85;

}


extern void work_m_00000000002250114818_0886308060_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000002250114818_0886308060", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000002250114818_0886308060.didat");
	xsi_register_executes(pe);
}
