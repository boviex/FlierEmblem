	.include "MPlayDef.s"

	.equ	falcon_grp, voicegroup000
	.equ	falcon_pri, 0
	.equ	falcon_rev, 0
	.equ	falcon_mvl, 127
	.equ	falcon_key, 0
	.equ	falcon_tbs, 1
	.equ	falcon_exg, 0
	.equ	falcon_cmp, 1

	.section .rodata
	.global	falcon
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

falcon_1:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 124*falcon_tbs/2
	.byte		VOICE , 75
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W30
	.byte		BEND  , c_v+0
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
falcon_1_005:
	.byte		N48   , An4 , v112
	.byte	W48
	.byte		        Cn5 
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
falcon_1_006:
	.byte		N24   , Bn4 , v112
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
falcon_1_007:
	.byte		N36   , En4 , v112
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
falcon_1_008:
	.byte		N48   , En4 , v112
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 010   ----------------------------------------
falcon_1_010:
	.byte		N24   , Dn5 , v112
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
falcon_1_011:
	.byte		N24   , An4 , v112
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N72   , An4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_011
@ 020   ----------------------------------------
	.byte		TIE   , An4 , v112
	.byte	W96
@ 021   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
falcon_1_026:
	.byte	W24
	.byte		N24   , Dn5 , v048
	.byte		N24   , Fn5 , v064
	.byte	W24
	.byte		        Fn5 , v048
	.byte		N24   , An5 , v064
	.byte	W24
	.byte		        Dn5 , v048
	.byte		N24   , Fn5 , v064
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
falcon_1_027:
	.byte		N24   , En5 , v048
	.byte		N24   , Gn5 , v064
	.byte	W24
	.byte		        Dn5 , v048
	.byte		N24   , Fn5 , v064
	.byte	W24
	.byte		        Cn5 , v048
	.byte		N24   , En5 , v064
	.byte	W24
	.byte		        Dn5 , v048
	.byte		N24   , Fn5 , v064
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
falcon_1_028:
	.byte		N96   , En5 , v048
	.byte		N96   , Gn5 , v064
	.byte	W96
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
falcon_1_034:
	.byte		N60   , Cn5 , v048
	.byte		N60   , En5 , v064
	.byte	W60
	.byte		N12   , Cn5 , v048
	.byte		N12   , En5 , v064
	.byte	W12
	.byte		        Bn4 , v048
	.byte		N12   , Dn5 , v064
	.byte	W12
	.byte		        An4 , v048
	.byte		N12   , Cn5 , v064
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
falcon_1_035:
	.byte		N96   , Fn4 , v048
	.byte		N96   , An4 , v064
	.byte	W96
	.byte	PEND
@ 036   ----------------------------------------
falcon_1_036:
	.byte	W24
	.byte		N24   , Ds4 , v048
	.byte		N24   , Gn4 , v064
	.byte	W24
	.byte		        Fn4 , v048
	.byte		N24   , An4 , v064
	.byte	W24
	.byte		        Gn4 , v048
	.byte		N24   , As4 , v064
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
falcon_1_037:
	.byte		N24   , Cn5 , v048
	.byte		N24   , Ds5 , v064
	.byte	W24
	.byte		        As4 , v048
	.byte		N24   , Dn5 , v064
	.byte	W24
	.byte		        An4 , v048
	.byte		N24   , Cn5 , v064
	.byte	W24
	.byte		        Gn4 , v048
	.byte		N24   , As4 , v064
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
falcon_1_038:
	.byte		TIE   , Fs4 , v048
	.byte		TIE   , An4 , v064
	.byte	W96
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        An4 
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_006
@ 044   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_007
@ 045   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_008
@ 046   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_011
@ 049   ----------------------------------------
	.byte		N72   , An4 , v112
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_006
@ 052   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_007
@ 053   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_005
@ 055   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_010
@ 056   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_011
@ 057   ----------------------------------------
	.byte		TIE   , An4 , v112
	.byte	W96
@ 058   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_026
@ 064   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_027
@ 065   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_028
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_034
@ 072   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_035
@ 073   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_036
@ 074   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_037
@ 075   ----------------------------------------
	.byte	PATT
	 .word	falcon_1_038
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs4 
	.byte		        An4 
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte		N48   , An4 , v112
	.byte	W07
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W06
	.byte		        125*falcon_mvl/mxv
	.byte	W06
	.byte		        124*falcon_mvl/mxv
	.byte	W06
	.byte		        123*falcon_mvl/mxv
	.byte	W06
	.byte		        122*falcon_mvl/mxv
	.byte	W06
	.byte		        121*falcon_mvl/mxv
	.byte	W06
	.byte		        120*falcon_mvl/mxv
	.byte	W05
	.byte		N48   , Cn5 
	.byte	W01
	.byte		VOL   , 119*falcon_mvl/mxv
	.byte	W06
	.byte		        118*falcon_mvl/mxv
	.byte	W06
	.byte		        117*falcon_mvl/mxv
	.byte	W06
	.byte		        116*falcon_mvl/mxv
	.byte	W06
	.byte		        115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W06
	.byte		        113*falcon_mvl/mxv
	.byte	W06
	.byte		        112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte		N24   , Bn4 
	.byte	W01
	.byte		VOL   , 111*falcon_mvl/mxv
	.byte	W06
	.byte		        110*falcon_mvl/mxv
	.byte	W06
	.byte		        109*falcon_mvl/mxv
	.byte	W06
	.byte		        108*falcon_mvl/mxv
	.byte	W05
	.byte		N24   , An4 
	.byte	W01
	.byte		VOL   , 107*falcon_mvl/mxv
	.byte	W06
	.byte		        106*falcon_mvl/mxv
	.byte	W07
	.byte		        105*falcon_mvl/mxv
	.byte	W06
	.byte		        104*falcon_mvl/mxv
	.byte	W04
	.byte		N24   , Gn4 
	.byte	W02
	.byte		VOL   , 103*falcon_mvl/mxv
	.byte	W06
	.byte		        102*falcon_mvl/mxv
	.byte	W06
	.byte		        101*falcon_mvl/mxv
	.byte	W06
	.byte		        100*falcon_mvl/mxv
	.byte	W04
	.byte		N12   , Cn4 
	.byte	W02
	.byte		VOL   , 99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W04
	.byte		N12   , Dn4 
	.byte	W02
	.byte		VOL   , 97*falcon_mvl/mxv
	.byte	W06
	.byte		        96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte		N36   , En4 
	.byte	W02
	.byte		VOL   , 95*falcon_mvl/mxv
	.byte	W06
	.byte		        94*falcon_mvl/mxv
	.byte	W06
	.byte		        93*falcon_mvl/mxv
	.byte	W06
	.byte		        92*falcon_mvl/mxv
	.byte	W06
	.byte		        91*falcon_mvl/mxv
	.byte	W06
	.byte		        90*falcon_mvl/mxv
	.byte	W04
	.byte		N12   
	.byte	W02
	.byte		VOL   , 89*falcon_mvl/mxv
	.byte	W06
	.byte		        88*falcon_mvl/mxv
	.byte	W04
	.byte		N24   , Dn4 
	.byte	W02
	.byte		VOL   , 87*falcon_mvl/mxv
	.byte	W06
	.byte		        86*falcon_mvl/mxv
	.byte	W06
	.byte		        85*falcon_mvl/mxv
	.byte	W07
	.byte		        84*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , Cn4 
	.byte	W03
	.byte		VOL   , 83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , Dn4 
	.byte	W03
	.byte		VOL   , 81*falcon_mvl/mxv
	.byte	W06
	.byte		        80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte		N48   , En4 
	.byte	W03
	.byte		VOL   , 79*falcon_mvl/mxv
	.byte	W06
	.byte		        78*falcon_mvl/mxv
	.byte	W06
	.byte		        77*falcon_mvl/mxv
	.byte	W06
	.byte		        76*falcon_mvl/mxv
	.byte	W06
	.byte		        75*falcon_mvl/mxv
	.byte	W06
	.byte		        74*falcon_mvl/mxv
	.byte	W06
	.byte		        73*falcon_mvl/mxv
	.byte	W06
	.byte		        72*falcon_mvl/mxv
	.byte	W03
	.byte		N48   
	.byte	W03
	.byte		VOL   , 71*falcon_mvl/mxv
	.byte	W06
	.byte		        70*falcon_mvl/mxv
	.byte	W06
	.byte		        69*falcon_mvl/mxv
	.byte	W06
	.byte		        68*falcon_mvl/mxv
	.byte	W06
	.byte		        67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W06
	.byte		        65*falcon_mvl/mxv
	.byte	W06
	.byte		        64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte		N48   , An4 
	.byte	W04
	.byte		VOL   , 63*falcon_mvl/mxv
	.byte	W06
	.byte		        62*falcon_mvl/mxv
	.byte	W06
	.byte		        61*falcon_mvl/mxv
	.byte	W06
	.byte		        60*falcon_mvl/mxv
	.byte	W06
	.byte		        59*falcon_mvl/mxv
	.byte	W06
	.byte		        58*falcon_mvl/mxv
	.byte	W06
	.byte		        57*falcon_mvl/mxv
	.byte	W06
	.byte		        56*falcon_mvl/mxv
	.byte	W02
	.byte		N48   , Cn5 
	.byte	W04
	.byte		VOL   , 55*falcon_mvl/mxv
	.byte	W06
	.byte		        54*falcon_mvl/mxv
	.byte	W06
	.byte		        53*falcon_mvl/mxv
	.byte	W06
	.byte		        52*falcon_mvl/mxv
	.byte	W06
	.byte		        51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W06
	.byte		        49*falcon_mvl/mxv
	.byte	W06
	.byte		        48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte		N24   , Dn5 
	.byte	W04
	.byte		VOL   , 47*falcon_mvl/mxv
	.byte	W06
	.byte		        46*falcon_mvl/mxv
	.byte	W06
	.byte		        45*falcon_mvl/mxv
	.byte	W06
	.byte		        44*falcon_mvl/mxv
	.byte	W02
	.byte		N24   , Cn5 
	.byte	W04
	.byte		VOL   , 43*falcon_mvl/mxv
	.byte	W07
	.byte		        42*falcon_mvl/mxv
	.byte	W06
	.byte		        41*falcon_mvl/mxv
	.byte	W06
	.byte		        40*falcon_mvl/mxv
	.byte	W01
	.byte		N24   , Bn4 
	.byte	W05
	.byte		VOL   , 39*falcon_mvl/mxv
	.byte	W06
	.byte		        38*falcon_mvl/mxv
	.byte	W06
	.byte		        37*falcon_mvl/mxv
	.byte	W06
	.byte		        36*falcon_mvl/mxv
	.byte	W01
	.byte		N24   , Gn4 
	.byte	W05
	.byte		VOL   , 35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W06
	.byte		        33*falcon_mvl/mxv
	.byte	W06
	.byte		        32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte		N24   , An4 
	.byte	W05
	.byte		VOL   , 31*falcon_mvl/mxv
	.byte	W06
	.byte		        30*falcon_mvl/mxv
	.byte	W06
	.byte		        29*falcon_mvl/mxv
	.byte	W06
	.byte		        28*falcon_mvl/mxv
	.byte	W01
	.byte		N24   , Cn5 
	.byte	W05
	.byte		VOL   , 27*falcon_mvl/mxv
	.byte	W06
	.byte		        26*falcon_mvl/mxv
	.byte	W06
	.byte		        25*falcon_mvl/mxv
	.byte	W06
	.byte		        24*falcon_mvl/mxv
	.byte	W01
	.byte		N24   , Bn4 
	.byte	W05
	.byte		VOL   , 23*falcon_mvl/mxv
	.byte	W06
	.byte		        22*falcon_mvl/mxv
	.byte	W07
	.byte		        21*falcon_mvl/mxv
	.byte	W06
	.byte		        20*falcon_mvl/mxv
	.byte		N24   , Gs4 
	.byte	W06
	.byte		VOL   , 19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte	W06
	.byte		        17*falcon_mvl/mxv
	.byte	W06
