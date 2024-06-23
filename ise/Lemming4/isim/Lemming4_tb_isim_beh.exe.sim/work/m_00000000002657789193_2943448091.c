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
static const char *ng0 = "D:/BUAA/practice/ise/Lemming4/Lemming4.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {6U, 0U};
static int ng8[] = {20, 0};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {5U, 0U};



static void Always_27_0(char *t0)
{
    char t11[8];
    char t30[8];
    char t39[8];
    char t55[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
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
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;

LAB0:    t1 = (t0 + 5240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 6800);
    *((int *)t2) = 1;
    t3 = (t0 + 5272);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 4000);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);

LAB24:    xsi_set_current_line(31, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 4320);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2640U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB28;

LAB25:    if (t21 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t11) = 1;

LAB28:    t9 = (t11 + 4);
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(39, ng0);

LAB41:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB39:
LAB35:
LAB31:    goto LAB23;

LAB9:    xsi_set_current_line(44, ng0);

LAB42:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 2640U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB46;

LAB43:    if (t21 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t11) = 1;

LAB46:    memset(t30, 0, 8);
    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t10) != 0)
        goto LAB49;

LAB50:    t31 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB51;

LAB52:    memcpy(t63, t30, 8);

LAB53:    t95 = (t63 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t63);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2640U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB72;

LAB69:    if (t21 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t11) = 1;

LAB72:    memset(t30, 0, 8);
    t9 = (t11 + 4);
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t9) != 0)
        goto LAB75;

LAB76:    t29 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t29);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB77;

LAB78:    memcpy(t63, t30, 8);

LAB79:    t78 = (t63 + 4);
    t96 = *((unsigned int *)t78);
    t97 = (~(t96));
    t98 = *((unsigned int *)t63);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(51, ng0);

LAB95:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 32, t5, 32);
    t7 = (t0 + 3840);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB97;

LAB96:    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB97;

LAB100:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB98;

LAB99:    t29 = (t11 + 4);
    t12 = *((unsigned int *)t29);
    t13 = (~(t12));
    t14 = *((unsigned int *)t11);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB101;

LAB102:    xsi_set_current_line(56, ng0);

LAB105:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);

LAB103:
LAB93:
LAB67:    goto LAB23;

LAB11:    xsi_set_current_line(62, ng0);

LAB106:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2640U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB110;

LAB107:    if (t21 != 0)
        goto LAB109;

LAB108:    *((unsigned int *)t11) = 1;

LAB110:    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB111;

LAB112:    xsi_set_current_line(66, ng0);

LAB115:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB113:    goto LAB23;

LAB13:    xsi_set_current_line(71, ng0);

LAB116:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2640U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB120;

LAB117:    if (t21 != 0)
        goto LAB119;

LAB118:    *((unsigned int *)t11) = 1;

LAB120:    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB121;

LAB122:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB125;

LAB126:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2480U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB129;

LAB130:    xsi_set_current_line(79, ng0);

LAB133:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB131:
LAB127:
LAB123:    goto LAB23;

LAB15:    xsi_set_current_line(84, ng0);

LAB134:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 2640U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB138;

LAB135:    if (t21 != 0)
        goto LAB137;

LAB136:    *((unsigned int *)t11) = 1;

LAB138:    memset(t30, 0, 8);
    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB139;

LAB140:    if (*((unsigned int *)t10) != 0)
        goto LAB141;

LAB142:    t31 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB143;

LAB144:    memcpy(t63, t30, 8);

LAB145:    t95 = (t63 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t63);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB157;

LAB158:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2640U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB164;

LAB161:    if (t21 != 0)
        goto LAB163;

LAB162:    *((unsigned int *)t11) = 1;

LAB164:    memset(t30, 0, 8);
    t9 = (t11 + 4);
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB165;

LAB166:    if (*((unsigned int *)t9) != 0)
        goto LAB167;

LAB168:    t29 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t29);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB169;

LAB170:    memcpy(t63, t30, 8);

