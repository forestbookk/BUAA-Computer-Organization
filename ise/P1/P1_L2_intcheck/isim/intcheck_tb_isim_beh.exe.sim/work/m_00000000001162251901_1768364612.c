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
static const char *ng0 = "D:/BUAA/practice/ise/P1_L2_intcheck/intcheck_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {105, 0};
static int ng4[] = {110, 0};
static int ng5[] = {116, 0};
static int ng6[] = {32, 0};
static int ng7[] = {65, 0};
static int ng8[] = {59, 0};
static int ng9[] = {98, 0};
static int ng10[] = {95, 0};
static int ng11[] = {49, 0};
static int ng12[] = {44, 0};
static int ng13[] = {99, 0};
static int ng14[] = {100, 0};
static int ng15[] = {101, 0};
static int ng16[] = {91, 0};
static int ng17[] = {50, 0};
static int ng18[] = {93, 0};
static int ng19[] = {102, 0};
static int ng20[] = {103, 0};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB36:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB38:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB39:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB41:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB42:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB43:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB45:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB46:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB47:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB48:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB49:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB50:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB51:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB52:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB53:    xsi_set_current_line(102, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB54:    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB55:    xsi_set_current_line(104, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB56:    xsi_set_current_line(105, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB57:    xsi_set_current_line(106, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB58:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB59:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB60:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB1;

}

static void Always_111_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2904);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1608);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}


extern void work_m_00000000001162251901_1768364612_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_111_1};
	xsi_register_didat("work_m_00000000001162251901_1768364612", "isim/intcheck_tb_isim_beh.exe.sim/work/m_00000000001162251901_1768364612.didat");
	xsi_register_executes(pe);
}
