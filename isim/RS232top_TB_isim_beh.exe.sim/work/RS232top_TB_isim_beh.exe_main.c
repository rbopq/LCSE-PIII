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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_1256623257;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0208855636_3212880686_init();
    work_a_0023892499_3212880686_init();
    work_a_0595992924_3212880686_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    xilinxcorelib_a_2181980785_3212880686_init();
    xilinxcorelib_a_2659544341_3212880686_init();
    xilinxcorelib_a_3744355222_3212880686_init();
    work_a_1156261981_3330682609_init();
    work_a_3445174976_1516540902_init();
    work_a_1578714642_3212880686_init();
    work_p_1256623257_init();
    work_a_0727668832_3212880686_init();
    work_a_2145945504_3212880686_init();
    work_a_3830602496_2372691052_init();
    work_a_1234411964_3212880686_init();
    work_a_3280568448_1949178628_init();


    xsi_register_tops("work_a_3280568448_1949178628");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_1256623257 = xsi_get_engine_memory("work_p_1256623257");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