LAB171:    t78 = (t63 + 4);
    t96 = *((unsigned int *)t78);
    t97 = (~(t96));
    t98 = *((unsigned int *)t63);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB183;

LAB184:    xsi_set_current_line(91, ng0);

LAB187:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 32, t5, 32);
    t7 = (t0 + 3840);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 32);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t12 = *((unsigned int *)t5);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB191;

LAB189:    if (*((unsigned int *)t5) == 0)
        goto LAB188;

LAB190:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;

LAB191:    t9 = (t11 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB192;

LAB193:    xsi_set_current_line(100, ng0);

LAB206:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);

LAB194:
LAB185:
LAB159:    goto LAB23;

LAB17:    xsi_set_current_line(106, ng0);

LAB207:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 2640U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t7);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB211;

LAB208:    if (t21 != 0)
        goto LAB210;

LAB209:    *((unsigned int *)t11) = 1;

LAB211:    t10 = (t11 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB212;

LAB213:    xsi_set_current_line(110, ng0);

LAB216:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB214:    goto LAB23;

LAB19:    xsi_set_current_line(115, ng0);

LAB217:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4160);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB23;

LAB27:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(32, ng0);

LAB32:    xsi_set_current_line(33, ng0);
    t10 = ((char*)((ng3)));
    t29 = (t0 + 4160);
    xsi_vlogvar_assign_value(t29, t10, 0, 0, 3);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB31;

LAB33:    xsi_set_current_line(35, ng0);

LAB36:    xsi_set_current_line(36, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 4160);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    goto LAB35;

LAB37:    xsi_set_current_line(37, ng0);

LAB40:    xsi_set_current_line(38, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 4160);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    goto LAB39;

LAB45:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t30) = 1;
    goto LAB50;

LAB49:    t29 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB50;

LAB51:    t35 = (t0 + 4320);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng6)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB57;

LAB54:    if (t51 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t39) = 1;

LAB57:    memset(t55, 0, 8);
    t56 = (t39 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t56) != 0)
        goto LAB60;

LAB61:    t64 = *((unsigned int *)t30);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t67 = (t30 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB62;

LAB63:
LAB64:    goto LAB53;

LAB56:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB57;

LAB58:    *((unsigned int *)t55) = 1;
    goto LAB61;

LAB60:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB61;

LAB62:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t30 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t30);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t87 = (t80 & t82);
    t88 = (t84 & t86);
    t89 = (~(t87));
    t90 = (~(t88));
    t91 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t91 & t89);
    t92 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB64;

LAB65:    xsi_set_current_line(45, ng0);

LAB68:    xsi_set_current_line(46, ng0);
    t101 = ((char*)((ng7)));
    t102 = (t0 + 4160);
    xsi_vlogvar_assign_value(t102, t101, 0, 0, 3);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB67;

LAB71:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB72;

LAB73:    *((unsigned int *)t30) = 1;
    goto LAB76;

LAB75:    t10 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB76;

LAB77:    t31 = (t0 + 4320);
    t35 = (t31 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng2)));
    memset(t39, 0, 8);
    t38 = (t36 + 4);
    t40 = (t37 + 4);
    t42 = *((unsigned int *)t36);
    t43 = *((unsigned int *)t37);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t38);
    t46 = *((unsigned int *)t40);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t38);
    t50 = *((unsigned int *)t40);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB83;

LAB80:    if (t51 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t39) = 1;

LAB83:    memset(t55, 0, 8);
    t54 = (t39 + 4);
    t57 = *((unsigned int *)t54);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t54) != 0)
        goto LAB86;

LAB87:    t64 = *((unsigned int *)t30);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t62 = (t30 + 4);
    t67 = (t55 + 4);
    t68 = (t63 + 4);
    t70 = *((unsigned int *)t62);
    t71 = *((unsigned int *)t67);
    t72 = (t70 | t71);
    *((unsigned int *)t68) = t72;
    t73 = *((unsigned int *)t68);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB88;

