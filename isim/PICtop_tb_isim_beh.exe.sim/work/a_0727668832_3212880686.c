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
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2540846514_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );


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
    unsigned char t25;
    unsigned char t26;
    char *t27;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB12;

LAB13:    t8 = (unsigned char)0;

LAB14:    if (t8 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 5088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 9247);
    *((int *)t1) = 0;
    t3 = (t0 + 9251);
    *((int *)t3) = 63;
    t10 = 0;
    t11 = 63;

LAB5:    if (t10 <= t11)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(55, ng0);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t5 = t4;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 9247);
    t12 = *((int *)t6);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t7 = (t0 + 5264);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 8U);
    xsi_driver_first_trans_delta(t7, t16, 8U, 0LL);

LAB7:    t1 = (t0 + 9247);
    t10 = *((int *)t1);
    t2 = (t0 + 9251);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB8;

LAB9:    t12 = (t10 + 1);
    t10 = t12;
    t3 = (t0 + 9247);
    *((int *)t3) = t10;
    goto LAB5;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t23 = *((unsigned char *)t4);
    t24 = (t23 == (unsigned char)3);
    if (t24 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB3;

LAB12:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t21 = *((unsigned char *)t3);
    t22 = (t21 == (unsigned char)3);
    t8 = t22;
    goto LAB14;

LAB15:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t25 = *((unsigned char *)t5);
    t26 = (t25 == (unsigned char)3);
    if (t26 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (16 - 0);
    t14 = (t10 * 1);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (49 - 0);
    t14 = (t10 * 1);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast(t3);
    goto LAB16;

LAB18:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 8548U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t2);
    t11 = (t10 - 0);
    t14 = (t11 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 5264);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t6, 8U);
    xsi_driver_first_trans_delta(t17, t16, 8U, 0LL);
    goto LAB19;

}

static void work_a_0727668832_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t22 = xsi_get_transient_memory(8U);
    memset(t22, 0, 8U);
    t23 = t22;
    memset(t23, (unsigned char)4, 8U);
    t24 = (t0 + 5456);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 8U);
    xsi_driver_first_trans_fast_port(t24);

LAB2:    t29 = (t0 + 5104);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t2 = (t0 + 8548U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t11);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t16 = (t9 + t15);
    t17 = (t0 + 5456);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB5:    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0727668832_3212880686_p_2(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    int t23;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 9255);
    *((int *)t1) = 0;
    t2 = (t0 + 9259);
    *((int *)t2) = 7;
    t3 = 0;
    t4 = 7;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5648);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5712);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 5120);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8644U);
    t7 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t6, t5, 5);
    if (t7 != 0)
        goto LAB6;

LAB8:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8660U);
    t7 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t2, t1, 5);
    if (t7 != 0)
        goto LAB11;

LAB12:
LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8644U);
    t5 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t8, t2, t1, 1);
    t6 = (t8 + 12U);
    t13 = *((unsigned int *)t6);
    t14 = (1U * t13);
    t7 = (7U != t14);
    if (t7 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 5520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t5, 7U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t21 = (3 - 6);
    t13 = (t21 * -1);
    t14 = (1U * t13);
    t22 = (0 + t14);
    t1 = (t2 + t22);
    t7 = *((unsigned char *)t1);
    t5 = (t0 + 5520);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t5, 6U, 1, 0LL);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8660U);
    t5 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t8, t2, t1, 1);
    t6 = (t8 + 12U);
    t13 = *((unsigned int *)t6);
    t14 = (1U * t13);
    t7 = (7U != t14);
    if (t7 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 5584);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t5, 7U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 9255);
    t21 = *((int *)t1);
    t23 = (t21 - 7);
    t13 = (t23 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t1));
    t14 = (1U * t13);
    t22 = (0 + t14);
    t5 = (t2 + t22);
    t7 = *((unsigned char *)t5);
    t6 = (t0 + 5584);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t6, 6U, 1, 0LL);

LAB4:    t1 = (t0 + 9255);
    t3 = *((int *)t1);
    t2 = (t0 + 9259);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB19:    t21 = (t3 + 1);
    t3 = t21;
    t5 = (t0 + 9255);
    *((int *)t5) = t3;
    goto LAB2;

LAB6:    xsi_set_current_line(77, ng0);
    t9 = (t0 + 2792U);
    t10 = *((char **)t9);
    t9 = (t0 + 8644U);
    t11 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t10, t9, 3);
    t12 = (t8 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t15 = (7U != t14);
    if (t15 == 1)
        goto LAB9;

LAB10:    t16 = (t0 + 5520);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 7U);
    xsi_driver_first_trans_fast(t16);
    goto LAB7;

LAB9:    xsi_size_not_matching(7U, t14, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(79, ng0);
    t5 = (t0 + 2952U);
    t6 = *((char **)t5);
    t5 = (t0 + 8660U);
    t9 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t6, t5, 3);
    t10 = (t8 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t15 = (7U != t14);
    if (t15 == 1)
        goto LAB13;

LAB14:    t11 = (t0 + 5584);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 7U);
    xsi_driver_first_trans_fast(t11);
    goto LAB7;

LAB13:    xsi_size_not_matching(7U, t14, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(7U, t14, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(7U, t14, 0);
    goto LAB18;

}


extern void work_a_0727668832_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0727668832_3212880686_p_0,(void *)work_a_0727668832_3212880686_p_1,(void *)work_a_0727668832_3212880686_p_2};
	xsi_register_didat("work_a_0727668832_3212880686", "isim/PICtop_tb_isim_beh.exe.sim/work/a_0727668832_3212880686.didat");
	xsi_register_executes(pe);
}
