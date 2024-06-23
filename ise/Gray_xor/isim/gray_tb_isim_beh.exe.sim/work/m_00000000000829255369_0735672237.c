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
static const char *ng0 = "D:/BUAA/practice/ise/Gray_xor/gray.v";
static int ng1[] = {0, 0};
static int ng2[] = {7, 0};
static int ng3[] = {1, 0};



static void Always_31_0(char *t0)
{
    char t13[8];
    char t19[8];
    char t23[8];
    char t31[8];
    char t73[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
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
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
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

LAB7:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t2) != 0)
        goto LAB12;

LAB13:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB14;

LAB15:    memcpy(t31, t13, 8);

LAB16:    t63 = (t31 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t31);
    t67 = (t66 & t65);
    t68 = (t67 != 0);
    if (t68 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t2) != 0)
        goto LAB35;

LAB36:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB37;

LAB38:    memcpy(t31, t13, 8);

LAB39:    t63 = (t31 + 4);
    t82 = *((unsigned int *)t63);
    t83 = (~(t82));
    t84 = *((unsigned int *)t31);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(40, ng0);

LAB55:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB53:
LAB31:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(32, ng0);

LAB9:    xsi_set_current_line(33, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB14:    t11 = (t0 + 2088);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    t18 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t20 = (t17 + 4);
    if (*((unsigned int *)t20) != 0)
        goto LAB18;

LAB17:    t21 = (t18 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB18;

LAB21:    if (*((unsigned int *)t17) < *((unsigned int *)t18))
        goto LAB19;

LAB20:    memset(t23, 0, 8);
    t24 = (t19 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t19);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t24) != 0)
        goto LAB24;

LAB25:    t32 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t23);
    t34 = (t32 & t33);
    *((unsigned int *)t31) = t34;
    t35 = (t13 + 4);
    t36 = (t23 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB26;

LAB27:
LAB28:    goto LAB16;

LAB18:    t22 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB20;

LAB19:    *((unsigned int *)t19) = 1;
    goto LAB20;

LAB22:    *((unsigned int *)t23) = 1;
    goto LAB25;

LAB24:    t30 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB25;

LAB26:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    t45 = (t13 + 4);
    t46 = (t23 + 4);
    t47 = *((unsigned int *)t13);
    t48 = (~(t47));
    t49 = *((unsigned int *)t45);
    t50 = (~(t49));
    t51 = *((unsigned int *)t23);
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
    goto LAB28;

LAB29:    xsi_set_current_line(35, ng0);

LAB32:    xsi_set_current_line(36, ng0);
    t69 = (t0 + 2088);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    t72 = ((char*)((ng3)));
    memset(t73, 0, 8);
    xsi_vlog_unsigned_add(t73, 32, t71, 3, t72, 32);
    t74 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t74, t73, 0, 0, 3, 0LL);
    goto LAB31;

LAB33:    *((unsigned int *)t13) = 1;
    goto LAB36;

LAB35:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB36;

LAB37:    t11 = (t0 + 2088);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    t18 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t20 = (t17 + 4);
    t21 = (t18 + 4);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t20);
    t29 = *((unsigned int *)t21);
    t32 = (t28 ^ t29);
    t33 = (t27 | t32);
    t34 = *((unsigned int *)t20);
    t38 = *((unsigned int *)t21);
    t39 = (t34 | t38);
    t40 = (~(t39));
    t41 = (t33 & t40);
    if (t41 != 0)
        goto LAB43;

LAB40:    if (t39 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t19) = 1;

LAB43:    memset(t23, 0, 8);
    t24 = (t19 + 4);
    t42 = *((unsigned int *)t24);
    t43 = (~(t42));
    t44 = *((unsigned int *)t19);
    t47 = (t44 & t43);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t24) != 0)
        goto LAB46;

LAB47:    t49 = *((unsigned int *)t13);
    t50 = *((unsigned int *)t23);
    t51 = (t49 & t50);
    *((unsigned int *)t31) = t51;
    t35 = (t13 + 4);
    t36 = (t23 + 4);
    t37 = (t31 + 4);
    t52 = *((unsigned int *)t35);
    t53 = *((unsigned int *)t36);
    t54 = (t52 | t53);
    *((unsigned int *)t37) = t54;
    t57 = *((unsigned int *)t37);
    t58 = (t57 != 0);
    if (t58 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB39;

LAB42:    t22 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t23) = 1;
    goto LAB47;

LAB46:    t30 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB47;

