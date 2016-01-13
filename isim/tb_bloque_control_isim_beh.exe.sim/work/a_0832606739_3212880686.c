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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/ALU.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1854260743_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110411308_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2540846514_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2547962040_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2756063821_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2794316277_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3140849233_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    static char *nl0[] = {&&LAB31, &&LAB23, &&LAB24, &&LAB25, &&LAB26, &&LAB27, &&LAB28, &&LAB29, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16, &&LAB17, &&LAB18, &&LAB19, &&LAB20, &&LAB21, &&LAB22, &&LAB30};

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 4936);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5000);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5064);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(59, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5128);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5256);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5320);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5384);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5448);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t7 = (t0 + 8308U);
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t13, t6, t5, t8, t7);
    t10 = (t0 + 4936);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8368);
    t3 = 1;
    if (8U == 8U)
        goto LAB35;

LAB36:    t3 = 0;

LAB37:    if (t3 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB33:    goto LAB10;

LAB12:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t13, t2, t1, t6, t5);
    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8376);
    t3 = 1;
    if (8U == 8U)
        goto LAB44;

LAB45:    t3 = 0;

LAB46:    if (t3 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB42:    goto LAB10;

LAB13:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = ieee_p_1242562249_sub_2540846514_1035706684(IEEE_P_1242562249, t13, t2, t1, 1);
    t6 = (t0 + 4936);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB10;

LAB14:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = ieee_p_1242562249_sub_2547962040_1035706684(IEEE_P_1242562249, t13, t2, t1, 1);
    t6 = (t0 + 4936);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB10;

LAB15:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t7 = ieee_p_1242562249_sub_1854260743_1035706684(IEEE_P_1242562249, t13, t2, t1, t6, t5);
    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8384);
    t3 = 1;
    if (8U == 8U)
        goto LAB53;

LAB54:    t3 = 0;

LAB55:    if (t3 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB51:    goto LAB10;

LAB16:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t7 = ieee_p_1242562249_sub_2794316277_1035706684(IEEE_P_1242562249, t13, t2, t1, t6, t5);
    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8392);
    t3 = 1;
    if (8U == 8U)
        goto LAB62;

LAB63:    t3 = 0;

LAB64:    if (t3 != 0)
        goto LAB59;

LAB61:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB60:    goto LAB10;

LAB17:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t7 = ieee_p_1242562249_sub_2756063821_1035706684(IEEE_P_1242562249, t13, t2, t1, t6, t5);
    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8400);
    t3 = 1;
    if (8U == 8U)
        goto LAB71;

LAB72:    t3 = 0;

LAB73:    if (t3 != 0)
        goto LAB68;

LAB70:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB69:    goto LAB10;

LAB18:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB77;

LAB79:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB78:    goto LAB10;

LAB19:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t3 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB80;

LAB82:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB81:    goto LAB10;

LAB20:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t3 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB83;

LAB85:    xsi_set_current_line(142, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB84:    goto LAB10;

LAB21:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t4 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t2, t1, 48);
    if (t4 == 1)
        goto LAB89;

LAB90:    t3 = (unsigned char)0;

LAB91:    if (t3 != 0)
        goto LAB86;

LAB88:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 8408);
    t5 = (t0 + 4936);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB87:    goto LAB10;

LAB22:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8308U);
    t4 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t4 == 1)
        goto LAB95;

LAB96:    t3 = (unsigned char)0;

LAB97:    if (t3 != 0)
        goto LAB92;

LAB94:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 8416);
    t5 = (t0 + 4936);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB93:    goto LAB10;

LAB23:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB24:    xsi_set_current_line(165, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB25:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB26:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB10;

LAB27:    xsi_set_current_line(174, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB10;

LAB28:    xsi_set_current_line(177, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB29:    xsi_set_current_line(180, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB30:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5512);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(184, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB31:    goto LAB10;

LAB32:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 5192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB33;

LAB35:    t18 = 0;

LAB38:    if (t18 < 8U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t6 = (t2 + t18);
    t7 = (t1 + t18);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB36;

LAB40:    t18 = (t18 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(83, ng0);
    t8 = (t0 + 5192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB42;

LAB44:    t18 = 0;

LAB47:    if (t18 < 8U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t6 = (t2 + t18);
    t7 = (t1 + t18);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB45;

LAB49:    t18 = (t18 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(98, ng0);
    t8 = (t0 + 5192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB51;

LAB53:    t18 = 0;

LAB56:    if (t18 < 8U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t6 = (t2 + t18);
    t7 = (t1 + t18);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB54;

LAB58:    t18 = (t18 + 1);
    goto LAB56;

LAB59:    xsi_set_current_line(107, ng0);
    t8 = (t0 + 5192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB60;

LAB62:    t18 = 0;

LAB65:    if (t18 < 8U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t6 = (t2 + t18);
    t7 = (t1 + t18);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB63;

LAB67:    t18 = (t18 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(116, ng0);
    t8 = (t0 + 5192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB69;

LAB71:    t18 = 0;

LAB74:    if (t18 < 8U)
        goto LAB75;
    else
        goto LAB73;

LAB75:    t6 = (t2 + t18);
    t7 = (t1 + t18);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB72;

LAB76:    t18 = (t18 + 1);
    goto LAB74;

LAB77:    xsi_set_current_line(124, ng0);
    t7 = (t0 + 5192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB78;

LAB80:    xsi_set_current_line(132, ng0);
    t7 = (t0 + 5192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB81;

LAB83:    xsi_set_current_line(140, ng0);
    t7 = (t0 + 5192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB84;

LAB86:    xsi_set_current_line(148, ng0);
    t7 = (t0 + 2632U);
    t8 = *((char **)t7);
    t7 = (t0 + 8308U);
    t9 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t13, t8, t7, 48);
    t10 = (t0 + 4936);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB87;

LAB89:    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t11 = ieee_p_1242562249_sub_3140849233_1035706684(IEEE_P_1242562249, t6, t5, 57);
    t3 = t11;
    goto LAB91;

LAB92:    xsi_set_current_line(156, ng0);
    t7 = (t0 + 2632U);
    t8 = *((char **)t7);
    t7 = (t0 + 8308U);
    t9 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t8, t7, 48);
    t10 = (t0 + 4936);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB93;

LAB95:    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t5 = (t0 + 8308U);
    t11 = ieee_p_1242562249_sub_3140849233_1035706684(IEEE_P_1242562249, t6, t5, 9);
    t3 = t11;
    goto LAB97;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(193, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = xsi_get_transient_memory(8U);
    memset(t10, 0, 8U);
    t11 = t10;
    memset(t11, (unsigned char)4, 8U);
    t12 = (t0 + 5576);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 8U);
    xsi_driver_first_trans_fast_port(t12);

LAB2:    t17 = (t0 + 4856);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 5576);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/tb_bloque_control_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
