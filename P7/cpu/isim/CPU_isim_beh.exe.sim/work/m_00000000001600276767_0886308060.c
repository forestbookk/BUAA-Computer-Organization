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
static const char *ng0 = "C:/Users/shael/CO/P7/cpu_commit/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {0U, 0U, 0U, 0U};
static int ng4[] = {1, 0};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};



static void NetDecl_31_0(char *t0)
{
    char t3[16];
    char t4[8];
    char t6[8];
    char t33[16];
    char t37[8];
    char t45[16];
    char t49[8];
    char t57[16];
    char t62[16];
    char t63[8];
    char t66[8];
    char t93[16];
    char t97[8];
    char t105[16];
    char t109[8];
    char t117[16];
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
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
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
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t94;
    char *t95;
    char *t96;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t106;
    char *t107;
    char *t108;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1368U);
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

LAB13:    t58 = *((unsigned int *)t4);
    t59 = (~(t58));
    t60 = *((unsigned int *)t29);
    t61 = (t59 || t60);
    if (t61 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t62, 16);

LAB20:    t123 = (t0 + 3936);
    t124 = (t123 + 56U);
    t125 = *((char **)t124);
    t126 = (t125 + 56U);
    t127 = *((char **)t126);
    xsi_vlog_bit_copy(t127, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t123, 0, 32U);
    t128 = (t0 + 3824);
    *((int *)t128) = 1;

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

LAB12:    t34 = (t0 + 1048U);
    t35 = *((char **)t34);
    t34 = (t0 + 1048U);
    t36 = *((char **)t34);
    memset(t37, 0, 8);
    t34 = (t37 + 4);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t36);
    t40 = (t39 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 >> 31);
    t44 = (t43 & 1);
    *((unsigned int *)t34) = t44;
    xsi_vlogtype_concat(t33, 33, 33, 2U, t37, 1, t35, 32);
    t46 = (t0 + 1208U);
    t47 = *((char **)t46);
    t46 = (t0 + 1208U);
    t48 = *((char **)t46);
    memset(t49, 0, 8);
    t46 = (t49 + 4);
    t50 = (t48 + 4);
    t51 = *((unsigned int *)t48);
    t52 = (t51 >> 31);
    t53 = (t52 & 1);
    *((unsigned int *)t49) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 31);
    t56 = (t55 & 1);
    *((unsigned int *)t46) = t56;
    xsi_vlogtype_concat(t45, 33, 33, 2U, t49, 1, t47, 32);
    xsi_vlog_unsigned_add(t57, 33, t33, 33, t45, 33);
    goto LAB13;

LAB14:    t64 = (t0 + 1368U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng2)));
    memset(t66, 0, 8);
    t67 = (t65 + 4);
    t68 = (t64 + 4);
    t69 = *((unsigned int *)t65);
    t70 = *((unsigned int *)t64);
    t71 = (t69 ^ t70);
    t72 = *((unsigned int *)t67);
    t73 = *((unsigned int *)t68);
    t74 = (t72 ^ t73);
    t75 = (t71 | t74);
    t76 = *((unsigned int *)t67);
    t77 = *((unsigned int *)t68);
    t78 = (t76 | t77);
    t79 = (~(t78));
    t80 = (t75 & t79);
    if (t80 != 0)
        goto LAB24;

LAB21:    if (t78 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t66) = 1;

LAB24:    memset(t63, 0, 8);
    t82 = (t66 + 4);
    t83 = *((unsigned int *)t82);
    t84 = (~(t83));
    t85 = *((unsigned int *)t66);
    t86 = (t85 & t84);
    t87 = (t86 & 1U);
    if (t87 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t82) != 0)
        goto LAB27;

LAB28:    t89 = (t63 + 4);
    t90 = *((unsigned int *)t63);
    t91 = *((unsigned int *)t89);
    t92 = (t90 || t91);
    if (t92 > 0)
        goto LAB29;

LAB30:    t118 = *((unsigned int *)t63);
    t119 = (~(t118));
    t120 = *((unsigned int *)t89);
    t121 = (t119 || t120);
    if (t121 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t89) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t63) > 0)
        goto LAB35;

LAB36:    memcpy(t62, t122, 16);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 33, t57, 33, t62, 33);
    goto LAB20;

LAB18:    memcpy(t3, t57, 16);
    goto LAB20;

LAB23:    t81 = (t66 + 4);
    *((unsigned int *)t66) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t63) = 1;
    goto LAB28;

LAB27:    t88 = (t63 + 4);
    *((unsigned int *)t63) = 1;
    *((unsigned int *)t88) = 1;
    goto LAB28;

