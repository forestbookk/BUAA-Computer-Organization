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
static const char *ng0 = "D:/BUAA/practice/ise/P7-cpu/CP0.v";
static unsigned int ng1[] = {12U, 0U};
static unsigned int ng2[] = {13U, 0U};
static unsigned int ng3[] = {14U, 0U};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {15, 0};
static int ng6[] = {10, 0};
static int ng7[] = {1, 0};
static unsigned int ng8[] = {1U, 0U};
static int ng9[] = {31, 0};
static int ng10[] = {6, 0};
static int ng11[] = {2, 0};
static unsigned int ng12[] = {4U, 0U};



static void NetDecl_50_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t16[8];
    char t55[8];
    char t59[8];
    char t75[8];
    char t110[8];
    char t119[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    char *t109;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    int t143;
    int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;

LAB0:    t1 = (t0 + 5088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 10);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 10);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 63U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 63U);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 & t18);
    *((unsigned int *)t16) = t19;
    t20 = (t4 + 4);
    t21 = (t5 + 4);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t21);
    t25 = (t23 | t24);
    *((unsigned int *)t22) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t3, 0, 8);
    t48 = (t16 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t16);
    t52 = (t51 & t50);
    t53 = (t52 & 63U);
    if (t53 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t48) != 0)
        goto LAB9;

LAB10:    t56 = (t0 + 3848);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memset(t59, 0, 8);
    t60 = (t59 + 4);
    t61 = (t58 + 4);
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 1);
    t64 = (t63 & 1);
    *((unsigned int *)t59) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 >> 1);
    t67 = (t66 & 1);
    *((unsigned int *)t60) = t67;
    memset(t55, 0, 8);
    t68 = (t59 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t59);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t68) == 0)
        goto LAB11;

LAB13:    t74 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t74) = 1;

LAB14:    t76 = *((unsigned int *)t3);
    t77 = *((unsigned int *)t55);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t79 = (t3 + 4);
    t80 = (t55 + 4);
    t81 = (t75 + 4);
    t82 = *((unsigned int *)t79);
    t83 = *((unsigned int *)t80);
    t84 = (t82 | t83);
    *((unsigned int *)t81) = t84;
    t85 = *((unsigned int *)t81);
    t86 = (t85 != 0);
    if (t86 == 1)
        goto LAB15;

LAB16:
LAB17:    t107 = (t0 + 3848);
    t108 = (t107 + 56U);
    t109 = *((char **)t108);
    memset(t110, 0, 8);
    t111 = (t110 + 4);
    t112 = (t109 + 4);
    t113 = *((unsigned int *)t109);
    t114 = (t113 >> 0);
    t115 = (t114 & 1);
    *((unsigned int *)t110) = t115;
    t116 = *((unsigned int *)t112);
    t117 = (t116 >> 0);
    t118 = (t117 & 1);
    *((unsigned int *)t111) = t118;
    t120 = *((unsigned int *)t75);
    t121 = *((unsigned int *)t110);
    t122 = (t120 & t121);
    *((unsigned int *)t119) = t122;
    t123 = (t75 + 4);
    t124 = (t110 + 4);
    t125 = (t119 + 4);
    t126 = *((unsigned int *)t123);
    t127 = *((unsigned int *)t124);
    t128 = (t126 | t127);
    *((unsigned int *)t125) = t128;
    t129 = *((unsigned int *)t125);
    t130 = (t129 != 0);
    if (t130 == 1)
        goto LAB18;

LAB19:
LAB20:    t151 = (t0 + 7320);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    t154 = (t153 + 56U);
    t155 = *((char **)t154);
    memset(t155, 0, 8);
    t156 = 1U;
    t157 = t156;
    t158 = (t119 + 4);
    t159 = *((unsigned int *)t119);
    t156 = (t156 & t159);
    t160 = *((unsigned int *)t158);
    t157 = (t157 & t160);
    t161 = (t155 + 4);
    t162 = *((unsigned int *)t155);
    *((unsigned int *)t155) = (t162 | t156);
    t163 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t163 | t157);
    xsi_driver_vfirst_trans(t151, 0, 0U);
    t164 = (t0 + 7144);
    *((int *)t164) = 1;