@ 086   ----------------------------------------
	.byte		        16*falcon_mvl/mxv
	.byte		N72   , An4 
	.byte	W06
	.byte		VOL   , 15*falcon_mvl/mxv
	.byte	W06
	.byte		        14*falcon_mvl/mxv
	.byte	W06
	.byte		        13*falcon_mvl/mxv
	.byte	W06
	.byte		        12*falcon_mvl/mxv
	.byte	W06
	.byte		        11*falcon_mvl/mxv
	.byte	W06
	.byte		        10*falcon_mvl/mxv
	.byte	W06
	.byte		        9*falcon_mvl/mxv
	.byte	W06
	.byte		        8*falcon_mvl/mxv
	.byte	W06
	.byte		        7*falcon_mvl/mxv
	.byte	W06
	.byte		        6*falcon_mvl/mxv
	.byte	W06
	.byte		        5*falcon_mvl/mxv
	.byte	W06
	.byte		        4*falcon_mvl/mxv
	.byte	W06
	.byte		        3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte	W06
	.byte		        1*falcon_mvl/mxv
	.byte	W06
@ 087   ----------------------------------------
	.byte		        0*falcon_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

falcon_2:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 52
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W30
	.byte		BEND  , c_v+0
	.byte	W48
@ 001   ----------------------------------------
	.byte		N96   , Cs3 , v060
	.byte		N96   , An3 , v096
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Ds3 , v060
	.byte		N96   , Bn3 , v096
	.byte	W96
@ 003   ----------------------------------------
	.byte		        En3 , v060
	.byte		N96   , Cn4 , v096
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Fs3 , v060
	.byte		N96   , Dn4 , v096
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
falcon_2_022:
	.byte	W24
	.byte		N24   , Fn3 , v060
	.byte		N24   , An3 , v084
	.byte	W24
	.byte		        An3 , v060
	.byte		N24   , Cn4 , v084
	.byte	W24
	.byte		        Fn3 , v060
	.byte		N24   , An3 , v084
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
falcon_2_023:
	.byte		N24   , Gn3 , v060
	.byte		N24   , Bn3 , v084
	.byte	W24
	.byte		        Fn3 , v060
	.byte		N24   , An3 , v084
	.byte	W24
	.byte		        En3 , v060
	.byte		N24   , Gn3 , v084
	.byte	W24
	.byte		        Fn3 , v060
	.byte		N24   , An3 , v084
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
falcon_2_024:
	.byte		N72   , Gn3 , v060
	.byte		N72   , Bn3 , v084
	.byte	W72
	.byte		N24   , Bn3 , v060
	.byte		N24   , Dn4 , v084
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
falcon_2_025:
	.byte		N96   , An3 , v060
	.byte		N96   , Cn4 , v084
	.byte	W96
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_024
@ 033   ----------------------------------------
falcon_2_033:
	.byte		N96   , An3 , v060
	.byte		N96   , Cs4 , v084
	.byte	W96
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_022
@ 060   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_023
@ 061   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_024
@ 062   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_025
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_022
@ 068   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_023
@ 069   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_024
@ 070   ----------------------------------------
	.byte	PATT
	 .word	falcon_2_033
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W07
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W06
	.byte		        125*falcon_mvl/mxv
	.byte	W06
	.byte		        124*falcon_mvl/mxv
	.byte	W06
	.byte		        123*falcon_mvl/mxv
	.byte	W06
	.byte		        122*falcon_mvl/mxv
	.byte	W06
	.byte		        121*falcon_mvl/mxv
	.byte	W06
	.byte		        120*falcon_mvl/mxv
	.byte	W06
	.byte		        119*falcon_mvl/mxv
	.byte	W06
	.byte		        118*falcon_mvl/mxv
	.byte	W06
	.byte		        117*falcon_mvl/mxv
	.byte	W06
	.byte		        116*falcon_mvl/mxv
	.byte	W06
	.byte		        115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W06
	.byte		        113*falcon_mvl/mxv
	.byte	W06
	.byte		        112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte	W01
	.byte		        111*falcon_mvl/mxv
	.byte	W06
	.byte		        110*falcon_mvl/mxv
	.byte	W06
	.byte		        109*falcon_mvl/mxv
	.byte	W06
	.byte		        108*falcon_mvl/mxv
	.byte	W06
	.byte		        107*falcon_mvl/mxv
	.byte	W06
	.byte		        106*falcon_mvl/mxv
	.byte	W07
	.byte		        105*falcon_mvl/mxv
	.byte	W06
	.byte		        104*falcon_mvl/mxv
	.byte	W06
	.byte		        103*falcon_mvl/mxv
	.byte	W06
	.byte		        102*falcon_mvl/mxv
	.byte	W06
	.byte		        101*falcon_mvl/mxv
	.byte	W06
	.byte		        100*falcon_mvl/mxv
	.byte	W06
	.byte		        99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W06
	.byte		        97*falcon_mvl/mxv
	.byte	W06
	.byte		        96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte	W02
	.byte		        95*falcon_mvl/mxv
	.byte	W06
	.byte		        94*falcon_mvl/mxv
	.byte	W06
	.byte		        93*falcon_mvl/mxv
	.byte	W06
	.byte		        92*falcon_mvl/mxv
	.byte	W06
	.byte		        91*falcon_mvl/mxv
	.byte	W06
	.byte		        90*falcon_mvl/mxv
	.byte	W06
	.byte		        89*falcon_mvl/mxv
	.byte	W06
	.byte		        88*falcon_mvl/mxv
	.byte	W06
	.byte		        87*falcon_mvl/mxv
	.byte	W06
	.byte		        86*falcon_mvl/mxv
	.byte	W06
	.byte		        85*falcon_mvl/mxv
	.byte	W07
	.byte		        84*falcon_mvl/mxv
	.byte	W06
	.byte		        83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W06
	.byte		        81*falcon_mvl/mxv
	.byte	W06
	.byte		        80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte	W03
	.byte		        79*falcon_mvl/mxv
	.byte	W06
	.byte		        78*falcon_mvl/mxv
	.byte	W06
	.byte		        77*falcon_mvl/mxv
	.byte	W06
	.byte		        76*falcon_mvl/mxv
	.byte	W06
	.byte		        75*falcon_mvl/mxv
	.byte	W06
	.byte		        74*falcon_mvl/mxv
	.byte	W06
	.byte		        73*falcon_mvl/mxv
	.byte	W06
	.byte		        72*falcon_mvl/mxv
	.byte	W06
	.byte		        71*falcon_mvl/mxv
	.byte	W06
	.byte		        70*falcon_mvl/mxv
	.byte	W06
	.byte		        69*falcon_mvl/mxv
	.byte	W06
	.byte		        68*falcon_mvl/mxv
	.byte	W06
	.byte		        67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W06
	.byte		        65*falcon_mvl/mxv
	.byte	W06
	.byte		        64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte	W04
	.byte		        63*falcon_mvl/mxv
	.byte	W06
	.byte		        62*falcon_mvl/mxv
	.byte	W06
	.byte		        61*falcon_mvl/mxv
	.byte	W06
	.byte		        60*falcon_mvl/mxv
	.byte	W06
	.byte		        59*falcon_mvl/mxv
	.byte	W06
	.byte		        58*falcon_mvl/mxv
	.byte	W06
	.byte		        57*falcon_mvl/mxv
	.byte	W06
	.byte		        56*falcon_mvl/mxv
	.byte	W06
	.byte		        55*falcon_mvl/mxv
	.byte	W06
	.byte		        54*falcon_mvl/mxv
	.byte	W06
	.byte		        53*falcon_mvl/mxv
	.byte	W06
	.byte		        52*falcon_mvl/mxv
	.byte	W06
	.byte		        51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W06
	.byte		        49*falcon_mvl/mxv
	.byte	W06
	.byte		        48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte	W04
	.byte		        47*falcon_mvl/mxv
	.byte	W06
	.byte		        46*falcon_mvl/mxv
	.byte	W06
	.byte		        45*falcon_mvl/mxv
	.byte	W06
	.byte		        44*falcon_mvl/mxv
	.byte	W06
	.byte		        43*falcon_mvl/mxv
	.byte	W07
	.byte		        42*falcon_mvl/mxv
	.byte	W06
	.byte		        41*falcon_mvl/mxv
	.byte	W06
	.byte		        40*falcon_mvl/mxv
	.byte	W06
	.byte		        39*falcon_mvl/mxv
	.byte	W06
	.byte		        38*falcon_mvl/mxv
	.byte	W06
	.byte		        37*falcon_mvl/mxv
	.byte	W06
	.byte		        36*falcon_mvl/mxv
	.byte	W06
	.byte		        35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W06
	.byte		        33*falcon_mvl/mxv
	.byte	W06
	.byte		        32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte	W05
	.byte		        31*falcon_mvl/mxv
	.byte	W06
	.byte		        30*falcon_mvl/mxv
	.byte	W06
	.byte		        29*falcon_mvl/mxv
	.byte	W06
	.byte		        28*falcon_mvl/mxv
	.byte	W06
	.byte		        27*falcon_mvl/mxv
	.byte	W06
	.byte		        26*falcon_mvl/mxv
	.byte	W06
	.byte		        25*falcon_mvl/mxv
	.byte	W06
	.byte		        24*falcon_mvl/mxv
	.byte	W06
	.byte		        23*falcon_mvl/mxv
	.byte	W06
	.byte		        22*falcon_mvl/mxv
	.byte	W07
	.byte		        21*falcon_mvl/mxv
	.byte	W06
	.byte		        20*falcon_mvl/mxv
	.byte	W06
	.byte		        19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte	W06
	.byte		        17*falcon_mvl/mxv
	.byte	W06
