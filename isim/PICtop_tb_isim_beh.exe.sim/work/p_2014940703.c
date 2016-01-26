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



void work_p_2014940703_sub_4226975077_3878680290(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, char *t6)
{
    char t8[24];
    char t9[16];
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t8 + 4U);
    t14 = (t6 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t8 + 12U);
    *((char **)t15) = t9;
    t13 = (0 + t3);
    t16 = (t5 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t13, 1, 0LL);
    t20 = (8680.6000000000004 * 1000LL);
    xsi_process_wait(t1, t20);

LAB7:    t10 = (t1 + 88U);
    t16 = *((char **)t10);
    t17 = (t16 + 2480U);
    *((unsigned int *)t17) = 1U;
    t18 = (t1 + 88U);
    t19 = *((char **)t18);
    t21 = (t19 + 0U);
    getcontext(t21);
    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    t13 = *((unsigned int *)t24);
    if (t13 == 1)
        goto LAB8;

LAB9:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB5:
LAB6:
LAB4:    t12 = 0;
    t28 = 7;

LAB10:    if (t12 <= t28)
        goto LAB11;

LAB13:    t13 = (0 + t3);
    t10 = (t5 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t13, 1, 0LL);
    t20 = (8680.6000000000004 * 1000LL);
    xsi_process_wait(t1, t20);

LAB24:    t10 = (t1 + 88U);
    t16 = *((char **)t10);
    t17 = (t16 + 2480U);
    *((unsigned int *)t17) = 1U;
    t18 = (t1 + 88U);
    t19 = *((char **)t18);
    t21 = (t19 + 0U);
    getcontext(t21);
    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    t13 = *((unsigned int *)t24);
    if (t13 == 1)
        goto LAB25;

LAB26:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB22:
LAB23:
LAB21:    t13 = (0 + t3);
    t10 = (t5 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t13, 1, 0LL);

LAB1:    return;
LAB3:    *((char **)t11) = t6;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t10 = (t9 + 0U);
    t29 = *((int *)t10);
    t16 = (t9 + 8U);
    t30 = *((int *)t16);
    t31 = (t12 - t29);
    t13 = (t31 * t30);
    t17 = (t9 + 4U);
    t32 = *((int *)t17);
    xsi_vhdl_check_range_of_index(t29, t32, t30, t12);
    t33 = (1U * t13);
    t34 = (0 + t33);
    t18 = (t6 + t34);
    t14 = *((unsigned char *)t18);
    t35 = (0 + t3);
    t19 = (t5 + 56U);
    t21 = *((char **)t19);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t14;
    xsi_driver_first_trans_delta(t5, t35, 1, 0LL);
    t20 = (8680.6000000000004 * 1000LL);
    xsi_process_wait(t1, t20);

LAB17:    t10 = (t1 + 88U);
    t16 = *((char **)t10);
    t17 = (t16 + 2480U);
    *((unsigned int *)t17) = 1U;
    t18 = (t1 + 88U);
    t19 = *((char **)t18);
    t21 = (t19 + 0U);
    getcontext(t21);
    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    t13 = *((unsigned int *)t24);
    if (t13 == 1)
        goto LAB18;

LAB19:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t12 == t28)
        goto LAB13;

LAB20:    t29 = (t12 + 1);
    t12 = t29;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

}


extern void work_p_2014940703_init()
{
	static char *se[] = {(void *)work_p_2014940703_sub_4226975077_3878680290};
	xsi_register_didat("work_p_2014940703", "isim/PICtop_tb_isim_beh.exe.sim/work/p_2014940703.didat");
	xsi_register_subprogram_executes(se);
}