LAB89:
LAB90:    goto LAB79;

LAB82:    t41 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB83;

LAB84:    *((unsigned int *)t55) = 1;
    goto LAB87;

LAB86:    t56 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB87;

LAB88:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t63) = (t75 | t76);
    t69 = (t30 + 4);
    t77 = (t55 + 4);
    t79 = *((unsigned int *)t30);
    t80 = (~(t79));
    t81 = *((unsigned int *)t69);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t77);
    t86 = (~(t85));
    t8 = (t80 & t82);
    t87 = (t84 & t86);
    t89 = (~(t8));
    t90 = (~(t87));
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB90;

LAB91:    xsi_set_current_line(48, ng0);

LAB94:    xsi_set_current_line(49, ng0);
    t95 = ((char*)((ng1)));
    t101 = (t0 + 4160);
    xsi_vlogvar_assign_value(t101, t95, 0, 0, 3);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB93;

LAB97:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB99;

LAB98:    *((unsigned int *)t11) = 1;
    goto LAB99;

LAB101:    xsi_set_current_line(54, ng0);

LAB104:    xsi_set_current_line(55, ng0);
    t31 = ((char*)((ng6)));
    t35 = (t0 + 4320);
    xsi_vlogvar_assign_value(t35, t31, 0, 0, 1);
    goto LAB103;

LAB109:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(63, ng0);

LAB114:    xsi_set_current_line(64, ng0);
    t29 = ((char*)((ng3)));
    t31 = (t0 + 4160);
    xsi_vlogvar_assign_value(t31, t29, 0, 0, 3);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB113;

LAB119:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB120;

LAB121:    xsi_set_current_line(72, ng0);

LAB124:    xsi_set_current_line(73, ng0);
    t29 = ((char*)((ng9)));
    t31 = (t0 + 4160);
    xsi_vlogvar_assign_value(t31, t29, 0, 0, 3);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB123;

LAB125:    xsi_set_current_line(75, ng0);

LAB128:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t0 + 4160);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    goto LAB127;

LAB129:    xsi_set_current_line(77, ng0);

LAB132:    xsi_set_current_line(78, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4160);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    goto LAB131;

LAB137:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB138;

LAB139:    *((unsigned int *)t30) = 1;
    goto LAB142;

LAB141:    t29 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB142;

LAB143:    t35 = (t0 + 4320);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng6)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB149;

LAB146:    if (t51 != 0)
        goto LAB148;

LAB147:    *((unsigned int *)t39) = 1;

LAB149:    memset(t55, 0, 8);
    t56 = (t39 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB150;

LAB151:    if (*((unsigned int *)t56) != 0)
        goto LAB152;

LAB153:    t64 = *((unsigned int *)t30);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t67 = (t30 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB154;

LAB155:
LAB156:    goto LAB145;

LAB148:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB149;

LAB150:    *((unsigned int *)t55) = 1;
    goto LAB153;

LAB152:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB153;

LAB154:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t30 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t30);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t87 = (t80 & t82);
    t88 = (t84 & t86);
    t89 = (~(t87));
    t90 = (~(t88));
    t91 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t91 & t89);
    t92 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB156;

LAB157:    xsi_set_current_line(85, ng0);

LAB160:    xsi_set_current_line(86, ng0);
    t101 = ((char*)((ng7)));
    t102 = (t0 + 4160);
    xsi_vlogvar_assign_value(t102, t101, 0, 0, 3);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB159;

LAB163:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB164;

LAB165:    *((unsigned int *)t30) = 1;
    goto LAB168;

LAB167:    t10 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB168;

LAB169:    t31 = (t0 + 4320);
    t35 = (t31 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng2)));
    memset(t39, 0, 8);
    t38 = (t36 + 4);
    t40 = (t37 + 4);
    t42 = *((unsigned int *)t36);
    t43 = *((unsigned int *)t37);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t38);
    t46 = *((unsigned int *)t40);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t38);
    t50 = *((unsigned int *)t40);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB175;

