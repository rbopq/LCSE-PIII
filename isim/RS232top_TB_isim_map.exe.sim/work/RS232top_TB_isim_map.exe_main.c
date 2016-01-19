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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_1598933020_2000130859_2626306252_init();
    simprim_a_0864399009_2000130859_2626306252_init();
    simprim_a_2421649886_2000130859_2626306252_init();
    simprim_a_2421649886_2000130859_2638752507_init();
    simprim_a_2421649886_2000130859_0060194408_init();
    simprim_a_3257996410_2000130859_0060194408_init();
    simprim_a_2421649886_2000130859_1872353531_init();
    simprim_a_1598933020_2000130859_1872353531_init();
    simprim_a_0864399009_2000130859_1872353531_init();
    simprim_a_2421649886_2000130859_1851503308_init();
    simprim_a_2421649886_2000130859_2550611070_init();
    simprim_a_3257996410_2000130859_2550611070_init();
    simprim_a_4267290324_2000130859_1609545823_init();
    simprim_a_1573881496_2000130859_1609545823_init();
    simprim_a_4267290324_2000130859_1580061288_init();
    simprim_a_1573881496_2000130859_1580061288_init();
    simprim_a_2125052363_2000130859_2764376926_init();
    simprim_a_2262339245_2000130859_2764376926_init();
    simprim_a_3253818684_2000130859_2764376926_init();
    simprim_a_2626447869_2000130859_2768724329_init();
    simprim_a_2702367778_2000130859_2768724329_init();
    simprim_a_0942486005_2000130859_2710183387_init();
    simprim_a_0740039068_2000130859_0623897407_init();
    simprim_a_2582045334_2000130859_0030457905_init();
    simprim_a_0255996559_2000130859_0030457905_init();
    simprim_a_3371089468_2000130859_0030457905_init();
    simprim_a_0568348993_2000130859_0030457905_init();
    simprim_a_2421649886_2000130859_0039064671_init();
    simprim_a_0942486005_2000130859_0114911469_init();
    simprim_a_2783133821_2000130859_0428714168_init();
    simprim_a_0959216139_2000130859_0428714168_init();
    simprim_a_1784801708_2000130859_3398177684_init();
    simprim_a_0070003591_2000130859_3398177684_init();
    simprim_a_2125052363_2000130859_3398177684_init();
    simprim_a_1782815405_2000130859_3398177684_init();
    simprim_a_1834392040_2000130859_3368725965_init();
    simprim_a_3660888285_2000130859_1306135309_init();
    simprim_a_4201230542_2000130859_1306135309_init();
    simprim_a_4016970485_2000130859_1306135309_init();
    simprim_a_3729574319_2000130859_1306135309_init();
    simprim_a_3538347814_2000130859_1276666170_init();
    simprim_a_3407594922_2000130859_1276666170_init();
    simprim_a_2693712517_2000130859_1276666170_init();
    simprim_a_0688016514_2000130859_1276666170_init();
    simprim_a_2125052363_2000130859_1314840419_init();
    simprim_a_1707775365_2000130859_1314840419_init();
    simprim_a_0836437765_2000130859_1314840419_init();
    simprim_a_3124162146_2000130859_1335670100_init();
    simprim_a_0312102205_2000130859_1255384017_init();
    simprim_a_3814429021_2000130859_1255384017_init();
    simprim_a_2125052363_2000130859_1255384017_init();
    simprim_a_2783133821_2000130859_1740670826_init();
    simprim_a_0911814845_2000130859_1653576175_init();
    simprim_a_2225312687_2000130859_1653576175_init();
    simprim_a_3660888285_2000130859_1666055128_init();
    simprim_a_2244582309_2000130859_1666055128_init();
    simprim_a_2826305224_2000130859_1666055128_init();
    simprim_a_1784801708_2000130859_1666055128_init();
    simprim_a_3390230801_2000130859_2256984232_init();
    simprim_a_3525582443_2000130859_2256984232_init();
    simprim_a_0948011402_2000130859_2269426335_init();
    simprim_a_0312102205_2000130859_2269426335_init();
    simprim_a_1467833311_2000130859_2231504070_init();
    simprim_a_0942486005_2000130859_2231504070_init();
    simprim_a_3272406573_2000130859_2227201777_init();
    simprim_a_3611121147_2000130859_2173661300_init();
    simprim_a_2001403755_2000130859_2173661300_init();
    simprim_a_1892732606_2000130859_2173661300_init();
    simprim_a_0326866267_2000130859_2173661300_init();
    simprim_a_1127287957_2000130859_3501149695_init();
    simprim_a_1012704003_2000130859_3501149695_init();
    simprim_a_1811133483_2000130859_3501149695_init();
    simprim_a_1227204094_2000130859_3513591752_init();
    simprim_a_1782815405_2000130859_3513591752_init();
    simprim_a_3309759916_2000130859_2609113104_init();
    simprim_a_2421649886_2000130859_2579846729_init();
    simprim_a_1596162770_2000130859_3989791823_init();
    simprim_a_2935583431_2000130859_3989791823_init();
    simprim_a_1834392040_2000130859_3989791823_init();
    simprim_a_3259397193_2000130859_1360875906_init();
    simprim_a_1227204094_2000130859_1473680233_init();
    simprim_a_1046765382_2000130859_1473680233_init();
    simprim_a_2935583431_2000130859_1473680233_init();
    simprim_a_1834392040_2000130859_1473680233_init();
    simprim_a_0635194858_1970351474_2626306252_init();
    simprim_a_0635194858_1970351474_2638752507_init();
    simprim_a_0635194858_1970351474_0060194408_init();
    simprim_a_0635194858_1970351474_1872353531_init();
    simprim_a_0635194858_1970351474_1851503308_init();
    simprim_a_0635194858_1970351474_2550611070_init();
    simprim_a_0635194858_1970351474_1609545823_init();
    simprim_a_0635194858_1970351474_1580061288_init();
    simprim_a_2766286368_1970351474_2764376926_init();
    simprim_a_0643608140_1970351474_2768724329_init();
    simprim_a_0159105658_1970351474_2710183387_init();
    simprim_a_0569180847_1970351474_0030457905_init();
    simprim_a_0635194858_1970351474_0039064671_init();
    simprim_a_0159105658_1970351474_0114911469_init();
    simprim_a_0445818209_1970351474_3398177684_init();
    simprim_a_3307847816_1970351474_3368725965_init();
    simprim_a_3655173086_1970351474_1276666170_init();
    simprim_a_0924385099_1970351474_1314840419_init();
    simprim_a_2264867418_1970351474_1666055128_init();
    simprim_a_2650455339_1970351474_2231504070_init();
    simprim_a_2709387406_1970351474_2173661300_init();
    simprim_a_3143085760_1970351474_3501149695_init();
    simprim_a_0070524322_1970351474_3501149695_init();
    simprim_a_0445818209_1970351474_3513591752_init();
    simprim_a_0635194858_1970351474_2579846729_init();
    simprim_a_3535480483_1970351474_3989791823_init();
    simprim_a_1216903719_1970351474_3989791823_init();
    simprim_a_3229015129_1970351474_1360875906_init();
    simprim_a_3692350300_1970351474_1473680233_init();
    simprim_a_1983654845_1970351474_1473680233_init();
    simprim_a_1509725169_3980060181_2626306252_init();
    simprim_a_1509725169_3980060181_0060194408_init();
    simprim_a_1509725169_3980060181_1872353531_init();
    simprim_a_1509725169_3980060181_2550611070_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_2866304254_1478103974_2626306252_init();
    simprim_a_2866304254_1478103974_2638752507_init();
    simprim_a_2866304254_1478103974_0060194408_init();
    simprim_a_2866304254_1478103974_1872353531_init();
    simprim_a_2866304254_1478103974_1851503308_init();
    simprim_a_2866304254_1478103974_2550611070_init();
    simprim_a_2866304254_1478103974_1609545823_init();
    simprim_a_2866304254_1478103974_1580061288_init();
    simprim_a_2866304254_1478103974_0039064671_init();
    simprim_a_2866304254_1478103974_2579846729_init();
    simprim_a_3221717806_2431929443_0433961640_init();
    simprim_a_3221717806_2431929443_0596022442_init();
    simprim_a_3221717806_2431929443_0880553409_init();
    simprim_a_3221717806_2431929443_0574946973_init();
    simprim_a_3221717806_2431929443_4252805745_init();
    simprim_a_3221717806_2431929443_1059089148_init();
    simprim_a_4130118134_1564065396_1609545823_init();
    simprim_a_4130118134_1564065396_1580061288_init();
    simprim_a_0860940424_1564065396_1792462462_init();
    simprim_a_4130118134_1564065396_2764376926_init();
    simprim_a_4130118134_1564065396_2768724329_init();
    simprim_a_0860940424_1564065396_0623897407_init();
    simprim_a_4130118134_1564065396_0030457905_init();
    simprim_a_4130118134_1564065396_0039064671_init();
    simprim_a_4130118134_1564065396_0428714168_init();
    simprim_a_4130118134_1564065396_3398177684_init();
    simprim_a_4130118134_1564065396_3368725965_init();
    simprim_a_0860940424_1564065396_3448093512_init();
    simprim_a_4130118134_1564065396_1306135309_init();
    simprim_a_4130118134_1564065396_1276666170_init();
    simprim_a_4130118134_1564065396_1314840419_init();
    simprim_a_0860940424_1564065396_1335670100_init();
    simprim_a_4130118134_1564065396_1255384017_init();
    simprim_a_4130118134_1564065396_1666055128_init();
    simprim_a_4130118134_1564065396_2256984232_init();
    simprim_a_0860940424_1564065396_2269426335_init();
    simprim_a_4130118134_1564065396_2231504070_init();
    simprim_a_0860940424_1564065396_2227201777_init();
    simprim_a_4130118134_1564065396_2173661300_init();
    simprim_a_4130118134_1564065396_3501149695_init();
    simprim_a_4130118134_1564065396_3513591752_init();
    simprim_a_0860940424_1564065396_2609113104_init();
    simprim_a_4130118134_1564065396_2579846729_init();
    simprim_a_4130118134_1564065396_3989791823_init();
    simprim_a_4130118134_1564065396_1398534107_init();
    simprim_a_4130118134_1564065396_1473680233_init();
    simprim_a_0860940424_1564065396_1473680233_init();
    simprim_a_3156740924_4150518722_0613366902_init();
    simprim_a_3156740924_4150518722_1054998731_init();
    simprim_a_3156740924_4150518722_0566242035_init();
    simprim_a_2118406211_3300903326_3346948913_init();
    simprim_a_1443862957_1564065396_2710183387_init();
    simprim_a_2473846995_1564065396_2748097410_init();
    simprim_a_1443862957_1564065396_0114911469_init();
    simprim_a_2473846995_1564065396_0077584052_init();
    simprim_a_1443862957_1564065396_2579846729_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1234411964_0632001823_init();
    work_a_3280568448_1949178628_init();


    xsi_register_tops("work_a_3280568448_1949178628");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}