LAB1:    return;
LAB4:    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t16) = (t28 | t29);
    t30 = (t4 + 4);
    t31 = (t5 + 4);
    t32 = *((unsigned int *)t4);
    t33 = (~(t32));
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t5);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (~(t38));
    t40 = (t33 & t35);
    t41 = (t37 & t39);
    t42 = (~(t40));
    t43 = (~(t41));
    t44 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t44 & t42);
    t45 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t45 & t43);
    t46 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t46 & t42);
    t47 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t47 & t43);
    goto LAB6;

LAB7:    *((unsigned int *)t3) = 1;
    goto LAB10;

LAB9:    t54 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB10;

LAB11:    *((unsigned int *)t55) = 1;
    goto LAB14;

LAB15:    t87 = *((unsigned int *)t75);
    t88 = *((unsigned int *)t81);
    *((unsigned int *)t75) = (t87 | t88);
    t89 = (t3 + 4);
    t90 = (t55 + 4);
    t91 = *((unsigned int *)t3);
    t92 = (~(t91));
    t93 = *((unsigned int *)t89);
    t94 = (~(t93));
    t95 = *((unsigned int *)t55);
    t96 = (~(t95));
    t97 = *((unsigned int *)t90);
    t98 = (~(t97));
    t99 = (t92 & t94);
    t100 = (t96 & t98);
    t101 = (~(t99));
    t102 = (~(t100));
    t103 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t103 & t101);
    t104 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t104 & t102);
    t105 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t105 & t101);
    t106 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t106 & t102);
    goto LAB17;

LAB18:    t131 = *((unsigned int *)t119);
    t132 = *((unsigned int *)t125);
    *((unsigned int *)t119) = (t131 | t132);
    t133 = (t75 + 4);
    t134 = (t110 + 4);
    t135 = *((unsigned int *)t75);
    t136 = (~(t135));
    t137 = *((unsigned int *)t133);
    t138 = (~(t137));
    t139 = *((unsigned int *)t110);
    t140 = (~(t139));
    t141 = *((unsigned int *)t134);
    t142 = (~(t141));
    t143 = (t136 & t138);
    t144 = (t140 & t142);
    t145 = (~(t143));
    t146 = (~(t144));
    t147 = *((unsigned int *)t125);
    *((unsigned int *)t125) = (t147 & t145);
    t148 = *((unsigned int *)t125);
    *((unsigned int *)t125) = (t148 & t146);
    t149 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t149 & t145);
    t150 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t150 & t146);
    goto LAB20;

}

static void NetDecl_51_1(char *t0)
{
    char t3[8];
    char t11[8];
    char t15[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;

LAB0:    t1 = (t0 + 5336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 31U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t0 + 3848);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t16 = (t15 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t16) = t23;
    memset(t11, 0, 8);
    t24 = (t15 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t15);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t24) == 0)
        goto LAB8;

LAB10:    t30 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t30) = 1;

LAB11:    t32 = *((unsigned int *)t3);
    t33 = *((unsigned int *)t11);
    t34 = (t32 & t33);
    *((unsigned int *)t31) = t34;
    t35 = (t3 + 4);
    t36 = (t11 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB12;

LAB13:
LAB14:    t63 = (t0 + 7384);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memset(t67, 0, 8);
    t68 = 1U;
    t69 = t68;
    t70 = (t31 + 4);
    t71 = *((unsigned int *)t31);
    t68 = (t68 & t71);
    t72 = *((unsigned int *)t70);
    t69 = (t69 & t72);
    t73 = (t67 + 4);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t74 | t68);
    t75 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t75 | t69);
    xsi_driver_vfirst_trans(t63, 0, 0U);
    t76 = (t0 + 7160);
    *((int *)t76) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t11) = 1;
    goto LAB11;

LAB12:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    t45 = (t3 + 4);
    t46 = (t11 + 4);
    t47 = *((unsigned int *)t3);
    t48 = (~(t47));
    t49 = *((unsigned int *)t45);
    t50 = (~(t49));
    t51 = *((unsigned int *)t11);
    t52 = (~(t51));
    t53 = *((unsigned int *)t46);
    t54 = (~(t53));
    t55 = (t48 & t50);
    t56 = (t52 & t54);
    t57 = (~(t55));
    t58 = (~(t56));
    t59 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t59 & t57);
    t60 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t60 & t58);
    t61 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t61 & t57);
    t62 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t62 & t58);
    goto LAB14;

}

