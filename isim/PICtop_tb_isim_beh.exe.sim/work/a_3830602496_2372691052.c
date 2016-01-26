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
static const char *ng0 = "C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/RAM.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );


static void work_a_3830602496_2372691052_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
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
    char *t18;

LAB0:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 8012U);
    t4 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t3, t2, 64);
    if (t4 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 5096);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)4;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5000);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 5096);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = (t0 + 1672U);
    t6 = *((char **)t5);
    t5 = (t0 + 8012U);
    t7 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t6, t5, 255);
    t1 = t7;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3830602496_2372691052_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
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
    char *t18;

LAB0:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 8012U);
    t4 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t3, t2, 0);
    if (t4 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 5160);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)4;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5016);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 5160);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = (t0 + 1672U);
    t6 = *((char **)t5);
    t5 = (t0 + 8012U);
    t7 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t6, t5, 64);
    t1 = t7;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_3830602496_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3830602496_2372691052_p_0,(void *)work_a_3830602496_2372691052_p_1};
	xsi_register_didat("work_a_3830602496_2372691052", "isim/PICtop_tb_isim_beh.exe.sim/work/a_3830602496_2372691052.didat");
	xsi_register_executes(pe);
}
