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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/ram_peripheals.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_0727668832_3212880686_p_0(char *t0)
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
    int t10;
    int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 4512);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 992U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB13;

LAB14:    t8 = (unsigned char)0;

LAB15:    if (t8 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB3:    t1 = (t0 + 4432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 7876);
    *((int *)t1) = 0;
    t3 = (t0 + 7880);
    *((int *)t3) = 63;
    t10 = 0;
    t11 = 63;

LAB5:    if (t10 <= t11)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(53, ng0);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t5 = t4;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 7876);
    t12 = *((int *)t6);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t7 = (t0 + 4576);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 8U);
    xsi_driver_first_trans_delta(t7, t16, 8U, 0LL);

LAB7:    t1 = (t0 + 7876);
    t10 = *((int *)t1);
    t2 = (t0 + 7880);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB8;

LAB9:    t12 = (t10 + 1);
    t10 = t12;
    t3 = (t0 + 7876);
    *((int *)t3) = t10;
    goto LAB5;

LAB10:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t23 = *((unsigned char *)t4);
    t24 = (t23 == (unsigned char)3);
    if (t24 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB19;

LAB20:
LAB17:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t10 = (16 - 0);
    t14 = (t10 * 1);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4640);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB13:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t21 = *((unsigned char *)t3);
    t22 = (t21 == (unsigned char)3);
    t8 = t22;
    goto LAB15;

LAB16:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7200U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t2);
    t11 = (t10 - 0);
    t14 = (t11 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t7 = (t0 + 4576);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_delta(t7, t16, 8U, 0LL);
    goto LAB17;

LAB19:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 7200U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t11 = (t10 - 0);
    t14 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t10);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t5 = (t3 + t16);
    t6 = (t0 + 4512);
    t7 = (t6 + 56U);
    t17 = *((char **)t7);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB17;

}


extern void work_a_0727668832_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0727668832_3212880686_p_0};
	xsi_register_didat("work_a_0727668832_3212880686", "isim/RS232top_TB_isim_beh.exe.sim/work/a_0727668832_3212880686.didat");
	xsi_register_executes(pe);
}