static void Cont_52_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 5584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t0 + 3448U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 | t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t32 = (t0 + 7448);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 1U;
    t38 = t37;
    t39 = (t5 + 4);
    t40 = *((unsigned int *)t5);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 0);
    t45 = (t0 + 7176);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = *((unsigned int *)t19);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (~(t23));
    t29 = (~(t27));
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t30 & t28);
    t31 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t31 & t29);
    goto LAB6;

}

static void Cont_54_3(char *t0)
{
    char t3[8];
    char t6[8];
    char t25[8];
    char t34[8];
    char t69[8];
    char t80[8];
    char t88[8];
    char t120[8];
    char *t1;
    char *t2;
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    int t112;
    int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    int t144;
    int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;

LAB0:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3848);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t7) = t14;
    memset(t3, 0, 8);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t6);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t15) == 0)
        goto LAB4;

LAB6:    t21 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t21) = 1;

LAB7:    t22 = (t0 + 3848);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t25, 0, 8);
    t26 = (t25 + 4);
    t27 = (t24 + 4);
    t28 = *((unsigned int *)t24);
    t29 = (t28 >> 0);
    t30 = (t29 & 1);
    *((unsigned int *)t25) = t30;
    t31 = *((unsigned int *)t27);
    t32 = (t31 >> 0);
    t33 = (t32 & 1);
    *((unsigned int *)t26) = t33;
    t35 = *((unsigned int *)t3);
    t36 = *((unsigned int *)t25);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t3 + 4);
    t39 = (t25 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB8;

LAB9:
LAB10:    t66 = (t0 + 3848);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    memset(t69, 0, 8);
    t70 = (t69 + 4);
    t71 = (t68 + 4);
    t72 = *((unsigned int *)t68);
    t73 = (t72 >> 12);
    t74 = (t73 & 1);
    *((unsigned int *)t69) = t74;
    t75 = *((unsigned int *)t71);
    t76 = (t75 >> 12);
    t77 = (t76 & 1);
    *((unsigned int *)t70) = t77;
    t78 = (t0 + 2488U);
    t79 = *((char **)t78);
    memset(t80, 0, 8);
    t78 = (t80 + 4);
    t81 = (t79 + 4);
    t82 = *((unsigned int *)t79);
    t83 = (t82 >> 2);
    t84 = (t83 & 1);
    *((unsigned int *)t80) = t84;
    t85 = *((unsigned int *)t81);
    t86 = (t85 >> 2);
    t87 = (t86 & 1);
    *((unsigned int *)t78) = t87;
    t89 = *((unsigned int *)t69);
    t90 = *((unsigned int *)t80);
    t91 = (t89 & t90);
    *((unsigned int *)t88) = t91;
    t92 = (t69 + 4);
    t93 = (t80 + 4);
    t94 = (t88 + 4);
    t95 = *((unsigned int *)t92);
    t96 = *((unsigned int *)t93);
    t97 = (t95 | t96);
    *((unsigned int *)t94) = t97;
    t98 = *((unsigned int *)t94);
    t99 = (t98 != 0);
    if (t99 == 1)
        goto LAB11;

LAB12:
LAB13:    t121 = *((unsigned int *)t34);
    t122 = *((unsigned int *)t88);
    t123 = (t121 & t122);
    *((unsigned int *)t120) = t123;
    t124 = (t34 + 4);
    t125 = (t88 + 4);
    t126 = (t120 + 4);
    t127 = *((unsigned int *)t124);
    t128 = *((unsigned int *)t125);
    t129 = (t127 | t128);
    *((unsigned int *)t126) = t129;
    t130 = *((unsigned int *)t126);
    t131 = (t130 != 0);
    if (t131 == 1)
        goto LAB14;

LAB15:
LAB16:    t152 = (t0 + 7512);
    t153 = (t152 + 56U);
    t154 = *((char **)t153);
    t155 = (t154 + 56U);
    t156 = *((char **)t155);
    memset(t156, 0, 8);
    t157 = 1U;
    t158 = t157;
    t159 = (t120 + 4);
    t160 = *((unsigned int *)t120);
    t157 = (t157 & t160);
    t161 = *((unsigned int *)t159);
    t158 = (t158 & t161);
    t162 = (t156 + 4);
    t163 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t163 | t157);
    t164 = *((unsigned int *)t162);
    *((unsigned int *)t162) = (t164 | t158);
    xsi_driver_vfirst_trans(t152, 0, 0);
    t165 = (t0 + 7192);
    *((int *)t165) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB8:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t3 + 4);
    t49 = (t25 + 4);
    t50 = *((unsigned int *)t3);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t25);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB10;

