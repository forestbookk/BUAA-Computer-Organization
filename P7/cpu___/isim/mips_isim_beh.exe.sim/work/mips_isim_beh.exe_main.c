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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002376983403_4066630463_init();
    work_m_00000000000723758984_2539103599_init();
    work_m_00000000001839917503_1733832700_init();
    work_m_00000000000882964778_1003191996_init();
    work_m_00000000004090588726_0757879789_init();
    work_m_00000000000327487895_0621066737_init();
    work_m_00000000000837710062_1785967555_init();
    work_m_00000000002559030437_1579609468_init();
    work_m_00000000001672838271_1264842247_init();
    work_m_00000000001600276767_0886308060_init();
    work_m_00000000003605276343_4111503280_init();
    work_m_00000000000295241269_2957995619_init();
    work_m_00000000003148735662_4140825114_init();
    work_m_00000000000258455558_3975733304_init();
    work_m_00000000001027571110_1984717613_init();
    work_m_00000000003488911891_3508565487_init();
    work_m_00000000003594427679_0156190743_init();
    work_m_00000000000563044049_0053799672_init();
    work_m_00000000003349375228_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003349375228_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
