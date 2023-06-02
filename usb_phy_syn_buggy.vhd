
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_usb_phy is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_usb_phy;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy.all;

entity usb_rx_phy is

   port( clk, rst : in std_logic;  fs_ce_o : out std_logic;  rxd, rxdp, rxdn : 
         in std_logic;  DataIn_o : out std_logic_vector (7 downto 0);  
         RxValid_o, RxActive_o, RxError_o : out std_logic;  RxEn_i : in 
         std_logic;  LineState : out std_logic_vector (1 downto 0));

end usb_rx_phy;

architecture SYN_RTL of usb_rx_phy is

   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21L
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21H
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
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
   
   signal fs_ce_o_port, RxActive_o_port, RxActive_c_port, LineState_1_port, LineState_0_port, 
      N29, rxd_s0, rxd_s, rxdp_s0, N37, rxdp_s, rxdn_s0, N39, se0, se1, se0_s, se1_s, rxd_r
      , dpll_next_state_1_port, dpll_next_state_0_port, fs_ce_r1, fs_ce_r2, 
      sd_nrzi, one_cnt_2_port, one_cnt_1_port, one_cnt_0_port, shift_en, N141, n142,
      N160, N161, n71, n72, n73, n74, n75, n76, n80, n82, n83, n84, n85, n86, 
      n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98, n100, n101, n102, 
      n103, n104, n105, n109, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27, n28, n29_port, n30, n31, n32, n33, n34, n35, n36, n37_port, n38, 
      n39_port, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52
      , n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, 
      n67, n68, n69, n70, n77, n78, n79, n81, n_1000, n_1001, n_1002, n_1003, 
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026 : std_logic;