@ 086   ----------------------------------------
	.byte		        16*falcon_mvl/mxv
	.byte	W06
	.byte		        15*falcon_mvl/mxv
	.byte	W06
	.byte		        14*falcon_mvl/mxv
	.byte	W06
	.byte		        13*falcon_mvl/mxv
	.byte	W06
	.byte		        12*falcon_mvl/mxv
	.byte	W06
	.byte		        11*falcon_mvl/mxv
	.byte	W06
	.byte		        10*falcon_mvl/mxv
	.byte	W06
	.byte		        9*falcon_mvl/mxv
	.byte	W06
	.byte		        8*falcon_mvl/mxv
	.byte	W06
	.byte		        7*falcon_mvl/mxv
	.byte	W06
	.byte		        6*falcon_mvl/mxv
	.byte	W06
	.byte		        5*falcon_mvl/mxv
	.byte	W06
	.byte		        4*falcon_mvl/mxv
	.byte	W06
	.byte		        3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte	W06
	.byte		        1*falcon_mvl/mxv
	.byte	W06
@ 087   ----------------------------------------
	.byte		        0*falcon_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

falcon_3:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte	W03
	.byte	W09
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
falcon_3_005:
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		        An3 , v108
	.byte	W18
	.byte		N06   , An2 , v048
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        An2 , v040
	.byte	W06
	.byte		        En3 , v060
	.byte	W06
	.byte		N12   , An3 , v108
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 013   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 017   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 055   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 056   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	falcon_3_005
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		        En3 , v040
	.byte	W01
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , An2 , v060
	.byte	W01
	.byte		VOL   , 125*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , An3 , v080
	.byte	W01
	.byte		VOL   , 124*falcon_mvl/mxv
	.byte	W06
	.byte		        123*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , An3 , v108
	.byte	W01
	.byte		VOL   , 122*falcon_mvl/mxv
	.byte	W06
	.byte		        121*falcon_mvl/mxv
	.byte	W06
	.byte		        120*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , An2 , v048
	.byte	W01
	.byte		VOL   , 119*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , An3 , v080
	.byte	W01
	.byte		VOL   , 118*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , An2 , v040
	.byte	W01
	.byte		VOL   , 117*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , En3 , v060
	.byte	W01
	.byte		VOL   , 116*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , An3 , v108
	.byte	W01
	.byte		VOL   , 115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W06
	.byte		        113*falcon_mvl/mxv
	.byte	W06
	.byte		        112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W01
	.byte		VOL   , 111*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , En3 , v040
	.byte	W01
	.byte		VOL   , 110*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , An2 , v060
	.byte	W01
	.byte		VOL   , 109*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , An3 , v080
	.byte	W01
	.byte		VOL   , 108*falcon_mvl/mxv
	.byte	W06
	.byte		        107*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , An3 , v108
	.byte	W01
	.byte		VOL   , 106*falcon_mvl/mxv
	.byte	W07
	.byte		        105*falcon_mvl/mxv
	.byte	W06
	.byte		        104*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v048
	.byte	W02
	.byte		VOL   , 103*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An3 , v080
	.byte	W02
	.byte		VOL   , 102*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v040
	.byte	W02
	.byte		VOL   , 101*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , En3 , v060
	.byte	W02
	.byte		VOL   , 100*falcon_mvl/mxv
	.byte	W04
	.byte		N12   , An3 , v108
	.byte	W02
	.byte		VOL   , 99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W06
	.byte		        97*falcon_mvl/mxv
	.byte	W06
	.byte		        96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W02
	.byte		VOL   , 95*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , En3 , v040
	.byte	W02
	.byte		VOL   , 94*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v060
	.byte	W02
	.byte		VOL   , 93*falcon_mvl/mxv
	.byte	W04
	.byte		N12   , An3 , v080
	.byte	W02
	.byte		VOL   , 92*falcon_mvl/mxv
	.byte	W06
	.byte		        91*falcon_mvl/mxv
	.byte	W04
	.byte		N12   , An3 , v108
	.byte	W02
	.byte		VOL   , 90*falcon_mvl/mxv
	.byte	W06
	.byte		        89*falcon_mvl/mxv
	.byte	W06
	.byte		        88*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v048
	.byte	W02
	.byte		VOL   , 87*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An3 , v080
	.byte	W02
	.byte		VOL   , 86*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v040
	.byte	W02
	.byte		VOL   , 85*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , En3 , v060
	.byte	W03
	.byte		VOL   , 84*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , An3 , v108
	.byte	W03
	.byte		VOL   , 83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W06
	.byte		        81*falcon_mvl/mxv
	.byte	W06
	.byte		        80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W03
	.byte		VOL   , 79*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , En3 , v040
	.byte	W03
	.byte		VOL   , 78*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , An2 , v060
	.byte	W03
	.byte		VOL   , 77*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , An3 , v080
	.byte	W03
	.byte		VOL   , 76*falcon_mvl/mxv
	.byte	W06
	.byte		        75*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , An3 , v108
	.byte	W03
	.byte		VOL   , 74*falcon_mvl/mxv
	.byte	W06
	.byte		        73*falcon_mvl/mxv
	.byte	W06
	.byte		        72*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , An2 , v048
	.byte	W03
	.byte		VOL   , 71*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , An3 , v080
	.byte	W03
	.byte		VOL   , 70*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , An2 , v040
	.byte	W03
	.byte		VOL   , 69*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , En3 , v060
	.byte	W03
	.byte		VOL   , 68*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , An3 , v108
	.byte	W03
	.byte		VOL   , 67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W06
	.byte		        65*falcon_mvl/mxv
	.byte	W06
	.byte		        64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W04
	.byte		VOL   , 63*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , En3 , v040
	.byte	W04
	.byte		VOL   , 62*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , An2 , v060
	.byte	W04
	.byte		VOL   , 61*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , An3 , v080
	.byte	W04
	.byte		VOL   , 60*falcon_mvl/mxv
	.byte	W06
	.byte		        59*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , An3 , v108
	.byte	W04
	.byte		VOL   , 58*falcon_mvl/mxv
	.byte	W06
	.byte		        57*falcon_mvl/mxv
	.byte	W06
	.byte		        56*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , An2 , v048
	.byte	W04
	.byte		VOL   , 55*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , An3 , v080
	.byte	W04
	.byte		VOL   , 54*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , An2 , v040
	.byte	W04
	.byte		VOL   , 53*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , En3 , v060
	.byte	W04
	.byte		VOL   , 52*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , An3 , v108
	.byte	W04
	.byte		VOL   , 51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W06
	.byte		        49*falcon_mvl/mxv
	.byte	W06
	.byte		        48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W04
	.byte		VOL   , 47*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , En3 , v040
	.byte	W04
	.byte		VOL   , 46*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , An2 , v060
	.byte	W04
	.byte		VOL   , 45*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , An3 , v080
	.byte	W04
	.byte		VOL   , 44*falcon_mvl/mxv
	.byte	W06
	.byte		        43*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , An3 , v108
	.byte	W05
	.byte		VOL   , 42*falcon_mvl/mxv
	.byte	W06
	.byte		        41*falcon_mvl/mxv
	.byte	W06
	.byte		        40*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An2 , v048
	.byte	W05
	.byte		VOL   , 39*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An3 , v080
	.byte	W05
	.byte		VOL   , 38*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An2 , v040
	.byte	W05
	.byte		VOL   , 37*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , En3 , v060
	.byte	W05
	.byte		VOL   , 36*falcon_mvl/mxv
	.byte	W01
	.byte		N12   , An3 , v108
	.byte	W05
	.byte		VOL   , 35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W06
	.byte		        33*falcon_mvl/mxv
	.byte	W06
	.byte		        32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte		N06   , An2 , v080
	.byte	W05
	.byte		VOL   , 31*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , En3 , v040
	.byte	W05
	.byte		VOL   , 30*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An2 , v060
	.byte	W05
	.byte		VOL   , 29*falcon_mvl/mxv
	.byte	W01
	.byte		N12   , An3 , v080
	.byte	W05
	.byte		VOL   , 28*falcon_mvl/mxv
	.byte	W06
	.byte		        27*falcon_mvl/mxv
	.byte	W01
	.byte		N12   , An3 , v108
	.byte	W05
	.byte		VOL   , 26*falcon_mvl/mxv
	.byte	W06
	.byte		        25*falcon_mvl/mxv
	.byte	W06
	.byte		        24*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An2 , v048
	.byte	W05
	.byte		VOL   , 23*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An3 , v080
	.byte	W05
	.byte		VOL   , 22*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , An2 , v040
	.byte	W06
	.byte		VOL   , 21*falcon_mvl/mxv
	.byte		N06   , En3 , v060
	.byte	W06
	.byte		VOL   , 20*falcon_mvl/mxv
	.byte		N12   , An3 , v108
	.byte	W06
	.byte		VOL   , 19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte	W06
	.byte		        17*falcon_mvl/mxv
	.byte	W06
