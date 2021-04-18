module uart (csr_we,
    rx_irq,
    sys_clk,
    sys_rst,
    tx_irq,
    uart_rx,
    uart_tx,
    VPWR,
    VGND,
    csr_a,
    csr_di,
    csr_do);
 input csr_we;
 output rx_irq;
 input sys_clk;
 input sys_rst;
 output tx_irq;
 input uart_rx;
 output uart_tx;
 input VPWR;
 input VGND;
 input [13:0] csr_a;
 input [31:0] csr_di;
 output [31:0] csr_do;

 sky130_fd_sc_hd__nor2_2 _0474_ (.A(net1),
    .B(net6),
    .Y(_0156_));
 sky130_fd_sc_hd__inv_2 _0475_ (.A(_0156_),
    .Y(_0157_));
 sky130_fd_sc_hd__nor2_4 _0476_ (.A(net3),
    .B(net2),
    .Y(_0158_));
 sky130_fd_sc_hd__nor2_4 _0477_ (.A(net5),
    .B(net4),
    .Y(_0159_));
 sky130_fd_sc_hd__nand3_4 _0478_ (.A(_0158_),
    .B(_0159_),
    .C(net47),
    .Y(_0160_));
 sky130_fd_sc_hd__nor2_4 _0479_ (.A(_0157_),
    .B(_0160_),
    .Y(_0161_));
 sky130_fd_sc_hd__buf_4 _0480_ (.A(_0161_),
    .X(\transceiver.tx_wr ));
 sky130_fd_sc_hd__nor2_4 _0481_ (.A(\transceiver.enable16_counter[1] ),
    .B(\transceiver.enable16_counter[0] ),
    .Y(_0162_));
 sky130_fd_sc_hd__nor2_2 _0482_ (.A(\transceiver.enable16_counter[3] ),
    .B(\transceiver.enable16_counter[2] ),
    .Y(_0163_));
 sky130_fd_sc_hd__nand2_4 _0483_ (.A(_0162_),
    .B(_0163_),
    .Y(_0164_));
 sky130_fd_sc_hd__nor2_2 _0484_ (.A(\transceiver.enable16_counter[5] ),
    .B(\transceiver.enable16_counter[6] ),
    .Y(_0165_));
 sky130_fd_sc_hd__nor2_2 _0485_ (.A(\transceiver.enable16_counter[4] ),
    .B(\transceiver.enable16_counter[7] ),
    .Y(_0166_));
 sky130_fd_sc_hd__nand2_4 _0486_ (.A(_0165_),
    .B(_0166_),
    .Y(_0167_));
 sky130_fd_sc_hd__nor2_4 _0487_ (.A(_0164_),
    .B(_0167_),
    .Y(_0168_));
 sky130_fd_sc_hd__nor2_1 _0488_ (.A(\transceiver.enable16_counter[9] ),
    .B(\transceiver.enable16_counter[8] ),
    .Y(_0169_));
 sky130_fd_sc_hd__nor2_1 _0489_ (.A(\transceiver.enable16_counter[13] ),
    .B(\transceiver.enable16_counter[12] ),
    .Y(_0170_));
 sky130_fd_sc_hd__nand2_1 _0490_ (.A(_0169_),
    .B(_0170_),
    .Y(_0171_));
 sky130_fd_sc_hd__nor2_4 _0491_ (.A(\transceiver.enable16_counter[11] ),
    .B(\transceiver.enable16_counter[10] ),
    .Y(_0172_));
 sky130_fd_sc_hd__nor2_1 _0492_ (.A(\transceiver.enable16_counter[15] ),
    .B(\transceiver.enable16_counter[14] ),
    .Y(_0173_));
 sky130_fd_sc_hd__nand2_1 _0493_ (.A(_0172_),
    .B(_0173_),
    .Y(_0174_));
 sky130_fd_sc_hd__nor2_4 _0494_ (.A(_0171_),
    .B(_0174_),
    .Y(_0175_));
 sky130_fd_sc_hd__nand3_4 _0495_ (.A(_0168_),
    .B(_0175_),
    .C(\transceiver.tx_busy ),
    .Y(_0176_));
 sky130_fd_sc_hd__inv_2 _0496_ (.A(_0161_),
    .Y(_0177_));
 sky130_fd_sc_hd__nand2_1 _0497_ (.A(_0176_),
    .B(_0177_),
    .Y(_0178_));
 sky130_fd_sc_hd__buf_2 _0498_ (.A(_0178_),
    .X(_0179_));
 sky130_fd_sc_hd__inv_2 _0499_ (.A(net86),
    .Y(_0180_));
 sky130_fd_sc_hd__clkbuf_2 _0500_ (.A(_0157_),
    .X(_0181_));
 sky130_fd_sc_hd__clkbuf_2 _0501_ (.A(_0160_),
    .X(_0182_));
 sky130_fd_sc_hd__nor2_2 _0502_ (.A(\transceiver.tx_count16[1] ),
    .B(\transceiver.tx_count16[0] ),
    .Y(_0183_));
 sky130_fd_sc_hd__inv_2 _0503_ (.A(\transceiver.tx_count16[3] ),
    .Y(_0184_));
 sky130_fd_sc_hd__nand3b_4 _0504_ (.A_N(\transceiver.tx_count16[2] ),
    .B(_0183_),
    .C(_0184_),
    .Y(_0185_));
 sky130_fd_sc_hd__o21a_1 _0505_ (.A1(_0181_),
    .A2(_0182_),
    .B1(_0185_),
    .X(_0186_));
 sky130_fd_sc_hd__inv_2 _0506_ (.A(_0186_),
    .Y(_0187_));
 sky130_fd_sc_hd__nand3_2 _0507_ (.A(_0179_),
    .B(_0180_),
    .C(_0187_),
    .Y(_0188_));
 sky130_fd_sc_hd__buf_1 _0508_ (.A(_0188_),
    .X(_0189_));
 sky130_fd_sc_hd__buf_1 _0509_ (.A(_0182_),
    .X(_0190_));
 sky130_fd_sc_hd__clkbuf_2 _0510_ (.A(_0190_),
    .X(_0191_));
 sky130_fd_sc_hd__inv_2 _0511_ (.A(\transceiver.tx_bitcount[3] ),
    .Y(_0192_));
 sky130_fd_sc_hd__clkbuf_2 _0512_ (.A(\transceiver.tx_bitcount[1] ),
    .X(_0193_));
 sky130_fd_sc_hd__clkbuf_2 _0513_ (.A(\transceiver.tx_bitcount[0] ),
    .X(_0194_));
 sky130_fd_sc_hd__and2_1 _0514_ (.A(_0193_),
    .B(_0194_),
    .X(_0195_));
 sky130_fd_sc_hd__o2111ai_4 _0515_ (.A1(_0181_),
    .A2(_0191_),
    .B1(_0192_),
    .C1(\transceiver.tx_bitcount[2] ),
    .D1(_0195_),
    .Y(_0196_));
 sky130_fd_sc_hd__inv_2 _0516_ (.A(\transceiver.tx_bitcount[2] ),
    .Y(_0197_));
 sky130_fd_sc_hd__inv_2 _0517_ (.A(\transceiver.tx_bitcount[1] ),
    .Y(_0198_));
 sky130_fd_sc_hd__inv_2 _0518_ (.A(_0194_),
    .Y(_0199_));
 sky130_fd_sc_hd__o32a_1 _0519_ (.A1(_0197_),
    .A2(_0198_),
    .A3(_0199_),
    .B1(_0181_),
    .B2(_0190_),
    .X(_0200_));
 sky130_fd_sc_hd__nor2_1 _0520_ (.A(_0200_),
    .B(_0189_),
    .Y(_0201_));
 sky130_fd_sc_hd__o22ai_1 _0521_ (.A1(_0189_),
    .A2(_0196_),
    .B1(_0192_),
    .B2(_0201_),
    .Y(_0154_));
 sky130_fd_sc_hd__a21oi_2 _0522_ (.A1(_0176_),
    .A2(_0177_),
    .B1(net86),
    .Y(_0202_));
 sky130_fd_sc_hd__buf_1 _0523_ (.A(_0202_),
    .X(_0203_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _0524_ (.A(_0203_),
    .X(_0204_));
 sky130_fd_sc_hd__clkbuf_2 _0525_ (.A(_0187_),
    .X(_0205_));
 sky130_fd_sc_hd__nand3_1 _0526_ (.A(_0204_),
    .B(_0195_),
    .C(_0205_),
    .Y(_0206_));
 sky130_fd_sc_hd__a2bb2oi_1 _0527_ (.A1_N(_0200_),
    .A2_N(_0189_),
    .B1(_0197_),
    .B2(_0206_),
    .Y(_0153_));
 sky130_fd_sc_hd__nand2_1 _0528_ (.A(_0188_),
    .B(_0193_),
    .Y(_0207_));
 sky130_fd_sc_hd__clkbuf_2 _0529_ (.A(_0202_),
    .X(_0208_));
 sky130_fd_sc_hd__nor2_1 _0530_ (.A(_0193_),
    .B(_0194_),
    .Y(_0209_));
 sky130_fd_sc_hd__nor3_2 _0531_ (.A(_0195_),
    .B(_0209_),
    .C(\transceiver.tx_wr ),
    .Y(_0210_));
 sky130_fd_sc_hd__nand3_2 _0532_ (.A(_0208_),
    .B(_0205_),
    .C(_0210_),
    .Y(_0211_));
 sky130_fd_sc_hd__nand2_1 _0533_ (.A(_0207_),
    .B(_0211_),
    .Y(_0152_));
 sky130_fd_sc_hd__clkbuf_2 _0534_ (.A(_0180_),
    .X(_0212_));
 sky130_fd_sc_hd__clkbuf_2 _0535_ (.A(_0212_),
    .X(_0213_));
 sky130_fd_sc_hd__o2111ai_2 _0536_ (.A1(_0194_),
    .A2(\transceiver.tx_wr ),
    .B1(_0213_),
    .C1(_0205_),
    .D1(_0179_),
    .Y(_0214_));
 sky130_fd_sc_hd__a21boi_1 _0537_ (.A1(_0199_),
    .A2(_0189_),
    .B1_N(_0214_),
    .Y(_0151_));
 sky130_fd_sc_hd__buf_1 _0538_ (.A(\transceiver.tx_count16[0] ),
    .X(_0215_));
 sky130_fd_sc_hd__nand3_1 _0539_ (.A(\transceiver.tx_count16[2] ),
    .B(\transceiver.tx_count16[1] ),
    .C(_0215_),
    .Y(_0216_));
 sky130_fd_sc_hd__inv_2 _0540_ (.A(_0216_),
    .Y(_0217_));
 sky130_fd_sc_hd__nand3_2 _0541_ (.A(_0179_),
    .B(_0212_),
    .C(_0217_),
    .Y(_0218_));
 sky130_fd_sc_hd__clkbuf_2 _0542_ (.A(_0156_),
    .X(_0219_));
 sky130_fd_sc_hd__nand3b_2 _0543_ (.A_N(_0190_),
    .B(_0212_),
    .C(_0219_),
    .Y(_0220_));
 sky130_fd_sc_hd__a21boi_1 _0544_ (.A1(_0218_),
    .A2(_0184_),
    .B1_N(_0220_),
    .Y(_0221_));
 sky130_fd_sc_hd__o21a_1 _0545_ (.A1(_0184_),
    .A2(_0218_),
    .B1(_0221_),
    .X(_0150_));
 sky130_fd_sc_hd__buf_2 _0546_ (.A(_0177_),
    .X(_0222_));
 sky130_fd_sc_hd__buf_1 _0547_ (.A(net86),
    .X(_0223_));
 sky130_fd_sc_hd__buf_2 _0548_ (.A(_0223_),
    .X(_0224_));
 sky130_fd_sc_hd__and2_1 _0549_ (.A(\transceiver.tx_count16[1] ),
    .B(_0215_),
    .X(_0225_));
 sky130_fd_sc_hd__inv_2 _0550_ (.A(_0225_),
    .Y(_0226_));
 sky130_fd_sc_hd__a211oi_4 _0551_ (.A1(_0176_),
    .A2(_0222_),
    .B1(_0224_),
    .C1(_0226_),
    .Y(_0227_));
 sky130_fd_sc_hd__o211a_1 _0552_ (.A1(\transceiver.tx_count16[2] ),
    .A2(_0227_),
    .B1(_0218_),
    .C1(_0220_),
    .X(_0149_));
 sky130_fd_sc_hd__nor3_1 _0553_ (.A(_0183_),
    .B(_0225_),
    .C(\transceiver.tx_wr ),
    .Y(_0228_));
 sky130_fd_sc_hd__mux2_1 _0554_ (.A0(\transceiver.tx_count16[1] ),
    .A1(_0228_),
    .S(_0204_),
    .X(_0148_));
 sky130_fd_sc_hd__clkbuf_2 _0555_ (.A(_0190_),
    .X(_0229_));
 sky130_fd_sc_hd__o21ai_1 _0556_ (.A1(_0181_),
    .A2(_0229_),
    .B1(_0215_),
    .Y(_0230_));
 sky130_fd_sc_hd__mux2_1 _0557_ (.A0(_0215_),
    .A1(_0230_),
    .S(_0204_),
    .X(_0147_));
 sky130_fd_sc_hd__inv_2 _0558_ (.A(\transceiver.rx_busy ),
    .Y(_0231_));
 sky130_fd_sc_hd__buf_1 _0559_ (.A(_0231_),
    .X(_0232_));
 sky130_fd_sc_hd__buf_1 _0560_ (.A(_0232_),
    .X(_0233_));
 sky130_fd_sc_hd__clkbuf_2 _0561_ (.A(_0168_),
    .X(_0234_));
 sky130_fd_sc_hd__nand2_1 _0562_ (.A(_0234_),
    .B(_0175_),
    .Y(_0235_));
 sky130_fd_sc_hd__buf_1 _0563_ (.A(_0235_),
    .X(_0000_));
 sky130_fd_sc_hd__clkbuf_2 _0564_ (.A(_0223_),
    .X(_0236_));
 sky130_fd_sc_hd__nor2_1 _0565_ (.A(_0017_),
    .B(net85),
    .Y(_0237_));
 sky130_fd_sc_hd__a211oi_2 _0566_ (.A1(_0233_),
    .A2(net85),
    .B1(_0236_),
    .C1(_0237_),
    .Y(_0146_));
 sky130_fd_sc_hd__and2b_1 _0567_ (.A_N(net6),
    .B(net1),
    .X(_0238_));
 sky130_fd_sc_hd__inv_2 _0568_ (.A(_0238_),
    .Y(_0239_));
 sky130_fd_sc_hd__nor2_2 _0569_ (.A(_0182_),
    .B(_0239_),
    .Y(_0240_));
 sky130_fd_sc_hd__inv_2 _0570_ (.A(_0240_),
    .Y(_0241_));
 sky130_fd_sc_hd__buf_1 _0571_ (.A(_0241_),
    .X(_0242_));
 sky130_fd_sc_hd__clkbuf_2 _0572_ (.A(_0242_),
    .X(_0243_));
 sky130_fd_sc_hd__inv_2 _0573_ (.A(\transceiver.divisor[15] ),
    .Y(_0244_));
 sky130_fd_sc_hd__clkbuf_2 _0574_ (.A(_0224_),
    .X(_0245_));
 sky130_fd_sc_hd__clkbuf_2 _0575_ (.A(_0182_),
    .X(_0246_));
 sky130_fd_sc_hd__clkbuf_2 _0576_ (.A(_0246_),
    .X(_0247_));
 sky130_fd_sc_hd__clkbuf_2 _0577_ (.A(_0239_),
    .X(_0248_));
 sky130_fd_sc_hd__clkbuf_2 _0578_ (.A(_0248_),
    .X(_0249_));
 sky130_fd_sc_hd__nor3_2 _0579_ (.A(net21),
    .B(_0247_),
    .C(_0249_),
    .Y(_0250_));
 sky130_fd_sc_hd__a211oi_1 _0580_ (.A1(_0243_),
    .A2(_0244_),
    .B1(_0245_),
    .C1(_0250_),
    .Y(_0145_));
 sky130_fd_sc_hd__inv_2 _0581_ (.A(\transceiver.divisor[14] ),
    .Y(_0251_));
 sky130_fd_sc_hd__nor3_1 _0582_ (.A(net20),
    .B(_0247_),
    .C(_0249_),
    .Y(_0252_));
 sky130_fd_sc_hd__a211oi_1 _0583_ (.A1(_0243_),
    .A2(_0251_),
    .B1(_0245_),
    .C1(_0252_),
    .Y(_0144_));
 sky130_fd_sc_hd__inv_2 _0584_ (.A(\transceiver.divisor[13] ),
    .Y(_0253_));
 sky130_fd_sc_hd__nor3_2 _0585_ (.A(net19),
    .B(_0247_),
    .C(_0249_),
    .Y(_0254_));
 sky130_fd_sc_hd__a211oi_2 _0586_ (.A1(_0243_),
    .A2(_0253_),
    .B1(_0245_),
    .C1(_0254_),
    .Y(_0143_));
 sky130_fd_sc_hd__inv_2 _0587_ (.A(\transceiver.divisor[12] ),
    .Y(_0255_));
 sky130_fd_sc_hd__nor3_2 _0588_ (.A(net18),
    .B(_0247_),
    .C(_0249_),
    .Y(_0256_));
 sky130_fd_sc_hd__a211oi_2 _0589_ (.A1(_0243_),
    .A2(_0255_),
    .B1(_0245_),
    .C1(_0256_),
    .Y(_0142_));
 sky130_fd_sc_hd__buf_1 _0590_ (.A(_0241_),
    .X(_0257_));
 sky130_fd_sc_hd__inv_2 _0591_ (.A(\transceiver.divisor[11] ),
    .Y(_0258_));
 sky130_fd_sc_hd__clkbuf_2 _0592_ (.A(_0224_),
    .X(_0259_));
 sky130_fd_sc_hd__clkbuf_2 _0593_ (.A(_0246_),
    .X(_0260_));
 sky130_fd_sc_hd__clkbuf_2 _0594_ (.A(_0239_),
    .X(_0261_));
 sky130_fd_sc_hd__nor3_2 _0595_ (.A(net17),
    .B(_0260_),
    .C(_0261_),
    .Y(_0262_));
 sky130_fd_sc_hd__a211oi_1 _0596_ (.A1(_0257_),
    .A2(_0258_),
    .B1(_0259_),
    .C1(_0262_),
    .Y(_0141_));
 sky130_fd_sc_hd__inv_2 _0597_ (.A(\transceiver.divisor[10] ),
    .Y(_0263_));
 sky130_fd_sc_hd__nor3_1 _0598_ (.A(net16),
    .B(_0260_),
    .C(_0261_),
    .Y(_0264_));
 sky130_fd_sc_hd__a211oi_1 _0599_ (.A1(_0257_),
    .A2(_0263_),
    .B1(_0259_),
    .C1(_0264_),
    .Y(_0140_));
 sky130_fd_sc_hd__buf_1 _0600_ (.A(_0240_),
    .X(_0265_));
 sky130_fd_sc_hd__clkbuf_2 _0601_ (.A(_0212_),
    .X(_0266_));
 sky130_fd_sc_hd__or2b_1 _0602_ (.A(net46),
    .B_N(_0240_),
    .X(_0267_));
 sky130_fd_sc_hd__o211a_1 _0603_ (.A1(\transceiver.divisor[9] ),
    .A2(_0265_),
    .B1(_0266_),
    .C1(_0267_),
    .X(_0139_));
 sky130_fd_sc_hd__inv_2 _0604_ (.A(\transceiver.divisor[8] ),
    .Y(_0268_));
 sky130_fd_sc_hd__nor3_4 _0605_ (.A(net45),
    .B(_0260_),
    .C(_0261_),
    .Y(_0269_));
 sky130_fd_sc_hd__a211oi_2 _0606_ (.A1(_0257_),
    .A2(_0268_),
    .B1(_0259_),
    .C1(_0269_),
    .Y(_0138_));
 sky130_fd_sc_hd__inv_2 _0607_ (.A(net44),
    .Y(_0270_));
 sky130_fd_sc_hd__clkbuf_2 _0608_ (.A(_0238_),
    .X(_0271_));
 sky130_fd_sc_hd__nand3b_1 _0609_ (.A_N(_0246_),
    .B(_0270_),
    .C(_0271_),
    .Y(_0272_));
 sky130_fd_sc_hd__o211a_1 _0610_ (.A1(\transceiver.divisor[7] ),
    .A2(_0240_),
    .B1(_0266_),
    .C1(_0272_),
    .X(_0137_));
 sky130_fd_sc_hd__inv_2 _0611_ (.A(\transceiver.divisor[6] ),
    .Y(_0273_));
 sky130_fd_sc_hd__nor3_1 _0612_ (.A(net43),
    .B(_0260_),
    .C(_0261_),
    .Y(_0274_));
 sky130_fd_sc_hd__a211oi_1 _0613_ (.A1(_0257_),
    .A2(_0273_),
    .B1(_0259_),
    .C1(_0274_),
    .Y(_0136_));
 sky130_fd_sc_hd__inv_2 _0614_ (.A(\transceiver.divisor[5] ),
    .Y(_0275_));
 sky130_fd_sc_hd__buf_1 _0615_ (.A(_0213_),
    .X(_0276_));
 sky130_fd_sc_hd__clkbuf_2 _0616_ (.A(_0238_),
    .X(_0277_));
 sky130_fd_sc_hd__clkbuf_2 _0617_ (.A(_0277_),
    .X(_0278_));
 sky130_fd_sc_hd__nand3b_1 _0618_ (.A_N(_0191_),
    .B(net42),
    .C(_0278_),
    .Y(_0279_));
 sky130_fd_sc_hd__o211ai_1 _0619_ (.A1(_0275_),
    .A2(_0265_),
    .B1(_0276_),
    .C1(_0279_),
    .Y(_0135_));
 sky130_fd_sc_hd__inv_2 _0620_ (.A(\transceiver.divisor[4] ),
    .Y(_0280_));
 sky130_fd_sc_hd__nand3b_1 _0621_ (.A_N(_0191_),
    .B(net41),
    .C(_0271_),
    .Y(_0281_));
 sky130_fd_sc_hd__o211ai_1 _0622_ (.A1(_0280_),
    .A2(_0265_),
    .B1(_0276_),
    .C1(_0281_),
    .Y(_0134_));
 sky130_fd_sc_hd__inv_2 _0623_ (.A(\transceiver.divisor[3] ),
    .Y(_0282_));
 sky130_fd_sc_hd__clkbuf_2 _0624_ (.A(_0282_),
    .X(_0283_));
 sky130_fd_sc_hd__buf_2 _0625_ (.A(_0223_),
    .X(_0284_));
 sky130_fd_sc_hd__nor3_2 _0626_ (.A(net40),
    .B(_0229_),
    .C(_0248_),
    .Y(_0285_));
 sky130_fd_sc_hd__a211oi_1 _0627_ (.A1(_0242_),
    .A2(_0283_),
    .B1(_0284_),
    .C1(_0285_),
    .Y(_0133_));
 sky130_fd_sc_hd__inv_2 _0628_ (.A(\transceiver.divisor[2] ),
    .Y(_0286_));
 sky130_fd_sc_hd__nand3b_1 _0629_ (.A_N(_0191_),
    .B(net37),
    .C(_0271_),
    .Y(_0287_));
 sky130_fd_sc_hd__o211ai_1 _0630_ (.A1(_0286_),
    .A2(_0265_),
    .B1(_0276_),
    .C1(_0287_),
    .Y(_0132_));
 sky130_fd_sc_hd__nor3b_2 _0631_ (.A(_0229_),
    .B(_0248_),
    .C_N(net26),
    .Y(_0288_));
 sky130_fd_sc_hd__a211o_1 _0632_ (.A1(_0242_),
    .A2(\transceiver.divisor[1] ),
    .B1(_0224_),
    .C1(_0288_),
    .X(_0131_));
 sky130_fd_sc_hd__inv_2 _0633_ (.A(\transceiver.divisor[0] ),
    .Y(_0027_));
 sky130_fd_sc_hd__nor3_1 _0634_ (.A(net15),
    .B(_0229_),
    .C(_0248_),
    .Y(_0289_));
 sky130_fd_sc_hd__a211oi_1 _0635_ (.A1(_0242_),
    .A2(_0027_),
    .B1(_0284_),
    .C1(_0289_),
    .Y(_0130_));
 sky130_fd_sc_hd__clkbuf_2 _0636_ (.A(\transceiver.rx_busy ),
    .X(_0290_));
 sky130_fd_sc_hd__inv_2 _0637_ (.A(\transceiver.uart_rx2 ),
    .Y(_0291_));
 sky130_fd_sc_hd__nor2_2 _0638_ (.A(\transceiver.rx_count16[1] ),
    .B(\transceiver.rx_count16[0] ),
    .Y(_0292_));
 sky130_fd_sc_hd__inv_2 _0639_ (.A(\transceiver.rx_count16[3] ),
    .Y(_0293_));
 sky130_fd_sc_hd__nand3b_4 _0640_ (.A_N(\transceiver.rx_count16[2] ),
    .B(_0292_),
    .C(_0293_),
    .Y(_0294_));
 sky130_fd_sc_hd__nand2_2 _0641_ (.A(_0294_),
    .B(\transceiver.rx_busy ),
    .Y(_0295_));
 sky130_fd_sc_hd__clkbuf_2 _0642_ (.A(_0234_),
    .X(_0296_));
 sky130_fd_sc_hd__buf_2 _0643_ (.A(_0175_),
    .X(_0297_));
 sky130_fd_sc_hd__o2111ai_4 _0644_ (.A1(_0290_),
    .A2(_0291_),
    .B1(_0295_),
    .C1(_0296_),
    .D1(_0297_),
    .Y(_0298_));
 sky130_fd_sc_hd__clkbuf_2 _0645_ (.A(\transceiver.rx_bitcount[2] ),
    .X(_0299_));
 sky130_fd_sc_hd__clkbuf_2 _0646_ (.A(\transceiver.rx_bitcount[0] ),
    .X(_0300_));
 sky130_fd_sc_hd__nand3_1 _0647_ (.A(_0299_),
    .B(\transceiver.rx_bitcount[1] ),
    .C(_0300_),
    .Y(_0301_));
 sky130_fd_sc_hd__nor3_1 _0648_ (.A(\transceiver.rx_bitcount[3] ),
    .B(_0232_),
    .C(_0301_),
    .Y(_0302_));
 sky130_fd_sc_hd__and2b_1 _0649_ (.A_N(_0298_),
    .B(_0302_),
    .X(_0303_));
 sky130_fd_sc_hd__a31oi_2 _0650_ (.A1(_0299_),
    .A2(\transceiver.rx_bitcount[1] ),
    .A3(_0300_),
    .B1(_0232_),
    .Y(_0304_));
 sky130_fd_sc_hd__o21a_1 _0651_ (.A1(_0304_),
    .A2(_0298_),
    .B1(\transceiver.rx_bitcount[3] ),
    .X(_0305_));
 sky130_fd_sc_hd__o21a_1 _0652_ (.A1(_0303_),
    .A2(_0305_),
    .B1(_0266_),
    .X(_0129_));
 sky130_fd_sc_hd__inv_2 _0653_ (.A(\transceiver.rx_bitcount[1] ),
    .Y(_0306_));
 sky130_fd_sc_hd__inv_2 _0654_ (.A(_0300_),
    .Y(_0307_));
 sky130_fd_sc_hd__clkbuf_2 _0655_ (.A(_0298_),
    .X(_0308_));
 sky130_fd_sc_hd__nor3_2 _0656_ (.A(_0306_),
    .B(_0307_),
    .C(_0308_),
    .Y(_0309_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _0657_ (.A(_0297_),
    .X(_0310_));
 sky130_fd_sc_hd__nand2_1 _0658_ (.A(_0232_),
    .B(\transceiver.uart_rx2 ),
    .Y(_0311_));
 sky130_fd_sc_hd__nand3_2 _0659_ (.A(_0296_),
    .B(_0310_),
    .C(_0311_),
    .Y(_0312_));
 sky130_fd_sc_hd__inv_2 _0660_ (.A(_0312_),
    .Y(_0313_));
 sky130_fd_sc_hd__nand3b_1 _0661_ (.A_N(_0304_),
    .B(_0313_),
    .C(_0295_),
    .Y(_0314_));
 sky130_fd_sc_hd__o211a_1 _0662_ (.A1(_0299_),
    .A2(_0309_),
    .B1(_0266_),
    .C1(_0314_),
    .X(_0128_));
 sky130_fd_sc_hd__buf_1 _0663_ (.A(_0290_),
    .X(_0315_));
 sky130_fd_sc_hd__and2b_1 _0664_ (.A_N(\transceiver.rx_bitcount[1] ),
    .B(\transceiver.rx_bitcount[0] ),
    .X(_0316_));
 sky130_fd_sc_hd__nand3b_1 _0665_ (.A_N(_0298_),
    .B(_0315_),
    .C(_0316_),
    .Y(_0317_));
 sky130_fd_sc_hd__and2b_1 _0666_ (.A_N(_0300_),
    .B(_0290_),
    .X(_0318_));
 sky130_fd_sc_hd__o21bai_1 _0667_ (.A1(_0318_),
    .A2(_0308_),
    .B1_N(_0306_),
    .Y(_0319_));
 sky130_fd_sc_hd__a21oi_1 _0668_ (.A1(_0317_),
    .A2(_0319_),
    .B1(_0236_),
    .Y(_0127_));
 sky130_fd_sc_hd__nor2_1 _0669_ (.A(_0318_),
    .B(_0308_),
    .Y(_0320_));
 sky130_fd_sc_hd__a211oi_2 _0670_ (.A1(_0307_),
    .A2(_0308_),
    .B1(_0284_),
    .C1(_0320_),
    .Y(_0126_));
 sky130_fd_sc_hd__buf_1 _0671_ (.A(\transceiver.rx_count16[2] ),
    .X(_0321_));
 sky130_fd_sc_hd__buf_1 _0672_ (.A(\transceiver.rx_count16[0] ),
    .X(_0322_));
 sky130_fd_sc_hd__and2_1 _0673_ (.A(\transceiver.rx_count16[1] ),
    .B(_0322_),
    .X(_0323_));
 sky130_fd_sc_hd__nand3b_1 _0674_ (.A_N(_0312_),
    .B(_0321_),
    .C(_0323_),
    .Y(_0324_));
 sky130_fd_sc_hd__and4_1 _0675_ (.A(\transceiver.rx_count16[3] ),
    .B(_0321_),
    .C(\transceiver.rx_count16[1] ),
    .D(_0322_),
    .X(_0325_));
 sky130_fd_sc_hd__clkbuf_2 _0676_ (.A(_0296_),
    .X(_0326_));
 sky130_fd_sc_hd__o2111a_1 _0677_ (.A1(_0233_),
    .A2(_0325_),
    .B1(_0311_),
    .C1(_0326_),
    .D1(_0310_),
    .X(_0327_));
 sky130_fd_sc_hd__a211oi_2 _0678_ (.A1(_0324_),
    .A2(_0293_),
    .B1(_0284_),
    .C1(_0327_),
    .Y(_0125_));
 sky130_fd_sc_hd__nand3b_1 _0679_ (.A_N(_0321_),
    .B(_0313_),
    .C(_0323_),
    .Y(_0328_));
 sky130_fd_sc_hd__clkbuf_2 _0680_ (.A(_0291_),
    .X(_0075_));
 sky130_fd_sc_hd__o2111ai_2 _0681_ (.A1(_0315_),
    .A2(_0075_),
    .B1(_0323_),
    .C1(_0326_),
    .D1(_0310_),
    .Y(_0329_));
 sky130_fd_sc_hd__nand2_1 _0682_ (.A(_0329_),
    .B(_0321_),
    .Y(_0330_));
 sky130_fd_sc_hd__nand3b_1 _0683_ (.A_N(_0235_),
    .B(_0233_),
    .C(_0075_),
    .Y(_0331_));
 sky130_fd_sc_hd__a31oi_1 _0684_ (.A1(_0328_),
    .A2(_0330_),
    .A3(_0331_),
    .B1(_0236_),
    .Y(_0124_));
 sky130_fd_sc_hd__o2111a_1 _0685_ (.A1(_0315_),
    .A2(_0075_),
    .B1(_0323_),
    .C1(_0296_),
    .D1(_0310_),
    .X(_0332_));
 sky130_fd_sc_hd__o21bai_1 _0686_ (.A1(_0292_),
    .A2(_0332_),
    .B1_N(_0233_),
    .Y(_0333_));
 sky130_fd_sc_hd__o211a_1 _0687_ (.A1(\transceiver.rx_count16[1] ),
    .A2(_0313_),
    .B1(_0213_),
    .C1(_0333_),
    .X(_0123_));
 sky130_fd_sc_hd__nand3b_1 _0688_ (.A_N(net85),
    .B(_0315_),
    .C(_0322_),
    .Y(_0334_));
 sky130_fd_sc_hd__o211a_1 _0689_ (.A1(_0322_),
    .A2(_0313_),
    .B1(_0213_),
    .C1(_0334_),
    .X(_0122_));
 sky130_fd_sc_hd__and2b_1 _0690_ (.A_N(\transceiver.tx_bitcount[2] ),
    .B(\transceiver.tx_bitcount[3] ),
    .X(_0335_));
 sky130_fd_sc_hd__nand3_4 _0691_ (.A(_0335_),
    .B(_0198_),
    .C(\transceiver.tx_bitcount[0] ),
    .Y(_0336_));
 sky130_fd_sc_hd__nor2_2 _0692_ (.A(_0185_),
    .B(_0336_),
    .Y(_0337_));
 sky130_fd_sc_hd__nand3_4 _0693_ (.A(_0337_),
    .B(_0234_),
    .C(_0297_),
    .Y(_0338_));
 sky130_fd_sc_hd__nand2_1 _0694_ (.A(_0338_),
    .B(\transceiver.tx_busy ),
    .Y(_0339_));
 sky130_fd_sc_hd__a21oi_1 _0695_ (.A1(_0339_),
    .A2(_0222_),
    .B1(_0236_),
    .Y(_0121_));
 sky130_fd_sc_hd__nor3b_4 _0696_ (.A(\transceiver.tx_bitcount[2] ),
    .B(_0193_),
    .C_N(\transceiver.tx_bitcount[3] ),
    .Y(_0340_));
 sky130_fd_sc_hd__o2111ai_4 _0697_ (.A1(\transceiver.tx_reg[0] ),
    .A2(_0340_),
    .B1(_0222_),
    .C1(_0205_),
    .D1(_0179_),
    .Y(_0341_));
 sky130_fd_sc_hd__o211ai_1 _0698_ (.A1(_0185_),
    .A2(_0176_),
    .B1(\transceiver.uart_tx ),
    .C1(_0222_),
    .Y(_0342_));
 sky130_fd_sc_hd__nand3_1 _0699_ (.A(_0341_),
    .B(_0276_),
    .C(_0342_),
    .Y(_0120_));
 sky130_fd_sc_hd__nor2_1 _0700_ (.A(_0231_),
    .B(_0235_),
    .Y(_0343_));
 sky130_fd_sc_hd__buf_1 _0701_ (.A(_0343_),
    .X(_0344_));
 sky130_fd_sc_hd__nor2_2 _0702_ (.A(net48),
    .B(_0294_),
    .Y(_0345_));
 sky130_fd_sc_hd__buf_1 _0703_ (.A(_0345_),
    .X(_0346_));
 sky130_fd_sc_hd__nand3b_4 _0704_ (.A_N(\transceiver.rx_bitcount[2] ),
    .B(_0316_),
    .C(\transceiver.rx_bitcount[3] ),
    .Y(_0026_));
 sky130_fd_sc_hd__nor2_1 _0705_ (.A(_0291_),
    .B(_0026_),
    .Y(_0347_));
 sky130_fd_sc_hd__clkbuf_2 _0706_ (.A(_0347_),
    .X(_0348_));
 sky130_fd_sc_hd__nand3_4 _0707_ (.A(_0344_),
    .B(_0346_),
    .C(_0348_),
    .Y(_0349_));
 sky130_fd_sc_hd__buf_1 _0708_ (.A(_0349_),
    .X(_0350_));
 sky130_fd_sc_hd__inv_2 _0709_ (.A(_0350_),
    .Y(_0119_));
 sky130_fd_sc_hd__a21oi_2 _0710_ (.A1(_0207_),
    .A2(_0211_),
    .B1(_0336_),
    .Y(_0118_));
 sky130_fd_sc_hd__and3_2 _0711_ (.A(_0158_),
    .B(_0159_),
    .C(_0180_),
    .X(_0351_));
 sky130_fd_sc_hd__buf_1 _0712_ (.A(_0351_),
    .X(_0352_));
 sky130_fd_sc_hd__buf_1 _0713_ (.A(_0277_),
    .X(_0353_));
 sky130_fd_sc_hd__and3_1 _0714_ (.A(_0352_),
    .B(\transceiver.divisor[15] ),
    .C(_0353_),
    .X(_0117_));
 sky130_fd_sc_hd__and3_1 _0715_ (.A(_0352_),
    .B(\transceiver.divisor[14] ),
    .C(_0353_),
    .X(_0116_));
 sky130_fd_sc_hd__and3_1 _0716_ (.A(_0352_),
    .B(\transceiver.divisor[13] ),
    .C(_0353_),
    .X(_0115_));
 sky130_fd_sc_hd__and3_1 _0717_ (.A(_0352_),
    .B(\transceiver.divisor[12] ),
    .C(_0353_),
    .X(_0114_));
 sky130_fd_sc_hd__clkbuf_1 _0718_ (.A(_0351_),
    .X(_0354_));
 sky130_fd_sc_hd__buf_1 _0719_ (.A(_0277_),
    .X(_0355_));
 sky130_fd_sc_hd__and3_1 _0720_ (.A(_0354_),
    .B(\transceiver.divisor[11] ),
    .C(_0355_),
    .X(_0113_));
 sky130_fd_sc_hd__and3_1 _0721_ (.A(_0354_),
    .B(\transceiver.divisor[10] ),
    .C(_0355_),
    .X(_0112_));
 sky130_fd_sc_hd__and3_1 _0722_ (.A(_0354_),
    .B(\transceiver.divisor[9] ),
    .C(_0355_),
    .X(_0111_));
 sky130_fd_sc_hd__and3_1 _0723_ (.A(_0354_),
    .B(\transceiver.divisor[8] ),
    .C(_0355_),
    .X(_0110_));
 sky130_fd_sc_hd__buf_1 _0724_ (.A(_0219_),
    .X(_0356_));
 sky130_fd_sc_hd__buf_1 _0725_ (.A(_0277_),
    .X(_0357_));
 sky130_fd_sc_hd__a22oi_1 _0726_ (.A1(_0356_),
    .A2(\transceiver.rx_data[7] ),
    .B1(_0357_),
    .B2(\transceiver.divisor[7] ),
    .Y(_0358_));
 sky130_fd_sc_hd__buf_1 _0727_ (.A(_0351_),
    .X(_0359_));
 sky130_fd_sc_hd__nor2b_1 _0728_ (.A(_0358_),
    .B_N(_0359_),
    .Y(_0109_));
 sky130_fd_sc_hd__a22oi_1 _0729_ (.A1(_0356_),
    .A2(\transceiver.rx_data[6] ),
    .B1(_0357_),
    .B2(\transceiver.divisor[6] ),
    .Y(_0360_));
 sky130_fd_sc_hd__nor2b_1 _0730_ (.A(_0360_),
    .B_N(_0359_),
    .Y(_0108_));
 sky130_fd_sc_hd__a22oi_1 _0731_ (.A1(_0356_),
    .A2(\transceiver.rx_data[5] ),
    .B1(_0357_),
    .B2(\transceiver.divisor[5] ),
    .Y(_0361_));
 sky130_fd_sc_hd__nor2b_1 _0732_ (.A(_0361_),
    .B_N(_0359_),
    .Y(_0107_));
 sky130_fd_sc_hd__a22oi_1 _0733_ (.A1(_0356_),
    .A2(\transceiver.rx_data[4] ),
    .B1(_0357_),
    .B2(\transceiver.divisor[4] ),
    .Y(_0362_));
 sky130_fd_sc_hd__nor2b_1 _0734_ (.A(_0362_),
    .B_N(_0359_),
    .Y(_0106_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _0735_ (.A(_0219_),
    .X(_0363_));
 sky130_fd_sc_hd__a22oi_1 _0736_ (.A1(_0363_),
    .A2(\transceiver.rx_data[3] ),
    .B1(_0278_),
    .B2(\transceiver.divisor[3] ),
    .Y(_0364_));
 sky130_fd_sc_hd__buf_1 _0737_ (.A(_0351_),
    .X(_0365_));
 sky130_fd_sc_hd__nor2b_1 _0738_ (.A(_0364_),
    .B_N(_0365_),
    .Y(_0105_));
 sky130_fd_sc_hd__a22oi_2 _0739_ (.A1(_0363_),
    .A2(\transceiver.rx_data[2] ),
    .B1(_0278_),
    .B2(\transceiver.divisor[2] ),
    .Y(_0366_));
 sky130_fd_sc_hd__nor2b_2 _0740_ (.A(_0366_),
    .B_N(_0365_),
    .Y(_0104_));
 sky130_fd_sc_hd__a22oi_1 _0741_ (.A1(_0363_),
    .A2(\transceiver.rx_data[1] ),
    .B1(_0278_),
    .B2(\transceiver.divisor[1] ),
    .Y(_0367_));
 sky130_fd_sc_hd__nor2b_1 _0742_ (.A(_0367_),
    .B_N(_0365_),
    .Y(_0103_));
 sky130_fd_sc_hd__nand3b_2 _0743_ (.A_N(net1),
    .B(thru),
    .C(net6),
    .Y(_0368_));
 sky130_fd_sc_hd__a22oi_2 _0744_ (.A1(_0363_),
    .A2(\transceiver.rx_data[0] ),
    .B1(_0271_),
    .B2(\transceiver.divisor[0] ),
    .Y(_0369_));
 sky130_fd_sc_hd__a21boi_2 _0745_ (.A1(_0368_),
    .A2(_0369_),
    .B1_N(_0365_),
    .Y(_0102_));
 sky130_fd_sc_hd__inv_2 _0746_ (.A(\transceiver.rx_reg[7] ),
    .Y(_0370_));
 sky130_fd_sc_hd__nor2_2 _0747_ (.A(\transceiver.rx_bitcount[3] ),
    .B(_0299_),
    .Y(_0371_));
 sky130_fd_sc_hd__nand3_4 _0748_ (.A(_0371_),
    .B(_0306_),
    .C(_0307_),
    .Y(_0372_));
 sky130_fd_sc_hd__and4_1 _0749_ (.A(_0343_),
    .B(_0345_),
    .C(_0026_),
    .D(_0372_),
    .X(_0373_));
 sky130_fd_sc_hd__buf_1 _0750_ (.A(_0373_),
    .X(_0374_));
 sky130_fd_sc_hd__buf_1 _0751_ (.A(_0373_),
    .X(_0375_));
 sky130_fd_sc_hd__nand2_1 _0752_ (.A(_0375_),
    .B(\transceiver.uart_rx2 ),
    .Y(_0376_));
 sky130_fd_sc_hd__o21ai_1 _0753_ (.A1(_0370_),
    .A2(_0374_),
    .B1(_0376_),
    .Y(_0101_));
 sky130_fd_sc_hd__and4_1 _0754_ (.A(_0234_),
    .B(_0345_),
    .C(_0297_),
    .D(_0290_),
    .X(_0377_));
 sky130_fd_sc_hd__nand3_2 _0755_ (.A(_0377_),
    .B(_0026_),
    .C(_0372_),
    .Y(_0378_));
 sky130_fd_sc_hd__buf_1 _0756_ (.A(_0378_),
    .X(_0379_));
 sky130_fd_sc_hd__buf_1 _0757_ (.A(_0378_),
    .X(_0380_));
 sky130_fd_sc_hd__nand2_1 _0758_ (.A(_0380_),
    .B(\transceiver.rx_reg[6] ),
    .Y(_0381_));
 sky130_fd_sc_hd__o21ai_1 _0759_ (.A1(_0370_),
    .A2(_0379_),
    .B1(_0381_),
    .Y(_0100_));
 sky130_fd_sc_hd__nand2_1 _0760_ (.A(_0374_),
    .B(\transceiver.rx_reg[6] ),
    .Y(_0382_));
 sky130_fd_sc_hd__nand2_1 _0761_ (.A(_0379_),
    .B(\transceiver.rx_reg[5] ),
    .Y(_0383_));
 sky130_fd_sc_hd__nand2_1 _0762_ (.A(_0382_),
    .B(_0383_),
    .Y(_0099_));
 sky130_fd_sc_hd__nand2_1 _0763_ (.A(_0374_),
    .B(\transceiver.rx_reg[5] ),
    .Y(_0384_));
 sky130_fd_sc_hd__nand2_1 _0764_ (.A(_0379_),
    .B(\transceiver.rx_reg[4] ),
    .Y(_0385_));
 sky130_fd_sc_hd__nand2_1 _0765_ (.A(_0384_),
    .B(_0385_),
    .Y(_0098_));
 sky130_fd_sc_hd__nand2_1 _0766_ (.A(_0374_),
    .B(\transceiver.rx_reg[4] ),
    .Y(_0386_));
 sky130_fd_sc_hd__nand2_1 _0767_ (.A(_0379_),
    .B(\transceiver.rx_reg[3] ),
    .Y(_0387_));
 sky130_fd_sc_hd__nand2_1 _0768_ (.A(_0386_),
    .B(_0387_),
    .Y(_0097_));
 sky130_fd_sc_hd__nand2_1 _0769_ (.A(_0375_),
    .B(\transceiver.rx_reg[3] ),
    .Y(_0388_));
 sky130_fd_sc_hd__nand2_1 _0770_ (.A(_0380_),
    .B(\transceiver.rx_reg[2] ),
    .Y(_0389_));
 sky130_fd_sc_hd__nand2_1 _0771_ (.A(_0388_),
    .B(_0389_),
    .Y(_0096_));
 sky130_fd_sc_hd__nand2_1 _0772_ (.A(_0375_),
    .B(\transceiver.rx_reg[2] ),
    .Y(_0390_));
 sky130_fd_sc_hd__nand2_1 _0773_ (.A(_0380_),
    .B(\transceiver.rx_reg[1] ),
    .Y(_0391_));
 sky130_fd_sc_hd__nand2_1 _0774_ (.A(_0390_),
    .B(_0391_),
    .Y(_0095_));
 sky130_fd_sc_hd__nand2_1 _0775_ (.A(_0375_),
    .B(\transceiver.rx_reg[1] ),
    .Y(_0392_));
 sky130_fd_sc_hd__nand2_1 _0776_ (.A(_0380_),
    .B(\transceiver.rx_reg[0] ),
    .Y(_0393_));
 sky130_fd_sc_hd__nand2_1 _0777_ (.A(_0392_),
    .B(_0393_),
    .Y(_0094_));
 sky130_fd_sc_hd__nor2_1 _0778_ (.A(_0370_),
    .B(_0349_),
    .Y(_0394_));
 sky130_fd_sc_hd__a21o_1 _0779_ (.A1(\transceiver.rx_data[7] ),
    .A2(_0350_),
    .B1(_0394_),
    .X(_0093_));
 sky130_fd_sc_hd__clkbuf_1 _0780_ (.A(_0343_),
    .X(_0395_));
 sky130_fd_sc_hd__buf_1 _0781_ (.A(_0345_),
    .X(_0396_));
 sky130_fd_sc_hd__buf_1 _0782_ (.A(_0347_),
    .X(_0397_));
 sky130_fd_sc_hd__and4_1 _0783_ (.A(_0395_),
    .B(\transceiver.rx_reg[6] ),
    .C(_0396_),
    .D(_0397_),
    .X(_0398_));
 sky130_fd_sc_hd__a21o_1 _0784_ (.A1(\transceiver.rx_data[6] ),
    .A2(_0350_),
    .B1(_0398_),
    .X(_0092_));
 sky130_fd_sc_hd__and4_1 _0785_ (.A(_0395_),
    .B(\transceiver.rx_reg[5] ),
    .C(_0396_),
    .D(_0397_),
    .X(_0399_));
 sky130_fd_sc_hd__a21o_1 _0786_ (.A1(\transceiver.rx_data[5] ),
    .A2(_0350_),
    .B1(_0399_),
    .X(_0091_));
 sky130_fd_sc_hd__buf_1 _0787_ (.A(_0349_),
    .X(_0400_));
 sky130_fd_sc_hd__and4_1 _0788_ (.A(_0395_),
    .B(\transceiver.rx_reg[4] ),
    .C(_0396_),
    .D(_0397_),
    .X(_0401_));
 sky130_fd_sc_hd__a21o_1 _0789_ (.A1(\transceiver.rx_data[4] ),
    .A2(_0400_),
    .B1(_0401_),
    .X(_0090_));
 sky130_fd_sc_hd__and4_1 _0790_ (.A(_0395_),
    .B(\transceiver.rx_reg[3] ),
    .C(_0396_),
    .D(_0397_),
    .X(_0402_));
 sky130_fd_sc_hd__a21o_1 _0791_ (.A1(\transceiver.rx_data[3] ),
    .A2(_0400_),
    .B1(_0402_),
    .X(_0089_));
 sky130_fd_sc_hd__and4_1 _0792_ (.A(_0344_),
    .B(\transceiver.rx_reg[2] ),
    .C(_0346_),
    .D(_0348_),
    .X(_0403_));
 sky130_fd_sc_hd__a21o_1 _0793_ (.A1(\transceiver.rx_data[2] ),
    .A2(_0400_),
    .B1(_0403_),
    .X(_0088_));
 sky130_fd_sc_hd__and4_1 _0794_ (.A(_0344_),
    .B(\transceiver.rx_reg[1] ),
    .C(_0346_),
    .D(_0348_),
    .X(_0404_));
 sky130_fd_sc_hd__a21o_1 _0795_ (.A1(\transceiver.rx_data[1] ),
    .A2(_0400_),
    .B1(_0404_),
    .X(_0087_));
 sky130_fd_sc_hd__and4_1 _0796_ (.A(_0344_),
    .B(\transceiver.rx_reg[0] ),
    .C(_0346_),
    .D(_0348_),
    .X(_0405_));
 sky130_fd_sc_hd__a21o_1 _0797_ (.A1(\transceiver.rx_data[0] ),
    .A2(_0349_),
    .B1(_0405_),
    .X(_0086_));
 sky130_fd_sc_hd__a21oi_4 _0798_ (.A1(_0338_),
    .A2(\transceiver.tx_busy ),
    .B1(_0161_),
    .Y(_0406_));
 sky130_fd_sc_hd__clkbuf_2 _0799_ (.A(_0406_),
    .X(_0407_));
 sky130_fd_sc_hd__a41oi_2 _0800_ (.A1(net47),
    .A2(_0158_),
    .A3(_0159_),
    .A4(_0219_),
    .B1(\transceiver.tx_bitcount[0] ),
    .Y(_0408_));
 sky130_fd_sc_hd__a21oi_2 _0801_ (.A1(_0408_),
    .A2(_0340_),
    .B1(_0186_),
    .Y(_0409_));
 sky130_fd_sc_hd__nand3_2 _0802_ (.A(_0409_),
    .B(_0178_),
    .C(_0180_),
    .Y(_0410_));
 sky130_fd_sc_hd__clkbuf_2 _0803_ (.A(_0410_),
    .X(_0411_));
 sky130_fd_sc_hd__nor3_2 _0804_ (.A(_0024_),
    .B(_0407_),
    .C(_0411_),
    .Y(_0412_));
 sky130_fd_sc_hd__nand2_1 _0805_ (.A(_0339_),
    .B(_0177_),
    .Y(_0413_));
 sky130_fd_sc_hd__buf_1 _0806_ (.A(_0413_),
    .X(_0414_));
 sky130_fd_sc_hd__buf_1 _0807_ (.A(_0409_),
    .X(_0415_));
 sky130_fd_sc_hd__buf_1 _0808_ (.A(_0415_),
    .X(_0416_));
 sky130_fd_sc_hd__a31oi_1 _0809_ (.A1(_0414_),
    .A2(_0208_),
    .A3(_0416_),
    .B1(\transceiver.tx_reg[6] ),
    .Y(_0417_));
 sky130_fd_sc_hd__nor2_1 _0810_ (.A(_0412_),
    .B(_0417_),
    .Y(_0085_));
 sky130_fd_sc_hd__nor3_2 _0811_ (.A(_0023_),
    .B(_0407_),
    .C(_0411_),
    .Y(_0418_));
 sky130_fd_sc_hd__a31oi_1 _0812_ (.A1(_0414_),
    .A2(_0208_),
    .A3(_0416_),
    .B1(\transceiver.tx_reg[5] ),
    .Y(_0419_));
 sky130_fd_sc_hd__nor2_1 _0813_ (.A(_0418_),
    .B(_0419_),
    .Y(_0084_));
 sky130_fd_sc_hd__nor3_1 _0814_ (.A(_0022_),
    .B(_0407_),
    .C(_0411_),
    .Y(_0420_));
 sky130_fd_sc_hd__buf_1 _0815_ (.A(_0413_),
    .X(_0421_));
 sky130_fd_sc_hd__a31oi_1 _0816_ (.A1(_0421_),
    .A2(_0208_),
    .A3(_0416_),
    .B1(\transceiver.tx_reg[4] ),
    .Y(_0422_));
 sky130_fd_sc_hd__nor2_1 _0817_ (.A(_0420_),
    .B(_0422_),
    .Y(_0083_));
 sky130_fd_sc_hd__nor3_1 _0818_ (.A(_0021_),
    .B(_0406_),
    .C(_0411_),
    .Y(_0423_));
 sky130_fd_sc_hd__a31oi_1 _0819_ (.A1(_0421_),
    .A2(_0203_),
    .A3(_0415_),
    .B1(\transceiver.tx_reg[3] ),
    .Y(_0424_));
 sky130_fd_sc_hd__nor2_1 _0820_ (.A(_0423_),
    .B(_0424_),
    .Y(_0082_));
 sky130_fd_sc_hd__buf_1 _0821_ (.A(_0410_),
    .X(_0425_));
 sky130_fd_sc_hd__nor3_1 _0822_ (.A(_0020_),
    .B(_0406_),
    .C(_0425_),
    .Y(_0426_));
 sky130_fd_sc_hd__a31oi_1 _0823_ (.A1(_0421_),
    .A2(_0203_),
    .A3(_0415_),
    .B1(\transceiver.tx_reg[2] ),
    .Y(_0427_));
 sky130_fd_sc_hd__nor2_1 _0824_ (.A(_0426_),
    .B(_0427_),
    .Y(_0081_));
 sky130_fd_sc_hd__nor3_1 _0825_ (.A(_0019_),
    .B(_0406_),
    .C(_0425_),
    .Y(_0428_));
 sky130_fd_sc_hd__a31oi_1 _0826_ (.A1(_0421_),
    .A2(_0203_),
    .A3(_0415_),
    .B1(\transceiver.tx_reg[1] ),
    .Y(_0429_));
 sky130_fd_sc_hd__nor2_1 _0827_ (.A(_0428_),
    .B(_0429_),
    .Y(_0080_));
 sky130_fd_sc_hd__nand3b_1 _0828_ (.A_N(_0425_),
    .B(_0018_),
    .C(_0414_),
    .Y(_0430_));
 sky130_fd_sc_hd__o21ai_1 _0829_ (.A1(_0407_),
    .A2(_0425_),
    .B1(\transceiver.tx_reg[0] ),
    .Y(_0431_));
 sky130_fd_sc_hd__nand2_1 _0830_ (.A(_0430_),
    .B(_0431_),
    .Y(_0079_));
 sky130_fd_sc_hd__nor2_1 _0831_ (.A(_0223_),
    .B(_0246_),
    .Y(_0432_));
 sky130_fd_sc_hd__nand3b_1 _0832_ (.A_N(net1),
    .B(_0432_),
    .C(net6),
    .Y(_0433_));
 sky130_fd_sc_hd__mux2_1 _0833_ (.A0(net15),
    .A1(thru),
    .S(_0433_),
    .X(_0078_));
 sky130_fd_sc_hd__inv_2 _0834_ (.A(_0372_),
    .Y(_0025_));
 sky130_fd_sc_hd__inv_2 _0835_ (.A(\transceiver.enable16_counter[0] ),
    .Y(_0028_));
 sky130_fd_sc_hd__xnor2_1 _0836_ (.A(\transceiver.divisor[1] ),
    .B(\transceiver.divisor[0] ),
    .Y(_0030_));
 sky130_fd_sc_hd__xnor2_1 _0837_ (.A(\transceiver.enable16_counter[1] ),
    .B(\transceiver.enable16_counter[0] ),
    .Y(_0031_));
 sky130_fd_sc_hd__nor2_2 _0838_ (.A(\transceiver.divisor[1] ),
    .B(\transceiver.divisor[0] ),
    .Y(_0434_));
 sky130_fd_sc_hd__xor2_1 _0839_ (.A(\transceiver.divisor[2] ),
    .B(_0434_),
    .X(_0033_));
 sky130_fd_sc_hd__xor2_1 _0840_ (.A(\transceiver.enable16_counter[2] ),
    .B(_0162_),
    .X(_0034_));
 sky130_fd_sc_hd__nand2_1 _0841_ (.A(_0434_),
    .B(_0286_),
    .Y(_0435_));
 sky130_fd_sc_hd__xor2_1 _0842_ (.A(_0283_),
    .B(_0435_),
    .X(_0036_));
 sky130_fd_sc_hd__or2b_1 _0843_ (.A(\transceiver.enable16_counter[2] ),
    .B_N(_0162_),
    .X(_0436_));
 sky130_fd_sc_hd__buf_1 _0844_ (.A(_0164_),
    .X(_0437_));
 sky130_fd_sc_hd__a21bo_1 _0845_ (.A1(_0436_),
    .A2(\transceiver.enable16_counter[3] ),
    .B1_N(_0437_),
    .X(_0037_));
 sky130_fd_sc_hd__and3_1 _0846_ (.A(_0434_),
    .B(_0282_),
    .C(_0286_),
    .X(_0438_));
 sky130_fd_sc_hd__xor2_1 _0847_ (.A(\transceiver.divisor[4] ),
    .B(_0438_),
    .X(_0039_));
 sky130_fd_sc_hd__xnor2_1 _0848_ (.A(\transceiver.enable16_counter[4] ),
    .B(_0437_),
    .Y(_0040_));
 sky130_fd_sc_hd__and4_1 _0849_ (.A(_0434_),
    .B(_0280_),
    .C(_0283_),
    .D(_0286_),
    .X(_0439_));
 sky130_fd_sc_hd__nor2_2 _0850_ (.A(\transceiver.divisor[5] ),
    .B(\transceiver.divisor[4] ),
    .Y(_0440_));
 sky130_fd_sc_hd__nand3b_2 _0851_ (.A_N(_0435_),
    .B(_0283_),
    .C(_0440_),
    .Y(_0441_));
 sky130_fd_sc_hd__o21ai_1 _0852_ (.A1(_0275_),
    .A2(_0439_),
    .B1(_0441_),
    .Y(_0042_));
 sky130_fd_sc_hd__nor2_1 _0853_ (.A(\transceiver.enable16_counter[4] ),
    .B(_0437_),
    .Y(_0442_));
 sky130_fd_sc_hd__xor2_1 _0854_ (.A(\transceiver.enable16_counter[5] ),
    .B(_0442_),
    .X(_0043_));
 sky130_fd_sc_hd__xor2_1 _0855_ (.A(_0273_),
    .B(_0441_),
    .X(_0045_));
 sky130_fd_sc_hd__or3_2 _0856_ (.A(\transceiver.enable16_counter[5] ),
    .B(\transceiver.enable16_counter[4] ),
    .C(_0164_),
    .X(_0443_));
 sky130_fd_sc_hd__nand2_1 _0857_ (.A(_0442_),
    .B(_0165_),
    .Y(_0444_));
 sky130_fd_sc_hd__a21bo_1 _0858_ (.A1(_0443_),
    .A2(\transceiver.enable16_counter[6] ),
    .B1_N(_0444_),
    .X(_0046_));
 sky130_fd_sc_hd__inv_2 _0859_ (.A(\transceiver.divisor[7] ),
    .Y(_0445_));
 sky130_fd_sc_hd__nand3_2 _0860_ (.A(_0438_),
    .B(_0273_),
    .C(_0440_),
    .Y(_0446_));
 sky130_fd_sc_hd__buf_1 _0861_ (.A(_0446_),
    .X(_0447_));
 sky130_fd_sc_hd__xor2_1 _0862_ (.A(_0445_),
    .B(_0447_),
    .X(_0048_));
 sky130_fd_sc_hd__o2bb2ai_1 _0863_ (.A1_N(\transceiver.enable16_counter[7] ),
    .A2_N(_0444_),
    .B1(_0437_),
    .B2(_0167_),
    .Y(_0049_));
 sky130_fd_sc_hd__nor2_2 _0864_ (.A(\transceiver.divisor[7] ),
    .B(_0446_),
    .Y(_0448_));
 sky130_fd_sc_hd__clkbuf_2 _0865_ (.A(_0448_),
    .X(_0449_));
 sky130_fd_sc_hd__xor2_1 _0866_ (.A(\transceiver.divisor[8] ),
    .B(_0449_),
    .X(_0051_));
 sky130_fd_sc_hd__xor2_1 _0867_ (.A(\transceiver.enable16_counter[8] ),
    .B(_0326_),
    .X(_0052_));
 sky130_fd_sc_hd__nor2_2 _0868_ (.A(\transceiver.divisor[9] ),
    .B(\transceiver.divisor[8] ),
    .Y(_0450_));
 sky130_fd_sc_hd__nand3b_1 _0869_ (.A_N(_0447_),
    .B(_0268_),
    .C(_0445_),
    .Y(_0451_));
 sky130_fd_sc_hd__a22o_1 _0870_ (.A1(_0449_),
    .A2(_0450_),
    .B1(_0451_),
    .B2(\transceiver.divisor[9] ),
    .X(_0054_));
 sky130_fd_sc_hd__nor3_4 _0871_ (.A(\transceiver.enable16_counter[8] ),
    .B(_0164_),
    .C(_0167_),
    .Y(_0452_));
 sky130_fd_sc_hd__xor2_1 _0872_ (.A(\transceiver.enable16_counter[9] ),
    .B(_0452_),
    .X(_0055_));
 sky130_fd_sc_hd__nand3b_1 _0873_ (.A_N(_0447_),
    .B(_0445_),
    .C(_0450_),
    .Y(_0453_));
 sky130_fd_sc_hd__xor2_1 _0874_ (.A(_0263_),
    .B(_0453_),
    .X(_0057_));
 sky130_fd_sc_hd__inv_2 _0875_ (.A(\transceiver.enable16_counter[9] ),
    .Y(_0454_));
 sky130_fd_sc_hd__nand3b_2 _0876_ (.A_N(\transceiver.enable16_counter[8] ),
    .B(_0326_),
    .C(_0454_),
    .Y(_0455_));
 sky130_fd_sc_hd__xnor2_1 _0877_ (.A(\transceiver.enable16_counter[10] ),
    .B(_0455_),
    .Y(_0058_));
 sky130_fd_sc_hd__nand3_1 _0878_ (.A(_0449_),
    .B(_0263_),
    .C(_0450_),
    .Y(_0456_));
 sky130_fd_sc_hd__and3_2 _0879_ (.A(_0450_),
    .B(_0258_),
    .C(_0263_),
    .X(_0457_));
 sky130_fd_sc_hd__nand3b_4 _0880_ (.A_N(_0447_),
    .B(_0445_),
    .C(_0457_),
    .Y(_0458_));
 sky130_fd_sc_hd__a21bo_1 _0881_ (.A1(_0456_),
    .A2(\transceiver.divisor[11] ),
    .B1_N(_0458_),
    .X(_0060_));
 sky130_fd_sc_hd__nand3b_1 _0882_ (.A_N(\transceiver.enable16_counter[10] ),
    .B(_0452_),
    .C(_0454_),
    .Y(_0459_));
 sky130_fd_sc_hd__inv_2 _0883_ (.A(_0172_),
    .Y(_0460_));
 sky130_fd_sc_hd__o2bb2ai_1 _0884_ (.A1_N(\transceiver.enable16_counter[11] ),
    .A2_N(_0459_),
    .B1(_0460_),
    .B2(_0455_),
    .Y(_0061_));
 sky130_fd_sc_hd__xor2_1 _0885_ (.A(_0255_),
    .B(_0458_),
    .X(_0063_));
 sky130_fd_sc_hd__clkbuf_2 _0886_ (.A(\transceiver.enable16_counter[12] ),
    .X(_0461_));
 sky130_fd_sc_hd__nand3_4 _0887_ (.A(_0452_),
    .B(_0454_),
    .C(_0172_),
    .Y(_0462_));
 sky130_fd_sc_hd__xnor2_1 _0888_ (.A(_0461_),
    .B(_0462_),
    .Y(_0064_));
 sky130_fd_sc_hd__nor2_1 _0889_ (.A(\transceiver.divisor[12] ),
    .B(_0458_),
    .Y(_0463_));
 sky130_fd_sc_hd__nor2_2 _0890_ (.A(\transceiver.divisor[13] ),
    .B(\transceiver.divisor[12] ),
    .Y(_0464_));
 sky130_fd_sc_hd__nand3_2 _0891_ (.A(_0448_),
    .B(_0457_),
    .C(_0464_),
    .Y(_0465_));
 sky130_fd_sc_hd__o21ai_1 _0892_ (.A1(_0253_),
    .A2(_0463_),
    .B1(_0465_),
    .Y(_0066_));
 sky130_fd_sc_hd__clkbuf_2 _0893_ (.A(\transceiver.enable16_counter[13] ),
    .X(_0466_));
 sky130_fd_sc_hd__nor2_1 _0894_ (.A(_0461_),
    .B(_0462_),
    .Y(_0467_));
 sky130_fd_sc_hd__xor2_1 _0895_ (.A(_0466_),
    .B(_0467_),
    .X(_0067_));
 sky130_fd_sc_hd__xor2_1 _0896_ (.A(_0251_),
    .B(_0465_),
    .X(_0069_));
 sky130_fd_sc_hd__nor3_4 _0897_ (.A(_0466_),
    .B(_0461_),
    .C(_0462_),
    .Y(_0468_));
 sky130_fd_sc_hd__xor2_1 _0898_ (.A(\transceiver.enable16_counter[14] ),
    .B(_0468_),
    .X(_0070_));
 sky130_fd_sc_hd__a41oi_1 _0899_ (.A1(_0251_),
    .A2(_0449_),
    .A3(_0457_),
    .A4(_0464_),
    .B1(\transceiver.divisor[15] ),
    .Y(_0469_));
 sky130_fd_sc_hd__nor3_1 _0900_ (.A(_0244_),
    .B(\transceiver.divisor[14] ),
    .C(_0465_),
    .Y(_0470_));
 sky130_fd_sc_hd__nor2_1 _0901_ (.A(_0469_),
    .B(_0470_),
    .Y(_0072_));
 sky130_fd_sc_hd__o41ai_1 _0902_ (.A1(_0466_),
    .A2(_0461_),
    .A3(\transceiver.enable16_counter[14] ),
    .A4(_0462_),
    .B1(\transceiver.enable16_counter[15] ),
    .Y(_0471_));
 sky130_fd_sc_hd__nand3b_1 _0903_ (.A_N(_0466_),
    .B(_0467_),
    .C(_0173_),
    .Y(_0472_));
 sky130_fd_sc_hd__nand2_1 _0904_ (.A(_0471_),
    .B(_0472_),
    .Y(_0073_));
 sky130_fd_sc_hd__or2_1 _0905_ (.A(_0076_),
    .B(_0294_),
    .X(_0077_));
 sky130_fd_sc_hd__nand3_1 _0906_ (.A(_0414_),
    .B(_0204_),
    .C(_0416_),
    .Y(_0473_));
 sky130_fd_sc_hd__o2bb2ai_1 _0907_ (.A1_N(\transceiver.tx_reg[7] ),
    .A2_N(_0473_),
    .B1(_0270_),
    .B2(_0220_),
    .Y(_0155_));
 sky130_fd_sc_hd__conb_1 _0908_ (.LO(net57));
 sky130_fd_sc_hd__conb_1 _0909_ (.LO(net58));
 sky130_fd_sc_hd__conb_1 _0910_ (.LO(net59));
 sky130_fd_sc_hd__conb_1 _0911_ (.LO(net60));
 sky130_fd_sc_hd__conb_1 _0912_ (.LO(net62));
 sky130_fd_sc_hd__conb_1 _0913_ (.LO(net63));
 sky130_fd_sc_hd__conb_1 _0914_ (.LO(net64));
 sky130_fd_sc_hd__conb_1 _0915_ (.LO(net65));
 sky130_fd_sc_hd__conb_1 _0916_ (.LO(net66));
 sky130_fd_sc_hd__conb_1 _0917_ (.LO(net67));
 sky130_fd_sc_hd__conb_1 _0918_ (.LO(net68));
 sky130_fd_sc_hd__conb_1 _0919_ (.LO(net69));
 sky130_fd_sc_hd__conb_1 _0920_ (.LO(net70));
 sky130_fd_sc_hd__conb_1 _0921_ (.LO(net71));
 sky130_fd_sc_hd__conb_1 _0922_ (.LO(net73));
 sky130_fd_sc_hd__conb_1 _0923_ (.LO(net74));
 sky130_fd_sc_hd__mux2_1 _0924_ (.A0(\transceiver.uart_tx ),
    .A1(net49),
    .S(thru),
    .X(net84));
 sky130_fd_sc_hd__mux2_1 _0925_ (.A0(_0072_),
    .A1(_0073_),
    .S(net85),
    .X(_0074_));
 sky130_fd_sc_hd__mux2_1 _0926_ (.A0(_0074_),
    .A1(_0072_),
    .S(net48),
    .X(_0007_));
 sky130_fd_sc_hd__mux2_1 _0927_ (.A0(\transceiver.tx_reg[1] ),
    .A1(net15),
    .S(\transceiver.tx_wr ),
    .X(_0018_));
 sky130_fd_sc_hd__mux2_1 _0928_ (.A0(_0036_),
    .A1(_0037_),
    .S(net85),
    .X(_0038_));
 sky130_fd_sc_hd__mux2_1 _0929_ (.A0(_0038_),
    .A1(_0036_),
    .S(net86),
    .X(_0010_));
 sky130_fd_sc_hd__mux2_1 _0930_ (.A0(_0030_),
    .A1(_0031_),
    .S(net85),
    .X(_0032_));
 sky130_fd_sc_hd__mux2_1 _0931_ (.A0(_0032_),
    .A1(_0030_),
    .S(net86),
    .X(_0008_));
 sky130_fd_sc_hd__mux2_1 _0932_ (.A0(\transceiver.tx_reg[3] ),
    .A1(net37),
    .S(\transceiver.tx_wr ),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_1 _0933_ (.A0(_0027_),
    .A1(_0028_),
    .S(net85),
    .X(_0029_));
 sky130_fd_sc_hd__mux2_1 _0934_ (.A0(_0029_),
    .A1(_0027_),
    .S(net86),
    .X(_0001_));
 sky130_fd_sc_hd__mux2_1 _0935_ (.A0(_0063_),
    .A1(_0064_),
    .S(net85),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_1 _0936_ (.A0(_0065_),
    .A1(_0063_),
    .S(net48),
    .X(_0004_));
 sky130_fd_sc_hd__mux2_1 _0937_ (.A0(_0033_),
    .A1(_0034_),
    .S(net85),
    .X(_0035_));
 sky130_fd_sc_hd__mux2_1 _0938_ (.A0(_0035_),
    .A1(_0033_),
    .S(net86),
    .X(_0009_));
 sky130_fd_sc_hd__mux2_1 _0939_ (.A0(_0039_),
    .A1(_0040_),
    .S(net85),
    .X(_0041_));
 sky130_fd_sc_hd__mux2_1 _0940_ (.A0(_0041_),
    .A1(_0039_),
    .S(net86),
    .X(_0011_));
 sky130_fd_sc_hd__mux2_1 _0941_ (.A0(_0042_),
    .A1(_0043_),
    .S(net85),
    .X(_0044_));
 sky130_fd_sc_hd__mux2_1 _0942_ (.A0(_0044_),
    .A1(_0042_),
    .S(net86),
    .X(_0012_));
 sky130_fd_sc_hd__mux2_1 _0943_ (.A0(_0066_),
    .A1(_0067_),
    .S(net85),
    .X(_0068_));
 sky130_fd_sc_hd__mux2_1 _0944_ (.A0(_0068_),
    .A1(_0066_),
    .S(net86),
    .X(_0005_));
 sky130_fd_sc_hd__mux2_1 _0945_ (.A0(_0069_),
    .A1(_0070_),
    .S(net85),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_1 _0946_ (.A0(_0071_),
    .A1(_0069_),
    .S(net48),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _0947_ (.A0(\transceiver.tx_reg[4] ),
    .A1(net40),
    .S(\transceiver.tx_wr ),
    .X(_0021_));
 sky130_fd_sc_hd__mux2_1 _0948_ (.A0(\transceiver.tx_reg[5] ),
    .A1(net41),
    .S(\transceiver.tx_wr ),
    .X(_0022_));
 sky130_fd_sc_hd__mux2_1 _0949_ (.A0(_0060_),
    .A1(_0061_),
    .S(net85),
    .X(_0062_));
 sky130_fd_sc_hd__mux2_1 _0950_ (.A0(_0062_),
    .A1(_0060_),
    .S(net48),
    .X(_0003_));
 sky130_fd_sc_hd__mux2_1 _0951_ (.A0(\transceiver.tx_reg[6] ),
    .A1(net42),
    .S(\transceiver.tx_wr ),
    .X(_0023_));
 sky130_fd_sc_hd__mux2_1 _0952_ (.A0(_0057_),
    .A1(_0058_),
    .S(net85),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_1 _0953_ (.A0(_0059_),
    .A1(_0057_),
    .S(net48),
    .X(_0002_));
 sky130_fd_sc_hd__mux2_1 _0954_ (.A0(_0045_),
    .A1(_0046_),
    .S(net85),
    .X(_0047_));
 sky130_fd_sc_hd__mux2_1 _0955_ (.A0(_0047_),
    .A1(_0045_),
    .S(net86),
    .X(_0013_));
 sky130_fd_sc_hd__mux2_1 _0956_ (.A0(_0051_),
    .A1(_0052_),
    .S(net85),
    .X(_0053_));
 sky130_fd_sc_hd__mux2_1 _0957_ (.A0(_0053_),
    .A1(_0051_),
    .S(net48),
    .X(_0015_));
 sky130_fd_sc_hd__mux2_1 _0958_ (.A0(_0048_),
    .A1(_0049_),
    .S(net85),
    .X(_0050_));
 sky130_fd_sc_hd__mux2_1 _0959_ (.A0(_0050_),
    .A1(_0048_),
    .S(net48),
    .X(_0014_));
 sky130_fd_sc_hd__mux2_1 _0960_ (.A0(_0054_),
    .A1(_0055_),
    .S(net85),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_1 _0961_ (.A0(_0056_),
    .A1(_0054_),
    .S(net48),
    .X(_0016_));
 sky130_fd_sc_hd__mux2_1 _0962_ (.A0(\transceiver.tx_reg[2] ),
    .A1(net26),
    .S(\transceiver.tx_wr ),
    .X(_0019_));
 sky130_fd_sc_hd__mux2_1 _0963_ (.A0(_0075_),
    .A1(_0077_),
    .S(\transceiver.rx_busy ),
    .X(_0017_));
 sky130_fd_sc_hd__mux2_1 _0964_ (.A0(\transceiver.tx_reg[7] ),
    .A1(net43),
    .S(\transceiver.tx_wr ),
    .X(_0024_));
 sky130_fd_sc_hd__mux2_1 _0965_ (.A0(_0026_),
    .A1(_0075_),
    .S(_0025_),
    .X(_0076_));
 sky130_fd_sc_hd__dfxtp_2 _0966_ (.D(_0001_),
    .Q(\transceiver.enable16_counter[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0967_ (.D(_0008_),
    .Q(\transceiver.enable16_counter[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0968_ (.D(_0009_),
    .Q(\transceiver.enable16_counter[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0969_ (.D(_0010_),
    .Q(\transceiver.enable16_counter[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0970_ (.D(_0011_),
    .Q(\transceiver.enable16_counter[4] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0971_ (.D(_0012_),
    .Q(\transceiver.enable16_counter[5] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0972_ (.D(_0013_),
    .Q(\transceiver.enable16_counter[6] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0973_ (.D(_0014_),
    .Q(\transceiver.enable16_counter[7] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _0974_ (.D(_0015_),
    .Q(\transceiver.enable16_counter[8] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0975_ (.D(_0016_),
    .Q(\transceiver.enable16_counter[9] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0976_ (.D(_0002_),
    .Q(\transceiver.enable16_counter[10] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0977_ (.D(_0003_),
    .Q(\transceiver.enable16_counter[11] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0978_ (.D(_0004_),
    .Q(\transceiver.enable16_counter[12] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0979_ (.D(_0005_),
    .Q(\transceiver.enable16_counter[13] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0980_ (.D(_0006_),
    .Q(\transceiver.enable16_counter[14] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0981_ (.D(_0007_),
    .Q(\transceiver.enable16_counter[15] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0982_ (.D(\transceiver.uart_rx1 ),
    .Q(\transceiver.uart_rx2 ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0983_ (.D(net49),
    .Q(\transceiver.uart_rx1 ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0984_ (.D(_0078_),
    .Q(thru),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0985_ (.D(_0079_),
    .Q(\transceiver.tx_reg[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0986_ (.D(_0080_),
    .Q(\transceiver.tx_reg[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0987_ (.D(_0081_),
    .Q(\transceiver.tx_reg[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0988_ (.D(_0082_),
    .Q(\transceiver.tx_reg[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0989_ (.D(_0083_),
    .Q(\transceiver.tx_reg[4] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0990_ (.D(_0084_),
    .Q(\transceiver.tx_reg[5] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0991_ (.D(_0085_),
    .Q(\transceiver.tx_reg[6] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0992_ (.D(_0086_),
    .Q(\transceiver.rx_data[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0993_ (.D(_0087_),
    .Q(\transceiver.rx_data[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0994_ (.D(_0088_),
    .Q(\transceiver.rx_data[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0995_ (.D(_0089_),
    .Q(\transceiver.rx_data[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0996_ (.D(_0090_),
    .Q(\transceiver.rx_data[4] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0997_ (.D(_0091_),
    .Q(\transceiver.rx_data[5] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0998_ (.D(_0092_),
    .Q(\transceiver.rx_data[6] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _0999_ (.D(_0093_),
    .Q(\transceiver.rx_data[7] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1000_ (.D(_0094_),
    .Q(\transceiver.rx_reg[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1001_ (.D(_0095_),
    .Q(\transceiver.rx_reg[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1002_ (.D(_0096_),
    .Q(\transceiver.rx_reg[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1003_ (.D(_0097_),
    .Q(\transceiver.rx_reg[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1004_ (.D(_0098_),
    .Q(\transceiver.rx_reg[4] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1005_ (.D(_0099_),
    .Q(\transceiver.rx_reg[5] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1006_ (.D(_0100_),
    .Q(\transceiver.rx_reg[6] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1007_ (.D(_0101_),
    .Q(\transceiver.rx_reg[7] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1008_ (.D(_0102_),
    .Q(net50),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1009_ (.D(_0103_),
    .Q(net61),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1010_ (.D(_0104_),
    .Q(net72),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1011_ (.D(_0105_),
    .Q(net75),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1012_ (.D(_0106_),
    .Q(net76),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1013_ (.D(_0107_),
    .Q(net77),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1014_ (.D(_0108_),
    .Q(net78),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1015_ (.D(_0109_),
    .Q(net79),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1016_ (.D(_0110_),
    .Q(net80),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1017_ (.D(_0111_),
    .Q(net81),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1018_ (.D(_0112_),
    .Q(net51),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1019_ (.D(_0113_),
    .Q(net52),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1020_ (.D(_0114_),
    .Q(net53),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1021_ (.D(_0115_),
    .Q(net54),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1022_ (.D(_0116_),
    .Q(net55),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1023_ (.D(_0117_),
    .Q(net56),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1024_ (.D(_0118_),
    .Q(net83),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1025_ (.D(_0119_),
    .Q(net82),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1026_ (.D(_0120_),
    .Q(\transceiver.uart_tx ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1027_ (.D(_0121_),
    .Q(\transceiver.tx_busy ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1028_ (.D(_0122_),
    .Q(\transceiver.rx_count16[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1029_ (.D(_0123_),
    .Q(\transceiver.rx_count16[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1030_ (.D(_0124_),
    .Q(\transceiver.rx_count16[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1031_ (.D(_0125_),
    .Q(\transceiver.rx_count16[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1032_ (.D(_0126_),
    .Q(\transceiver.rx_bitcount[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1033_ (.D(_0127_),
    .Q(\transceiver.rx_bitcount[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1034_ (.D(_0128_),
    .Q(\transceiver.rx_bitcount[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1035_ (.D(_0129_),
    .Q(\transceiver.rx_bitcount[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1036_ (.D(_0130_),
    .Q(\transceiver.divisor[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1037_ (.D(_0131_),
    .Q(\transceiver.divisor[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1038_ (.D(_0132_),
    .Q(\transceiver.divisor[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1039_ (.D(_0133_),
    .Q(\transceiver.divisor[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1040_ (.D(_0134_),
    .Q(\transceiver.divisor[4] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1041_ (.D(_0135_),
    .Q(\transceiver.divisor[5] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1042_ (.D(_0136_),
    .Q(\transceiver.divisor[6] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1043_ (.D(_0137_),
    .Q(\transceiver.divisor[7] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1044_ (.D(_0138_),
    .Q(\transceiver.divisor[8] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1045_ (.D(_0139_),
    .Q(\transceiver.divisor[9] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1046_ (.D(_0140_),
    .Q(\transceiver.divisor[10] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1047_ (.D(_0141_),
    .Q(\transceiver.divisor[11] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1048_ (.D(_0142_),
    .Q(\transceiver.divisor[12] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1049_ (.D(_0143_),
    .Q(\transceiver.divisor[13] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1050_ (.D(_0144_),
    .Q(\transceiver.divisor[14] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1051_ (.D(_0145_),
    .Q(\transceiver.divisor[15] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1052_ (.D(_0146_),
    .Q(\transceiver.rx_busy ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1053_ (.D(_0147_),
    .Q(\transceiver.tx_count16[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1054_ (.D(_0148_),
    .Q(\transceiver.tx_count16[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1055_ (.D(_0149_),
    .Q(\transceiver.tx_count16[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1056_ (.D(_0150_),
    .Q(\transceiver.tx_count16[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1057_ (.D(_0151_),
    .Q(\transceiver.tx_bitcount[0] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1058_ (.D(_0152_),
    .Q(\transceiver.tx_bitcount[1] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_2 _1059_ (.D(_0153_),
    .Q(\transceiver.tx_bitcount[2] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1060_ (.D(_0154_),
    .Q(\transceiver.tx_bitcount[3] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__dfxtp_1 _1061_ (.D(_0155_),
    .Q(\transceiver.tx_reg[7] ),
    .CLK(sys_clk));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_253 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(csr_a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(csr_a[10]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(csr_a[11]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(csr_a[12]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(csr_a[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(csr_a[1]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(csr_a[2]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(csr_a[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(csr_a[4]),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(csr_a[5]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(csr_a[6]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(csr_a[7]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(csr_a[8]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(csr_a[9]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_2 input15 (.A(csr_di[0]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(csr_di[10]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(csr_di[11]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(csr_di[12]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 input19 (.A(csr_di[13]),
    .X(net19));
 sky130_fd_sc_hd__buf_1 input20 (.A(csr_di[14]),
    .X(net20));
 sky130_fd_sc_hd__buf_1 input21 (.A(csr_di[15]),
    .X(net21));
 sky130_fd_sc_hd__buf_1 input22 (.A(csr_di[16]),
    .X(net22));
 sky130_fd_sc_hd__buf_1 input23 (.A(csr_di[17]),
    .X(net23));
 sky130_fd_sc_hd__buf_1 input24 (.A(csr_di[18]),
    .X(net24));
 sky130_fd_sc_hd__buf_1 input25 (.A(csr_di[19]),
    .X(net25));
 sky130_fd_sc_hd__buf_1 input26 (.A(csr_di[1]),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input27 (.A(csr_di[20]),
    .X(net27));
 sky130_fd_sc_hd__buf_1 input28 (.A(csr_di[21]),
    .X(net28));
 sky130_fd_sc_hd__buf_1 input29 (.A(csr_di[22]),
    .X(net29));
 sky130_fd_sc_hd__buf_1 input30 (.A(csr_di[23]),
    .X(net30));
 sky130_fd_sc_hd__buf_1 input31 (.A(csr_di[24]),
    .X(net31));
 sky130_fd_sc_hd__buf_1 input32 (.A(csr_di[25]),
    .X(net32));
 sky130_fd_sc_hd__buf_1 input33 (.A(csr_di[26]),
    .X(net33));
 sky130_fd_sc_hd__buf_1 input34 (.A(csr_di[27]),
    .X(net34));
 sky130_fd_sc_hd__buf_1 input35 (.A(csr_di[28]),
    .X(net35));
 sky130_fd_sc_hd__buf_1 input36 (.A(csr_di[29]),
    .X(net36));
 sky130_fd_sc_hd__buf_1 input37 (.A(csr_di[2]),
    .X(net37));
 sky130_fd_sc_hd__buf_1 input38 (.A(csr_di[30]),
    .X(net38));
 sky130_fd_sc_hd__buf_1 input39 (.A(csr_di[31]),
    .X(net39));
 sky130_fd_sc_hd__buf_1 input40 (.A(csr_di[3]),
    .X(net40));
 sky130_fd_sc_hd__buf_1 input41 (.A(csr_di[4]),
    .X(net41));
 sky130_fd_sc_hd__buf_1 input42 (.A(csr_di[5]),
    .X(net42));
 sky130_fd_sc_hd__buf_1 input43 (.A(csr_di[6]),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_1 input44 (.A(csr_di[7]),
    .X(net44));
 sky130_fd_sc_hd__clkbuf_2 input45 (.A(csr_di[8]),
    .X(net45));
 sky130_fd_sc_hd__buf_1 input46 (.A(csr_di[9]),
    .X(net46));
 sky130_fd_sc_hd__buf_2 input47 (.A(csr_we),
    .X(net47));
 sky130_fd_sc_hd__buf_4 input48 (.A(sys_rst),
    .X(net48));
 sky130_fd_sc_hd__buf_1 input49 (.A(uart_rx),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_2 output50 (.A(net50),
    .X(csr_do[0]));
 sky130_fd_sc_hd__clkbuf_2 output51 (.A(net51),
    .X(csr_do[10]));
 sky130_fd_sc_hd__clkbuf_2 output52 (.A(net52),
    .X(csr_do[11]));
 sky130_fd_sc_hd__clkbuf_2 output53 (.A(net53),
    .X(csr_do[12]));
 sky130_fd_sc_hd__clkbuf_2 output54 (.A(net54),
    .X(csr_do[13]));
 sky130_fd_sc_hd__clkbuf_2 output55 (.A(net55),
    .X(csr_do[14]));
 sky130_fd_sc_hd__clkbuf_2 output56 (.A(net56),
    .X(csr_do[15]));
 sky130_fd_sc_hd__clkbuf_2 output57 (.A(net57),
    .X(csr_do[16]));
 sky130_fd_sc_hd__clkbuf_2 output58 (.A(net58),
    .X(csr_do[17]));
 sky130_fd_sc_hd__clkbuf_2 output59 (.A(net59),
    .X(csr_do[18]));
 sky130_fd_sc_hd__clkbuf_2 output60 (.A(net60),
    .X(csr_do[19]));
 sky130_fd_sc_hd__clkbuf_2 output61 (.A(net61),
    .X(csr_do[1]));
 sky130_fd_sc_hd__clkbuf_2 output62 (.A(net62),
    .X(csr_do[20]));
 sky130_fd_sc_hd__clkbuf_2 output63 (.A(net63),
    .X(csr_do[21]));
 sky130_fd_sc_hd__clkbuf_2 output64 (.A(net64),
    .X(csr_do[22]));
 sky130_fd_sc_hd__clkbuf_2 output65 (.A(net65),
    .X(csr_do[23]));
 sky130_fd_sc_hd__clkbuf_2 output66 (.A(net66),
    .X(csr_do[24]));
 sky130_fd_sc_hd__clkbuf_2 output67 (.A(net67),
    .X(csr_do[25]));
 sky130_fd_sc_hd__clkbuf_2 output68 (.A(net68),
    .X(csr_do[26]));
 sky130_fd_sc_hd__clkbuf_2 output69 (.A(net69),
    .X(csr_do[27]));
 sky130_fd_sc_hd__clkbuf_2 output70 (.A(net70),
    .X(csr_do[28]));
 sky130_fd_sc_hd__clkbuf_2 output71 (.A(net71),
    .X(csr_do[29]));
 sky130_fd_sc_hd__clkbuf_2 output72 (.A(net72),
    .X(csr_do[2]));
 sky130_fd_sc_hd__clkbuf_2 output73 (.A(net73),
    .X(csr_do[30]));
 sky130_fd_sc_hd__clkbuf_2 output74 (.A(net74),
    .X(csr_do[31]));
 sky130_fd_sc_hd__clkbuf_2 output75 (.A(net75),
    .X(csr_do[3]));
 sky130_fd_sc_hd__clkbuf_2 output76 (.A(net76),
    .X(csr_do[4]));
 sky130_fd_sc_hd__clkbuf_2 output77 (.A(net77),
    .X(csr_do[5]));
 sky130_fd_sc_hd__clkbuf_2 output78 (.A(net78),
    .X(csr_do[6]));
 sky130_fd_sc_hd__clkbuf_2 output79 (.A(net79),
    .X(csr_do[7]));
 sky130_fd_sc_hd__clkbuf_2 output80 (.A(net80),
    .X(csr_do[8]));
 sky130_fd_sc_hd__clkbuf_2 output81 (.A(net81),
    .X(csr_do[9]));
 sky130_fd_sc_hd__clkbuf_2 output82 (.A(net82),
    .X(rx_irq));
 sky130_fd_sc_hd__clkbuf_2 output83 (.A(net83),
    .X(tx_irq));
 sky130_fd_sc_hd__clkbuf_2 output84 (.A(net84),
    .X(uart_tx));
 sky130_fd_sc_hd__buf_8 repeater85 (.A(_0000_),
    .X(net85));
 sky130_fd_sc_hd__buf_4 repeater86 (.A(net48),
    .X(net86));
endmodule
