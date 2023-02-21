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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pablo/ise/VGA/SPI_SLAVE.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3892401115_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(38, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4568);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4472);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3892401115_3212880686_p_1(char *t0)
{
    char t22[16];
    char t24[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned char t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4488);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4696);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t5 = (t0 + 4760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(46, ng0);
    t1 = xsi_get_transient_memory(31U);
    memset(t1, 0, 31U);
    t2 = t1;
    memset(t2, (unsigned char)2, 31U);
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 31U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 4888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4952);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)2);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, (unsigned char)2);
    t12 = (t10 == t11);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2632U);
    t7 = *((char **)t2);
    t15 = *((int *)t7);
    t16 = (t15 == 4);
    if (t16 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t17 = (30 - 29);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t3 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t24 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 29;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t15 = (0 - 29);
    t28 = (t15 * -1);
    t28 = (t28 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t28;
    t5 = xsi_base_array_concat(t5, t22, t7, (char)97, t1, t24, (char)99, t3, (char)101);
    t28 = (30U + 1U);
    t4 = (31U != t28);
    if (t4 == 1)
        goto LAB18;

LAB19:    t9 = (t0 + 4824);
    t20 = (t9 + 56U);
    t23 = *((char **)t20);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 31U);
    xsi_driver_first_trans_fast(t9);

LAB14:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t3 = (t15 == 7);
    if (t3 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t27 = (t15 + 1);
    t1 = (t0 + 4632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t27;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4952);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB21:    goto LAB11;

LAB13:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1992U);
    t8 = *((char **)t2);
    t17 = (6 - 5);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t8 + t19);
    t9 = (t0 + 1832U);
    t20 = *((char **)t9);
    t21 = *((unsigned char *)t20);
    t23 = ((IEEE_P_2592010699) + 4000);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 5;
    t26 = (t25 + 4U);
    *((int *)t26) = 0;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 5);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t9 = xsi_base_array_concat(t9, t22, t23, (char)97, t2, t24, (char)99, t21, (char)101);
    t28 = (6U + 1U);
    t29 = (7U != t28);
    if (t29 == 1)
        goto LAB16;

LAB17:    t26 = (t0 + 4760);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t9, 7U);
    xsi_driver_first_trans_fast(t26);
    goto LAB14;

LAB16:    xsi_size_not_matching(7U, t28, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(31U, t28, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t3 = (t15 == 4);
    if (t3 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t3 = (t15 == 3);
    if (t3 != 0)
        goto LAB30;

LAB32:
LAB31:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t27 = (t15 + 1);
    t1 = (t0 + 4696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t27;
    xsi_driver_first_trans_fast(t1);

LAB24:    goto LAB21;

LAB23:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 7224U);
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t22, t5, t1, 1);
    t7 = (t22 + 12U);
    t17 = *((unsigned int *)t7);
    t18 = (1U * t17);
    t4 = (32U != t18);
    if (t4 == 1)
        goto LAB26;

LAB27:    t8 = (t0 + 4888);
    t9 = (t8 + 56U);
    t20 = *((char **)t9);
    t23 = (t20 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t6, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t3 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 7208U);
    t1 = xsi_base_array_concat(t1, t22, t6, (char)97, t2, t7, (char)99, t3, (char)101);
    t17 = (7U + 1U);
    t4 = (8U != t17);
    if (t4 == 1)
        goto LAB28;

LAB29:    t8 = (t0 + 5016);
    t9 = (t8 + 56U);
    t20 = *((char **)t9);
    t23 = (t20 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t1, 8U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4952);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

LAB26:    xsi_size_not_matching(32U, t18, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(8U, t17, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t4 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t0 + 7240U);
    t1 = xsi_base_array_concat(t1, t24, t7, (char)97, t5, t8, (char)99, t4, (char)101);
    t9 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t22, t1, t24, 1);
    t20 = (t22 + 12U);
    t17 = *((unsigned int *)t20);
    t18 = (1U * t17);
    t10 = (32U != t18);
    if (t10 == 1)
        goto LAB33;

LAB34:    t23 = (t0 + 4888);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t9, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB31;

LAB33:    xsi_size_not_matching(32U, t18, 0);
    goto LAB34;

}


extern void work_a_3892401115_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3892401115_3212880686_p_0,(void *)work_a_3892401115_3212880686_p_1};
	xsi_register_didat("work_a_3892401115_3212880686", "isim/SPI_SLAVE_isim_beh.exe.sim/work/a_3892401115_3212880686.didat");
	xsi_register_executes(pe);
}