LAB11:    t100 = *((unsigned int *)t88);
    t101 = *((unsigned int *)t94);
    *((unsigned int *)t88) = (t100 | t101);
    t102 = (t69 + 4);
    t103 = (t80 + 4);
    t104 = *((unsigned int *)t69);
    t105 = (~(t104));
    t106 = *((unsigned int *)t102);
    t107 = (~(t106));
    t108 = *((unsigned int *)t80);
    t109 = (~(t108));
    t110 = *((unsigned int *)t103);
    t111 = (~(t110));
    t112 = (t105 & t107);
    t113 = (t109 & t111);
    t114 = (~(t112));
    t115 = (~(t113));
    t116 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t116 & t114);
    t117 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t117 & t115);
    t118 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t118 & t114);
    t119 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t119 & t115);
    goto LAB13;

LAB14:    t132 = *((unsigned int *)t120);
    t133 = *((unsigned int *)t126);
    *((unsigned int *)t120) = (t132 | t133);
    t134 = (t34 + 4);
    t135 = (t88 + 4);
    t136 = *((unsigned int *)t34);
    t137 = (~(t136));
    t138 = *((unsigned int *)t134);
    t139 = (~(t138));
    t140 = *((unsigned int *)t88);
    t141 = (~(t140));
    t142 = *((unsigned int *)t135);
    t143 = (~(t142));
    t144 = (t137 & t139);
    t145 = (t141 & t143);
    t146 = (~(t144));
    t147 = (~(t145));
    t148 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t148 & t146);
    t149 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t149 & t147);
    t150 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t150 & t146);
    t151 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t151 & t147);
    goto LAB16;

}

static void Cont_56_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char t78[8];
    char t79[8];
    char t82[8];
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t80;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;

LAB0:    t1 = (t0 + 6080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
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
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t117 = (t0 + 7576);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    t120 = (t119 + 56U);
    t121 = *((char **)t120);
    memcpy(t121, t3, 8);
    xsi_driver_vfirst_trans(t117, 0, 31);
    t122 = (t0 + 7208);
    *((int *)t122) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3848);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t42 = (t0 + 1528U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng2)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t74 = *((unsigned int *)t41);
    t75 = (~(t74));
    t76 = *((unsigned int *)t67);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t78, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 4008);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    goto LAB30;

LAB31:    t80 = (t0 + 1528U);
    t81 = *((char **)t80);
    t80 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t80 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t80);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    memset(t79, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t98) != 0)
        goto LAB44;

LAB45:    t105 = (t79 + 4);
    t106 = *((unsigned int *)t79);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t112 = *((unsigned int *)t79);
    t113 = (~(t112));
    t114 = *((unsigned int *)t105);
    t115 = (t113 || t114);
    if (t115 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t79) > 0)
        goto LAB52;

LAB53:    memcpy(t78, t116, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 32, t73, 32, t78, 32);
    goto LAB37;

LAB35:    memcpy(t40, t73, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t79) = 1;
    goto LAB45;

LAB44:    t104 = (t79 + 4);
    *((unsigned int *)t79) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 4168);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    goto LAB47;

LAB48:    t116 = ((char*)((ng4)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t78, 32, t111, 32, t116, 32);
    goto LAB54;

LAB52:    memcpy(t78, t111, 8);
    goto LAB54;

}