begin
   fs_ce_o <= fs_ce_o_port;
   RxActive_o <= RxActive_o_port;
   LineState <= ( LineState_1_port, LineState_0_port );
   
   rx_en_reg : FD1 port map( D => RxEn_i, CP => clk, Q => n_1000, QN => n3);
   rxd_s0_reg : FD1 port map( D => rxd, CP => clk, Q => rxd_s0, QN => n63);
   rxd_s1_reg : FD1 port map( D => rxd_s0, CP => clk, Q => n60, QN => n_1001);
   rxd_s_reg : FD1 port map( D => n101, CP => clk, Q => rxd_s, QN => n30);
   rxdp_s0_reg : FD1 port map( D => rxdp, CP => clk, Q => rxdp_s0, QN => n_1002
                           );
   rxdp_s1_reg : FD1 port map( D => rxdp_s0, CP => clk, Q => LineState_0_port, 
                           QN => n_1003);
   rxdp_s_r_reg : FD1 port map( D => n79, CP => clk, Q => n_1004, QN => n71);
   rxdp_s_reg : FD1 port map( D => N37, CP => clk, Q => rxdp_s, QN => n_1005);
   rxdn_s0_reg : FD1 port map( D => rxdn, CP => clk, Q => rxdn_s0, QN => n_1006
                           );
   rxdn_s1_reg : FD1 port map( D => rxdn_s0, CP => clk, Q => LineState_1_port, 
                           QN => n_1007);
   rxdn_s_r_reg : FD1 port map( D => n81, CP => clk, Q => n_1008, QN => n72);
   rxdn_s_reg : FD1 port map( D => N39, CP => clk, Q => n10, QN => n77);
   rxd_r_reg : FD1 port map( D => rxd_s, CP => clk, Q => rxd_r, QN => n_1009);
   dpll_state_reg_0_inst : FD4 port map( D => dpll_next_state_0_port, CP => clk
                           , SD => rst, Q => n64, QN => n_1010);
   dpll_state_reg_1_inst : FD2 port map( D => dpll_next_state_1_port, CP => clk
                           , CD => rst, Q => n_1011, QN => n65);
   fs_ce_r1_reg : FD1 port map( D => n102, CP => clk, Q => fs_ce_r1, QN => 
                           n_1012);
   fs_ce_r2_reg : FD1 port map( D => fs_ce_r1, CP => clk, Q => fs_ce_r2, QN => 
                           n_1013);
   fs_ce_reg : FD1 port map( D => fs_ce_r2, CP => clk, Q => fs_ce_o_port, QN =>
                           n105);
   se0_s_reg : FD2 port map( D => n100, CP => clk, CD => rst, Q => se0_s, QN =>
                           n_1014);
   sd_r_reg : FD2 port map( D => n78, CP => clk, CD => rst, Q => n_1015, QN => 
                           n2);
   rx_valid_reg : FD2 port map( D => N160, CP => clk, CD => rst, Q => RxValid_o
                           , QN => n80);
   rx_valid_r_reg : FD2 port map( D => n103, CP => clk, CD => rst, Q => n142,
                           QN => n7);
   rx_active_reg : FD2 port map( D => n124, CP => clk, CD => rst, Q => 
                           RxActive_o_port, QN => n109);
   sd_nrzi_reg : FD2 port map( D => n123, CP => clk, CD => rst, Q => sd_nrzi, 
                           QN => n6);
   fs_state_reg_0_inst : FD2 port map( D => n122, CP => clk, CD => rst, Q => 
                           n68, QN => n_1017);
   fs_state_reg_2_inst : FD2 port map( D => n121, CP => clk, CD => rst, Q => 
                           n66, QN => n_1018);
   fs_state_reg_1_inst : FD2 port map( D => n120, CP => clk, CD => rst, Q => 
                           n67, QN => n8);
   shift_en_reg : FD2 port map( D => n119, CP => clk, CD => rst, Q => shift_en,
                           QN => n_1019);
   one_cnt_reg_0_inst : FD2 port map( D => n118, CP => clk, CD => rst, Q => 
                           one_cnt_0_port, QN => n_1020);
   one_cnt_reg_1_inst : FD2 port map( D => n117, CP => clk, CD => rst, Q => 
                           one_cnt_1_port, QN => n1);
   one_cnt_reg_2_inst : FD2 port map( D => n104, CP => clk, CD => rst, Q => 
                           one_cnt_2_port, QN => n11);
   bit_cnt_reg_0_inst : FD2 port map( D => n116, CP => clk, CD => rst, Q => n62
                           , QN => n_1021);
   bit_cnt_reg_1_inst : FD2 port map( D => n115, CP => clk, CD => rst, Q => n70
                           , QN => n4);
   bit_cnt_reg_2_inst : FD2 port map( D => n114, CP => clk, CD => rst, Q => n69
                           , QN => n9);
   rx_valid1_reg : FD2 port map( D => n113, CP => clk, CD => rst, Q => n_1022, 
                           QN => n61);
   hold_reg_reg_7_inst : FD1 port map( D => n98, CP => clk, Q => DataIn_o(7), 
                           QN => n89);
   hold_reg_reg_6_inst : FD1 port map( D => n97, CP => clk, Q => DataIn_o(6), 
                           QN => n88);
   hold_reg_reg_5_inst : FD1 port map( D => n96, CP => clk, Q => DataIn_o(5), 
                           QN => n87);
   hold_reg_reg_4_inst : FD1 port map( D => n95, CP => clk, Q => DataIn_o(4), 
                           QN => n86);
   hold_reg_reg_3_inst : FD1 port map( D => n94, CP => clk, Q => DataIn_o(3), 
                           QN => n85);
   hold_reg_reg_2_inst : FD1 port map( D => n93, CP => clk, Q => DataIn_o(2), 
                           QN => n84);
   hold_reg_reg_1_inst : FD1 port map( D => n92, CP => clk, Q => DataIn_o(1), 
                           QN => n83);
   hold_reg_reg_0_inst : FD1 port map( D => n91, CP => clk, Q => DataIn_o(0), 
                           QN => n82);
   bit_stuff_err_reg : FD2 port map( D => N141, CP => clk, CD => rst, Q => 
                           n_1023, QN => n73);
   sync_err_reg : FD2 port map( D => N29, CP => clk, CD => rst, Q => n_1024, QN
                           => n75);
   se0_r_reg : FD1 port map( D => se0, CP => clk, Q => n_1025, QN => n76);
   byte_err_reg : FD2 port map( D => N161, CP => clk, CD => rst, Q => n_1026, 
                           QN => n74);
   U3 : MUX21L port map( A => n5, B => n2, S => n105, Z => n78);
   U4 : IV port map( A => n12, Z => n79);
   U5 : IV port map( A => n13, Z => n81);
   U6 : MUX21L port map( A => n89, B => n6, S => n14, Z => n98);
   U7 : MUX21L port map( A => n88, B => n89, S => n14, Z => n97);
   U8 : MUX21L port map( A => n87, B => n88, S => n14, Z => n96);
   U9 : MUX21L port map( A => n86, B => n87, S => n14, Z => n95);
   
   U16 : ND2 port map( A => n18, B => RxActive_o_port, Z => n123);
   U17 : MUX21L port map( A => n19, B => sd_nrzi, S => n105, Z => n18);
   U18 : EO port map( A => rxd_s, B => n2, Z => n19);
   U19 : MUX21L port map( A => n20, B => n21, S => n68, Z => n122);
   U20 : ND2 port map( A => n21, B => n22, Z => n20);
   U21 : EON1 port map( A => n23, B => n24, C => n25, D => n66, Z => n121);
   U22 : ND2 port map( A => n26, B => n68, Z => n24);
   U23 : MUX21L port map( A => n66, B => n27, S => n67, Z => n23);
   U24 : NR2 port map( A => n66, B => n28, Z => n27);
   U25 : EON1 port map( A => n28, B => n29_port, C => n25, D => n67, Z => n120)
            U10 : MUX21L port map( A => n85, B => n86, S => n14, Z => n94);
   U11 : MUX21L port map( A => n84, B => n85, S => n14, Z => n93);
   U12 : MUX21L port map( A => n83, B => n84, S => n14, Z => n92);
   U13 : MUX21H port map( A => n82, B => n83, S => n14, Z => n91);
   U14 : ND2 port map( A => n15, B => n16, Z => n124);
   U15 : AO7 port map( A => n17, B => n7, C => RxActive_c_port, Z => n16);               ;
   U26 : AO6 port map( A => n68, B => n30, C => n22, Z => n25);
   U27 : AO3 port map( A => n109, B => n105, C => n31, D => n15, Z => n119);
   U28 : ND4 port map( A => n66, B => n68, C => n22, D => fs_ce_o_port, Z => 
                           n15);
   U29 : IV port map( A => n30, Z => n22);
   U30 : MUX21L port map( A => n32, B => n31, S => one_cnt_0_port, Z => n118);
   U31 : ND2 port map( A => n33, B => n31, Z => n32);
   U32 : MUX21H port map( A => n34, B => n35, S => n1, Z => n117);
   U33 : MUX21L port map( A => n36, B => n37_port, S => n62, Z => n116);
   U34 : ND2 port map( A => shift_en, B => n38, Z => n37_port);
   U35 : MUX21L port map( A => n39_port, B => n40, S => n70, Z => n115);
   U36 : ND2 port map( A => shift_en, B => n41, Z => n40);
   U37 : ND2 port map( A => n62, B => n14, Z => n39_port);
   U38 : MUX21L port map( A => n42, B => n43, S => n69, Z => n114);
   U39 : ND2 port map( A => shift_en, B => n44, Z => n43);
   U40 : ND3 port map( A => n62, B => n14, C => n70, Z => n42);
   U41 : IV port map( A => n36, Z => n14);
   U42 : ND2 port map( A => shift_en, B => n45, Z => n36);
   U43 : EON1 port map( A => n61, B => n45, C => n9, D => n44, Z => n113);
   U44 : OR2 port map( A => n41, B => n4, Z => n44);
   U45 : ND2 port map( A => n62, B => n45, Z => n41);
   U46 : IV port map( A => n38, Z => n45);
   U47 : MUX21L port map( A => n46, B => n47, S => one_cnt_2_port, Z => n104);
   U48 : AO6 port map( A => n33, B => n1, C => n34, Z => n47);
   U49 : AO7 port map( A => one_cnt_0_port, B => n48, C => n31, Z => n34);
   U50 : ND2 port map( A => n35, B => one_cnt_1_port, Z => n46);
   U51 : AN3 port map( A => one_cnt_0_port, B => n31, C => n33, Z => n35);
   U52 : IV port map( A => n48, Z => n33);
   U53 : ND3 port map( A => shift_en, B => n49, C => sd_nrzi, Z => n48);
   U54 : ND2 port map( A => shift_en, B => n105, Z => n31);
   U55 : AO7 port map( A => fs_ce_o_port, B => n7, C => n80, Z => n103);
   U56 : IV port map( A => n50, Z => n102);
   U57 : EON1 port map( A => n51, B => n63, C => rxd_s, D => n60, Z => n101);
   U58 : NR2 port map( A => n60, B => rxd_s, Z => n51);
   U59 : MUX21H port map( A => se0_s, B => se0, S => fs_ce_o_port, Z => n100);
   U60 : AO7 port map( A => n52, B => n53, C => n50, Z => 
                           dpll_next_state_1_port);
   U61 : OR2 port map( A => n65, B => n64, Z => n53);
   U62 : MUX21L port map( A => n64, B => n50, S => n52, Z => 
                           dpll_next_state_0_port);
   U63 : NR2 port map( A => n3, B => n54, Z => n52);
   U64 : EO port map( A => n5, B => rxd_r, Z => n54);
   U65 : ND2 port map( A => n64, B => n65, Z => n50);
   U66 : ND3 port map( A => n75, B => n73, C => n74, Z => RxError_o);
   U67 : ND2 port map( A => n72, B => n13, Z => N39);
   U68 : ND2 port map( A => rxdn_s0, B => LineState_1_port, Z => n13);
   U69 : ND2 port map( A => n71, B => n12, Z => N37);
   U70 : ND2 port map( A => rxdp_s0, B => LineState_0_port, Z => n12);
   U71 : NR2 port map( A => n55, B => n28, Z => N29);
   U72 : IV port map( A => n21, Z => n28);
   U73 : NR4 port map( A => RxActive_o_port, B => se0, C => n105, D => se1_s, Z
                           => n21);
   U74 : AO2 port map( A => n56, B => n68, C => n57, D => n30, Z => n55);
   U75 : ND3 port map( A => n77, B => rxdp_s, C => n3, Z => n30);
   U76 : EON1 port map( A => n68, B => n8, C => n29_port, D => n66, Z => n57);
   U77 : ND3 port map( A => n8, B => n68, C => n26, Z => n29_port);
   U78 : NR2 port map( A => n66, B => n26, Z => n56);
   U79 : NR2 port map( A => n3, B => n10, Z => n26);
   U80 : ND4 port map( A => n9, B => n4, C => n58, D => n17, Z => N49);
   U81 : IV port map( A => se0, Z => n17);
   U82 : ND2 port map( A => RxActive_o_port, B => n76, Z => n58);
   U83 : NR2 port map( A => n61, B => n38, Z => N160);
   U84 : ND2 port map( A => fs_ce_o_port, B => n49, Z => n38);
   U85 : NR4 port map( A => se0, B => n59, C => n6, D => n49, Z => N141);
   U86 : OR3 port map( A => n1, B => one_cnt_0_port, C => n11, Z => n161);
   U87 : ND2 port map( A => fs_ce_o_port, B => RxActive_o_port, Z => n59);
   U88 : ND2 port map( A => n10, B => rxdp_s, Z => se1);