@ 086   ----------------------------------------
	.byte		        16*falcon_mvl/mxv
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		VOL   , 15*falcon_mvl/mxv
	.byte		N06   , En3 , v040
	.byte	W06
	.byte		VOL   , 14*falcon_mvl/mxv
	.byte		N06   , An2 , v060
	.byte	W06
	.byte		VOL   , 13*falcon_mvl/mxv
	.byte		N12   , An3 , v080
	.byte	W06
	.byte		VOL   , 12*falcon_mvl/mxv
	.byte	W06
	.byte		        11*falcon_mvl/mxv
	.byte		N12   , An3 , v108
	.byte	W06
	.byte		VOL   , 10*falcon_mvl/mxv
	.byte	W06
	.byte		        9*falcon_mvl/mxv
	.byte	W06
	.byte		        8*falcon_mvl/mxv
	.byte		N06   , An2 , v048
	.byte	W06
	.byte		VOL   , 7*falcon_mvl/mxv
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		VOL   , 6*falcon_mvl/mxv
	.byte		N06   , An2 , v040
	.byte	W06
	.byte		VOL   , 5*falcon_mvl/mxv
	.byte		N06   , En3 , v060
	.byte	W06
	.byte		VOL   , 4*falcon_mvl/mxv
	.byte		N12   , An3 , v108
	.byte	W06
	.byte		VOL   , 3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte	W06
	.byte		        1*falcon_mvl/mxv
	.byte	W06
@ 087   ----------------------------------------
	.byte		        0*falcon_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

falcon_4:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 41
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W03
	.byte	W03
	.byte	W36
	.byte		BEND  , c_v+0
	.byte	W48
@ 001   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , An3 , v120
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs3 , v096
	.byte		N96   , Bn3 , v120
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Gn3 , v096
	.byte		N96   , Cn4 , v120
	.byte	W96
@ 004   ----------------------------------------
	.byte		        An3 , v096
	.byte		N96   , Dn4 , v120
	.byte	W96
@ 005   ----------------------------------------
falcon_4_005:
	.byte		N96   , Cn3 , v096
	.byte		TIE   , An3 
	.byte		TIE   , En4 
	.byte	W96
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W72
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 007   ----------------------------------------
falcon_4_007:
	.byte		N96   , An2 , v096
	.byte		N48   , En3 
	.byte		N96   , Cn4 
	.byte	W48
	.byte		N48   , Fn3 
	.byte	W48
	.byte	PEND
@ 008   ----------------------------------------
falcon_4_008:
	.byte		N96   , Bn2 , v096
	.byte		N48   , Fs3 
	.byte		N96   , Dn4 
	.byte	W48
	.byte		N48   , Gs3 
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 010   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W48
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 011   ----------------------------------------
falcon_4_011:
	.byte		N48   , An2 , v096
	.byte		N48   , Fs3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Gs2 
	.byte		N48   , En3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
falcon_4_012:
	.byte		N96   , An2 , v096
	.byte		N96   , En3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 014   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W72
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 015   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 018   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W48
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 019   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_011
@ 020   ----------------------------------------
falcon_4_020:
	.byte		TIE   , An2 , v096
	.byte		TIE   , En3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
	.byte		        Cs4 
	.byte	W96
	.byte		EOT   , An2 
	.byte		        En3 
@ 022   ----------------------------------------
falcon_4_022:
	.byte		N96   , An3 , v096
	.byte		N96   , Cn4 
	.byte		N96   , En4 
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
falcon_4_023:
	.byte		N96   , Gn3 , v096
	.byte		N96   , Bn3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 025   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
@ 026   ----------------------------------------
falcon_4_026:
	.byte		N96   , Fn3 , v096
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 027   ----------------------------------------
falcon_4_027:
	.byte		N96   , Fn3 , v096
	.byte		N96   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Gn3 
	.byte		N96   , Bn3 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En3 
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 033   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_026
@ 035   ----------------------------------------
falcon_4_035:
	.byte		N96   , Fn3 , v096
	.byte		N96   , As3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 036   ----------------------------------------
falcon_4_036:
	.byte		N96   , Gn3 , v096
	.byte		N96   , As3 
	.byte		N96   , Ds4 
	.byte	W96
	.byte	PEND
@ 037   ----------------------------------------
falcon_4_037:
	.byte		N96   , Ds3 , v096
	.byte		N96   , As3 
	.byte		N96   , Ds4 
	.byte	W96
	.byte	PEND
@ 038   ----------------------------------------
falcon_4_038:
	.byte		TIE   , Dn3 , v096
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W96
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Fs3 
	.byte		        Dn4 
@ 040   ----------------------------------------
falcon_4_040:
	.byte		TIE   , Dn3 , v096
	.byte		TIE   , Gs3 
	.byte		TIE   , Dn4 
	.byte	W96
	.byte	PEND
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gs3 
	.byte		        Dn4 
