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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/ram_gp.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2145945504_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 3552);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 992U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB5;

LAB6:    t8 = (unsigned char)0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    if (t15 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB14;

LAB15:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t2 = (t0 + 5600U);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t2);
    t17 = (t16 - 64);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0U + t19);
    t21 = (t0 + 3616);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t6, 8U);
    xsi_driver_first_trans_delta(t21, t20, 8U, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 5600U);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t17 = (t16 - 64);
    t18 = (t17 * 1);
    xsi_vhdl_check_range_of_index(64, 255, 1, t16);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t5 = (t3 + t20);
    t6 = (t0 + 3552);
    t7 = (t6 + 56U);
    t21 = *((char **)t7);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB12;

}


extern void work_a_2145945504_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2145945504_3212880686_p_0};
	xsi_register_didat("work_a_2145945504_3212880686", "isim/RS232top_TB_isim_beh.exe.sim/work/a_2145945504_3212880686.didat");
	xsi_register_executes(pe);
}