static void Cont_60_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 6328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 7224);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Initial_62_6(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(62, ng0);

LAB2:    xsi_set_current_line(63, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 3848);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(64, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 4008);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(65, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_67_7(char *t0)
{
    char t13[8];
    char t14[8];
    char t15[8];
    char t35[8];
    char t36[8];
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
    char *t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    int t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    t1 = (t0 + 6824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7240);
    *((int *)t2) = 1;
    t3 = (t0 + 6856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
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

LAB7:    xsi_set_current_line(73, ng0);

LAB10:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    t4 = (t0 + 4008);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t13, t14, t15, ((int*)(t11)), 2, t12, 32, 1, t16, 32, 1);
    t17 = (t13 + 4);
    t6 = *((unsigned int *)t17);
    t18 = (!(t6));
    t19 = (t14 + 4);
    t7 = *((unsigned int *)t19);
    t20 = (!(t7));
    t21 = (t18 && t20);
    t22 = (t15 + 4);
    t8 = *((unsigned int *)t22);
    t23 = (!(t8));
    t24 = (t21 && t23);
    if (t24 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB55;

LAB56:
LAB57:
LAB21:
LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);

LAB9:    xsi_set_current_line(69, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB11:    t9 = *((unsigned int *)t15);
    t25 = (t9 + 0);
    t10 = *((unsigned int *)t13);
    t26 = *((unsigned int *)t14);
    t27 = (t10 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t25, *((unsigned int *)t14), t28, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(75, ng0);

LAB16:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 3848);
    t11 = (t0 + 3848);
    t12 = (t11 + 72U);
    t16 = *((char **)t12);
    t17 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t13, t16, 2, t17, 32, 1);
    t19 = (t13 + 4);
    t26 = *((unsigned int *)t19);
    t18 = (!(t26));
    if (t18 == 1)
        goto LAB17;

LAB18:    goto LAB15;

LAB17:    xsi_vlogvar_wait_assign_value(t5, t4, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB18;

LAB19:    xsi_set_current_line(78, ng0);

LAB22:    xsi_set_current_line(79, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 3848);
    t11 = (t0 + 3848);
    t12 = (t11 + 72U);
    t16 = *((char **)t12);
    t17 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t13, t16, 2, t17, 32, 1);
    t19 = (t13 + 4);
    t26 = *((unsigned int *)t19);
    t18 = (!(t26));
    if (t18 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    t4 = (t0 + 4008);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t16 = (t13 + 4);
    t6 = *((unsigned int *)t16);
    t18 = (!(t6));
    if (t18 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t2) != 0)
        goto LAB29;

LAB30:    t5 = (t14 + 4);
    t26 = *((unsigned int *)t14);
    t29 = *((unsigned int *)t5);
    t30 = (t26 || t29);
    if (t30 > 0)
        goto LAB31;

LAB32:    t31 = *((unsigned int *)t14);
    t32 = (~(t31));
    t33 = *((unsigned int *)t5);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t5) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t14) > 0)
        goto LAB37;

LAB38:    memcpy(t13, t16, 8);

LAB39:    t12 = (t0 + 4008);
    t17 = (t0 + 4008);
    t19 = (t17 + 72U);
    t22 = *((char **)t19);
    t37 = ((char*)((ng10)));
    t38 = ((char*)((ng11)));
    xsi_vlog_convert_partindices(t15, t35, t36, ((int*)(t22)), 2, t37, 32, 1, t38, 32, 1);
    t39 = (t15 + 4);
    t40 = *((unsigned int *)t39);
    t18 = (!(t40));
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t41);
    t20 = (!(t42));
    t21 = (t18 && t20);
    t43 = (t36 + 4);
    t44 = *((unsigned int *)t43);
    t23 = (!(t44));
    t24 = (t21 && t23);
    if (t24 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t2) != 0)
        goto LAB44;

LAB45:    t5 = (t14 + 4);
    t26 = *((unsigned int *)t14);
    t29 = *((unsigned int *)t5);
    t30 = (t26 || t29);
    if (t30 > 0)
        goto LAB46;

LAB47:    t31 = *((unsigned int *)t14);
    t32 = (~(t31));
    t33 = *((unsigned int *)t5);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t5) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t14) > 0)
        goto LAB52;

LAB53:    memcpy(t13, t17, 8);