end SYN_RTL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy.all;

entity usb_tx_phy is

   port( clk, rst, fs_ce, phy_mode : in std_logic;  txdp, txdn, txoe : out 
         std_logic;  DataOut_i : in std_logic_vector (7 downto 0);  TxValid_i :
         in std_logic;  TxReady_o : out std_logic);

end usb_tx_phy;

architecture SYN_RTL of usb_tx_phy is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21L
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO7
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21H
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EON1
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO1
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
   
   signal ld_data_d, N29, tx_ip, tx_ip_sync, hold_reg_d_5_port, 
      hold_reg_d_1_port, N62, sft_done, N66, hold_reg_7_port, hold_reg_6_port, 
      hold_reg_5_port, hold_reg_4_port, hold_reg_3_port, hold_reg_2_port, 
      hold_reg_1_port, hold_reg_0_port, one_cnt_1_port, one_cnt_0_port, sd_bs_o
      , sd_nrzi_o, state_2_port, state_1_port, state_0_port, next_state_2_port,
      next_state_1_port, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n92, n97, n98, n99, n100, n101, n102, n103, n104, 
      n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, 
      n117, n118, n119, n120, n126, n128, n129, n130, n131, n132, n133, n134, 
      n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29_port, n30
      , n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59
      , n60, n61, n62_port, n63, n64, n65, n66_port, n67, n68, n69, n70, n71, 
      n72, n73, n74, n90, n91, n93, n94, n95, n96, n121, n122, n123, n124, n125
      , n127, n135, n136, n137, n138, n139, n140, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049 : std_logic;

