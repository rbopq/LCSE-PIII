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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/tb_PICtop.vhd";
extern char *WORK_P_2014940703;

void work_p_2014940703_sub_4226975077_3878680290(char *, char *, char *, unsigned int , unsigned int , char *, char *);


static void work_a_1176191674_1949178628_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (75 * 1000LL);
    t7 = (t0 + 4032);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1176191674_1949178628_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (25 * 1000LL);
    t8 = (t0 + 4096);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(61, ng0);
    t7 = (50 * 1000LL);
    t2 = (t0 + 3208);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_1176191674_1949178628_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6690);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(73, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6698);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(75, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6706);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(78, ng0);
    t7 = (1000 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6714);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(80, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6722);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(82, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6730);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(85, ng0);
    t7 = (1000 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6738);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(87, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6746);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(89, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3456);
    xsi_process_wait(t2, t7);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3456);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4160);
    t5 = (t0 + 6754);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(91, ng0);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    goto LAB2;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

}


extern void work_a_1176191674_1949178628_init()
{
	static char *pe[] = {(void *)work_a_1176191674_1949178628_p_0,(void *)work_a_1176191674_1949178628_p_1,(void *)work_a_1176191674_1949178628_p_2};
	xsi_register_didat("work_a_1176191674_1949178628", "isim/PICtop_tb_isim_beh.exe.sim/work/a_1176191674_1949178628.didat");
	xsi_register_executes(pe);
}
