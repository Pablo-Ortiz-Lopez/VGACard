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

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3892401115_3212880686_p_0(char *t0)
{
    char t19[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned char t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;

LAB0:    xsi_set_current_line(29, ng0);
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
LAB3:    t1 = (t0 + 3904);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 3984);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 4048);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, (unsigned char)2);
    t11 = (t9 == t10);
    t3 = t11;
    goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t14 = (6 - 5);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t7 + t16);
    t8 = (t0 + 1832U);
    t17 = *((char **)t8);
    t18 = *((unsigned char *)t17);
    t20 = ((IEEE_P_2592010699) + 4000);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 5;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (0 - 5);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t8 = xsi_base_array_concat(t8, t19, t20, (char)97, t2, t21, (char)99, t18, (char)101);
    t25 = (6U + 1U);
    t26 = (7U != t25);
    if (t26 == 1)
        goto LAB13;

LAB14:    t23 = (t0 + 4112);
    t27 = (t23 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t8, 7U);
    xsi_driver_first_trans_fast(t23);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t24 = *((int *)t2);
    t3 = (t24 == 7);
    if (t3 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t24 = *((int *)t2);
    t31 = (t24 + 1);
    t1 = (t0 + 3984);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t31;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4240);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4304);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB16:    goto LAB11;

LAB13:    xsi_size_not_matching(7U, t25, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 3984);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t3 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 6232U);
    t1 = xsi_base_array_concat(t1, t19, t6, (char)97, t2, t7, (char)99, t3, (char)101);
    t14 = (7U + 1U);
    t4 = (8U != t14);
    if (t4 == 1)
        goto LAB18;

LAB19:    t8 = (t0 + 4176);
    t17 = (t8 + 56U);
    t20 = *((char **)t17);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t1, 8U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4048);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4304);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB21:    goto LAB16;

LAB18:    xsi_size_not_matching(8U, t14, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB21;

}


extern void work_a_3892401115_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3892401115_3212880686_p_0};
	xsi_register_didat("work_a_3892401115_3212880686", "isim/SPI_SLAVE_isim_beh.exe.sim/work/a_3892401115_3212880686.didat");
	xsi_register_executes(pe);
}