LAB48:    t59 = *((unsigned int *)t31);
    t60 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t59 | t60);
    t45 = (t13 + 4);
    t46 = (t23 + 4);
    t61 = *((unsigned int *)t13);
    t62 = (~(t61));
    t64 = *((unsigned int *)t45);
    t65 = (~(t64));
    t66 = *((unsigned int *)t23);
    t67 = (~(t66));
    t68 = *((unsigned int *)t46);
    t75 = (~(t68));
    t55 = (t62 & t65);
    t56 = (t67 & t75);
    t76 = (~(t55));
    t77 = (~(t56));
    t78 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t78 & t76);
    t79 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t79 & t77);
    t80 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t80 & t76);
    t81 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t81 & t77);
    goto LAB50;

LAB51:    xsi_set_current_line(37, ng0);

LAB54:    xsi_set_current_line(38, ng0);
    t69 = ((char*)((ng3)));
    t70 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t70, t69, 0, 0, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB53;

}

static void Cont_45_1(char *t0)
{
    char t3[8];
    char t6[8];
    char t18[8];
    char t27[8];
    char t44[8];
    char t56[8];
    char t65[8];
    char t82[8];
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
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
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
    char *t53;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
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

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2088);
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
    t15 = (t0 + 2088);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t19 = (t18 + 4);
    t20 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t19) = t26;
    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t18);
    t30 = (t28 ^ t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t18 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB4;

LAB5:
LAB6:    t41 = (t0 + 2088);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memset(t44, 0, 8);
    t45 = (t44 + 4);
    t46 = (t43 + 4);
    t47 = *((unsigned int *)t43);
    t48 = (t47 >> 2);
    t49 = (t48 & 1);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 >> 2);
    t52 = (t51 & 1);
    *((unsigned int *)t45) = t52;
    t53 = (t0 + 2088);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memset(t56, 0, 8);
    t57 = (t56 + 4);
    t58 = (t55 + 4);
    t59 = *((unsigned int *)t55);
    t60 = (t59 >> 1);
    t61 = (t60 & 1);
    *((unsigned int *)t56) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 1);
    t64 = (t63 & 1);
    *((unsigned int *)t57) = t64;
    t66 = *((unsigned int *)t44);
    t67 = *((unsigned int *)t56);
    t68 = (t66 ^ t67);
    *((unsigned int *)t65) = t68;
    t69 = (t44 + 4);
    t70 = (t56 + 4);
    t71 = (t65 + 4);
    t72 = *((unsigned int *)t69);
    t73 = *((unsigned int *)t70);
    t74 = (t72 | t73);
    *((unsigned int *)t71) = t74;
    t75 = *((unsigned int *)t71);
    t76 = (t75 != 0);
    if (t76 == 1)
        goto LAB7;

LAB8:
LAB9:    t79 = (t0 + 2088);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    memset(t82, 0, 8);
    t83 = (t82 + 4);
    t84 = (t81 + 4);
    t85 = *((unsigned int *)t81);
    t86 = (t85 >> 2);
    t87 = (t86 & 1);
    *((unsigned int *)t82) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 >> 2);
    t90 = (t89 & 1);
    *((unsigned int *)t83) = t90;
    xsi_vlogtype_concat(t3, 3, 3, 3U, t82, 1, t65, 1, t27, 1);
    t91 = (t0 + 3672);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    t94 = (t93 + 56U);
    t95 = *((char **)t94);
    memset(t95, 0, 8);
    t96 = 7U;
    t97 = t96;
    t98 = (t3 + 4);
    t99 = *((unsigned int *)t3);
    t96 = (t96 & t99);
    t100 = *((unsigned int *)t98);
    t97 = (t97 & t100);
    t101 = (t95 + 4);
    t102 = *((unsigned int *)t95);
    *((unsigned int *)t95) = (t102 | t96);
    t103 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t103 | t97);
    xsi_driver_vfirst_trans(t91, 0, 2);
    t104 = (t0 + 3592);
    *((int *)t104) = 1;

LAB1:    return;
LAB4:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    goto LAB6;

LAB7:    t77 = *((unsigned int *)t65);
    t78 = *((unsigned int *)t71);
    *((unsigned int *)t65) = (t77 | t78);
    goto LAB9;

}


extern void work_m_00000000000829255369_0735672237_init()
{
	static char *pe[] = {(void *)Always_31_0,(void *)Cont_45_1};
	xsi_register_didat("work_m_00000000000829255369_0735672237", "isim/gray_tb_isim_beh.exe.sim/work/m_00000000000829255369_0735672237.didat");
	xsi_register_executes(pe);
}
