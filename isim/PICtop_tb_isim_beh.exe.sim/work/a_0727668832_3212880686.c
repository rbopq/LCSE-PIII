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
    unsigned char t25;
    unsigned char t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 4936);
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
LAB3:    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 8787);
    *((int *)t1) = 0;
    t3 = (t0 + 8791);
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
    t6 = (t0 + 8787);
    t12 = *((int *)t6);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t7 = (t0 + 5000);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 8U);
    xsi_driver_first_trans_delta(t7, t16, 8U, 0LL);

LAB7:    t1 = (t0 + 8787);
    t10 = *((int *)t1);
    t2 = (t0 + 8791);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB8;

LAB9:    t12 = (t10 + 1);
    t10 = t12;
    t3 = (t0 + 8787);
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
LAB19:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (16 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 7U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (17 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 6U, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (18 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 5U, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (19 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 4U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (20 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 3U, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (21 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 2U, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (22 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 1U, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = (0 - 7);
    t14 = (t10 * -1);
    t15 = (1U * t14);
    t11 = (23 - 0);
    t16 = (t11 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t8 = *((unsigned char *)t1);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t8;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t14 = (7 - 3);
    t15 = (t14 * 1U);
    t10 = (49 - 0);
    t16 = (t10 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t3 = (t0 + 8795);
    t11 = xsi_mem_cmp(t3, t1, 4U);
    if (t11 == 1)
        goto LAB22;

LAB33:    t5 = (t0 + 8799);
    t12 = xsi_mem_cmp(t5, t1, 4U);
    if (t12 == 1)
        goto LAB23;

LAB34:    t7 = (t0 + 8803);
    t13 = xsi_mem_cmp(t7, t1, 4U);
    if (t13 == 1)
        goto LAB24;

LAB35:    t18 = (t0 + 8807);
    t31 = xsi_mem_cmp(t18, t1, 4U);
    if (t31 == 1)
        goto LAB25;

LAB36:    t20 = (t0 + 8811);
    t32 = xsi_mem_cmp(t20, t1, 4U);
    if (t32 == 1)
        goto LAB26;

LAB37:    t33 = (t0 + 8815);
    t35 = xsi_mem_cmp(t33, t1, 4U);
    if (t35 == 1)
        goto LAB27;

LAB38:    t36 = (t0 + 8819);
    t38 = xsi_mem_cmp(t36, t1, 4U);
    if (t38 == 1)
        goto LAB28;

LAB39:    t39 = (t0 + 8823);
    t41 = xsi_mem_cmp(t39, t1, 4U);
    if (t41 == 1)
        goto LAB29;

LAB40:    t42 = (t0 + 8827);
    t44 = xsi_mem_cmp(t42, t1, 4U);
    if (t44 == 1)
        goto LAB30;

LAB41:    t45 = (t0 + 8831);
    t47 = xsi_mem_cmp(t45, t1, 4U);
    if (t47 == 1)
        goto LAB31;

LAB42:
LAB32:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 8905);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);

LAB21:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t10 = (49 - 0);
    t16 = (t10 * 1);
    t28 = (8U * t16);
    t29 = (0 + t28);
    t30 = (t29 + t15);
    t1 = (t2 + t30);
    t3 = (t0 + 8912);
    t11 = xsi_mem_cmp(t3, t1, 4U);
    if (t11 == 1)
        goto LAB45;

LAB56:    t5 = (t0 + 8916);
    t12 = xsi_mem_cmp(t5, t1, 4U);
    if (t12 == 1)
        goto LAB46;

LAB57:    t7 = (t0 + 8920);
    t13 = xsi_mem_cmp(t7, t1, 4U);
    if (t13 == 1)
        goto LAB47;

LAB58:    t18 = (t0 + 8924);
    t31 = xsi_mem_cmp(t18, t1, 4U);
    if (t31 == 1)
        goto LAB48;

LAB59:    t20 = (t0 + 8928);
    t32 = xsi_mem_cmp(t20, t1, 4U);
    if (t32 == 1)
        goto LAB49;

LAB60:    t33 = (t0 + 8932);
    t35 = xsi_mem_cmp(t33, t1, 4U);
    if (t35 == 1)
        goto LAB50;

LAB61:    t36 = (t0 + 8936);
    t38 = xsi_mem_cmp(t36, t1, 4U);
    if (t38 == 1)
        goto LAB51;

LAB62:    t39 = (t0 + 8940);
    t41 = xsi_mem_cmp(t39, t1, 4U);
    if (t41 == 1)
        goto LAB52;

LAB63:    t42 = (t0 + 8944);
    t44 = xsi_mem_cmp(t42, t1, 4U);
    if (t44 == 1)
        goto LAB53;

LAB64:    t45 = (t0 + 8948);
    t47 = xsi_mem_cmp(t45, t1, 4U);
    if (t47 == 1)
        goto LAB54;

LAB65:
LAB55:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 9022);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);

LAB44:    goto LAB16;

LAB18:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 8088U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t2);
    t11 = (t10 - 0);
    t14 = (t11 * 1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 5000);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t6, 8U);
    xsi_driver_first_trans_delta(t17, t16, 8U, 0LL);
    goto LAB19;

LAB22:    xsi_set_current_line(74, ng0);
    t48 = (t0 + 8835);
    t50 = (t0 + 5128);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t48, 7U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB21;

LAB23:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 8842);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB24:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8849);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB25:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 8856);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB26:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 8863);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB27:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 8870);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB28:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 8877);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB29:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 8884);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB30:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 8891);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB31:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 8898);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB21;

LAB43:;
LAB45:    xsi_set_current_line(99, ng0);
    t48 = (t0 + 8952);
    t50 = (t0 + 5192);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t48, 7U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB44;

LAB46:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 8959);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB47:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 8966);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB48:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 8973);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB49:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8980);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB50:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 8987);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB51:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 8994);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB52:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 9001);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB53:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 9008);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB54:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 9015);
    t3 = (t0 + 5192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB44;

LAB66:;
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

LAB0:    xsi_set_current_line(125, ng0);
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
    t24 = (t0 + 5256);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 8U);
    xsi_driver_first_trans_fast_port(t24);

LAB2:    t29 = (t0 + 4856);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t2 = (t0 + 8088U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t11);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t16 = (t9 + t15);
    t17 = (t0 + 5256);
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


extern void work_a_0727668832_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0727668832_3212880686_p_0,(void *)work_a_0727668832_3212880686_p_1};
	xsi_register_didat("work_a_0727668832_3212880686", "isim/PICtop_tb_isim_beh.exe.sim/work/a_0727668832_3212880686.didat");
	xsi_register_executes(pe);
}