LAB29:    t94 = (t0 + 1048U);
    t95 = *((char **)t94);
    t94 = (t0 + 1048U);
    t96 = *((char **)t94);
    memset(t97, 0, 8);
    t94 = (t97 + 4);
    t98 = (t96 + 4);
    t99 = *((unsigned int *)t96);
    t100 = (t99 >> 31);
    t101 = (t100 & 1);
    *((unsigned int *)t97) = t101;
    t102 = *((unsigned int *)t98);
    t103 = (t102 >> 31);
    t104 = (t103 & 1);
    *((unsigned int *)t94) = t104;
    xsi_vlogtype_concat(t93, 33, 33, 2U, t97, 1, t95, 32);
    t106 = (t0 + 1208U);
    t107 = *((char **)t106);
    t106 = (t0 + 1208U);
    t108 = *((char **)t106);
    memset(t109, 0, 8);
    t106 = (t109 + 4);
    t110 = (t108 + 4);
    t111 = *((unsigned int *)t108);
    t112 = (t111 >> 31);
    t113 = (t112 & 1);
    *((unsigned int *)t109) = t113;
    t114 = *((unsigned int *)t110);
    t115 = (t114 >> 31);
    t116 = (t115 & 1);
    *((unsigned int *)t106) = t116;
    xsi_vlogtype_concat(t105, 33, 33, 2U, t109, 1, t107, 32);
    xsi_vlog_unsigned_minus(t117, 33, t93, 33, t105, 33);
    goto LAB30;

LAB31:    t122 = ((char*)((ng3)));
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t62, 33, t117, 33, t122, 33);
    goto LAB37;

LAB35:    memcpy(t62, t117, 16);
    goto LAB37;

}

static void Cont_34_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t17[8];
    char t25[8];
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
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t15 = (t0 + 1688U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    memset(t25, 0, 8);
    t26 = (t6 + 4);
    t27 = (t17 + 4);
    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t17);
    t30 = (t28 ^ t29);
    t31 = *((unsigned int *)t26);
    t32 = *((unsigned int *)t27);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t35 = *((unsigned int *)t26);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB5;

LAB4:    if (t37 != 0)
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t41 = (t25 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t25);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t41) != 0)
        goto LAB10;

LAB11:    t48 = (t4 + 4);
    t49 = *((unsigned int *)t4);
    t50 = *((unsigned int *)t48);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB12;

LAB13:    t53 = *((unsigned int *)t4);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (t54 || t55);
    if (t56 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t48) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t57, 8);

LAB20:    t58 = (t0 + 4000);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memset(t62, 0, 8);
    t63 = 1U;
    t64 = t63;
    t65 = (t3 + 4);
    t66 = *((unsigned int *)t3);
    t63 = (t63 & t66);
    t67 = *((unsigned int *)t65);
    t64 = (t64 & t67);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t69 | t63);
    t70 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t70 | t64);
    xsi_driver_vfirst_trans(t58, 0, 0);
    t71 = (t0 + 3840);
    *((int *)t71) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t25) = 1;
    goto LAB7;

LAB6:    t40 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t47 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB11;

LAB12:    t52 = ((char*)((ng4)));
    goto LAB13;

LAB14:    t57 = ((char*)((ng5)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t52, 32, t57, 32);
    goto LAB20;

LAB18:    memcpy(t3, t52, 8);
    goto LAB20;

}

static void Always_37_2(char *t0)
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

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3856);
    *((int *)t2) = 1;
    t3 = (t0 + 3536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
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

LAB11:    xsi_set_current_line(42, ng0);
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

LAB19:    xsi_set_current_line(46, ng0);
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

LAB27:    xsi_set_current_line(50, ng0);
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

LAB38:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
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

LAB49:    xsi_set_current_line(58, ng0);
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

LAB70:    xsi_set_current_line(63, ng0);

LAB86:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
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

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = (t0 + 1208U);
    t30 = *((char **)t28);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_add(t31, 32, t29, 32, t30, 32);
    t28 = (t0 + 2088);
    xsi_vlogvar_assign_value(t28, t31, 0, 0, 32);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(43, ng0);

LAB21:    xsi_set_current_line(44, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1208U);
    t28 = *((char **)t21);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_minus(t31, 32, t22, 32, t28, 32);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t31, 0, 0, 32);
    goto LAB20;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(47, ng0);

LAB29:    xsi_set_current_line(48, ng0);
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
LAB32:    t56 = (t0 + 2088);
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

LAB37:    xsi_set_current_line(51, ng0);

LAB40:    xsi_set_current_line(52, ng0);
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
LAB43:    t56 = (t0 + 2088);
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

LAB48:    xsi_set_current_line(55, ng0);

LAB51:    xsi_set_current_line(56, ng0);
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

LAB64:    t92 = (t0 + 2088);
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

LAB69:    xsi_set_current_line(59, ng0);

LAB72:    xsi_set_current_line(60, ng0);
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

LAB85:    t81 = (t0 + 2088);
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


extern void work_m_00000000001600276767_0886308060_init()
{
	static char *pe[] = {(void *)NetDecl_31_0,(void *)Cont_34_1,(void *)Always_37_2};
	xsi_register_didat("work_m_00000000001600276767_0886308060", "isim/CPU_isim_beh.exe.sim/work/m_00000000001600276767_0886308060.didat");
	xsi_register_executes(pe);
}