LAB172:    if (t51 != 0)
        goto LAB174;

LAB173:    *((unsigned int *)t39) = 1;

LAB175:    memset(t55, 0, 8);
    t54 = (t39 + 4);
    t57 = *((unsigned int *)t54);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB176;

LAB177:    if (*((unsigned int *)t54) != 0)
        goto LAB178;

LAB179:    t64 = *((unsigned int *)t30);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t62 = (t30 + 4);
    t67 = (t55 + 4);
    t68 = (t63 + 4);
    t70 = *((unsigned int *)t62);
    t71 = *((unsigned int *)t67);
    t72 = (t70 | t71);
    *((unsigned int *)t68) = t72;
    t73 = *((unsigned int *)t68);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB180;

LAB181:
LAB182:    goto LAB171;

LAB174:    t41 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB175;

LAB176:    *((unsigned int *)t55) = 1;
    goto LAB179;

LAB178:    t56 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB179;

LAB180:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t63) = (t75 | t76);
    t69 = (t30 + 4);
    t77 = (t55 + 4);
    t79 = *((unsigned int *)t30);
    t80 = (~(t79));
    t81 = *((unsigned int *)t69);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t77);
    t86 = (~(t85));
    t8 = (t80 & t82);
    t87 = (t84 & t86);
    t89 = (~(t8));
    t90 = (~(t87));
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB182;

LAB183:    xsi_set_current_line(88, ng0);

LAB186:    xsi_set_current_line(89, ng0);
    t95 = ((char*)((ng5)));
    t101 = (t0 + 4160);
    xsi_vlogvar_assign_value(t101, t95, 0, 0, 3);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB185;

LAB188:    *((unsigned int *)t11) = 1;
    goto LAB191;

LAB192:    xsi_set_current_line(94, ng0);

LAB195:    xsi_set_current_line(95, ng0);
    t10 = (t0 + 3840);
    t29 = (t10 + 56U);
    t31 = *((char **)t29);
    t35 = ((char*)((ng8)));
    memset(t30, 0, 8);
    t36 = (t31 + 4);
    if (*((unsigned int *)t36) != 0)
        goto LAB197;

LAB196:    t37 = (t35 + 4);
    if (*((unsigned int *)t37) != 0)
        goto LAB197;

LAB200:    if (*((unsigned int *)t31) > *((unsigned int *)t35))
        goto LAB198;

LAB199:    t40 = (t30 + 4);
    t22 = *((unsigned int *)t40);
    t23 = (~(t22));
    t24 = *((unsigned int *)t30);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB201;

LAB202:    xsi_set_current_line(97, ng0);

LAB205:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);

LAB203:    goto LAB194;

LAB197:    t38 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB199;

LAB198:    *((unsigned int *)t30) = 1;
    goto LAB199;

LAB201:    xsi_set_current_line(95, ng0);

LAB204:    xsi_set_current_line(96, ng0);
    t41 = ((char*)((ng6)));
    t54 = (t0 + 4320);
    xsi_vlogvar_assign_value(t54, t41, 0, 0, 1);
    goto LAB203;

LAB210:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB211;

LAB212:    xsi_set_current_line(107, ng0);

LAB215:    xsi_set_current_line(108, ng0);
    t29 = ((char*)((ng9)));
    t31 = (t0 + 4160);
    xsi_vlogvar_assign_value(t31, t29, 0, 0, 3);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB214;

}

static void Always_122_1(char *t0)
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