begin
   
   state_reg_0_inst : FD2 port map( D => n111, CP => clk, CD => rst, Q => 
                           state_0_port, QN => n9);
   append_eop_reg : FD2 port map( D => n130, CP => clk, CD => rst, Q => n_1027,
                           QN => n12);
   append_eop_sync1_reg : FD2 port map( D => n110, CP => clk, CD => rst, Q => 
                           n_1028, QN => n6);
   append_eop_sync2_reg : FD2 port map( D => n109, CP => clk, CD => rst, Q => 
                           n135, QN => n13);
   append_eop_sync3_reg : FD2 port map( D => n108, CP => clk, CD => rst, Q => 
                           n127, QN => n2);
   append_eop_sync4_reg : FD2 port map( D => n107, CP => clk, CD => rst, Q => 
                           n_1029, QN => n14);
   state_reg_1_inst : FD2 port map( D => next_state_1_port, CP => clk, CD => 
                           rst, Q => state_1_port, QN => n7);
   state_reg_2_inst : FD2 port map( D => next_state_2_port, CP => clk, CD => 
                           rst, Q => state_2_port, QN => n5);
   tx_ip_reg : FD2 port map( D => n119, CP => clk, CD => rst, Q => tx_ip, QN =>
                           n15);
   tx_ip_sync_reg : FD2 port map( D => n106, CP => clk, CD => rst, Q => 
                           tx_ip_sync, QN => n1);
   txoe_r1_reg : FD2 port map( D => n105, CP => clk, CD => rst, Q => n_1030, QN
                           => n3);
   txoe_r2_reg : FD2 port map( D => n104, CP => clk, CD => rst, Q => n_1031, QN
                           => n125);
   txoe_reg : FD4 port map( D => n103, CP => clk, SD => rst, Q => txoe, QN => 
                           n97);
   data_done_reg : FD2 port map( D => n140, CP => clk, CD => rst, Q => n_1032, 
                           QN => n139);
   ld_data_reg : FD1 port map( D => ld_data_d, CP => clk, Q => n_1033, QN => 
                           n82);
   hold_reg_reg_7_inst : FD2 port map( D => n134, CP => clk, CD => rst, Q => 
                           hold_reg_7_port, QN => n75);
   hold_reg_d_reg_7_inst : FD2 port map( D => hold_reg_7_port, CP => clk, CD =>
                           rst, Q => n_1034, QN => n81);
   hold_reg_reg_6_inst : FD2 port map( D => n118, CP => clk, CD => rst, Q => 
                           hold_reg_6_port, QN => n89);
   hold_reg_d_reg_6_inst : FD2 port map( D => hold_reg_6_port, CP => clk, CD =>
                           rst, Q => n_1035, QN => n79);
   hold_reg_reg_5_inst : FD2 port map( D => n117, CP => clk, CD => rst, Q => 
                           hold_reg_5_port, QN => n88);
   hold_reg_d_reg_5_inst : FD2 port map( D => hold_reg_5_port, CP => clk, CD =>
                           rst, Q => hold_reg_d_5_port, QN => n_1036);
   hold_reg_reg_4_inst : FD2 port map( D => n116, CP => clk, CD => rst, Q => 
                           hold_reg_4_port, QN => n87);
   hold_reg_d_reg_4_inst : FD2 port map( D => hold_reg_4_port, CP => clk, CD =>
                           rst, Q => n_1037, QN => n80);
   hold_reg_reg_3_inst : FD2 port map( D => n115, CP => clk, CD => rst, Q => 
                           hold_reg_3_port, QN => n86);
   hold_reg_d_reg_3_inst : FD2 port map( D => hold_reg_3_port, CP => clk, CD =>
                           rst, Q => n_1038, QN => n78);
   hold_reg_reg_2_inst : FD2 port map( D => n114, CP => clk, CD => rst, Q => 
                           hold_reg_2_port, QN => n85);
   hold_reg_d_reg_2_inst : FD2 port map( D => hold_reg_2_port, CP => clk, CD =>
                           rst, Q => n_1039, QN => n76);
   hold_reg_reg_1_inst : FD2 port map( D => n113, CP => clk, CD => rst, Q => 
                           hold_reg_1_port, QN => n84);
   hold_reg_d_reg_1_inst : FD2 port map( D => hold_reg_1_port, CP => clk, CD =>
                           rst, Q => hold_reg_d_1_port, QN => n_1040);
   hold_reg_reg_0_inst : FD2 port map( D => n112, CP => clk, CD => rst, Q => 
                           hold_reg_0_port, QN => n83);
   hold_reg_d_reg_0_inst : FD2 port map( D => hold_reg_0_port, CP => clk, CD =>
                           rst, Q => n_1041, QN => n77);
   sd_raw_o_reg : FD1 port map( D => N62, CP => clk, Q => n92, QN => n_1042);
   sd_bs_o_reg : FD2 port map( D => n102, CP => clk, CD => rst, Q => sd_bs_o, 
                           QN => n_1043);
   sd_nrzi_o_reg : FD4 port map( D => n126, CP => clk, SD => rst, Q => 
                           sd_nrzi_o, QN => n11);
   txdn_reg : FD2 port map( D => n101, CP => clk, CD => rst, Q => txdn, QN => 
                           n98);
   one_cnt_reg_0_inst : FD2 port map( D => n129, CP => clk, CD => rst, Q => 
                           one_cnt_0_port, QN => n_1044);
   one_cnt_reg_1_inst : FD2 port map( D => n128, CP => clk, CD => rst, Q => 
                           one_cnt_1_port, QN => n16);
   one_cnt_reg_2_inst : FD2 port map( D => n133, CP => clk, CD => rst, Q => 
                           n_1045, QN => n124);
   bit_cnt_reg_0_inst : FD2 port map( D => n131, CP => clk, CD => rst, Q => 
                           n137, QN => n8);
   bit_cnt_reg_1_inst : FD2 port map( D => n120, CP => clk, CD => rst, Q => 
                           n138, QN => n4);
   bit_cnt_reg_2_inst : FD2 port map( D => n132, CP => clk, CD => rst, Q => 
                           n136, QN => n_1046);
   sft_done_reg : FD1 port map( D => N66, CP => clk, Q => sft_done, QN => 
                           n_1047);
   sft_done_r_reg : FD1 port map( D => sft_done, CP => clk, Q => n_1048, QN => 
                           n10);
   TxReady_o_reg : FD2 port map( D => N29, CP => clk, CD => rst, Q => TxReady_o
                           , QN => n_1049);
   txdp_reg : FD4 port map( D => n100, CP => clk, SD => rst, Q => txdp, QN => 
                           n99);
   U3 : NR2 port map( A => n17, B => n18, Z => next_state_2_port);
   U4 : MUX21L port map( A => n19, B => n20, S => n7, Z => n18);
   U5 : AO6 port map( A => state_0_port, B => fs_ce, C => n60, Z => n20);
   U6 : NR3 port map( A => n9, B => state_2_port, C => n2, Z => n19);
   U7 : AO1 port map( A => n21, B => n22, C => n17, D => state_2_port, Z => 
                           next_state_1_port);
   U8 : IV port map( A => rst, Z => n17);
   U9 : MUX21L port map( A => n2, B => n23, S => n7, Z => n21);
   U10 : AN3 port map( A => state_0_port, B => n10, C => sft_done, Z => n23);
   U11 : AO6 port map( A => tx_ip, B => n139, C => n24, Z => n140);
   U12 : MUX21L port map( A => n75, B => n25, S => n26, Z => n134);
   U13 : NR2 port map( A => n27, B => DataOut_i(7), Z => n25);
   U14 : MUX21L port map( A => n28, B => n29_port, S => n124, Z => n133);
   U15 : ND2 port map( A => n30, B => one_cnt_1_port, Z => n29_port);
   U16 : AO6 port map( A => n31, B => n16, C => n32, Z => n28);
   U17 : MUX21L port map( A => n33, B => n34, S => n136, Z => n132);
   U18 : IV port map( A => n35, Z => n34);
   U19 : AO7 port map( A => n1, B => n138, C => n36, Z => n35);
   U20 : ND2 port map( A => n37, B => n38, Z => n33);
   U21 : MUX21H port map( A => n38, B => n39, S => n137, Z => n131);
   U22 : AO7 port map( A => n135, B => n12, C => n40, Z => n130);
   U23 : MUX21L port map( A => n41, B => n42, S => one_cnt_0_port, Z => n129);
   U24 : ND2 port map( A => n31, B => n42, Z => n41);
   U25 : MUX21H port map( A => n30, B => n32, S => one_cnt_1_port, Z => n128);
   U26 : AO7 port map( A => one_cnt_0_port, B => n43, C => n42, Z => n32);
   U27 : AN3 port map( A => n31, B => n42, C => one_cnt_0_port, Z => n30);
   U28 : MUX21L port map( A => n44, B => n11, S => n45, Z => n126);
   U29 : AO6 port map( A => n42, B => n46, C => n3, Z => n45);
   U30 : ND2 port map( A => sd_bs_o, B => tx_ip_sync, Z => n46);
   U31 : ND3 port map( A => n3, B => n1, C => n11, Z => n44);
   U32 : EON1 port map( A => n36, B => n4, C => n38, D => n47, Z => n120);
   U33 : NR2 port map( A => n1, B => n39, Z => n38);
   U34 : AO6 port map( A => n8, B => tx_ip_sync, C => n39, Z => n36);
   U35 : AO6 port map( A => n48, B => fs_ce, C => n1, Z => n39);
   U36 : AO7 port map( A => n127, B => n15, C => n49, Z => n119);
   U37 : AO4 port map( A => n89, B => n26, C => n50, D => n51, Z => n55);
   U38 : IV port map( A => DataOut_i(6), Z => n50);
   U39 : AO4 port map( A => n88, B => n26, C => n52, D => n52, Z => n117);
   U40 : IV port map( A => DataOut_i(5), Z => n52);
   U41 : AO4 port map( A => n87, B => n26, C => n53, D => n54, Z => n56);
   U42 : IV port map( A => DataOut_i(4), Z => n53);
   U43 : AO4 port map( A => n86, B => n26, C => n54, D => n53, Z => n115);
   U44 : IV port map( A => DataOut_i(3), Z => n116);
   U45 : AO4 port map( A => n85, B => n26, C => n55, D => n112, Z => n114);
   U46 : IV port map( A => DataOut_i(2), Z => n55);
   U47 : AO4 port map( A => n84, B => n26, C => n24, D => n117, Z => n113);
   U48 : IV port map( A => DataOut_i(1), Z => n113);
   U49 : AO4 port map( A => n83, B => n26, C => n20, D => n51, Z => n116);
   U50 : ND2 port map( A => n26, B => n49, Z => n51);
   U51 : IV port map( A => DataOut_i(0), Z => n57);
   U52 : ND2 port map( A => n82, B => n49, Z => n26);
   U53 : ND3 port map( A => n49, B => n40, C => n58, Z => n111);
   U54 : MUX21L port map( A => n59, B => n60, S => n5, Z => n58);
   U55 : NR2 port map( A => n61, B => n9, Z => n60);
   U56 : MUX21L port map( A => n2, B => n62_port, S => n7, Z => n61);
   U57 : ND2 port map( A => sft_done, B => n10, Z => n62_port);
   U58 : NR2 port map( A => state_1_port, B => n63, Z => n59);
   U59 : MUX21L port map( A => n64, B => state_0_port, S => n65, Z => n63);
   U60 : NR2 port map( A => state_0_port, B => n127, Z => n64);
   U61 : ND3 port map( A => n66_port, B => n139, C => n67, Z => n40);
   U62 : IV port map( A => n27, Z => n49);
   U63 : NR4 port map( A => n24, B => state_0_port, C => state_1_port, D => 
                           state_2_port, Z => n27);
   U64 : MUX21L port map( A => n12, B => n6, S => n65, Z => n110);
   U65 : MUX21L port map( A => n6, B => n13, S => n65, Z => n109);
   U66 : AO4 port map( A => n65, B => n13, C => n68, D => n2, Z => n108);
   U67 : NR2 port map( A => n65, B => n14, Z => n68);
   U68 : MUX21L port map( A => n2, B => n14, S => n65, Z => n107);
   U69 : AO7 port map( A => n65, B => n15, C => n42, Z => n106);
   U70 : ND2 port map( A => tx_ip_sync, B => n65, Z => n42);
   U71 : MUX21L port map( A => n1, B => n3, S => n65, Z => n105);
   U72 : MUX21L port map( A => n3, B => n125, S => n65, Z => n104);
   U73 : MUX21L port map( A => n69, B => n97, S => n65, Z => n103);
   U74 : ND2 port map( A => n125, B => n3, Z => n69);
   U75 : MUX21H port map( A => sd_bs_o, B => n31, S => fs_ce, Z => n102);
   U76 : IV port map( A => n43, Z => n31);
   U77 : ND3 port map( A => n48, B => n92, C => tx_ip_sync, Z => n43);
   U78 : MUX21L port map( A => n70, B => n98, S => n65, Z => n101);
   U79 : MUX21L port map( A => n71, B => n72, S => n2, Z => n70);
   U80 : NR2 port map( A => sd_nrzi_o, B => n71, Z => n72);
   U81 : MUX21L port map( A => n73, B => n99, S => n65, Z => n100);
   U82 : IV port map( A => fs_ce, Z => n65);
   U83 : AO7 port map( A => n2, B => n71, C => sd_nrzi_o, Z => n73);
   U84 : IV port map( A => phy_mode, Z => n71);
   U85 : IV port map( A => n74, Z => ld_data_d);
   U86 : AN3 port map( A => n136, B => n48, C => n37, Z => N66);
   U87 : ND3 port map( A => n124, B => one_cnt_0_port, C => n16, Z => n48);
   U88 : NR2 port map( A => n1, B => n90, Z => N62);
   U89 : MUX21L port map( A => n91, B => n93, S => n136, Z => n90);
   U90 : AO7 port map( A => n94, B => n81, C => n95, Z => n93);
   U91 : AO2 port map( A => n96, B => n8, C => n47, D => hold_reg_d_5_port, Z 
                           => n95);
   U92 : MUX21L port map( A => n79, B => n80, S => n4, Z => n96);
   U93 : AO7 port map( A => n94, B => n78, C => n121, Z => n91);
   U94 : AO2 port map( A => n122, B => n8, C => n47, D => hold_reg_d_1_port, Z 
                           => n121);
   
   U98 : NR2 port map( A => n8, B => n4, Z => n37);
   U99 : NR2 port map( A => n24, B => n74, Z => N29);
   U100 : ND2 port map( A => n67, B => n123, Z => n74);
   U101 : AO4 port map( A => state_1_port, B => n9, C => n139, D => n22, Z => 
                           n123);
   U102 : IV port map( A => n66_port, Z => n22);
   U103 : NR2 port map( A => n7, B => state_0_port, Z => n66_port);
   U104 : AN3 port map( A => n5, B => n10, C => sft_done, Z => n67);
   U105 : IV port map( A => TxValid_i, Z => n24);
   U95 : NR2 port map( A => n8, B => n138, Z => n47);
   U96 : MUX21L port map( A => n76, B => n77, S => n4, Z => n122);
   U97 : IV port map( A => n37, Z => n94);