@ 042   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 043   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W72
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_007
@ 045   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_008
@ 046   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 047   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W48
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 048   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_011
@ 049   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_012
@ 050   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 051   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W72
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_007
@ 053   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_005
@ 055   ----------------------------------------
	.byte		N96   , Bn2 , v096
	.byte	W48
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 056   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_011
@ 057   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_020
@ 058   ----------------------------------------
	.byte		N96   , Cs4 , v096
	.byte	W96
	.byte		EOT   , An2 
	.byte		        En3 
@ 059   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_022
@ 060   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 061   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 062   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_026
@ 064   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_027
@ 065   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , Gn3 
	.byte		N96   , Bn3 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        En3 
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_022
@ 068   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 069   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_023
@ 070   ----------------------------------------
	.byte		N96   , En3 , v096
	.byte		N96   , An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_026
@ 072   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_035
@ 073   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_036
@ 074   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_037
@ 075   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_038
@ 076   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Fs3 
	.byte		        Dn4 
@ 077   ----------------------------------------
	.byte	PATT
	 .word	falcon_4_040
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gs3 
	.byte		        Dn4 
@ 079   ----------------------------------------
	.byte		N96   , Cn3 , v096
	.byte		TIE   , An3 
	.byte		TIE   , En4 
	.byte	W07
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W06
	.byte		        125*falcon_mvl/mxv
	.byte	W06
	.byte		        124*falcon_mvl/mxv
	.byte	W06
	.byte		        123*falcon_mvl/mxv
	.byte	W06
	.byte		        122*falcon_mvl/mxv
	.byte	W06
	.byte		        121*falcon_mvl/mxv
	.byte	W06
	.byte		        120*falcon_mvl/mxv
	.byte	W06
	.byte		        119*falcon_mvl/mxv
	.byte	W06
	.byte		        118*falcon_mvl/mxv
	.byte	W06
	.byte		        117*falcon_mvl/mxv
	.byte	W06
	.byte		        116*falcon_mvl/mxv
	.byte	W06
	.byte		        115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W06
	.byte		        113*falcon_mvl/mxv
	.byte	W06
	.byte		        112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W01
	.byte		VOL   , 111*falcon_mvl/mxv
	.byte	W06
	.byte		        110*falcon_mvl/mxv
	.byte	W06
	.byte		        109*falcon_mvl/mxv
	.byte	W06
	.byte		        108*falcon_mvl/mxv
	.byte	W06
	.byte		        107*falcon_mvl/mxv
	.byte	W06
	.byte		        106*falcon_mvl/mxv
	.byte	W07
	.byte		        105*falcon_mvl/mxv
	.byte	W06
	.byte		        104*falcon_mvl/mxv
	.byte	W06
	.byte		        103*falcon_mvl/mxv
	.byte	W06
	.byte		        102*falcon_mvl/mxv
	.byte	W06
	.byte		        101*falcon_mvl/mxv
	.byte	W06
	.byte		        100*falcon_mvl/mxv
	.byte	W04
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte	W02
	.byte		VOL   , 99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W06
	.byte		        97*falcon_mvl/mxv
	.byte	W06
	.byte		        96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte		N96   , An2 
	.byte		N48   , En3 
	.byte		N96   , Cn4 
	.byte	W02
	.byte		VOL   , 95*falcon_mvl/mxv
	.byte	W06
	.byte		        94*falcon_mvl/mxv
	.byte	W06
	.byte		        93*falcon_mvl/mxv
	.byte	W06
	.byte		        92*falcon_mvl/mxv
	.byte	W06
	.byte		        91*falcon_mvl/mxv
	.byte	W06
	.byte		        90*falcon_mvl/mxv
	.byte	W06
	.byte		        89*falcon_mvl/mxv
	.byte	W06
	.byte		        88*falcon_mvl/mxv
	.byte	W04
	.byte		N48   , Fn3 
	.byte	W02
	.byte		VOL   , 87*falcon_mvl/mxv
	.byte	W06
	.byte		        86*falcon_mvl/mxv
	.byte	W06
	.byte		        85*falcon_mvl/mxv
	.byte	W07
	.byte		        84*falcon_mvl/mxv
	.byte	W06
	.byte		        83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W06
	.byte		        81*falcon_mvl/mxv
	.byte	W06
	.byte		        80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte		N96   , Bn2 
	.byte		N48   , Fs3 
	.byte		N96   , Dn4 
	.byte	W03
	.byte		VOL   , 79*falcon_mvl/mxv
	.byte	W06
	.byte		        78*falcon_mvl/mxv
	.byte	W06
	.byte		        77*falcon_mvl/mxv
	.byte	W06
	.byte		        76*falcon_mvl/mxv
	.byte	W06
	.byte		        75*falcon_mvl/mxv
	.byte	W06
	.byte		        74*falcon_mvl/mxv
	.byte	W06
	.byte		        73*falcon_mvl/mxv
	.byte	W06
	.byte		        72*falcon_mvl/mxv
	.byte	W03
	.byte		N48   , Gs3 
	.byte	W03
	.byte		VOL   , 71*falcon_mvl/mxv
	.byte	W06
	.byte		        70*falcon_mvl/mxv
	.byte	W06
	.byte		        69*falcon_mvl/mxv
	.byte	W06
	.byte		        68*falcon_mvl/mxv
	.byte	W06
	.byte		        67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W06
	.byte		        65*falcon_mvl/mxv
	.byte	W06
	.byte		        64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		TIE   , An3 
	.byte		TIE   , En4 
	.byte	W04
	.byte		VOL   , 63*falcon_mvl/mxv
	.byte	W06
	.byte		        62*falcon_mvl/mxv
	.byte	W06
	.byte		        61*falcon_mvl/mxv
	.byte	W06
	.byte		        60*falcon_mvl/mxv
	.byte	W06
	.byte		        59*falcon_mvl/mxv
	.byte	W06
	.byte		        58*falcon_mvl/mxv
	.byte	W06
	.byte		        57*falcon_mvl/mxv
	.byte	W06
	.byte		        56*falcon_mvl/mxv
	.byte	W06
	.byte		        55*falcon_mvl/mxv
	.byte	W06
	.byte		        54*falcon_mvl/mxv
	.byte	W06
	.byte		        53*falcon_mvl/mxv
	.byte	W06
	.byte		        52*falcon_mvl/mxv
	.byte	W06
	.byte		        51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W06
	.byte		        49*falcon_mvl/mxv
	.byte	W06
	.byte		        48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W04
	.byte		VOL   , 47*falcon_mvl/mxv
	.byte	W06
	.byte		        46*falcon_mvl/mxv
	.byte	W06
	.byte		        45*falcon_mvl/mxv
	.byte	W06
	.byte		        44*falcon_mvl/mxv
	.byte	W06
	.byte		        43*falcon_mvl/mxv
	.byte	W07
	.byte		        42*falcon_mvl/mxv
	.byte	W06
	.byte		        41*falcon_mvl/mxv
	.byte	W06
	.byte		        40*falcon_mvl/mxv
	.byte	W01
	.byte		EOT   , An3 
	.byte		        En4 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte	W05
	.byte		VOL   , 39*falcon_mvl/mxv
	.byte	W06
	.byte		        38*falcon_mvl/mxv
	.byte	W06
	.byte		        37*falcon_mvl/mxv
	.byte	W06
	.byte		        36*falcon_mvl/mxv
	.byte	W06
	.byte		        35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W06
	.byte		        33*falcon_mvl/mxv
	.byte	W06
	.byte		        32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte		N48   , An2 
	.byte		N48   , Fs3 
	.byte		N48   , Cn4 
	.byte	W05
	.byte		VOL   , 31*falcon_mvl/mxv
	.byte	W06
	.byte		        30*falcon_mvl/mxv
	.byte	W06
	.byte		        29*falcon_mvl/mxv
	.byte	W06
	.byte		        28*falcon_mvl/mxv
	.byte	W06
	.byte		        27*falcon_mvl/mxv
	.byte	W06
	.byte		        26*falcon_mvl/mxv
	.byte	W06
	.byte		        25*falcon_mvl/mxv
	.byte	W06
	.byte		        24*falcon_mvl/mxv
	.byte	W01
	.byte		N48   , Gs2 
	.byte		N48   , En3 
	.byte		N48   , Dn4 
	.byte	W05
	.byte		VOL   , 23*falcon_mvl/mxv
	.byte	W06
	.byte		        22*falcon_mvl/mxv
	.byte	W07
	.byte		        21*falcon_mvl/mxv
	.byte	W06
	.byte		        20*falcon_mvl/mxv
	.byte	W06
	.byte		        19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte	W06
	.byte		        17*falcon_mvl/mxv
	.byte	W06