LAB54:    t16 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t16, t13, 0, 0, 32, 0LL);
    goto LAB21;

LAB23:    xsi_vlogvar_wait_assign_value(t5, t4, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB24;

LAB25:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB26;

LAB27:    *((unsigned int *)t14) = 1;
    goto LAB30;

LAB29:    t4 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB30;

LAB31:    t11 = ((char*)((ng4)));
    goto LAB32;

LAB33:    t12 = (t0 + 2328U);
    t16 = *((char **)t12);
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t13, 5, t11, 5, t16, 5);
    goto LAB39;

LAB37:    memcpy(t13, t11, 8);
    goto LAB39;

LAB40:    t45 = *((unsigned int *)t36);
    t25 = (t45 + 0);
    t46 = *((unsigned int *)t15);
    t47 = *((unsigned int *)t35);
    t27 = (t46 - t47);
    t28 = (t27 + 1);
    xsi_vlogvar_wait_assign_value(t12, t13, t25, *((unsigned int *)t35), t28, 0LL);
    goto LAB41;

LAB42:    *((unsigned int *)t14) = 1;
    goto LAB45;

LAB44:    t4 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB45;

LAB46:    t11 = (t0 + 2008U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng12)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 32, t12, 32, t11, 32);
    goto LAB47;

LAB48:    t16 = (t0 + 2008U);
    t17 = *((char **)t16);
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t13, 32, t15, 32, t17, 32);
    goto LAB54;

LAB52:    memcpy(t13, t15, 8);
    goto LAB54;

LAB55:    xsi_set_current_line(84, ng0);

LAB58:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t26 = *((unsigned int *)t5);
    t29 = *((unsigned int *)t4);
    t30 = (t26 ^ t29);
    t31 = *((unsigned int *)t11);
    t32 = *((unsigned int *)t12);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t40 = *((unsigned int *)t11);
    t42 = *((unsigned int *)t12);
    t44 = (t40 | t42);
    t45 = (~(t44));
    t46 = (t34 & t45);
    if (t46 != 0)
        goto LAB62;

LAB59:    if (t44 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t13) = 1;

LAB62:    t17 = (t13 + 4);
    t47 = *((unsigned int *)t17);
    t48 = (~(t47));
    t49 = *((unsigned int *)t13);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB70;

LAB67:    if (t32 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t13) = 1;

LAB70:    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t42 = (~(t40));
    t44 = *((unsigned int *)t13);
    t45 = (t44 & t42);
    t46 = (t45 != 0);
    if (t46 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB78;

LAB75:    if (t32 != 0)
        goto LAB77;

LAB76:    *((unsigned int *)t13) = 1;

LAB78:    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t42 = (~(t40));
    t44 = *((unsigned int *)t13);
    t45 = (t44 & t42);
    t46 = (t45 != 0);
    if (t46 > 0)
        goto LAB79;

LAB80:
LAB81:
LAB73:
LAB65:    goto LAB57;

LAB61:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(85, ng0);

LAB66:    xsi_set_current_line(86, ng0);
    t19 = (t0 + 1688U);
    t22 = *((char **)t19);
    t19 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t19, t22, 0, 0, 32, 0LL);
    goto LAB65;

LAB69:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(88, ng0);

LAB74:    xsi_set_current_line(89, ng0);
    t16 = (t0 + 1688U);
    t17 = *((char **)t16);
    t16 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 32, 0LL);
    goto LAB73;

LAB77:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB78;

LAB79:    xsi_set_current_line(91, ng0);

LAB82:    xsi_set_current_line(92, ng0);
    t16 = (t0 + 1688U);
    t17 = *((char **)t16);
    t16 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 32, 0LL);
    goto LAB81;

}


extern void work_m_00000000000258455558_3975733304_init()
{
	static char *pe[] = {(void *)NetDecl_50_0,(void *)NetDecl_51_1,(void *)Cont_52_2,(void *)Cont_54_3,(void *)Cont_56_4,(void *)Cont_60_5,(void *)Initial_62_6,(void *)Always_67_7};
	xsi_register_didat("work_m_00000000000258455558_3975733304", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000258455558_3975733304.didat");
	xsi_register_executes(pe);
}