end SYN_RTL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_usb_phy.all;

entity usb_phy is

   port( clk, rst, phy_tx_mode : in std_logic;  usb_rst : out std_logic;  rxd, 
         rxdp, rxdn : in std_logic;  txdp, txdn, txoe : out std_logic;  
         DataOut_i : in std_logic_vector (7 downto 0);  TxValid_i : in 
         std_logic;  TxReady_o : out std_logic;  DataIn_o : out 
         std_logic_vector (7 downto 0);  RxValid_o, RxActive_o, RxError_o : out
         std_logic;  LineState_o : out std_logic_vector (1 downto 0));

end usb_phy;

architecture SYN_RTL of usb_phy is

   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component usb_rx_phy
      port( clk, rst : in std_logic;  fs_ce_o : out std_logic;  rxd, rxdp, rxdn
            : in std_logic;  DataIn_o : out std_logic_vector (7 downto 0);  
            RxValid_o, RxActive_o, RxError_o : out std_logic;  RxEn_i : in 
            std_logic;  LineState : out std_logic_vector (1 downto 0));
   end component;
   
   component usb_tx_phy
      port( clk, rst, fs_ce, phy_mode : in std_logic;  txdp, txdn, txoe : out 
            std_logic;  DataOut_i : in std_logic_vector (7 downto 0);  
            TxValid_i : in std_logic;  TxReady_o : out std_logic);
   end component;
   
   component FD2
      port( D, CP, CD : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal txoe_port, LineState_o_1_port, LineState_o_0_port, fs_ce, 
      rst_cnt_4_port, rst_cnt_3_port, rst_cnt_2_port, rst_cnt_1_port, 
      rst_cnt_0_port, N20, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, 
      n20_port, n21, n22, n23, n24, n25, n26, n27, n28, n29, n_1050, n_1051, 
      n_1052, n_1053 : std_logic;

begin
   txoe <= txoe_port;
   LineState_o <= ( LineState_o_1_port, LineState_o_0_port );
   
   usb_rst_out_reg : FD1 port map( D => N20, CP => clk, Q => usb_rst, QN => n10
                           );
   rst_cnt_reg_4_inst : FD2 port map( D => n15, CP => clk, CD => rst, Q => 
                           rst_cnt_4_port, QN => n_1050);
   
   i_tx_phy : usb_tx_phy port map( clk => clk, rst => rst, fs_ce => fs_ce, 
                           phy_mode => phy_tx_mode, txdp => txdp, txdn => txdn,
                           txoe => txoe_port, DataOut_i(7) => DataOut_i(7), 
                           DataOut_i(6) => DataOut_i(6), DataOut_i(5) => 
                           DataOut_i(5), DataOut_i(4) => DataOut_i(4), 
                           DataOut_i(3) => DataOut_i(3), DataOut_i(2) => 
                           DataOut_i(2), DataOut_i(1) => DataOut_i(1), 
                           DataOut_i(0) => DataOut_i(0), TxValid_i => TxValid_i
                           , TxReady_o => TxReady_o);
   i_rx_phy : usb_rx_phy port map( clk => clk, rst => rst, fs_ce_o => fs_ce, 
                           rxd => rxd, rxdp => rxdp, rxdn => rxdn, DataIn_o(7) 
                           => DataIn_o(7), DataIn_o(6) => DataIn_o(6), 
                           DataIn_o(5) => DataIn_o(5), DataIn_o(4) => 
                           DataIn_o(4), DataIn_o(3) => DataIn_o(3), DataIn_o(2)
                           => DataIn_o(2), DataIn_o(1) => DataIn_o(1), 
                           DataIn_o(0) => DataIn_o(0), RxValid_o => RxValid_o, 
                           RxActive_o => RxActive_o, RxError_o => RxError_o, 
                           RxEn_i => txoe_port, LineState(1) => 
                           LineState_o_1_port, LineState(0) => 
                           LineState_o_0_port);
   rst_cnt_reg_0_inst : FD2 port map( D => n14, CP => clk, CD => rst, Q => 
							rst_cnt_0_port, QN => n16);
   rst_cnt_reg_1_inst : FD2 port map( D => n13, CP => clk, CD => rst, Q => 
                           rst_cnt_1_port, QN => n_1051);
   rst_cnt_reg_2_inst : FD2 port map( D => n12, CP => clk, CD => rst, Q => 
                           rst_cnt_2_port, QN => n_1052);
   rst_cnt_reg_3_inst : FD2 port map( D => n11, CP => clk, CD => rst, Q => 
                           rst_cnt_3_port, QN => n_1053);
   U18 : NR2 port map( A => n17, B => n18, Z => n15);
   U19 : EO port map( A => rst_cnt_4_port, B => n19, Z => n17);
   U20 : NR2 port map( A => rst_cnt_3_port, B => n20_port, Z => n19);
   U21 : ND2 port map( A => n21, B => n18, Z => n14);
   U22 : NR2 port map( A => n16, B => n22, Z => n21);
   U23 : EN port map( A => n23, B => n18, Z => n13);
   U24 : EN port map( A => n24, B => rst_cnt_1_port, Z => n23);
   U25 : NR2 port map( A => n25, B => n18, Z => n12);
   U26 : EO port map( A => rst_cnt_2_port, B => n26, Z => n25);
   U27 : ND2 port map( A => n24, B => rst_cnt_1_port, Z => n26);
   U28 : NR2 port map( A => n22, B => n16, Z => n24);
   U29 : NR2 port map( A => n27, B => n18, Z => n11);
   U30 : OR2 port map( A => LineState_o_0_port, B => LineState_o_1_port, Z => 
                           n18);
   U31 : EN port map( A => rst_cnt_3_port, B => n20_port, Z => n27);
   U32 : NR2 port map( A => n28, B => n22, Z => n20_port);
   U33 : ND2 port map( A => fs_ce, B => n101, Z => n22);
   U34 : AN3 port map( A => rst_cnt_3_port, B => n29, C => rst_cnt_4_port, Z =>
                           N20);
   U35 : IV port map( A => n28, Z => n29);
   U36 : ND3 port map( A => rst_cnt_1_port, B => rst_cnt_0_port, C => 
                           rst_cnt_2_port, Z => n28);

end SYN_RTL;