@ 086   ----------------------------------------
	.byte		        16*falcon_mvl/mxv
	.byte		N96   , An2 
	.byte		N96   , En3 
	.byte		N96   , Cn4 
	.byte	W06
	.byte		VOL   , 15*falcon_mvl/mxv
	.byte	W06
	.byte		        14*falcon_mvl/mxv
	.byte	W06
	.byte		        13*falcon_mvl/mxv
	.byte	W06
	.byte		        12*falcon_mvl/mxv
	.byte	W06
	.byte		        11*falcon_mvl/mxv
	.byte	W06
	.byte		        10*falcon_mvl/mxv
	.byte	W06
	.byte		        9*falcon_mvl/mxv
	.byte	W06
	.byte		        8*falcon_mvl/mxv
	.byte	W06
	.byte		        7*falcon_mvl/mxv
	.byte	W06
	.byte		        6*falcon_mvl/mxv
	.byte	W06
	.byte		        5*falcon_mvl/mxv
	.byte	W06
	.byte		        4*falcon_mvl/mxv
	.byte	W06
	.byte		        3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte	W06
	.byte		        1*falcon_mvl/mxv
	.byte	W06
@ 087   ----------------------------------------
	.byte		        0*falcon_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

falcon_5:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte	W03
	.byte	W36
	.byte		BEND  , c_v+0
	.byte	W48
@ 001   ----------------------------------------
	.byte		N84   , An1 , v127
	.byte	W84
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N84   
	.byte	W84
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N72   , An0 
	.byte	W72
	.byte		BEND  , c_v+63
	.byte		N24   , Dn1 
	.byte	W01
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-59
	.byte	W01
@ 005   ----------------------------------------
falcon_5_005:
	.byte		BEND  , c_v+0
	.byte		N36   , An1 , v127
	.byte	W36
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W36
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
falcon_5_006:
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		BEND  , c_v+63
	.byte		N24   , Cn1 
	.byte	W12
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 007   ----------------------------------------
falcon_5_007:
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N12   , Ds1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
falcon_5_008:
	.byte		N66   , En1 , v127
	.byte	W66
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
falcon_5_009:
	.byte		N36   , An1 , v127
	.byte	W36
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W36
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
falcon_5_010:
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N24   , Ds1 
	.byte	W09
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N18   , En1 
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
falcon_5_011:
	.byte		N24   , Dn2 , v127
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N24   , Ds1 
	.byte	W09
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N18   , En1 
	.byte	W18
	.byte		        Bn1 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
falcon_5_012:
	.byte		N72   , An1 , v127
	.byte	W72
	.byte		BEND  , c_v+63
	.byte		N24   , Dn2 
	.byte	W01
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_011
@ 020   ----------------------------------------
falcon_5_020:
	.byte		N72   , An1 , v127
	.byte	W72
	.byte		N24   , En1 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 022   ----------------------------------------
falcon_5_022:
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
falcon_5_023:
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 024   ----------------------------------------
falcon_5_024:
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
falcon_5_025:
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
falcon_5_026:
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
falcon_5_027:
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
falcon_5_028:
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
falcon_5_029:
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_026
@ 035   ----------------------------------------
falcon_5_035:
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 036   ----------------------------------------
falcon_5_036:
	.byte		N12   , Ds1 , v127
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
falcon_5_037:
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 039   ----------------------------------------
falcon_5_039:
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 041   ----------------------------------------
falcon_5_041:
	.byte		BEND  , c_v-64
	.byte		N24   , En1 , v127
	.byte	W09
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N12   , En2 
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N36   , Fs1 
	.byte	W21
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W36
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 043   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_006
@ 044   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_007
@ 045   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_008
@ 046   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_009
@ 047   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_011
@ 049   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_012
@ 050   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_006
@ 052   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_007
@ 053   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_010
@ 056   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_011
@ 057   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_020
@ 058   ----------------------------------------
	.byte		N96   , An0 , v127
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_022
@ 060   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_023
@ 061   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 062   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_025
@ 063   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_026
@ 064   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_027
@ 065   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_029
@ 067   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_022
@ 068   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_023
@ 069   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 070   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_025
@ 071   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_026
@ 072   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_035
@ 073   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_036
@ 074   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_037
@ 075   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 076   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_039
@ 077   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_024
@ 078   ----------------------------------------
	.byte	PATT
	 .word	falcon_5_041
@ 079   ----------------------------------------
	.byte		N36   , An1 , v127
	.byte	W07
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W06
	.byte		        125*falcon_mvl/mxv
	.byte	W06
	.byte		        124*falcon_mvl/mxv
	.byte	W06
	.byte		        123*falcon_mvl/mxv
	.byte	W06
	.byte		        122*falcon_mvl/mxv
	.byte	W05
	.byte		N12   , Gn1 
	.byte	W01
	.byte		VOL   , 121*falcon_mvl/mxv
	.byte	W06
	.byte		        120*falcon_mvl/mxv
	.byte	W05
	.byte		N36   , Fn1 
	.byte	W01
	.byte		VOL   , 119*falcon_mvl/mxv
	.byte	W06
	.byte		        118*falcon_mvl/mxv
	.byte	W06
	.byte		        117*falcon_mvl/mxv
	.byte	W06
	.byte		        116*falcon_mvl/mxv
	.byte	W06
	.byte		        115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Cn1 
	.byte	W01
	.byte		VOL   , 113*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Dn1 
	.byte	W01
	.byte		VOL   , 112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte		N24   , En1 
	.byte	W01
	.byte		VOL   , 111*falcon_mvl/mxv
	.byte	W06
	.byte		        110*falcon_mvl/mxv
	.byte	W06
	.byte		        109*falcon_mvl/mxv
	.byte	W06
	.byte		        108*falcon_mvl/mxv
	.byte	W05
	.byte		BEND  , c_v+63
	.byte		N24   , Cn1 
	.byte	W01
	.byte		VOL   , 107*falcon_mvl/mxv
	.byte	W06
	.byte		        106*falcon_mvl/mxv
	.byte	W05
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 105*falcon_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		VOL   , 104*falcon_mvl/mxv
	.byte	W04
	.byte		N48   
	.byte	W02
	.byte		VOL   , 103*falcon_mvl/mxv
	.byte	W06
	.byte		        102*falcon_mvl/mxv
	.byte	W06
	.byte		        101*falcon_mvl/mxv
	.byte	W06
	.byte		        100*falcon_mvl/mxv
	.byte	W06
	.byte		        99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W06
	.byte		        97*falcon_mvl/mxv
	.byte	W06
	.byte		        96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte		N36   , Fn1 
	.byte	W02
	.byte		VOL   , 95*falcon_mvl/mxv
	.byte	W06
	.byte		        94*falcon_mvl/mxv
	.byte	W06
	.byte		        93*falcon_mvl/mxv
	.byte	W06
	.byte		        92*falcon_mvl/mxv
	.byte	W06
	.byte		        91*falcon_mvl/mxv
	.byte	W06
	.byte		        90*falcon_mvl/mxv
	.byte	W04
	.byte		N12   
	.byte	W02
	.byte		VOL   , 89*falcon_mvl/mxv
	.byte	W06
	.byte		        88*falcon_mvl/mxv
	.byte	W04
	.byte		N18   , Dn1 
	.byte	W02
	.byte		VOL   , 87*falcon_mvl/mxv
	.byte	W06
	.byte		        86*falcon_mvl/mxv
	.byte	W06
	.byte		        85*falcon_mvl/mxv
	.byte	W04
	.byte		N18   , Dn2 
	.byte	W03
	.byte		VOL   , 84*falcon_mvl/mxv
	.byte	W06
	.byte		        83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , Ds1 
	.byte	W03
	.byte		VOL   , 81*falcon_mvl/mxv
	.byte	W06
	.byte		        80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte		N66   , En1 
	.byte	W03
	.byte		VOL   , 79*falcon_mvl/mxv
	.byte	W06
	.byte		        78*falcon_mvl/mxv
	.byte	W06
	.byte		        77*falcon_mvl/mxv
	.byte	W06
	.byte		        76*falcon_mvl/mxv
	.byte	W06
	.byte		        75*falcon_mvl/mxv
	.byte	W06
	.byte		        74*falcon_mvl/mxv
	.byte	W06
	.byte		        73*falcon_mvl/mxv
	.byte	W06
	.byte		        72*falcon_mvl/mxv
	.byte	W06
	.byte		        71*falcon_mvl/mxv
	.byte	W06
	.byte		        70*falcon_mvl/mxv
	.byte	W06
	.byte		        69*falcon_mvl/mxv
	.byte	W03
	.byte		N18   , Fs1 
	.byte	W03
	.byte		VOL   , 68*falcon_mvl/mxv
	.byte	W06
	.byte		        67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W03
	.byte		N12   , Gs1 
	.byte	W03
	.byte		VOL   , 65*falcon_mvl/mxv
	.byte	W06
	.byte		        64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte		N36   , An1 
	.byte	W04
	.byte		VOL   , 63*falcon_mvl/mxv
	.byte	W06
	.byte		        62*falcon_mvl/mxv
	.byte	W06
	.byte		        61*falcon_mvl/mxv
	.byte	W06
	.byte		        60*falcon_mvl/mxv
	.byte	W06
	.byte		        59*falcon_mvl/mxv
	.byte	W06
	.byte		        58*falcon_mvl/mxv
	.byte	W02
	.byte		N12   , Gn1 
	.byte	W04
	.byte		VOL   , 57*falcon_mvl/mxv
	.byte	W06
	.byte		        56*falcon_mvl/mxv
	.byte	W02
	.byte		N36   , Fn1 
	.byte	W04
	.byte		VOL   , 55*falcon_mvl/mxv
	.byte	W06
	.byte		        54*falcon_mvl/mxv
	.byte	W06
	.byte		        53*falcon_mvl/mxv
	.byte	W06
	.byte		        52*falcon_mvl/mxv
	.byte	W06
	.byte		        51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , En1 
	.byte	W04
	.byte		VOL   , 49*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Fn1 
	.byte	W04
	.byte		VOL   , 48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte		N24   , Gn1 
	.byte	W04
	.byte		VOL   , 47*falcon_mvl/mxv
	.byte	W06
	.byte		        46*falcon_mvl/mxv
	.byte	W06
	.byte		        45*falcon_mvl/mxv
	.byte	W06
	.byte		        44*falcon_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-32
	.byte		N24   , Ds1 
	.byte	W04
	.byte		VOL   , 43*falcon_mvl/mxv
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		VOL   , 42*falcon_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		VOL   , 41*falcon_mvl/mxv
	.byte	W06
	.byte		        40*falcon_mvl/mxv
	.byte	W01
	.byte		N18   , En1 
	.byte	W05
	.byte		VOL   , 39*falcon_mvl/mxv
	.byte	W06
	.byte		        38*falcon_mvl/mxv
	.byte	W06
	.byte		        37*falcon_mvl/mxv
	.byte	W01
	.byte		N18   , En2 
	.byte	W05
	.byte		VOL   , 36*falcon_mvl/mxv
	.byte	W06
	.byte		        35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W01
	.byte		N12   , Ds2 
	.byte	W05
	.byte		VOL   , 33*falcon_mvl/mxv
	.byte	W06
	.byte		        32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte		N24   , Dn2 
	.byte	W05
	.byte		VOL   , 31*falcon_mvl/mxv
	.byte	W06
	.byte		        30*falcon_mvl/mxv
	.byte	W06
	.byte		        29*falcon_mvl/mxv
	.byte	W06
	.byte		        28*falcon_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-32
	.byte		N24   , Ds1 
	.byte	W05
	.byte		VOL   , 27*falcon_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		VOL   , 26*falcon_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		VOL   , 25*falcon_mvl/mxv
	.byte	W06
	.byte		        24*falcon_mvl/mxv
	.byte	W01
	.byte		N18   , En1 
	.byte	W05
	.byte		VOL   , 23*falcon_mvl/mxv
	.byte	W06
	.byte		        22*falcon_mvl/mxv
	.byte	W07
	.byte		        21*falcon_mvl/mxv
	.byte		N18   , Bn1 
	.byte	W06
	.byte		VOL   , 20*falcon_mvl/mxv
	.byte	W06
	.byte		        19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte		N12   , Gs1 
	.byte	W06
	.byte		VOL   , 17*falcon_mvl/mxv
	.byte	W06
