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
    work_m_00000000000871862928_4066630463_init();
    work_m_00000000003528876987_2539103599_init();
    work_m_00000000000490710888_1733832700_init();
    work_m_00000000000575965865_1003191996_init();
    work_m_00000000000726624791_0757879789_init();
    work_m_00000000000327487895_0621066737_init();
    work_m_00000000000837710062_1785967555_init();
    work_m_00000000002559030437_1579609468_init();
    work_m_00000000000823104994_1264842247_init();
    work_m_00000000002250114818_0886308060_init();
    work_m_00000000002443677185_2957995619_init();
    work_m_00000000002816754410_4140825114_init();
    work_m_00000000002458691049_1984717613_init();
    work_m_00000000000985983238_3877310806_init();
    work_m_00000000001292392995_1131260308_init();


    xsi_register_tops("work_m_00000000001292392995_1131260308");


    return xsi_run_simulation(argc, argv);

}
