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

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 4152);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (75 * 1000LL);
    t7 = (t0 + 4152);
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

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4216);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (25 * 1000LL);
    t8 = (t0 + 4216);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(63, ng0);
    t7 = (50 * 1000LL);
    t2 = (t0 + 3328);
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

LAB0:    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7020);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(76, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7028);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(78, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7036);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(82, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7044);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(84, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7052);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(86, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7060);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(90, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7068);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(92, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7076);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(94, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7084);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(98, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7092);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(100, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7100);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(102, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7108);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(106, ng0);
    t7 = (100 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7116);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(108, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7124);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(110, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7132);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(114, ng0);
    t7 = (1000 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7140);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(116, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7148);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(118, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB72:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7156);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(122, ng0);
    t7 = (1000 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7164);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(124, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB82:    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

LAB80:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7172);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(126, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB81:    goto LAB80;

LAB83:    goto LAB81;

LAB84:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7180);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(130, ng0);
    t7 = (1000 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

LAB88:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7188);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(132, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7196);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(134, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3576);
    xsi_process_wait(t2, t7);

LAB98:    *((char **)t1) = &&LAB99;
    goto LAB1;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

LAB96:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3576);
    t3 = (t0 + 1312U);
    t4 = (t0 + 4280);
    t5 = (t0 + 7204);
    work_p_2014940703_sub_4226975077_3878680290(WORK_P_2014940703, t2, t3, 0U, 0U, t4, t5);
    xsi_set_current_line(170, ng0);

LAB102:    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB97:    goto LAB96;

LAB99:    goto LAB97;

LAB100:    goto LAB2;

LAB101:    goto LAB100;

LAB103:    goto LAB101;

}


extern void work_a_1176191674_1949178628_init()
{
	static char *pe[] = {(void *)work_a_1176191674_1949178628_p_0,(void *)work_a_1176191674_1949178628_p_1,(void *)work_a_1176191674_1949178628_p_2};
	xsi_register_didat("work_a_1176191674_1949178628", "isim/PICtop_tb_isim_beh.exe.sim/work/a_1176191674_1949178628.didat");
	xsi_register_executes(pe);
}