@ 086   ----------------------------------------
	.byte		        16*falcon_mvl/mxv
	.byte		N72   , An1 
	.byte	W06
	.byte		VOL   , 15*falcon_mvl/mxv
	.byte	W06
	.byte		        14*falcon_mvl/mxv
	.byte	W06
	.byte		        13*falcon_mvl/mxv
	.byte	W06
	.byte		        12*falcon_mvl/mxv
	.byte	W06
	.byte		        11*falcon_mvl/mxv
	.byte	W06
	.byte		        10*falcon_mvl/mxv
	.byte	W06
	.byte		        9*falcon_mvl/mxv
	.byte	W06
	.byte		        8*falcon_mvl/mxv
	.byte	W06
	.byte		        7*falcon_mvl/mxv
	.byte	W06
	.byte		        6*falcon_mvl/mxv
	.byte	W06
	.byte		        5*falcon_mvl/mxv
	.byte	W06
	.byte		        4*falcon_mvl/mxv
	.byte	W06
	.byte		        3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte	W06
	.byte		        1*falcon_mvl/mxv
	.byte	W06
@ 087   ----------------------------------------
	.byte		        0*falcon_mvl/mxv
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

falcon_6:
	.byte	KEYSH , falcon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*falcon_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W03
	.byte	W03
	.byte	W84
@ 001   ----------------------------------------
	.byte		N12   , As1 , v048
	.byte	W12
	.byte		N06   , Gs1 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v052
	.byte	W12
	.byte		N06   , Gs1 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v056
	.byte	W12
	.byte		N06   , Gs1 , v040
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v060
	.byte	W12
	.byte		N06   , Gs1 , v040
	.byte	W06
	.byte		N06   
	.byte	W06
@ 002   ----------------------------------------
	.byte		N12   , As1 , v060
	.byte	W12
	.byte		N06   , Gs1 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v064
	.byte	W12
	.byte		N06   , Gs1 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Gs1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		N06   , Gs1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
@ 003   ----------------------------------------
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		N06   , Gs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N06   , Gs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v080
	.byte	W12
	.byte		N06   , Gs1 , v056
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v084
	.byte	W12
	.byte		N06   , Gs1 , v056
	.byte	W06
	.byte		N06   
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , As1 , v084
	.byte	W12
	.byte		N06   , Gs1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v088
	.byte	W12
	.byte		N06   , Gs1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 , v092
	.byte	W12
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
falcon_6_005:
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W12
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		        Gs1 , v048
	.byte	W04
	.byte		        Gs1 , v032
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		        Gs1 , v032
	.byte	W06
	.byte		        Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 013   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 017   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 022   ----------------------------------------
falcon_6_022:
	.byte		N06   , Gs1 , v080
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		N06   , Gs1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N12   , As1 , v096
	.byte	W12
	.byte		N06   , Gs1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v064
	.byte	W04
	.byte		        Gs1 , v048
	.byte	W04
	.byte		N06   , Gs1 , v080
	.byte	W06
	.byte		        Gs1 , v048
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		N06   , Gs1 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 026   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 028   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 029   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 030   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 032   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 033   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 034   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 036   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 037   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 038   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 040   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 041   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 042   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 055   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 056   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_005
@ 059   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 060   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 061   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 062   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 064   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 065   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 066   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 067   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 068   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 069   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 070   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 072   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 073   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 074   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 075   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 076   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 077   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 078   ----------------------------------------
	.byte	PATT
	 .word	falcon_6_022
@ 079   ----------------------------------------
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v112
	.byte	W07
	.byte		VOL   , 126*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v032
	.byte	W01
	.byte		VOL   , 125*falcon_mvl/mxv
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		VOL   , 124*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W01
	.byte		VOL   , 123*falcon_mvl/mxv
	.byte	W06
	.byte		        122*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v032
	.byte	W01
	.byte		VOL   , 121*falcon_mvl/mxv
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		VOL   , 120*falcon_mvl/mxv
	.byte	W05
	.byte		N04   , Gs1 , v064
	.byte	W01
	.byte		VOL   , 119*falcon_mvl/mxv
	.byte	W03
	.byte		N04   , Gs1 , v048
	.byte	W03
	.byte		VOL   , 118*falcon_mvl/mxv
	.byte	W01
	.byte		N04   , Gs1 , v032
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte	W01
	.byte		VOL   , 117*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v032
	.byte	W01
	.byte		VOL   , 116*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W01
	.byte		VOL   , 115*falcon_mvl/mxv
	.byte	W06
	.byte		        114*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v064
	.byte	W01
	.byte		VOL   , 113*falcon_mvl/mxv
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		VOL   , 112*falcon_mvl/mxv
	.byte	W05
@ 080   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W01
	.byte		VOL   , 111*falcon_mvl/mxv
	.byte	W06
	.byte		        110*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v032
	.byte	W01
	.byte		VOL   , 109*falcon_mvl/mxv
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		VOL   , 108*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W01
	.byte		VOL   , 107*falcon_mvl/mxv
	.byte	W06
	.byte		        106*falcon_mvl/mxv
	.byte	W05
	.byte		N06   , Gs1 , v032
	.byte	W02
	.byte		VOL   , 105*falcon_mvl/mxv
	.byte	W04
	.byte		N06   
	.byte	W02
	.byte		VOL   , 104*falcon_mvl/mxv
	.byte	W04
	.byte		N04   , Gs1 , v064
	.byte	W02
	.byte		VOL   , 103*falcon_mvl/mxv
	.byte	W02
	.byte		N04   , Gs1 , v048
	.byte	W04
	.byte		VOL   , 102*falcon_mvl/mxv
	.byte		N04   , Gs1 , v032
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte	W02
	.byte		VOL   , 101*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v032
	.byte	W02
	.byte		VOL   , 100*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W02
	.byte		VOL   , 99*falcon_mvl/mxv
	.byte	W06
	.byte		        98*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte	W02
	.byte		VOL   , 97*falcon_mvl/mxv
	.byte	W04
	.byte		N06   
	.byte	W02
	.byte		VOL   , 96*falcon_mvl/mxv
	.byte	W04
