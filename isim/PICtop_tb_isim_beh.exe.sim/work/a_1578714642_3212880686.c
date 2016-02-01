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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/dma.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_1578714642_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char t18[16];
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
    char *t14;
    char *t15;
    int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB7, &&LAB8, &&LAB6};

LAB0:    xsi_set_current_line(60, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 6336);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(61, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 6400);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 6464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 6528);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6592);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 6720);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6848);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 6912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t8;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 6976);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t8);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6240);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB12;

LAB13:    t9 = (unsigned char)0;

LAB14:    if (t9 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB15;

LAB16:
LAB10:    goto LAB2;

LAB4:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t8 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 2);
    if (t8 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6848);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB25;

LAB26:    t8 = (unsigned char)0;

LAB27:    if (t8 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB18:    goto LAB2;

LAB5:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB30;

LAB32:
LAB31:    goto LAB2;

LAB6:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t10 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, 2);
    if (t10 == 1)
        goto LAB39;

LAB40:    t9 = (unsigned char)0;

LAB41:    if (t9 == 1)
        goto LAB36;

LAB37:    t8 = (unsigned char)0;

LAB38:    if (t8 != 0)
        goto LAB33;

LAB35:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t8 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 2);
    if (t8 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t8 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 3);
    if (t8 != 0)
        goto LAB48;

LAB49:
LAB34:    goto LAB2;

LAB7:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 6912);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 10682);
    t3 = (t0 + 6400);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 4688U);
    t2 = *((char **)t1);
    t19 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t19, 8);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t3 = (t0 + 10628U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t1, t17, t4, t3);
    t6 = (t0 + 6336);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t20 = *((char **)t15);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(132, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, 0, 3);
    t8 = (3U != 3U);
    if (t8 == 1)
        goto LAB50;

LAB51:    t2 = (t0 + 6976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t1, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    goto LAB2;

LAB9:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 6912);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB10;

LAB12:    t3 = (t0 + 1512U);
    t5 = *((char **)t3);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB14;

LAB15:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB17:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 6912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(91, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, 0, 3);
    t8 = (3U != 3U);
    if (t8 == 1)
        goto LAB20;

LAB21:    t2 = (t0 + 6976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t1, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6528);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB18;

LAB20:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 6720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4688U);
    t2 = *((char **)t1);
    t19 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t18, t19, 8);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t3 = (t0 + 10628U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t17, t1, t18, t4, t3);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t5, t17, 4);
    t7 = (t0 + 6336);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t20 = (t15 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 6528);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t3 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t4 = (t16 + 12U);
    t22 = *((unsigned int *)t4);
    t23 = (1U * t22);
    t8 = (3U != t23);
    if (t8 == 1)
        goto LAB28;

LAB29:    t5 = (t0 + 6976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB23;

LAB25:    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t8 = t12;
    goto LAB27;

LAB28:    xsi_size_not_matching(3U, t23, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 6592);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB31;

LAB33:    xsi_set_current_line(113, ng0);
    t3 = (t0 + 6592);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 4688U);
    t2 = *((char **)t1);
    t19 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t19, 8);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t3 = (t0 + 10628U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t1, t17, t4, t3);
    t6 = (t0 + 6336);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t20 = *((char **)t15);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 6464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t3 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t4 = (t16 + 12U);
    t22 = *((unsigned int *)t4);
    t23 = (1U * t22);
    t8 = (3U != t23);
    if (t8 == 1)
        goto LAB42;

LAB43:    t5 = (t0 + 6976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB34;

LAB36:    t3 = (t0 + 1512U);
    t5 = *((char **)t3);
    t13 = *((unsigned char *)t5);
    t24 = (t13 == (unsigned char)2);
    t8 = t24;
    goto LAB38;

LAB39:    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    t9 = t12;
    goto LAB41;

LAB42:    xsi_size_not_matching(3U, t23, 0);
    goto LAB43;

LAB44:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 6400);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 4688U);
    t2 = *((char **)t1);
    t19 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t19, 8);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t3 = (t0 + 10628U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t1, t17, t4, t3);
    t6 = (t0 + 6336);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t20 = *((char **)t15);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 6464);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 10628U);
    t3 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t4 = (t16 + 12U);
    t22 = *((unsigned int *)t4);
    t23 = (1U * t22);
    t8 = (3U != t23);
    if (t8 == 1)
        goto LAB46;

LAB47:    t5 = (t0 + 6976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB34;

LAB46:    xsi_size_not_matching(3U, t23, 0);
    goto LAB47;

LAB48:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 6912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    goto LAB34;

LAB50:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB51;

}

static void work_a_1578714642_3212880686_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(182, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 6256);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 7040);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(184, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 0, 3);
    t3 = (3U != 3U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 7104);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(186, ng0);
    t2 = (t0 + 4072U);
    t6 = *((char **)t2);
    t2 = (t0 + 7104);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t6, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(187, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7040);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB9:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB11;

}


extern void work_a_1578714642_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1578714642_3212880686_p_0,(void *)work_a_1578714642_3212880686_p_1};
	xsi_register_didat("work_a_1578714642_3212880686", "isim/PICtop_tb_isim_beh.exe.sim/work/a_1578714642_3212880686.didat");
	xsi_register_executes(pe);
}
