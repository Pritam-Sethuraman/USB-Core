
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_usb_phy_0 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_usb_phy_0;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy_0.all;

entity usb_rx_phy_1 is

   port( clk, rst : in std_logic;  fs_ce_o : out std_logic;  rxd, rxdp, rxdn : 
         in std_logic;  DataIn_o : out std_logic_vector (7 downto 0);  
         RxValid_o, RxActive_o, RxError_o : out std_logic;  RxEn_i : in 
         std_logic;  LineState : out std_logic_vector (1 downto 0));

end usb_rx_phy_1;

architecture SYN_RTL of usb_rx_phy_1 is

   component MUX21L
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ENI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component FD2
      port( D, CP, CD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD4
      port( D, CP, SD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal fs_ce_o_port, DataIn_o_7_port, DataIn_o_6_port, DataIn_o_5_port, 
      DataIn_o_4_port, DataIn_o_3_port, DataIn_o_1_port, DataIn_o_0_port, 
      RxActive_o_port, LineState_1_port, LineState_0_port, rx_en, N29, rxd_s0, 
      rxd_s, rxdp_s0, N36, N37, rxdp_s, rxdn_s0, N38, N39, se0_s, rxd_r, 
      dpll_next_state_1_port, dpll_next_state_0_port, fs_ce_r1, fs_ce_r2, 
      sd_nrzi, one_cnt_2_port, one_cnt_1_port, one_cnt_0_port, shift_en, N141, 
      N160, N161, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n83, 
      n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98
      , n99, n100, n101, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n119, n120, n121, n122, n123, n124, 
      net4523, net4530, net4563, net4565, net4569, net4578, net4580, net4595, 
      net4789, net4788, net4787, net4786, net4783, net4782, net4780, net4822, 
      net4821, net4826, net4849, net4848, net5029, net5061, net5060, net5071, 
      net5086, net5085, net5092, net5107, net5109, net4805, net4778, net4775, 
      net4531, net4524, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
      DataIn_o_2_port, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, 
      n25, n26, n27, n28, n29_port, n30, n31, n32, n33, n34, n35, n36_port, 
      n37_port, n38_port, n39_port, n40, n41, n42, n43, n44, n45, n46, n47, n48
      , n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, 
      n63, n64, n65, n66, n67, n68, n69, n70, n82, n102, n118, n125, n126, n127
      , n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
      n140, n141_port, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160_port, 
      n161_port, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, 
      n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015 : std_logic;

begin
   fs_ce_o <= fs_ce_o_port;
   DataIn_o <= ( DataIn_o_7_port, DataIn_o_6_port, DataIn_o_5_port, 
      DataIn_o_4_port, DataIn_o_3_port, DataIn_o_2_port, DataIn_o_1_port, 
      DataIn_o_0_port );
   RxActive_o <= RxActive_o_port;
   LineState <= ( LineState_1_port, LineState_0_port );
   
   rx_en_reg : FD1 port map( D => RxEn_i, CP => clk, Q => rx_en, QN => n27);
   rxd_s0_reg : FD1 port map( D => rxd, CP => clk, Q => rxd_s0, QN => n15);
   rxd_s1_reg : FD1 port map( D => rxd_s0, CP => clk, Q => n140, QN => n79);
   rxd_s_reg : FD1 port map( D => n101, CP => clk, Q => rxd_s, QN => n18);
   rxdp_s0_reg : FD1 port map( D => rxdp, CP => clk, Q => rxdp_s0, QN => n_1000
                           );
   rxdp_s1_reg : FD1 port map( D => rxdp_s0, CP => clk, Q => LineState_0_port, 
                           QN => n_1001);
   rxdp_s_r_reg : FD1 port map( D => N36, CP => clk, Q => n_1002, QN => n71);
   rxdp_s_reg : FD1 port map( D => N37, CP => clk, Q => rxdp_s, QN => n138);
   rxdn_s0_reg : FD1 port map( D => rxdn, CP => clk, Q => rxdn_s0, QN => n_1003
                           );
   rxdn_s1_reg : FD1 port map( D => rxdn_s0, CP => clk, Q => LineState_1_port, 
                           QN => n_1004);
   rxdn_s_r_reg : FD1 port map( D => N38, CP => clk, Q => n_1005, QN => n72);
   rxdn_s_reg : FD1 port map( D => N39, CP => clk, Q => n90, QN => n145);
   rxd_r_reg : FD1 port map( D => rxd_s, CP => clk, Q => rxd_r, QN => n_1006);
   dpll_state_reg_0_inst : FD4 port map( D => dpll_next_state_0_port, CP => clk
                           , SD => n147, Q => n8, QN => n77);
   dpll_state_reg_1_inst : FD2 port map( D => dpll_next_state_1_port, CP => clk
                           , CD => n147, Q => n78, QN => n16);
   fs_ce_r1_reg : FD1 port map( D => n207, CP => clk, Q => fs_ce_r1, QN => 
                           n_1007);
   fs_ce_r2_reg : FD1 port map( D => fs_ce_r1, CP => clk, Q => fs_ce_r2, QN => 
                           n_1008);
   fs_ce_reg : FD1 port map( D => fs_ce_r2, CP => clk, Q => fs_ce_o_port, QN =>
                           n105);
   se0_s_reg : FD2 port map( D => n100, CP => clk, CD => n147, Q => se0_s, QN 
                           => n7);
   sd_r_reg : FD2 port map( D => n99, CP => clk, CD => n147, Q => n_1009, QN =>
                           n12);
   rx_valid_reg : FD2 port map( D => N160, CP => clk, CD => n147, Q => 
                           RxValid_o, QN => n80);
   rx_valid_r_reg : FD2 port map( D => n103, CP => clk, CD => n147, Q => n_1010
                           , QN => n11);
   rx_active_reg : FD2 port map( D => n124, CP => clk, CD => n147, Q => 
                           RxActive_o_port, QN => n109);
   sd_nrzi_reg : FD2 port map( D => n123, CP => clk, CD => n147, Q => sd_nrzi, 
                           QN => n19);
   fs_state_reg_0_inst : FD2 port map( D => n122, CP => clk, CD => n147, Q => 
                           n144, QN => n108);
   fs_state_reg_2_inst : FD2 port map( D => n121, CP => clk, CD => n147, Q => 
                           n59, QN => n106);
   fs_state_reg_1_inst : FD2 port map( D => n120, CP => clk, CD => n147, Q => 
                           n137, QN => n107);
   shift_en_reg : FD2 port map( D => n119, CP => clk, CD => n147, Q => shift_en
                           , QN => n41);
   one_cnt_reg_0_inst : FD2 port map( D => n205, CP => clk, CD => n147, Q => 
                           one_cnt_0_port, QN => net4821);
   one_cnt_reg_1_inst : FD2 port map( D => n117, CP => clk, CD => n147, Q => 
                           one_cnt_1_port, QN => net4826);
   one_cnt_reg_2_inst : FD2 port map( D => n104, CP => clk, CD => n148, Q => 
                           one_cnt_2_port, QN => net4848);
   bit_cnt_reg_0_inst : FD2 port map( D => n116, CP => clk, CD => n148, Q => 
                           net5085, QN => n112);
   bit_cnt_reg_1_inst : FD2 port map( D => n115, CP => clk, CD => n148, Q => 
                           n125, QN => n111);
   bit_cnt_reg_2_inst : FD2 port map( D => n114, CP => clk, CD => n148, Q => 
                           net5092, QN => n110);
   rx_valid1_reg : FD2 port map( D => n113, CP => clk, CD => n148, Q => n81, QN
                           => n14);
   hold_reg_reg_7_inst : FD1 port map( D => n98, CP => clk, Q => 
                           DataIn_o_7_port, QN => n89);
   hold_reg_reg_6_inst : FD1 port map( D => n97, CP => clk, Q => 
                           DataIn_o_6_port, QN => n88);
   hold_reg_reg_5_inst : FD1 port map( D => n96, CP => clk, Q => 
                           DataIn_o_5_port, QN => n87);
   hold_reg_reg_4_inst : FD1 port map( D => n95, CP => clk, Q => 
                           DataIn_o_4_port, QN => n86);
   hold_reg_reg_3_inst : FD1 port map( D => n94, CP => clk, Q => 
                           DataIn_o_3_port, QN => n85);
   hold_reg_reg_2_inst : FD1 port map( D => n93, CP => clk, Q => 
                           DataIn_o_2_port, QN => n84);
   hold_reg_reg_1_inst : FD1 port map( D => n92, CP => clk, Q => 
                           DataIn_o_1_port, QN => n83);
   hold_reg_reg_0_inst : FD1 port map( D => n91, CP => clk, Q => 
                           DataIn_o_0_port, QN => n_1011);
   bit_stuff_err_reg : FD2 port map( D => N141, CP => clk, CD => n148, Q => 
                           n_1012, QN => n73);
   sync_err_reg : FD2 port map( D => N29, CP => clk, CD => n148, Q => n_1013, 
                           QN => n75);
   se0_r_reg : FD1 port map( D => n31, CP => clk, Q => n_1014, QN => n76);
   byte_err_reg : FD2 port map( D => N161, CP => clk, CD => n148, Q => n_1015, 
                           QN => n74);
   U3 : ND3P port map( A => n107, B => n162, C => n144, Z => n190);
   U4 : EON1P port map( A => n86, B => n35, C => DataIn_o_5_port, D => net4805,
                           Z => n95);
   U5 : IVI port map( A => net4531, Z => n1);
   U6 : ND4 port map( A => net5092, B => n125, C => net4569, D => net4565, Z =>
                           n181);
   U7 : ND2I port map( A => rx_en, B => n161_port, Z => n2);
   U8 : NR2I port map( A => net4578, B => n178, Z => n3);
   U9 : IVI port map( A => n34, Z => n4);
   U10 : IVI port map( A => n4, Z => n5);
   U11 : ENI port map( A => n12, B => n184, Z => n185);
   U12 : IVI port map( A => net5107, Z => n6);
   U13 : AO3 port map( A => n108, B => net4782, C => n159, D => n158, Z => n122
                           );
   U14 : AN3 port map( A => net4778, B => net4569, C => net5107, Z => n9);
   U15 : AN2I port map( A => net4569, B => n125, Z => n10);
   U16 : AN2I port map( A => net4565, B => n81, Z => N160);
   U17 : NR2I port map( A => net4775, B => n41, Z => n17);
   U18 : ENI port map( A => n18, B => rxd_r, Z => n139);
   U19 : IVI port map( A => n19, Z => n20);
   U20 : IVI port map( A => n136, Z => n21);
   U21 : IVI port map( A => n21, Z => n22);
   U22 : IVI port map( A => n82, Z => n23);
   U23 : IVI port map( A => n110, Z => n82);
   U24 : ND4 port map( A => n142, B => n166, C => n165, D => n164, Z => n167);
   U25 : IVI port map( A => net5109, Z => n24);
   U26 : ND2I port map( A => n146, B => n51, Z => n25);
   U27 : ND3 port map( A => n107, B => n162, C => n144, Z => n26);
   U28 : ND2I port map( A => n135, B => n132, Z => n129);
   U29 : ND2I port map( A => n135, B => DataIn_o_0_port, Z => n133);
   U30 : EON1 port map( A => n84, B => n35, C => DataIn_o_3_port, D => n33, Z 
                           => n93);
   U31 : NR2I port map( A => net4775, B => n41, Z => n128);
   U32 : IVI port map( A => n27, Z => n28);
   U33 : ND2I port map( A => n49, B => n1, Z => n29_port);
   U34 : IVI port map( A => n118, Z => n30);
   U35 : AO3 port map( A => net4578, B => n174, C => n173, D => n172, Z => n104
                           );
   U36 : AN2I port map( A => net4848, B => n136, Z => n171);
   U37 : IVI port map( A => n143, Z => n31);
   U38 : IVI port map( A => n206, Z => n32);
   U39 : IVI port map( A => net4524, Z => n33);
   U40 : IVI port map( A => one_cnt_0_port, Z => n34);
   U41 : IVI port map( A => n118, Z => n102);
   U42 : AO1 port map( A => n111, B => n23, C => n204, D => n109, Z => N161);
   U43 : IVI port map( A => n53, Z => n35);
   U44 : IVI port map( A => n61, Z => n36_port);
   U45 : AO6P port map( A => shift_en, B => n29_port, C => net4569, Z => n177);
   U46 : IVI port map( A => n41, Z => n37_port);
   U47 : MUX21L port map( A => n89, B => n88, S => n62, Z => n97);
   U48 : ND2I port map( A => n38_port, B => n39_port, Z => n115);
   U49 : ND2I port map( A => n9, B => n3, Z => n38_port);
   U50 : ND2I port map( A => n125, B => n40, Z => n39_port);
   U51 : NR2I port map( A => net4578, B => n178, Z => n40);
   U52 : ND2I port map( A => n42, B => n43, Z => n44);
   U53 : AN2I port map( A => net4569, B => n45, Z => n43);
   U54 : AN2I port map( A => net5092, B => n125, Z => n45);
   U55 : NR2I port map( A => n6, B => net4789, Z => n42);
   U56 : IVI port map( A => one_cnt_2_port, Z => n46);
   U57 : ND2I port map( A => n49, B => n47, Z => n48);
   U58 : IVI port map( A => n46, Z => n49);
   U59 : AN2I port map( A => one_cnt_1_port, B => n34, Z => n47);
   U60 : IVI port map( A => n105, Z => n50);
   U61 : ND2I port map( A => n146, B => n51, Z => n52);
   U62 : AN2I port map( A => n157, B => rx_en, Z => n51);
   U63 : NR4P port map( A => net4822, B => n189, C => n31, D => n188, Z => N141
                           );
   U64 : ND2I port map( A => n127, B => n128, Z => n53);
   U65 : ND2I port map( A => one_cnt_2_port, B => one_cnt_1_port, Z => n54);
   U66 : IVI port map( A => n54, Z => n55);
   U67 : NR2I port map( A => n144, B => n25, Z => n56);
   U68 : NR2I port map( A => n56, B => n58, Z => n57);
   U69 : ND2I port map( A => net4778, B => n60, Z => n58);
   U70 : AO4P port map( A => n88, B => n36_port, C => n87, D => net4523, Z => 
                           n96);
   U71 : EOI port map( A => n137, B => n59, Z => n166);
   U72 : NR2I port map( A => n156, B => RxActive_o_port, Z => n60);
   U73 : IVI port map( A => net4524, Z => n61);
   U74 : IVI port map( A => n33, Z => n62);
   U75 : IVI port map( A => n25, Z => n63);
   U76 : NR2I port map( A => n111, B => n66, Z => n64);
   U77 : NR2I port map( A => n112, B => net4788, Z => n65);
   U78 : AN2I port map( A => n55, B => n5, Z => n66);
   U79 : ND2I port map( A => n64, B => n65, Z => n67);
   U80 : IVI port map( A => n67, Z => n178);
   U81 : AO4P port map( A => n85, B => net4523, C => n86, D => n131, Z => n94);
   U82 : ENI port map( A => net4787, B => net4822, Z => n175);
   U83 : ND2I port map( A => n68, B => n69, Z => n114);
   U84 : IVI port map( A => n180, Z => n70);
   U85 : ND2I port map( A => n10, B => n102, Z => n68);
   U86 : ND2I port map( A => n82, B => n30, Z => n69);
   U87 : ND2I port map( A => n44, B => n70, Z => n118);
   U88 : AO6P port map( A => n37_port, B => net4563, C => n112, Z => net4580);
   U89 : ND4P port map( A => n109, B => n143, C => net4778, D => n160_port, Z 
                           => n199);
   U90 : AO7P port map( A => n11, B => net4782, C => n80, Z => n103);
   U91 : IVI port map( A => net4531, Z => n126);
   U92 : ND2I port map( A => n126, B => net4849, Z => n127);
   U93 : ND2I port map( A => n127, B => n17, Z => net4524);
   U94 : ND2I port map( A => n129, B => n130, Z => n92);
   U95 : IVI port map( A => n61, Z => n131);
   U96 : IV port map( A => n83, Z => n132);
   U97 : ND2I port map( A => n33, B => DataIn_o_2_port, Z => n130);
   U98 : ND2I port map( A => n133, B => n134, Z => n91);
   U99 : IVI port map( A => net4523, Z => n135);
   U100 : ND2I port map( A => n33, B => DataIn_o_1_port, Z => n134);
   U101 : IVI port map( A => n53, Z => net4523);
   U102 : IVI port map( A => n53, Z => net4805);
   U103 : AN2I port map( A => sd_nrzi, B => shift_en, Z => net5029);
   U104 : ND2I port map( A => net4789, B => n37_port, Z => net4595);
   U105 : IVI port map( A => net4775, Z => net4778);
   U106 : IVI port map( A => fs_ce_o_port, Z => net4775);
   U107 : IVI port map( A => net4775, Z => net4780);
   U108 : ND2I port map( A => one_cnt_1_port, B => n34, Z => net4531);
   U109 : ND2I port map( A => n55, B => n5, Z => net5107);
   U110 : ND2I port map( A => net4821, B => n110, Z => net5060);
   U111 : IVI port map( A => net4826, Z => n136);
   U112 : IVI port map( A => net4848, Z => net4849);
   U113 : IVI port map( A => n54, Z => net5109);
   U114 : IVI port map( A => n60, Z => n163);
   U115 : AO3P port map( A => net5092, B => net4783, C => n37_port, D => n179, 
                           Z => n180);
   U116 : IVI port map( A => net5085, Z => net5086);
   U117 : IVI port map( A => net4822, Z => net5071);
   U118 : ND2I port map( A => net5109, B => net5061, Z => n179);
   U119 : IVI port map( A => net5060, Z => net5061);
   U120 : ND2I port map( A => n28, B => n139, Z => n151);
   U121 : NR2I port map( A => rxd_s0, B => n140, Z => n150);
   U122 : OR2I port map( A => net4565, B => n14, Z => n141_port);
   U123 : ND2I port map( A => n141_port, B => n181, Z => n113);
   U124 : MUX21L port map( A => n153, B => n8, S => n151, Z => 
                           dpll_next_state_0_port);
   U125 : AN2I port map( A => n109, B => net4780, Z => n142);
   U126 : ND2I port map( A => n161_port, B => n157, Z => n143);
   U127 : IVI port map( A => n145, Z => n146);
   U128 : AO4P port map( A => n199, B => n26, C => n107, D => n57, Z => n120);
   U129 : IVI port map( A => net4821, Z => net4822);
   U130 : IVI port map( A => net4788, Z => net4782);
   U131 : IVI port map( A => net4787, Z => net4783);
   U132 : IVI port map( A => net4780, Z => net4786);
   U133 : IVI port map( A => n50, Z => net4787);
   U134 : IVI port map( A => n50, Z => net4788);
   U135 : IVI port map( A => n50, Z => net4789);
   U136 : IVI port map( A => n149, Z => n147);
   U137 : IVI port map( A => n149, Z => n148);
   U138 : IVI port map( A => rst, Z => n149);
   U139 : IVI port map( A => rxd_s, Z => n184);
   U140 : AO4 port map( A => n150, B => n184, C => n79, D => n15, Z => n101);
   U141 : ND2I port map( A => n8, B => n16, Z => n153);
   U142 : ND3 port map( A => n78, B => n77, C => n151, Z => n152);
   U143 : ND2I port map( A => n153, B => n152, Z => dpll_next_state_1_port);
   U144 : IVI port map( A => n153, Z => n207);
   U145 : ND2I port map( A => LineState_1_port, B => rxdn_s0, Z => n154);
   U146 : IVI port map( A => n154, Z => N38);
   U147 : ND2I port map( A => n72, B => n154, Z => N39);
   U148 : ND2I port map( A => LineState_0_port, B => rxdp_s0, Z => n155);
   U149 : IVI port map( A => n155, Z => N36);
   U150 : ND2I port map( A => n71, B => n155, Z => N37);
   U151 : IVI port map( A => n90, Z => n161_port);
   U152 : IVI port map( A => rxdp_s, Z => n157);
   U153 : ND2I port map( A => n145, B => n138, Z => n187);
   U154 : IVI port map( A => se0_s, Z => n160_port);
   U155 : MUX21L port map( A => n32, B => n160_port, S => net4789, Z => n100);
   U156 : ND2I port map( A => n187, B => n7, Z => n156);
   U157 : IVI port map( A => n156, Z => n164);
   U158 : ND2I port map( A => n163, B => n144, Z => n159);
   U159 : IVI port map( A => n52, Z => n195);
   U160 : ND4 port map( A => n142, B => n195, C => n164, D => n108, Z => n158);
   U161 : ND2I port map( A => rx_en, B => n161_port, Z => n193);
   U162 : IVI port map( A => n193, Z => n162);
   U163 : NR2I port map( A => n108, B => n2, Z => n165);
   U164 : AO7 port map( A => n106, B => n57, C => n167, Z => n121);
   U165 : IVI port map( A => n106, Z => n192);
   U166 : ND4 port map( A => n195, B => net4778, C => n192, D => n144, Z => 
                           n183);
   U167 : ND2I port map( A => net4783, B => RxActive_o_port, Z => n189);
   U168 : ND3 port map( A => n183, B => n189, C => net4595, Z => n119);
   U169 : IVI port map( A => shift_en, Z => net4578);
   U170 : ND2I port map( A => net4789, B => n22, Z => n170);
   U171 : ND4 port map( A => n22, B => net5071, C => net5029, D => n24, Z => 
                           n169);
   U172 : ND4 port map( A => net4595, B => n21, C => net4822, D => net5029, Z 
                           => n168);
   U173 : AO3 port map( A => net4578, B => n170, C => n169, D => n168, Z => 
                           n117);
   U174 : ND2I port map( A => net4786, B => net4849, Z => n174);
   U175 : ND3 port map( A => net4849, B => n21, C => net5029, Z => n173);
   U176 : ND4 port map( A => net5029, B => net4778, C => net4822, D => n171, Z 
                           => n172);
   U177 : IVI port map( A => sd_nrzi, Z => net4530);
   U178 : ND2I port map( A => n175, B => net5107, Z => n176);
   U179 : AO1P port map( A => net5071, B => net4530, C => n176, D => net4578, Z
                           => n205);
   U180 : ND2I port map( A => n48, B => net4780, Z => net4563);
   U181 : IVI port map( A => net5086, Z => net4569);
   U182 : AO1P port map( A => n112, B => net4786, C => net4580, D => n177, Z =>
                           n116);
   U183 : IVI port map( A => net4563, Z => net4565);
   U184 : AO7 port map( A => n32, B => n11, C => RxActive_o_port, Z => n182);
   U185 : ND2I port map( A => n183, B => n182, Z => n124);
   U186 : MUX21L port map( A => n184, B => n12, S => net4786, Z => n99);
   U187 : MUX21L port map( A => n185, B => n20, S => net4788, Z => n186);
   U188 : ND2I port map( A => RxActive_o_port, B => n186, Z => n123);
   U189 : IVI port map( A => n143, Z => n206);
   U190 : ND2I port map( A => n20, B => net5109, Z => n188);
   U191 : ND2I port map( A => n192, B => n190, Z => n191);
   U192 : NR2I port map( A => n63, B => n191, Z => n202);
   U193 : NR2I port map( A => n108, B => n192, Z => n194);
   U194 : ND2I port map( A => n194, B => n2, Z => n198);
   U195 : NR2I port map( A => n63, B => n144, Z => n196);
   U196 : ND2I port map( A => n196, B => n137, Z => n197);
   U197 : ND2I port map( A => n198, B => n197, Z => n201);
   U198 : IVI port map( A => n199, Z => n200);
   U199 : AO7P port map( A => n202, B => n201, C => n200, Z => n203);
   U200 : IVI port map( A => n203, Z => N29);
   U201 : ND2I port map( A => n76, B => n206, Z => n204);
   U202 : ND3 port map( A => n75, B => n73, C => n74, Z => RxError_o);
   U203 : MUX21L port map( A => n89, B => net4530, S => net4805, Z => n98);

end SYN_RTL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy_0.all;

entity usb_tx_phy_1 is

   port( clk, rst, fs_ce, phy_mode : in std_logic;  txdp, txdn, txoe : out 
         std_logic;  DataOut_i : in std_logic_vector (7 downto 0);  TxValid_i :
         in std_logic;  TxReady_o : out std_logic);

end usb_tx_phy_1;

architecture SYN_RTL of usb_tx_phy_1 is

   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21L
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ENI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3P
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVDAP
      port( A : in std_logic;  Y, Z : out std_logic);
   end component;
   
   component AO6P
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component FD4
      port( D, CP, SD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD2
      port( D, CP, CD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal txdp_port, N29, tx_ip, tx_ip_sync, sft_done, N66, sft_done_r, 
      hold_reg_7_port, hold_reg_6_port, hold_reg_5_port, hold_reg_4_port, 
      hold_reg_3_port, hold_reg_2_port, hold_reg_1_port, hold_reg_0_port, 
      one_cnt_1_port, one_cnt_0_port, sd_nrzi_o, txoe_r1, state_2_port, 
      state_1_port, state_0_port, next_state_2_port, next_state_1_port, n75, 
      n76, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87, n88, n89, n90, n91
      , n92, n94, n95, n96, n97, n98, n101, n102, n103, n104, n105, n106, n107,
      n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, 
      n120, n121, n122, n124, n125, n126, n127, n128, n129, n130, n131, n133, 
      n134, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29_port
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66_port, n67, n68, n69, n70, n71, 
      n72, n73, n74, n82, n93, n99, n100, n123, n132, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, 
      n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, 
      n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n_1016, 
      n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, 
      n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, 
      n_1035 : std_logic;

begin
   txdp <= txdp_port;
   
   state_reg_0_inst : FD2 port map( D => n111, CP => clk, CD => n166, Q => 
                           state_0_port, QN => n43);
   append_eop_reg : FD2 port map( D => n130, CP => clk, CD => n166, Q => n_1016
                           , QN => n95);
   append_eop_sync1_reg : FD2 port map( D => n110, CP => clk, CD => n166, Q => 
                           n_1017, QN => n96);
   append_eop_sync2_reg : FD2 port map( D => n109, CP => clk, CD => n166, Q => 
                           n15, QN => n124);
   append_eop_sync3_reg : FD2 port map( D => n108, CP => clk, CD => n166, Q => 
                           n62, QN => n125);
   append_eop_sync4_reg : FD2 port map( D => n107, CP => clk, CD => n166, Q => 
                           n_1018, QN => n94);
   state_reg_1_inst : FD2 port map( D => next_state_1_port, CP => clk, CD => 
                           n166, Q => state_1_port, QN => n65);
   state_reg_2_inst : FD2 port map( D => next_state_2_port, CP => clk, CD => 
                           n166, Q => state_2_port, QN => n63);
   tx_ip_reg : FD2 port map( D => n119, CP => clk, CD => n166, Q => tx_ip, QN 
                           => n14);
   tx_ip_sync_reg : FD2 port map( D => n106, CP => clk, CD => n166, Q => 
                           tx_ip_sync, QN => n153);
   txoe_r1_reg : FD2 port map( D => n105, CP => clk, CD => n166, Q => txoe_r1, 
                           QN => n8);
   txoe_r2_reg : FD2 port map( D => n104, CP => clk, CD => n166, Q => n_1019, 
                           QN => n13);
   txoe_reg : FD4 port map( D => n103, CP => clk, SD => n166, Q => txoe, QN => 
                           n97);
   data_done_reg : FD2 port map( D => n127, CP => clk, CD => n165, Q => n90, QN
                           => n_1020);
   ld_data_reg : FD1 port map( D => n256, CP => clk, Q => n142, QN => n81);
   hold_reg_reg_6_inst : FD2 port map( D => n118, CP => clk, CD => n165, Q => 
                           hold_reg_6_port, QN => n89);
   hold_reg_d_reg_6_inst : FD2 port map( D => hold_reg_6_port, CP => clk, CD =>
                           n165, Q => n_1021, QN => n78);
   hold_reg_reg_5_inst : FD2 port map( D => n117, CP => clk, CD => n165, Q => 
                           hold_reg_5_port, QN => n88);
   hold_reg_d_reg_5_inst : FD2 port map( D => hold_reg_5_port, CP => clk, CD =>
                           n165, Q => n_1022, QN => n49);
   hold_reg_reg_4_inst : FD2 port map( D => n116, CP => clk, CD => n165, Q => 
                           hold_reg_4_port, QN => n87);
   hold_reg_d_reg_4_inst : FD2 port map( D => hold_reg_4_port, CP => clk, CD =>
                           n165, Q => n_1023, QN => n79);
   hold_reg_reg_3_inst : FD2 port map( D => n115, CP => clk, CD => n165, Q => 
                           hold_reg_3_port, QN => n86);
   hold_reg_d_reg_3_inst : FD2 port map( D => hold_reg_3_port, CP => clk, CD =>
                           n165, Q => n_1024, QN => n77);
   hold_reg_reg_2_inst : FD2 port map( D => n114, CP => clk, CD => n165, Q => 
                           hold_reg_2_port, QN => n85);
   hold_reg_d_reg_2_inst : FD2 port map( D => hold_reg_2_port, CP => clk, CD =>
                           n165, Q => n_1025, QN => n75);
   hold_reg_reg_1_inst : FD2 port map( D => n113, CP => clk, CD => n165, Q => 
                           hold_reg_1_port, QN => n84);
   hold_reg_d_reg_1_inst : FD2 port map( D => hold_reg_1_port, CP => clk, CD =>
                           n165, Q => n138, QN => n_1026);
   hold_reg_reg_0_inst : FD2 port map( D => n112, CP => clk, CD => n165, Q => 
                           hold_reg_0_port, QN => n83);
   hold_reg_d_reg_0_inst : FD2 port map( D => hold_reg_0_port, CP => clk, CD =>
                           n164, Q => n_1027, QN => n76);
   hold_reg_reg_7_inst : FD2 port map( D => n134, CP => clk, CD => n164, Q => 
                           hold_reg_7_port, QN => n_1028);
   hold_reg_d_reg_7_inst : FD2 port map( D => hold_reg_7_port, CP => clk, CD =>
                           n164, Q => n_1029, QN => n80);
   sd_raw_o_reg : FD1 port map( D => n255, CP => clk, Q => n92, QN => n_1030);
   sd_bs_o_reg : FD2 port map( D => n102, CP => clk, CD => n164, Q => n_1031, 
                           QN => n10);
   sd_nrzi_o_reg : FD4 port map( D => n126, CP => clk, SD => n164, Q => 
                           sd_nrzi_o, QN => n19);
   txdn_reg : FD2 port map( D => n101, CP => clk, CD => n164, Q => txdn, QN => 
                           n98);
   one_cnt_reg_0_inst : FD2 port map( D => n129, CP => clk, CD => n164, Q => 
                           one_cnt_0_port, QN => n45);
   one_cnt_reg_1_inst : FD2 port map( D => n128, CP => clk, CD => n164, Q => 
                           one_cnt_1_port, QN => n37);
   one_cnt_reg_2_inst : FD2 port map( D => n133, CP => clk, CD => n164, Q => 
                           n91, QN => n143);
   bit_cnt_reg_0_inst : FD2 port map( D => n131, CP => clk, CD => n164, Q => 
                           n159, QN => n144);
   bit_cnt_reg_1_inst : FD2 port map( D => n120, CP => clk, CD => n164, Q => 
                           n58, QN => n122);
   bit_cnt_reg_2_inst : FD2 port map( D => n254, CP => clk, CD => n164, Q => 
                           n11, QN => n121);
   sft_done_reg : FD1 port map( D => N66, CP => clk, Q => sft_done, QN => 
                           n_1032);
   sft_done_r_reg : FD1 port map( D => sft_done, CP => clk, Q => sft_done_r, QN
                           => n_1033);
   TxReady_o_reg : FD2 port map( D => N29, CP => clk, CD => n164, Q => 
                           TxReady_o, QN => n_1034);
   txdp_reg : FD4 port map( D => n141, CP => clk, SD => n164, Q => txdp_port, 
                           QN => n_1035);
   U3 : IVI port map( A => n32, Z => n1);
   U4 : IVI port map( A => n29_port, Z => n2);
   U5 : AN3 port map( A => n66_port, B => n1, C => n197, Z => n3);
   U6 : AN3 port map( A => n2, B => n33, C => n197, Z => n140);
   U7 : ND3P port map( A => n154, B => n5, C => n184, Z => n187);
   U8 : IVDAP port map( A => n145, Y => n50, Z => n163);
   U9 : EON1 port map( A => n157, B => n215, C => n4, D => n156, Z => n216);
   U10 : ND2I port map( A => n49, B => n50, Z => n4);
   U11 : AN2I port map( A => n256, B => TxValid_i, Z => N29);
   U12 : IVI port map( A => n122, Z => n5);
   U13 : ND2I port map( A => n60, B => n6, Z => n73);
   U14 : AN2I port map( A => DataOut_i(4), B => n147, Z => n6);
   U15 : IVI port map( A => n34, Z => n7);
   U16 : IVI port map( A => n89, Z => n24);
   U17 : AN2I port map( A => n121, B => n58, Z => n9);
   U18 : AN2I port map( A => one_cnt_0_port, B => n92, Z => n12);
   U19 : IVI port map( A => n17, Z => n16);
   U20 : IVI port map( A => n162, Z => n17);
   U21 : IVI port map( A => n17, Z => n18);
   U22 : MUX21L port map( A => n98, B => n248, S => n137, Z => n101);
   U23 : IVI port map( A => n225, Z => n20);
   U24 : IVI port map( A => n149, Z => n21);
   U25 : IVI port map( A => n21, Z => n22);
   U26 : MUX21L port map( A => n230, B => n231, S => n240, Z => n129);
   U27 : ND2I port map( A => n81, B => n199, Z => n23);
   U28 : ND2I port map( A => n24, B => n30, Z => n70);
   U29 : AN2I port map( A => n92, B => n156, Z => n25);
   U30 : OR2I port map( A => n233, B => n158, Z => n39);
   U31 : AO7P port map( A => n194, B => n193, C => n192, Z => n195);
   U32 : AO3 port map( A => n192, B => n171, C => n194, D => n180, Z => n181);
   U33 : MUX21L port map( A => n10, B => n54, S => n137, Z => n102);
   U34 : ND4 port map( A => n152, B => n155, C => n91, D => n230, Z => n189);
   U35 : IVI port map( A => n249, Z => n26);
   U36 : IVI port map( A => n17, Z => n137);
   U37 : ND2I port map( A => n23, B => n27, Z => n69);
   U38 : AN2I port map( A => DataOut_i(6), B => n149, Z => n27);
   U39 : IVI port map( A => state_2_port, Z => n28);
   U40 : IVI port map( A => state_1_port, Z => n29_port);
   U41 : IVI port map( A => n206, Z => n30);
   U42 : IVI port map( A => n62, Z => n31);
   U43 : IVI port map( A => state_0_port, Z => n32);
   U44 : IVI port map( A => n32, Z => n33);
   U45 : IVI port map( A => n144, Z => n34);
   U46 : IVI port map( A => n224, Z => n35);
   U47 : ND3 port map( A => n189, B => n161, C => n188, Z => n36);
   U48 : IVI port map( A => n37, Z => n38);
   U49 : ND2I port map( A => n39, B => n240, Z => n48);
   U50 : ND2I port map( A => n229, B => n240, Z => n47);
   U51 : AO7P port map( A => n95, B => n15, C => n174, Z => n130);
   U52 : AO6P port map( A => n178, B => n177, C => n167, Z => next_state_2_port
                           );
   U53 : IVI port map( A => n50, Z => n40);
   U54 : NR2I port map( A => n157, B => n151, Z => n41);
   U55 : IVDAP port map( A => fs_ce, Y => n151, Z => n162);
   U56 : IVI port map( A => n59, Z => n42);
   U57 : ND4P port map( A => TxValid_i, B => n29_port, C => n28, D => n43, Z =>
                           n205);
   U58 : ND2I port map( A => one_cnt_1_port, B => n45, Z => n44);
   U59 : ND2I port map( A => n47, B => n48, Z => n46);
   U60 : MUX21L port map( A => n35, B => n46, S => n152, Z => n128);
   U61 : ND4P port map( A => n198, B => n197, C => TxValid_i, D => n196, Z => 
                           n199);
   U62 : ND4 port map( A => n9, B => n61, C => n41, D => n34, Z => n51);
   U63 : ND2I port map( A => n36, B => n215, Z => n52);
   U64 : ND2I port map( A => n52, B => n53, Z => n254);
   U65 : AN2I port map( A => n51, B => n191, Z => n53);
   U66 : ND3P port map( A => n139, B => n168, C => n193, Z => n174);
   U67 : AN3P port map( A => sft_done, B => n63, C => n179, Z => n139);
   U68 : ND2I port map( A => n61, B => n25, Z => n54);
   U69 : OR2I port map( A => n143, B => n44, Z => n55);
   U70 : NR2I port map( A => n172, B => n56, Z => n173);
   U71 : ND2I port map( A => n198, B => n196, Z => n56);
   U72 : IVI port map( A => n57, Z => n61);
   U73 : NR2I port map( A => n143, B => n44, Z => n57);
   U74 : IVI port map( A => n151, Z => n59);
   U75 : AO3P port map( A => n228, B => n54, C => n227, D => n226, Z => n133);
   U76 : AO3P port map( A => n122, B => n188, C => n187, D => n186, Z => n120);
   U77 : ND2I port map( A => n81, B => n199, Z => n60);
   U78 : IVI port map( A => n28, Z => n64);
   U79 : IVI port map( A => n65, Z => n66_port);
   U80 : ND2I port map( A => n222, B => n221, Z => n67);
   U81 : ND2I port map( A => n220, B => n68, Z => n255);
   U82 : IVI port map( A => n67, Z => n68);
   U83 : ND2I port map( A => n150, B => n12, Z => n235);
   U84 : ND2I port map( A => n69, B => n70, Z => n118);
   U85 : OR2I port map( A => n208, B => n202, Z => n71);
   U86 : OR2I port map( A => n88, B => n60, Z => n72);
   U87 : ND2I port map( A => n71, B => n72, Z => n117);
   U88 : OR2I port map( A => n87, B => n23, Z => n74);
   U89 : ND2I port map( A => n73, B => n74, Z => n116);
   U90 : OR2I port map( A => n208, B => n204, Z => n82);
   U91 : OR2I port map( A => n86, B => n60, Z => n93);
   U92 : ND2I port map( A => n82, B => n93, Z => n115);
   U93 : OR2I port map( A => n208, B => n207, Z => n99);
   U94 : OR2I port map( A => n85, B => n23, Z => n100);
   U95 : ND2I port map( A => n99, B => n100, Z => n114);
   U96 : OR2I port map( A => n30, B => n201, Z => n123);
   U97 : OR2I port map( A => n84, B => n23, Z => n132);
   U98 : ND2I port map( A => n123, B => n132, Z => n113);
   U99 : OR2I port map( A => n30, B => n200, Z => n135);
   U100 : OR2I port map( A => n83, B => n60, Z => n136);
   U101 : ND2I port map( A => n135, B => n136, Z => n112);
   U102 : NR2I port map( A => n138, B => n144, Z => n214);
   U103 : AN2I port map( A => n253, B => n252, Z => n141);
   U104 : AO4 port map( A => DataOut_i(7), B => n81, C => hold_reg_7_port, D =>
                           n142, Z => n203);
   U105 : IVI port map( A => n159, Z => n145);
   U106 : IVI port map( A => n205, Z => n146);
   U107 : IVI port map( A => n146, Z => n147);
   U108 : IVI port map( A => n146, Z => n148);
   U109 : IVI port map( A => n146, Z => n149);
   U110 : ND4P port map( A => n176, B => n175, C => n174, D => n22, Z => n111);
   U111 : NR2I port map( A => n157, B => n151, Z => n150);
   U112 : IVI port map( A => n223, Z => n152);
   U113 : ND3 port map( A => n62, B => phy_mode, C => n59, Z => n253);
   U114 : IVI port map( A => n158, Z => n154);
   U115 : IVI port map( A => n153, Z => n155);
   U116 : IVI port map( A => n153, Z => n156);
   U117 : IVI port map( A => tx_ip_sync, Z => n157);
   U118 : IVI port map( A => tx_ip_sync, Z => n158);
   U119 : OR2I port map( A => n157, B => n10, Z => n160);
   U120 : ND2I port map( A => n160, B => n161, Z => n243);
   U121 : ND2I port map( A => n154, B => n249, Z => n161);
   U122 : AO7P port map( A => n140, B => n173, C => n125, Z => n175);
   U123 : ND3P port map( A => n152, B => n225, C => n224, Z => n226);
   U124 : IVI port map( A => n167, Z => n164);
   U125 : IVI port map( A => n167, Z => n165);
   U126 : IVI port map( A => n167, Z => n166);
   U127 : IVI port map( A => rst, Z => n167);
   U128 : MUX21L port map( A => n94, B => n31, S => n18, Z => n107);
   U129 : IVI port map( A => n90, Z => n193);
   U130 : IVI port map( A => TxValid_i, Z => n237);
   U131 : AO6 port map( A => tx_ip, B => n193, C => n237, Z => n127);
   U132 : IVI port map( A => state_2_port, Z => n197);
   U133 : IVI port map( A => sft_done_r, Z => n179);
   U134 : IVI port map( A => state_0_port, Z => n196);
   U135 : ND2I port map( A => n66_port, B => n196, Z => n194);
   U136 : IVI port map( A => n194, Z => n168);
   U137 : MUX21L port map( A => n96, B => n95, S => n137, Z => n110);
   U138 : MUX21L port map( A => n124, B => n96, S => n18, Z => n109);
   U139 : NR2I port map( A => n94, B => n17, Z => n169);
   U140 : AO4 port map( A => n31, B => n169, C => n124, D => n42, Z => n108);
   U141 : ND2I port map( A => sft_done, B => n179, Z => n171);
   U142 : IVI port map( A => state_1_port, Z => n198);
   U143 : ND2I port map( A => n1, B => n198, Z => n192);
   U144 : IVI port map( A => n192, Z => n170);
   U145 : ND2I port map( A => n64, B => n162, Z => n172);
   U146 : AO3 port map( A => n64, B => n171, C => n170, D => n172, Z => n176);
   U147 : ND2I port map( A => n3, B => n62, Z => n178);
   U148 : AO3 port map( A => n249, B => n196, C => n64, D => n198, Z => n177);
   U149 : ND2I port map( A => n66_port, B => n125, Z => n180);
   U150 : ND2I port map( A => n197, B => n181, Z => n182);
   U151 : NR2I port map( A => n167, B => n182, Z => next_state_1_port);
   U152 : AO7 port map( A => n62, B => n14, C => n148, Z => n119);
   U153 : ND2I port map( A => n156, B => n249, Z => n240);
   U154 : AO7 port map( A => n42, B => n14, C => n161, Z => n106);
   U155 : IVI port map( A => one_cnt_0_port, Z => n230);
   U156 : ND2I port map( A => n59, B => n61, Z => n184);
   U157 : ENI port map( A => n184, B => n7, Z => n183);
   U158 : NR2I port map( A => n183, B => n157, Z => n131);
   U159 : ND2I port map( A => n40, B => n155, Z => n188);
   U160 : NR2I port map( A => n151, B => n58, Z => n185);
   U161 : ND4 port map( A => n185, B => n55, C => n154, D => n34, Z => n186);
   U162 : IVI port map( A => n121, Z => n215);
   U163 : ND2I port map( A => n122, B => n11, Z => n190);
   U164 : IVI port map( A => n190, Z => n219);
   U165 : ND2I port map( A => n219, B => n155, Z => n191);
   U166 : ND2I port map( A => n139, B => n195, Z => n238);
   U167 : IVI port map( A => n238, Z => n256);
   U168 : ND2I port map( A => n81, B => n199, Z => n206);
   U169 : IVI port map( A => n206, Z => n208);
   U170 : ND2I port map( A => DataOut_i(0), B => n147, Z => n200);
   U171 : ND2I port map( A => DataOut_i(1), B => n147, Z => n201);
   U172 : ND2I port map( A => DataOut_i(5), B => n147, Z => n202);
   U173 : ND2I port map( A => n148, B => n203, Z => n134);
   U174 : ND2I port map( A => DataOut_i(3), B => n148, Z => n204);
   U175 : ND2I port map( A => DataOut_i(2), B => n149, Z => n207);
   U176 : ND2I port map( A => n77, B => n34, Z => n210);
   U177 : ND2I port map( A => n75, B => n40, Z => n209);
   U178 : ND4 port map( A => n9, B => n210, C => n156, D => n209, Z => n222);
   U179 : ND2I port map( A => n58, B => n11, Z => n211);
   U180 : IVI port map( A => n211, Z => n236);
   U181 : ND2I port map( A => n80, B => n34, Z => n213);
   U182 : ND2I port map( A => n78, B => n40, Z => n212);
   U183 : ND4 port map( A => n236, B => n213, C => n155, D => n212, Z => n221);
   U184 : AO1P port map( A => n76, B => n163, C => n58, D => n214, Z => n218);
   U185 : ND3 port map( A => n79, B => n40, C => n215, Z => n217);
   U186 : AO3 port map( A => n219, B => n218, C => n217, D => n216, Z => n220);
   U187 : IVI port map( A => one_cnt_1_port, Z => n223);
   U188 : ND2I port map( A => n20, B => n223, Z => n228);
   U189 : ND3 port map( A => n91, B => n155, C => n17, Z => n227);
   U190 : IVI port map( A => n91, Z => n225);
   U191 : IVI port map( A => n235, Z => n224);
   U192 : ND2I port map( A => n91, B => n38, Z => n232);
   U193 : ND2I port map( A => n92, B => n230, Z => n229);
   U194 : IVI port map( A => n229, Z => n234);
   U195 : ND3 port map( A => n156, B => n232, C => n234, Z => n231);
   U196 : IVI port map( A => n232, Z => n233);
   U197 : AN3 port map( A => n236, B => n55, C => n34, Z => N66);
   U198 : MUX21L port map( A => n8, B => n158, S => n16, Z => n105);
   U199 : MUX21L port map( A => n13, B => n8, S => n26, Z => n104);
   U200 : ND2I port map( A => n8, B => n13, Z => n239);
   U201 : MUX21L port map( A => n97, B => n239, S => n16, Z => n103);
   U202 : ND2I port map( A => txoe_r1, B => n154, Z => n242);
   U203 : ND2I port map( A => txoe_r1, B => n243, Z => n241);
   U204 : AO7P port map( A => n19, B => n242, C => n241, Z => n245);
   U205 : ND2I port map( A => sd_nrzi_o, B => n243, Z => n244);
   U206 : ND2I port map( A => n245, B => n244, Z => n126);
   U207 : IVI port map( A => phy_mode, Z => n246);
   U208 : NR2I port map( A => sd_nrzi_o, B => n246, Z => n247);
   U209 : AO2 port map( A => n125, B => n247, C => n62, D => n246, Z => n248);
   U210 : IVI port map( A => n162, Z => n249);
   U211 : ND2I port map( A => n42, B => txdp_port, Z => n251);
   U212 : ND2I port map( A => sd_nrzi_o, B => n26, Z => n250);
   U213 : ND2I port map( A => n251, B => n250, Z => n252);

end SYN_RTL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy_0.all;

entity usb_phy_0 is

   port( clk, rst, phy_tx_mode, rxd, rxdp, rxdn : in std_logic;  txdp, txdn, 
         txoe : out std_logic;  DataOut_i : in std_logic_vector (7 downto 0);  
         TxValid_i : in std_logic;  TxReady_o : out std_logic;  DataIn_o : out 
         std_logic_vector (7 downto 0);  RxValid_o, RxActive_o, RxError_o : out
         std_logic;  LineState_o : out std_logic_vector (1 downto 0));

end usb_phy_0;

architecture SYN_RTL of usb_phy_0 is

   component usb_rx_phy_1
      port( clk, rst : in std_logic;  fs_ce_o : out std_logic;  rxd, rxdp, rxdn
            : in std_logic;  DataIn_o : out std_logic_vector (7 downto 0);  
            RxValid_o, RxActive_o, RxError_o : out std_logic;  RxEn_i : in 
            std_logic;  LineState : out std_logic_vector (1 downto 0));
   end component;
   
   component usb_tx_phy_1
      port( clk, rst, fs_ce, phy_mode : in std_logic;  txdp, txdn, txoe : out 
            std_logic;  DataOut_i : in std_logic_vector (7 downto 0);  
            TxValid_i : in std_logic;  TxReady_o : out std_logic);
   end component;
   
   signal txoe_port, fs_ce : std_logic;

begin
   txoe <= txoe_port;
   
   i_tx_phy : usb_tx_phy_1 port map( clk => clk, rst => rst, fs_ce => fs_ce, 
                           phy_mode => phy_tx_mode, txdp => txdp, txdn => txdn,
                           txoe => txoe_port, DataOut_i(7) => DataOut_i(7), 
                           DataOut_i(6) => DataOut_i(6), DataOut_i(5) => 
                           DataOut_i(5), DataOut_i(4) => DataOut_i(4), 
                           DataOut_i(3) => DataOut_i(3), DataOut_i(2) => 
                           DataOut_i(2), DataOut_i(1) => DataOut_i(1), 
                           DataOut_i(0) => DataOut_i(0), TxValid_i => TxValid_i
                           , TxReady_o => TxReady_o);
   i_rx_phy : usb_rx_phy_1 port map( clk => clk, rst => rst, fs_ce_o => fs_ce, 
                           rxd => rxd, rxdp => rxdp, rxdn => rxdn, DataIn_o(7) 
                           => DataIn_o(7), DataIn_o(6) => DataIn_o(6), 
                           DataIn_o(5) => DataIn_o(5), DataIn_o(4) => 
                           DataIn_o(4), DataIn_o(3) => DataIn_o(3), DataIn_o(2)
                           => DataIn_o(2), DataIn_o(1) => DataIn_o(1), 
                           DataIn_o(0) => DataIn_o(0), RxValid_o => RxValid_o, 
                           RxActive_o => RxActive_o, RxError_o => RxError_o, 
                           RxEn_i => txoe_port, LineState(1) => LineState_o(1),
                           LineState(0) => LineState_o(0));

end SYN_RTL;