@ 081   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W02
	.byte		VOL   , 95*falcon_mvl/mxv
	.byte	W06
	.byte		        94*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v032
	.byte	W02
	.byte		VOL   , 93*falcon_mvl/mxv
	.byte	W04
	.byte		N06   
	.byte	W02
	.byte		VOL   , 92*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W02
	.byte		VOL   , 91*falcon_mvl/mxv
	.byte	W06
	.byte		        90*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v032
	.byte	W02
	.byte		VOL   , 89*falcon_mvl/mxv
	.byte	W04
	.byte		N06   
	.byte	W02
	.byte		VOL   , 88*falcon_mvl/mxv
	.byte	W04
	.byte		N04   , Gs1 , v064
	.byte	W02
	.byte		VOL   , 87*falcon_mvl/mxv
	.byte	W02
	.byte		N04   , Gs1 , v048
	.byte	W04
	.byte		VOL   , 86*falcon_mvl/mxv
	.byte		N04   , Gs1 , v032
	.byte	W04
	.byte		N06   , Gs1 , v064
	.byte	W02
	.byte		VOL   , 85*falcon_mvl/mxv
	.byte	W04
	.byte		N06   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 84*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W03
	.byte		VOL   , 83*falcon_mvl/mxv
	.byte	W06
	.byte		        82*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte	W03
	.byte		VOL   , 81*falcon_mvl/mxv
	.byte	W03
	.byte		N06   
	.byte	W03
	.byte		VOL   , 80*falcon_mvl/mxv
	.byte	W03
@ 082   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W03
	.byte		VOL   , 79*falcon_mvl/mxv
	.byte	W06
	.byte		        78*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 77*falcon_mvl/mxv
	.byte	W03
	.byte		N06   
	.byte	W03
	.byte		VOL   , 76*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W03
	.byte		VOL   , 75*falcon_mvl/mxv
	.byte	W06
	.byte		        74*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 73*falcon_mvl/mxv
	.byte	W03
	.byte		N06   
	.byte	W03
	.byte		VOL   , 72*falcon_mvl/mxv
	.byte	W03
	.byte		N04   , Gs1 , v064
	.byte	W03
	.byte		VOL   , 71*falcon_mvl/mxv
	.byte	W01
	.byte		N04   , Gs1 , v048
	.byte	W04
	.byte		        Gs1 , v032
	.byte	W01
	.byte		VOL   , 70*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte	W03
	.byte		VOL   , 69*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 68*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W03
	.byte		VOL   , 67*falcon_mvl/mxv
	.byte	W06
	.byte		        66*falcon_mvl/mxv
	.byte	W03
	.byte		N06   , Gs1 , v064
	.byte	W03
	.byte		VOL   , 65*falcon_mvl/mxv
	.byte	W03
	.byte		N06   
	.byte	W03
	.byte		VOL   , 64*falcon_mvl/mxv
	.byte	W03
@ 083   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W04
	.byte		VOL   , 63*falcon_mvl/mxv
	.byte	W06
	.byte		        62*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v032
	.byte	W04
	.byte		VOL   , 61*falcon_mvl/mxv
	.byte	W02
	.byte		N06   
	.byte	W04
	.byte		VOL   , 60*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W04
	.byte		VOL   , 59*falcon_mvl/mxv
	.byte	W06
	.byte		        58*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v032
	.byte	W04
	.byte		VOL   , 57*falcon_mvl/mxv
	.byte	W02
	.byte		N06   
	.byte	W04
	.byte		VOL   , 56*falcon_mvl/mxv
	.byte	W02
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		VOL   , 55*falcon_mvl/mxv
	.byte		N04   , Gs1 , v048
	.byte	W04
	.byte		        Gs1 , v032
	.byte	W02
	.byte		VOL   , 54*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v064
	.byte	W04
	.byte		VOL   , 53*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v032
	.byte	W04
	.byte		VOL   , 52*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W04
	.byte		VOL   , 51*falcon_mvl/mxv
	.byte	W06
	.byte		        50*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v064
	.byte	W04
	.byte		VOL   , 49*falcon_mvl/mxv
	.byte	W02
	.byte		N06   
	.byte	W04
	.byte		VOL   , 48*falcon_mvl/mxv
	.byte	W02
@ 084   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W04
	.byte		VOL   , 47*falcon_mvl/mxv
	.byte	W06
	.byte		        46*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v032
	.byte	W04
	.byte		VOL   , 45*falcon_mvl/mxv
	.byte	W02
	.byte		N06   
	.byte	W04
	.byte		VOL   , 44*falcon_mvl/mxv
	.byte	W02
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W04
	.byte		VOL   , 43*falcon_mvl/mxv
	.byte	W07
	.byte		        42*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte	W05
	.byte		VOL   , 41*falcon_mvl/mxv
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		VOL   , 40*falcon_mvl/mxv
	.byte	W01
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		        Gs1 , v048
	.byte	W01
	.byte		VOL   , 39*falcon_mvl/mxv
	.byte	W03
	.byte		N04   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 38*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v064
	.byte	W05
	.byte		VOL   , 37*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte	W05
	.byte		VOL   , 36*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W05
	.byte		VOL   , 35*falcon_mvl/mxv
	.byte	W06
	.byte		        34*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v064
	.byte	W05
	.byte		VOL   , 33*falcon_mvl/mxv
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		VOL   , 32*falcon_mvl/mxv
	.byte	W01
@ 085   ----------------------------------------
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W05
	.byte		VOL   , 31*falcon_mvl/mxv
	.byte	W06
	.byte		        30*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte	W05
	.byte		VOL   , 29*falcon_mvl/mxv
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		VOL   , 28*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W05
	.byte		VOL   , 27*falcon_mvl/mxv
	.byte	W06
	.byte		        26*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte	W05
	.byte		VOL   , 25*falcon_mvl/mxv
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		VOL   , 24*falcon_mvl/mxv
	.byte	W01
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		        Gs1 , v048
	.byte	W01
	.byte		VOL   , 23*falcon_mvl/mxv
	.byte	W03
	.byte		N04   , Gs1 , v032
	.byte	W03
	.byte		VOL   , 22*falcon_mvl/mxv
	.byte	W01
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		VOL   , 21*falcon_mvl/mxv
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		VOL   , 20*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W06
	.byte		VOL   , 19*falcon_mvl/mxv
	.byte	W06
	.byte		        18*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		VOL   , 17*falcon_mvl/mxv
	.byte		N06   
	.byte	W06
@ 086   ----------------------------------------
	.byte		VOL   , 16*falcon_mvl/mxv
	.byte		N06   
	.byte		N12   , As1 , v112
	.byte	W06
	.byte		VOL   , 15*falcon_mvl/mxv
	.byte	W06
	.byte		        14*falcon_mvl/mxv
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		VOL   , 13*falcon_mvl/mxv
	.byte		N06   
	.byte	W06
	.byte		VOL   , 12*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v096
	.byte	W06
	.byte		VOL   , 11*falcon_mvl/mxv
	.byte	W06
	.byte		        10*falcon_mvl/mxv
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		VOL   , 9*falcon_mvl/mxv
	.byte		N06   
	.byte	W06
	.byte		VOL   , 8*falcon_mvl/mxv
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		        Gs1 , v048
	.byte	W02
	.byte		VOL   , 7*falcon_mvl/mxv
	.byte	W02
	.byte		N04   , Gs1 , v032
	.byte	W04
	.byte		VOL   , 6*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		VOL   , 5*falcon_mvl/mxv
	.byte		N06   , Gs1 , v032
	.byte	W06
	.byte		VOL   , 4*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte		N12   , As1 , v127
	.byte	W06
	.byte		VOL   , 3*falcon_mvl/mxv
	.byte	W06
	.byte		        2*falcon_mvl/mxv
	.byte		N06   , Gs1 , v064
	.byte	W06
	.byte		VOL   , 1*falcon_mvl/mxv
	.byte		N06   
	.byte	W06
@ 087   ----------------------------------------
	.byte		VOL   , 0*falcon_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

falcon:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	falcon_pri	@ Priority
	.byte	falcon_rev	@ Reverb.

	.word	falcon_grp

	.word	falcon_1
	.word	falcon_2
	.word	falcon_3
	.word	falcon_4
	.word	falcon_5
	.word	falcon_6

	.end