LAB0:    t1 = (t0 + 5488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6816);
    *((int *)t2) = 1;
    t3 = (t0 + 5520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(122, ng0);

LAB5:    xsi_set_current_line(123, ng0);
    t4 = (t0 + 2160U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(125, ng0);

LAB10:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(123, ng0);

LAB9:    xsi_set_current_line(124, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Cont_131_2(char *t0)
{
    char t6[8];
    char t22[8];
    char t39[8];
    char t55[8];
    char t63[8];
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
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;

LAB0:    t1 = (t0 + 5736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    memcpy(t63, t22, 8);

LAB14:    t91 = (t0 + 6960);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    t94 = (t93 + 56U);
    t95 = *((char **)t94);
    memset(t95, 0, 8);
    t96 = 1U;
    t97 = t96;
    t98 = (t63 + 4);
    t99 = *((unsigned int *)t63);
    t96 = (t96 & t99);
    t100 = *((unsigned int *)t98);
    t97 = (t97 & t100);
    t101 = (t95 + 4);
    t102 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t102 | t96);
    t103 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t103 | t97);
    xsi_driver_vfirst_trans(t91, 0, 0);
    t104 = (t0 + 6832);
    *((int *)t104) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 4000);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng9)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB18;

LAB15:    if (t51 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t39) = 1;

LAB18:    memset(t55, 0, 8);
    t56 = (t39 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t56) != 0)
        goto LAB21;

LAB22:    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t55);
    t66 = (t64 | t65);
    *((unsigned int *)t63) = t66;
    t67 = (t22 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t55) = 1;
    goto LAB22;

LAB21:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB22;

LAB23:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t22 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (~(t79));
    t81 = *((unsigned int *)t22);
    t82 = (t81 & t80);
    t83 = *((unsigned int *)t78);
    t84 = (~(t83));
    t85 = *((unsigned int *)t55);
    t86 = (t85 & t84);
    t87 = (~(t82));
    t88 = (~(t86));
    t89 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t89 & t87);
    t90 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t90 & t88);
    goto LAB25;

}

static void Cont_132_3(char *t0)
{
    char t6[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 5984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    t22 = (t0 + 7024);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 6848);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Cont_133_4(char *t0)
{
    char t6[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 6232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    t22 = (t0 + 7088);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 6864);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Cont_134_5(char *t0)
{
    char t6[8];
    char t22[8];
    char t39[8];
    char t55[8];
    char t63[8];
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
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;

LAB0:    t1 = (t0 + 6480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    memcpy(t63, t22, 8);

LAB14:    t91 = (t0 + 7152);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    t94 = (t93 + 56U);
    t95 = *((char **)t94);
    memset(t95, 0, 8);
    t96 = 1U;
    t97 = t96;
    t98 = (t63 + 4);
    t99 = *((unsigned int *)t63);
    t96 = (t96 & t99);
    t100 = *((unsigned int *)t98);
    t97 = (t97 & t100);
    t101 = (t95 + 4);
    t102 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t102 | t96);
    t103 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t103 | t97);
    xsi_driver_vfirst_trans(t91, 0, 0);
    t104 = (t0 + 6880);
    *((int *)t104) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 4000);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng10)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB18;

LAB15:    if (t51 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t39) = 1;

LAB18:    memset(t55, 0, 8);
    t56 = (t39 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t39);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t56) != 0)
        goto LAB21;

LAB22:    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t55);
    t66 = (t64 | t65);
    *((unsigned int *)t63) = t66;
    t67 = (t22 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t55) = 1;
    goto LAB22;

LAB21:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB22;

LAB23:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t22 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (~(t79));
    t81 = *((unsigned int *)t22);
    t82 = (t81 & t80);
    t83 = *((unsigned int *)t78);
    t84 = (~(t83));
    t85 = *((unsigned int *)t55);
    t86 = (t85 & t84);
    t87 = (~(t82));
    t88 = (~(t86));
    t89 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t89 & t87);
    t90 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t90 & t88);
    goto LAB25;

}


extern void work_m_00000000002657789193_2943448091_init()
{
	static char *pe[] = {(void *)Always_27_0,(void *)Always_122_1,(void *)Cont_131_2,(void *)Cont_132_3,(void *)Cont_133_4,(void *)Cont_134_5};
	xsi_register_didat("work_m_00000000002657789193_2943448091", "isim/Lemming4_tb_isim_beh.exe.sim/work/m_00000000002657789193_2943448091.didat");
	xsi_register_executes(pe);
}
