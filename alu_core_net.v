/* Generated by Yosys 0.36+85 (git sha1 782572895, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module alu_core(a, b, clk, rst, op, result);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire _290_;
  wire _291_;
  wire _292_;
  wire _293_;
  wire _294_;
  wire _295_;
  wire _296_;
  wire _297_;
  wire _298_;
  wire _299_;
  wire _300_;
  wire _301_;
  wire _302_;
  wire _303_;
  wire _304_;
  wire _305_;
  wire _306_;
  wire _307_;
  wire _308_;
  wire _309_;
  wire _310_;
  wire _311_;
  wire _312_;
  wire _313_;
  wire _314_;
  wire _315_;
  wire _316_;
  wire _317_;
  wire _318_;
  wire _319_;
  wire _320_;
  wire _321_;
  wire _322_;
  wire _323_;
  wire _324_;
  wire _325_;
  wire _326_;
  wire _327_;
  wire _328_;
  wire _329_;
  wire _330_;
  wire _331_;
  wire _332_;
  wire _333_;
  wire _334_;
  wire _335_;
  wire _336_;
  wire _337_;
  wire _338_;
  wire _339_;
  wire _340_;
  wire _341_;
  wire _342_;
  wire _343_;
  wire _344_;
  wire _345_;
  wire _346_;
  wire _347_;
  wire _348_;
  wire _349_;
  wire _350_;
  wire _351_;
  wire _352_;
  wire _353_;
  wire _354_;
  wire _355_;
  wire _356_;
  wire _357_;
  wire _358_;
  wire _359_;
  wire _360_;
  wire _361_;
  wire _362_;
  wire _363_;
  wire _364_;
  wire _365_;
  wire _366_;
  wire _367_;
  wire _368_;
  wire _369_;
  wire _370_;
  wire _371_;
  wire _372_;
  wire _373_;
  wire _374_;
  wire _375_;
  wire _376_;
  wire _377_;
  wire _378_;
  wire _379_;
  wire [7:0] _380_;
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  input clk;
  wire clk;
  input [1:0] op;
  wire [1:0] op;
  output [7:0] result;
  wire [7:0] result;
  input rst;
  wire rst;
  sky130_fd_sc_hd__clkinv_1 _381_ (
    .A(_239_),
    .Y(_292_)
  );
  sky130_fd_sc_hd__clkinv_1 _382_ (
    .A(_241_),
    .Y(_293_)
  );
  sky130_fd_sc_hd__clkinv_1 _383_ (
    .A(_240_),
    .Y(_294_)
  );
  sky130_fd_sc_hd__nand2_1 _384_ (
    .A(_369_),
    .B(_370_),
    .Y(_295_)
  );
  sky130_fd_sc_hd__nor2_1 _385_ (
    .A(_242_),
    .B(_241_),
    .Y(_296_)
  );
  sky130_fd_sc_hd__nor3_1 _386_ (
    .A(_242_),
    .B(_241_),
    .C(_240_),
    .Y(_297_)
  );
  sky130_fd_sc_hd__a21boi_0 _387_ (
    .A1(_239_),
    .A2(_297_),
    .B1_N(_230_),
    .Y(_298_)
  );
  sky130_fd_sc_hd__o221ai_1 _388_ (
    .A1(_294_),
    .A2(_230_),
    .B1(_229_),
    .B2(_292_),
    .C1(_296_),
    .Y(_299_)
  );
  sky130_fd_sc_hd__and4_1 _389_ (
    .A(_292_),
    .B(_294_),
    .C(_230_),
    .D(_296_),
    .X(_300_)
  );
  sky130_fd_sc_hd__a21o_1 _390_ (
    .A1(_298_),
    .A2(_299_),
    .B1(_300_),
    .X(_301_)
  );
  sky130_fd_sc_hd__a21oi_1 _391_ (
    .A1(_298_),
    .A2(_299_),
    .B1(_300_),
    .Y(_302_)
  );
  sky130_fd_sc_hd__o2111ai_1 _392_ (
    .A1(_294_),
    .A2(_230_),
    .B1(_229_),
    .C1(_296_),
    .D1(_239_),
    .Y(_303_)
  );
  sky130_fd_sc_hd__nand2_1 _393_ (
    .A(_229_),
    .B(_303_),
    .Y(_304_)
  );
  sky130_fd_sc_hd__and3_1 _394_ (
    .A(_294_),
    .B(_229_),
    .C(_303_),
    .X(_305_)
  );
  sky130_fd_sc_hd__nand3_1 _395_ (
    .A(_294_),
    .B(_229_),
    .C(_303_),
    .Y(_306_)
  );
  sky130_fd_sc_hd__nor2_1 _396_ (
    .A(_292_),
    .B(_228_),
    .Y(_307_)
  );
  sky130_fd_sc_hd__a21oi_1 _397_ (
    .A1(_229_),
    .A2(_303_),
    .B1(_294_),
    .Y(_308_)
  );
  sky130_fd_sc_hd__nor3_1 _398_ (
    .A(_305_),
    .B(_307_),
    .C(_308_),
    .Y(_309_)
  );
  sky130_fd_sc_hd__nor2_1 _399_ (
    .A(_305_),
    .B(_309_),
    .Y(_310_)
  );
  sky130_fd_sc_hd__o221ai_1 _400_ (
    .A1(_241_),
    .A2(_302_),
    .B1(_307_),
    .B2(_308_),
    .C1(_306_),
    .Y(_311_)
  );
  sky130_fd_sc_hd__nor2_1 _401_ (
    .A(_242_),
    .B(_302_),
    .Y(_312_)
  );
  sky130_fd_sc_hd__a21oi_1 _402_ (
    .A1(_241_),
    .A2(_302_),
    .B1(_242_),
    .Y(_313_)
  );
  sky130_fd_sc_hd__and2_0 _403_ (
    .A(_311_),
    .B(_313_),
    .X(_314_)
  );
  sky130_fd_sc_hd__o21ai_0 _404_ (
    .A1(_305_),
    .A2(_308_),
    .B1(_307_),
    .Y(_315_)
  );
  sky130_fd_sc_hd__and4b_1 _405_ (
    .A_N(_309_),
    .B(_311_),
    .C(_313_),
    .D(_315_),
    .X(_316_)
  );
  sky130_fd_sc_hd__a21oi_1 _406_ (
    .A1(_311_),
    .A2(_313_),
    .B1(_304_),
    .Y(_317_)
  );
  sky130_fd_sc_hd__o21ai_0 _407_ (
    .A1(_316_),
    .A2(_317_),
    .B1(_293_),
    .Y(_318_)
  );
  sky130_fd_sc_hd__nor2b_1 _408_ (
    .A(_227_),
    .B_N(_239_),
    .Y(_319_)
  );
  sky130_fd_sc_hd__nor2_1 _409_ (
    .A(_240_),
    .B(_319_),
    .Y(_320_)
  );
  sky130_fd_sc_hd__nand2_1 _410_ (
    .A(_240_),
    .B(_319_),
    .Y(_321_)
  );
  sky130_fd_sc_hd__nand2_1 _411_ (
    .A(_228_),
    .B(_321_),
    .Y(_322_)
  );
  sky130_fd_sc_hd__a31oi_1 _412_ (
    .A1(_239_),
    .A2(_311_),
    .A3(_313_),
    .B1(_322_),
    .Y(_323_)
  );
  sky130_fd_sc_hd__a311oi_1 _413_ (
    .A1(_307_),
    .A2(_314_),
    .A3(_321_),
    .B1(_323_),
    .C1(_320_),
    .Y(_324_)
  );
  sky130_fd_sc_hd__nand2_1 _414_ (
    .A(_242_),
    .B(_302_),
    .Y(_325_)
  );
  sky130_fd_sc_hd__o31ai_1 _415_ (
    .A1(_293_),
    .A2(_316_),
    .A3(_317_),
    .B1(_325_),
    .Y(_326_)
  );
  sky130_fd_sc_hd__a21oi_1 _416_ (
    .A1(_318_),
    .A2(_324_),
    .B1(_326_),
    .Y(_327_)
  );
  sky130_fd_sc_hd__o21ai_0 _417_ (
    .A1(_293_),
    .A2(_310_),
    .B1(_312_),
    .Y(_328_)
  );
  sky130_fd_sc_hd__a21oi_1 _418_ (
    .A1(_293_),
    .A2(_310_),
    .B1(_328_),
    .Y(_329_)
  );
  sky130_fd_sc_hd__o21bai_1 _419_ (
    .A1(_327_),
    .A2(_329_),
    .B1_N(_295_),
    .Y(_330_)
  );
  sky130_fd_sc_hd__nand2_1 _420_ (
    .A(_239_),
    .B(_227_),
    .Y(_331_)
  );
  sky130_fd_sc_hd__nor2b_1 _421_ (
    .A(_369_),
    .B_N(_370_),
    .Y(_332_)
  );
  sky130_fd_sc_hd__xnor2_1 _422_ (
    .A(_239_),
    .B(_227_),
    .Y(_333_)
  );
  sky130_fd_sc_hd__nor2_1 _423_ (
    .A(_370_),
    .B(_333_),
    .Y(_334_)
  );
  sky130_fd_sc_hd__a31oi_1 _424_ (
    .A1(_239_),
    .A2(_227_),
    .A3(_332_),
    .B1(_334_),
    .Y(_335_)
  );
  sky130_fd_sc_hd__a21oi_1 _425_ (
    .A1(_330_),
    .A2(_335_),
    .B1(_371_),
    .Y(_231_)
  );
  sky130_fd_sc_hd__nand2_1 _426_ (
    .A(_240_),
    .B(_228_),
    .Y(_336_)
  );
  sky130_fd_sc_hd__xnor2_1 _427_ (
    .A(_240_),
    .B(_228_),
    .Y(_337_)
  );
  sky130_fd_sc_hd__nand2b_1 _428_ (
    .A_N(_370_),
    .B(_369_),
    .Y(_338_)
  );
  sky130_fd_sc_hd__xor2_1 _429_ (
    .A(_319_),
    .B(_337_),
    .X(_339_)
  );
  sky130_fd_sc_hd__or2_0 _430_ (
    .A(_331_),
    .B(_337_),
    .X(_340_)
  );
  sky130_fd_sc_hd__nor2_1 _431_ (
    .A(_369_),
    .B(_370_),
    .Y(_341_)
  );
  sky130_fd_sc_hd__nand2_1 _432_ (
    .A(_331_),
    .B(_337_),
    .Y(_342_)
  );
  sky130_fd_sc_hd__a22oi_1 _433_ (
    .A1(_227_),
    .A2(_240_),
    .B1(_228_),
    .B2(_239_),
    .Y(_343_)
  );
  sky130_fd_sc_hd__nand4_1 _434_ (
    .A(_239_),
    .B(_227_),
    .C(_240_),
    .D(_228_),
    .Y(_344_)
  );
  sky130_fd_sc_hd__nand2_1 _435_ (
    .A(_332_),
    .B(_344_),
    .Y(_345_)
  );
  sky130_fd_sc_hd__o22ai_1 _436_ (
    .A1(_338_),
    .A2(_339_),
    .B1(_343_),
    .B2(_345_),
    .Y(_346_)
  );
  sky130_fd_sc_hd__a31o_1 _437_ (
    .A1(_340_),
    .A2(_341_),
    .A3(_342_),
    .B1(_346_),
    .X(_347_)
  );
  sky130_fd_sc_hd__a31oi_1 _438_ (
    .A1(_369_),
    .A2(_370_),
    .A3(_314_),
    .B1(_347_),
    .Y(_348_)
  );
  sky130_fd_sc_hd__nor2_1 _439_ (
    .A(_371_),
    .B(_348_),
    .Y(_232_)
  );
  sky130_fd_sc_hd__nand2_1 _440_ (
    .A(_227_),
    .B(_241_),
    .Y(_349_)
  );
  sky130_fd_sc_hd__nand2_1 _441_ (
    .A(_239_),
    .B(_229_),
    .Y(_350_)
  );
  sky130_fd_sc_hd__nand2_1 _442_ (
    .A(_240_),
    .B(_229_),
    .Y(_351_)
  );
  sky130_fd_sc_hd__xor3_1 _443_ (
    .A(_336_),
    .B(_349_),
    .C(_350_),
    .X(_352_)
  );
  sky130_fd_sc_hd__nor2_1 _444_ (
    .A(_344_),
    .B(_352_),
    .Y(_353_)
  );
  sky130_fd_sc_hd__nand2_1 _445_ (
    .A(_344_),
    .B(_352_),
    .Y(_354_)
  );
  sky130_fd_sc_hd__nand2_1 _446_ (
    .A(_332_),
    .B(_354_),
    .Y(_355_)
  );
  sky130_fd_sc_hd__xnor2_1 _447_ (
    .A(_241_),
    .B(_229_),
    .Y(_356_)
  );
  sky130_fd_sc_hd__nand3_1 _448_ (
    .A(_336_),
    .B(_340_),
    .C(_356_),
    .Y(_357_)
  );
  sky130_fd_sc_hd__a21o_1 _449_ (
    .A1(_336_),
    .A2(_340_),
    .B1(_356_),
    .X(_358_)
  );
  sky130_fd_sc_hd__o21ai_0 _450_ (
    .A1(_240_),
    .A2(_319_),
    .B1(_322_),
    .Y(_359_)
  );
  sky130_fd_sc_hd__xnor2_1 _451_ (
    .A(_356_),
    .B(_359_),
    .Y(_360_)
  );
  sky130_fd_sc_hd__nor2_1 _452_ (
    .A(_338_),
    .B(_360_),
    .Y(_361_)
  );
  sky130_fd_sc_hd__a31oi_1 _453_ (
    .A1(_341_),
    .A2(_357_),
    .A3(_358_),
    .B1(_361_),
    .Y(_362_)
  );
  sky130_fd_sc_hd__o221a_1 _454_ (
    .A1(_295_),
    .A2(_299_),
    .B1(_353_),
    .B2(_355_),
    .C1(_362_),
    .X(_363_)
  );
  sky130_fd_sc_hd__nor2_1 _455_ (
    .A(_371_),
    .B(_363_),
    .Y(_233_)
  );
  sky130_fd_sc_hd__nand2b_1 _456_ (
    .A_N(_242_),
    .B(_230_),
    .Y(_364_)
  );
  sky130_fd_sc_hd__and2_0 _457_ (
    .A(_325_),
    .B(_364_),
    .X(_365_)
  );
  sky130_fd_sc_hd__nand2_1 _458_ (
    .A(_241_),
    .B(_229_),
    .Y(_366_)
  );
  sky130_fd_sc_hd__a21o_1 _459_ (
    .A1(_358_),
    .A2(_366_),
    .B1(_365_),
    .X(_367_)
  );
  sky130_fd_sc_hd__nand3_1 _460_ (
    .A(_358_),
    .B(_365_),
    .C(_366_),
    .Y(_368_)
  );
  sky130_fd_sc_hd__maj3_1 _461_ (
    .A(_293_),
    .B(_229_),
    .C(_359_),
    .X(_243_)
  );
  sky130_fd_sc_hd__a21oi_1 _462_ (
    .A1(_365_),
    .A2(_243_),
    .B1(_338_),
    .Y(_244_)
  );
  sky130_fd_sc_hd__o21ai_0 _463_ (
    .A1(_365_),
    .A2(_243_),
    .B1(_244_),
    .Y(_245_)
  );
  sky130_fd_sc_hd__nand2_1 _464_ (
    .A(_227_),
    .B(_242_),
    .Y(_246_)
  );
  sky130_fd_sc_hd__maj3_1 _465_ (
    .A(_336_),
    .B(_349_),
    .C(_350_),
    .X(_247_)
  );
  sky130_fd_sc_hd__nand2_1 _466_ (
    .A(_241_),
    .B(_228_),
    .Y(_248_)
  );
  sky130_fd_sc_hd__nand2_1 _467_ (
    .A(_239_),
    .B(_230_),
    .Y(_249_)
  );
  sky130_fd_sc_hd__xor3_1 _468_ (
    .A(_351_),
    .B(_248_),
    .C(_249_),
    .X(_250_)
  );
  sky130_fd_sc_hd__xnor3_1 _469_ (
    .A(_246_),
    .B(_247_),
    .C(_250_),
    .X(_251_)
  );
  sky130_fd_sc_hd__and2_0 _470_ (
    .A(_353_),
    .B(_251_),
    .X(_252_)
  );
  sky130_fd_sc_hd__o21ai_0 _471_ (
    .A1(_353_),
    .A2(_251_),
    .B1(_332_),
    .Y(_253_)
  );
  sky130_fd_sc_hd__nand3_1 _472_ (
    .A(_369_),
    .B(_370_),
    .C(_297_),
    .Y(_254_)
  );
  sky130_fd_sc_hd__nor2_1 _473_ (
    .A(_239_),
    .B(_254_),
    .Y(_255_)
  );
  sky130_fd_sc_hd__nor2_1 _474_ (
    .A(_292_),
    .B(_230_),
    .Y(_256_)
  );
  sky130_fd_sc_hd__o22ai_1 _475_ (
    .A1(_252_),
    .A2(_253_),
    .B1(_254_),
    .B2(_256_),
    .Y(_257_)
  );
  sky130_fd_sc_hd__a31oi_1 _476_ (
    .A1(_341_),
    .A2(_367_),
    .A3(_368_),
    .B1(_257_),
    .Y(_258_)
  );
  sky130_fd_sc_hd__a21oi_1 _477_ (
    .A1(_245_),
    .A2(_258_),
    .B1(_371_),
    .Y(_234_)
  );
  sky130_fd_sc_hd__a21oi_1 _478_ (
    .A1(_364_),
    .A2(_244_),
    .B1(_255_),
    .Y(_259_)
  );
  sky130_fd_sc_hd__maj3_1 _479_ (
    .A(_246_),
    .B(_247_),
    .C(_250_),
    .X(_260_)
  );
  sky130_fd_sc_hd__nand2_1 _480_ (
    .A(_242_),
    .B(_228_),
    .Y(_261_)
  );
  sky130_fd_sc_hd__maj3_1 _481_ (
    .A(_351_),
    .B(_248_),
    .C(_249_),
    .X(_262_)
  );
  sky130_fd_sc_hd__nand2_1 _482_ (
    .A(_240_),
    .B(_230_),
    .Y(_263_)
  );
  sky130_fd_sc_hd__nand4_1 _483_ (
    .A(_241_),
    .B(_240_),
    .C(_230_),
    .D(_229_),
    .Y(_264_)
  );
  sky130_fd_sc_hd__xor2_1 _484_ (
    .A(_366_),
    .B(_263_),
    .X(_265_)
  );
  sky130_fd_sc_hd__clkinv_1 _485_ (
    .A(_265_),
    .Y(_266_)
  );
  sky130_fd_sc_hd__xnor3_1 _486_ (
    .A(_261_),
    .B(_262_),
    .C(_265_),
    .X(_267_)
  );
  sky130_fd_sc_hd__nor2_1 _487_ (
    .A(_260_),
    .B(_267_),
    .Y(_268_)
  );
  sky130_fd_sc_hd__xor2_1 _488_ (
    .A(_260_),
    .B(_267_),
    .X(_269_)
  );
  sky130_fd_sc_hd__o21ai_0 _489_ (
    .A1(_252_),
    .A2(_269_),
    .B1(_332_),
    .Y(_270_)
  );
  sky130_fd_sc_hd__a21oi_1 _490_ (
    .A1(_252_),
    .A2(_269_),
    .B1(_270_),
    .Y(_271_)
  );
  sky130_fd_sc_hd__nand2_1 _491_ (
    .A(_242_),
    .B(_301_),
    .Y(_272_)
  );
  sky130_fd_sc_hd__nand2_1 _492_ (
    .A(_367_),
    .B(_272_),
    .Y(_273_)
  );
  sky130_fd_sc_hd__a21oi_1 _493_ (
    .A1(_341_),
    .A2(_273_),
    .B1(_271_),
    .Y(_274_)
  );
  sky130_fd_sc_hd__a21oi_1 _494_ (
    .A1(_259_),
    .A2(_274_),
    .B1(_371_),
    .Y(_235_)
  );
  sky130_fd_sc_hd__a21oi_1 _495_ (
    .A1(_252_),
    .A2(_269_),
    .B1(_268_),
    .Y(_275_)
  );
  sky130_fd_sc_hd__maj3_1 _496_ (
    .A(_261_),
    .B(_262_),
    .C(_266_),
    .X(_276_)
  );
  sky130_fd_sc_hd__and2_0 _497_ (
    .A(_242_),
    .B(_229_),
    .X(_277_)
  );
  sky130_fd_sc_hd__nand3_1 _498_ (
    .A(_241_),
    .B(_301_),
    .C(_264_),
    .Y(_278_)
  );
  sky130_fd_sc_hd__nand4_1 _499_ (
    .A(_241_),
    .B(_301_),
    .C(_264_),
    .D(_277_),
    .Y(_279_)
  );
  sky130_fd_sc_hd__xor2_1 _500_ (
    .A(_277_),
    .B(_278_),
    .X(_280_)
  );
  sky130_fd_sc_hd__xnor2_1 _501_ (
    .A(_276_),
    .B(_280_),
    .Y(_281_)
  );
  sky130_fd_sc_hd__o21ai_0 _502_ (
    .A1(_275_),
    .A2(_281_),
    .B1(_332_),
    .Y(_282_)
  );
  sky130_fd_sc_hd__a21o_1 _503_ (
    .A1(_275_),
    .A2(_281_),
    .B1(_282_),
    .X(_283_)
  );
  sky130_fd_sc_hd__a21oi_1 _504_ (
    .A1(_259_),
    .A2(_283_),
    .B1(_371_),
    .Y(_236_)
  );
  sky130_fd_sc_hd__maj3_1 _505_ (
    .A(_275_),
    .B(_276_),
    .C(_280_),
    .X(_284_)
  );
  sky130_fd_sc_hd__a21oi_1 _506_ (
    .A1(_264_),
    .A2(_279_),
    .B1(_272_),
    .Y(_285_)
  );
  sky130_fd_sc_hd__and3_1 _507_ (
    .A(_264_),
    .B(_272_),
    .C(_279_),
    .X(_286_)
  );
  sky130_fd_sc_hd__or2_0 _508_ (
    .A(_285_),
    .B(_286_),
    .X(_287_)
  );
  sky130_fd_sc_hd__nor2_1 _509_ (
    .A(_284_),
    .B(_287_),
    .Y(_288_)
  );
  sky130_fd_sc_hd__nand2_1 _510_ (
    .A(_284_),
    .B(_287_),
    .Y(_289_)
  );
  sky130_fd_sc_hd__nand3b_1 _511_ (
    .A_N(_288_),
    .B(_289_),
    .C(_332_),
    .Y(_290_)
  );
  sky130_fd_sc_hd__a21oi_1 _512_ (
    .A1(_259_),
    .A2(_290_),
    .B1(_371_),
    .Y(_237_)
  );
  sky130_fd_sc_hd__o21ai_0 _513_ (
    .A1(_285_),
    .A2(_288_),
    .B1(_332_),
    .Y(_291_)
  );
  sky130_fd_sc_hd__a21oi_1 _514_ (
    .A1(_259_),
    .A2(_291_),
    .B1(_371_),
    .Y(_238_)
  );
  sky130_fd_sc_hd__dfxtp_1 _515_ (
    .CLK(clk),
    .D(_372_),
    .Q(result[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _516_ (
    .CLK(clk),
    .D(_373_),
    .Q(result[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _517_ (
    .CLK(clk),
    .D(_374_),
    .Q(result[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _518_ (
    .CLK(clk),
    .D(_375_),
    .Q(result[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _519_ (
    .CLK(clk),
    .D(_376_),
    .Q(result[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _520_ (
    .CLK(clk),
    .D(_377_),
    .Q(result[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _521_ (
    .CLK(clk),
    .D(_378_),
    .Q(result[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _522_ (
    .CLK(clk),
    .D(_379_),
    .Q(result[7])
  );
  assign _239_ = b[0];
  assign _227_ = a[0];
  assign _369_ = op[0];
  assign _370_ = op[1];
  assign _242_ = b[3];
  assign _241_ = b[2];
  assign _240_ = b[1];
  assign _230_ = a[3];
  assign _229_ = a[2];
  assign _228_ = a[1];
  assign _371_ = rst;
  assign _372_ = _231_;
  assign _373_ = _232_;
  assign _374_ = _233_;
  assign _375_ = _234_;
  assign _376_ = _235_;
  assign _377_ = _236_;
  assign _378_ = _237_;
  assign _379_ = _238_;
endmodule
