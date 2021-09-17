	.include "MPlayDef.s"

	.equ	orasSoaringDayPiano_FINAL_grp, voicegroup000
	.equ	orasSoaringDayPiano_FINAL_pri, 0
	.equ	orasSoaringDayPiano_FINAL_rev, 0
	.equ	orasSoaringDayPiano_FINAL_mvl, 127
	.equ	orasSoaringDayPiano_FINAL_key, 0
	.equ	orasSoaringDayPiano_FINAL_tbs, 1
	.equ	orasSoaringDayPiano_FINAL_exg, 0
	.equ	orasSoaringDayPiano_FINAL_cmp, 1

	.section .rodata
	.global	orasSoaringDayPiano_FINAL
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

orasSoaringDayPiano_FINAL_1:
	.byte	KEYSH , orasSoaringDayPiano_FINAL_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 148*orasSoaringDayPiano_FINAL_tbs/2
	.byte		VOICE , 3
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		VOL   , 85*orasSoaringDayPiano_FINAL_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N22   , An2 , v072
	.byte		N22   , Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        En3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N22   , An3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N68   , An2 
	.byte		N68   , Cs3 
	.byte		N68   , En3 
	.byte	W72
	.byte		N22   , Cs3 
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N90   , Cn3 
	.byte		N90   , En3 
	.byte		N90   , An3 
	.byte	W96
	.byte	W12
	.byte		N05   , An2 , v088
	.byte		N05   , Bn2 
	.byte		N05   , En3 
	.byte	W06
	.byte		        An2 
	.byte		N05   , Bn2 
	.byte		N05   , En3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N11   , An2 
	.byte		N11   , Bn2 
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N03   , Fs4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
@ 004   ----------------------------------------
orasSoaringDayPiano_FINAL_1_004:
	.byte		N11   , En4 , v088
	.byte		N11   , Gs4 
	.byte		N11   , Bn4 
	.byte	W24
	.byte		N22   , Bn1 , v072
	.byte		N22   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N22   , En3 
	.byte	W24
	.byte		N22   
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
orasSoaringDayPiano_FINAL_1_B1:
@ 005   ----------------------------------------
orasSoaringDayPiano_FINAL_1_005:
	.byte		N32   , En3 , v088
	.byte		N32   , An3 
	.byte		N32   , Dn4 
	.byte	W36
	.byte		        En3 
	.byte		N32   , An3 
	.byte		N32   , Cs4 
	.byte	W36
	.byte		N22   , En3 
	.byte		N22   , An3 
	.byte		N22   , Bn3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
orasSoaringDayPiano_FINAL_1_006:
	.byte		N22   , Fn3 , v088
	.byte		N22   , Gs3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Fn3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Fs4 
	.byte		N22   , An4 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
orasSoaringDayPiano_FINAL_1_007:
	.byte		N32   , An3 , v088
	.byte		N32   , Cs4 
	.byte		N32   , Gs4 
	.byte	W36
	.byte		        An3 
	.byte		N32   , Cs4 
	.byte		N32   , En4 
	.byte	W36
	.byte		N22   , Gs3 
	.byte		N22   , Cs4 
	.byte		N22   , Fs4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
orasSoaringDayPiano_FINAL_1_008:
	.byte		N44   , En3 , v088
	.byte		N44   , Gn3 
	.byte		N44   , An3 
	.byte	W48
	.byte		N22   , Cs3 
	.byte		N22   , En3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Cs3 
	.byte		N22   , En3 
	.byte		N22   , Bn3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
orasSoaringDayPiano_FINAL_1_009:
	.byte		N32   , Dn3 , v088
	.byte		N32   , Fs3 
	.byte		N32   , Cs4 
	.byte	W36
	.byte		        Fs3 
	.byte		N32   , Gs3 
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N22   , An3 
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
orasSoaringDayPiano_FINAL_1_010:
	.byte		N32   , En3 , v088
	.byte		N32   , Cs4 
	.byte	W36
	.byte		        En3 
	.byte		N32   , An3 
	.byte		N32   , Bn3 
	.byte	W36
	.byte		N22   , En3 
	.byte		N22   , An3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
orasSoaringDayPiano_FINAL_1_011:
	.byte		N44   , Dn3 , v088
	.byte		N44   , Gn3 
	.byte		N44   , Bn3 
	.byte	W48
	.byte		N22   , Dn3 
	.byte		N22   , En3 
	.byte		N22   , Gn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N22   , En3 
	.byte		N22   , Gn3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
orasSoaringDayPiano_FINAL_1_012:
	.byte		N44   , An2 , v088
	.byte		N44   , Bn2 
	.byte		N44   , En3 
	.byte	W48
	.byte		N22   , Cs3 
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N22   , En3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
orasSoaringDayPiano_FINAL_1_013:
	.byte		N32   , An2 , v088
	.byte		N32   , Dn3 
	.byte		N32   , Fs3 
	.byte	W36
	.byte		        Dn3 
	.byte		N32   , Fs3 
	.byte		N32   , An3 
	.byte	W36
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
orasSoaringDayPiano_FINAL_1_014:
	.byte		N32   , En3 , v088
	.byte		N32   , Gs3 
	.byte		N32   , Bn3 
	.byte	W36
	.byte		        Fs3 
	.byte		N32   , An3 
	.byte		N32   , Cs4 
	.byte	W36
	.byte		N22   , Fs3 
	.byte		N22   , Bn3 
	.byte		N22   , Dn4 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
orasSoaringDayPiano_FINAL_1_015:
	.byte		N32   , Gs3 , v088
	.byte		N32   , Cs4 
	.byte		N32   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N32   , Gs3 
	.byte		N32   , Cs4 
	.byte	W36
	.byte		N22   , Gs3 
	.byte		N22   , Cs4 
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
orasSoaringDayPiano_FINAL_1_016:
	.byte		N44   , Cs3 , v088
	.byte		N44   , Fs3 
	.byte		N44   , An3 
	.byte	W48
	.byte		N22   , Cs3 
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Cs3 
	.byte		N22   , En3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
orasSoaringDayPiano_FINAL_1_017:
	.byte		N68   , Bn2 , v088
	.byte		N68   , Dn3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte		N22   , Bn2 
	.byte		N22   , Dn3 
	.byte		N22   , Fs3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
orasSoaringDayPiano_FINAL_1_018:
	.byte		N32   , Bn2 , v088
	.byte		N32   , Ds3 
	.byte		N32   , Fs3 
	.byte	W36
	.byte		        Bn2 
	.byte		N32   , Ds3 
	.byte		N32   , Gs3 
	.byte	W36
	.byte		N22   , Ds3 
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
orasSoaringDayPiano_FINAL_1_019:
	.byte		TIE   , En3 , v088
	.byte		TIE   , Gs3 
	.byte		TIE   , Bn3 
	.byte	W96
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W06
	.byte		EOT   , En3 
	.byte		        Gs3 
	.byte		        Bn3 
	.byte	W18
	.byte		N22   , Bn2 
	.byte		N22   , En3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Ds4 
	.byte		N22   , Fs4 
	.byte		N22   , An4 
	.byte	W24
@ 021   ----------------------------------------
orasSoaringDayPiano_FINAL_1_021:
	.byte		N68   , Dn4 , v088
	.byte		N68   , En4 
	.byte		N68   , Gs4 
	.byte	W72
	.byte		N22   , Dn4 
	.byte		N22   , Fs4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
orasSoaringDayPiano_FINAL_1_022:
	.byte		N32   , Dn4 , v088
	.byte		N32   , En4 
	.byte		N32   , Gs4 
	.byte	W36
	.byte		        Dn4 
	.byte		N32   , Fs4 
	.byte		N32   , An4 
	.byte	W36
	.byte		N22   , Dn4 
	.byte		N22   , Gs4 
	.byte		N22   , Bn4 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
orasSoaringDayPiano_FINAL_1_023:
	.byte		N90   , Gs3 , v088
	.byte		N90   , Bn3 
	.byte		N90   , En4 
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
orasSoaringDayPiano_FINAL_1_024:
	.byte		N11   , Fs3 , v088
	.byte		N11   , An3 
	.byte	W24
	.byte		N22   , En3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		N22   
	.byte		N22   , Cs4 
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
orasSoaringDayPiano_FINAL_1_025:
	.byte		N68   , Fs3 , v088
	.byte		N68   , Bn3 
	.byte		N68   , Dn4 
	.byte	W72
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
orasSoaringDayPiano_FINAL_1_026:
	.byte		N22   , Gs2 , v088
	.byte		N22   , Dn3 
	.byte		N22   , Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte		N22   , Bn3 
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
orasSoaringDayPiano_FINAL_1_027:
	.byte		N68   , En3 , v088
	.byte		N68   , Fs3 
	.byte		N68   , An3 
	.byte		N68   , Cs4 
	.byte	W72
	.byte		N22   , Fn3 , v072
	.byte		N22   , Gs3 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
orasSoaringDayPiano_FINAL_1_028:
	.byte		N22   , En3 , v088
	.byte		N22   , Gn3 
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte		N22   , An3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , Bn3 
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , Cs4 
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
orasSoaringDayPiano_FINAL_1_029:
	.byte		N68   , An3 , v088
	.byte		N68   , Dn4 
	.byte		N68   , Fs4 
	.byte	W72
	.byte		N22   , Dn4 
	.byte		N22   , Fs4 
	.byte		N22   , An4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
orasSoaringDayPiano_FINAL_1_030:
	.byte		N32   , Bn3 , v088
	.byte		N32   , En4 
	.byte		N32   , Gs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N32   , Fs4 
	.byte		N32   , An4 
	.byte	W36
	.byte		N22   , En4 
	.byte		N22   , Gs4 
	.byte		N22   , Bn4 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
orasSoaringDayPiano_FINAL_1_031:
	.byte		N44   , Gs3 , v088
	.byte		N44   , Cs4 
	.byte		N44   , En4 
	.byte	W72
	.byte		N22   , Gs4 
	.byte		N22   , Bn4 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
orasSoaringDayPiano_FINAL_1_032:
	.byte		N32   , Cs4 , v088
	.byte		N32   , Fs4 
	.byte		N32   , As4 
	.byte	W36
	.byte		        Cs4 
	.byte		N32   , Gs4 
	.byte		N32   , Bn4 
	.byte	W36
	.byte		N22   , Fs4 
	.byte		N22   , As4 
	.byte		N22   , Cs5 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
orasSoaringDayPiano_FINAL_1_033:
	.byte		N32   , Fs3 , v088
	.byte		N32   , Bn3 
	.byte		N32   , Dn4 
	.byte	W36
	.byte		        Fs3 
	.byte		N32   , Cs4 
	.byte		N32   , En4 
	.byte	W36
	.byte		N22   , An3 
	.byte		N22   , Dn4 
	.byte		N22   , Fs4 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
orasSoaringDayPiano_FINAL_1_034:
	.byte		N32   , Gs3 , v088
	.byte		N32   , Cs4 
	.byte		N32   , En4 
	.byte	W36
	.byte		        Gs3 
	.byte		N32   , Dn4 
	.byte		N32   , Fs4 
	.byte	W36
	.byte		N22   , Bn3 
	.byte		N22   , En4 
	.byte		N22   , Gs4 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
orasSoaringDayPiano_FINAL_1_035:
	.byte		N32   , Cn4 , v088
	.byte		N32   , Fn4 
	.byte		N32   , An4 
	.byte	W36
	.byte		        An3 
	.byte		N32   , En4 
	.byte		N32   , Gn4 
	.byte	W36
	.byte		N22   , Cn4 
	.byte		N22   , Fn4 
	.byte		N22   , An4 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
orasSoaringDayPiano_FINAL_1_036:
	.byte		N32   , Bn3 , v088
	.byte		N32   , Gn4 
	.byte		N32   , Bn4 
	.byte	W36
	.byte		        An3 
	.byte		N32   , Fn4 
	.byte		N32   , An4 
	.byte	W36
	.byte		N22   , Bn3 
	.byte		N22   , Dn4 
	.byte		N22   , Gn4 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
orasSoaringDayPiano_FINAL_1_037:
	.byte		N68   , An3 , v088
	.byte		N68   , Cs4 
	.byte		N68   , En4 
	.byte		N68   , An4 
	.byte	W72
	.byte		N22   , Fs3 
	.byte		N22   , Dn4 
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N90   , En3 
	.byte		N90   , Cs4 
	.byte	W96
@ 039   ----------------------------------------
orasSoaringDayPiano_FINAL_1_039:
	.byte		N68   , Cs4 , v072
	.byte	W72
	.byte		N22   , En4 
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
	.byte		N90   , Dn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_039
@ 042   ----------------------------------------
	.byte		N22   , Bn3 , v072
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W15
	.byte		N04   , Ds4 
	.byte	W04
	.byte		        Dn4 
	.byte	W05
@ 043   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_039
@ 044   ----------------------------------------
	.byte		N90   , Dn4 , v072
	.byte	W96
@ 045   ----------------------------------------
	.byte		N44   , Fs4 
	.byte		N44   , Fs5 
	.byte	W48
	.byte		N17   , Fs4 
	.byte		N17   , Fs5 
	.byte	W18
	.byte		        Gs4 
	.byte		N17   , Gs5 
	.byte	W18
	.byte		N11   , Fs4 
	.byte		N11   , Fs5 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        En4 
	.byte		N44   , En5 
	.byte	W12
	.byte		N05   , Bn2 , v088
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N03   , Fs4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
@ 047   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_004
	.byte	GOTO
	 .word	orasSoaringDayPiano_FINAL_1_B1
orasSoaringDayPiano_FINAL_1_B2:
@ 048   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_006
@ 050   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_007
@ 051   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_008
@ 052   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_010
@ 054   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_011
@ 055   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_012
@ 056   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_013
@ 057   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_014
@ 058   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_015
@ 059   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_016
@ 060   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_017
@ 061   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_018
@ 062   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_019
@ 063   ----------------------------------------
	.byte	W06
	.byte		EOT   , En3 
	.byte		        Gs3 
	.byte		        Bn3 
	.byte	W18
	.byte		N22   , Bn2 , v088
	.byte		N22   , En3 
	.byte		N22   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte		N22   , Fs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Ds4 
	.byte		N22   , Fs4 
	.byte		N22   , An4 
	.byte	W24
@ 064   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_021
@ 065   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_022
@ 066   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_023
@ 067   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_024
@ 068   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_025
@ 069   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_026
@ 070   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_027
@ 071   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_028
@ 072   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_029
@ 073   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_030
@ 074   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_031
@ 075   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_032
@ 076   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_033
@ 077   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_034
@ 078   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_035
@ 079   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_036
@ 080   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_1_037
@ 081   ----------------------------------------
	.byte		N90   , En3 , v088
	.byte		N90   , Cs4 
	.byte	W90
	.byte	W01
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

orasSoaringDayPiano_FINAL_2:
	.byte	KEYSH , orasSoaringDayPiano_FINAL_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		VOL   , 85*orasSoaringDayPiano_FINAL_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Dn1 , v072
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte		N05   , En1 , v088
	.byte		N05   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N05   , En2 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N78   , En1 
	.byte		N78   , En2 
	.byte	W84
	.byte		N05   , En0 
	.byte		N05   , En1 
	.byte	W06
	.byte		        En0 
	.byte		N05   , En1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N11   , En0 
	.byte		N11   , En1 
	.byte	W96
orasSoaringDayPiano_FINAL_2_B1:
@ 005   ----------------------------------------
orasSoaringDayPiano_FINAL_2_005:
	.byte		N11   , An0 , v088
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
orasSoaringDayPiano_FINAL_2_006:
	.byte		N11   , Cs1 , v088
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
orasSoaringDayPiano_FINAL_2_007:
	.byte		N11   , Fs0 , v088
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fn0 
	.byte	W12
	.byte		N05   , Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
orasSoaringDayPiano_FINAL_2_008:
	.byte		N11   , En0 , v088
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En0 
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
orasSoaringDayPiano_FINAL_2_009:
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 011   ----------------------------------------
orasSoaringDayPiano_FINAL_2_011:
	.byte		N11   , Gn0 , v088
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn0 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 016   ----------------------------------------
orasSoaringDayPiano_FINAL_2_016:
	.byte		N11   , Fs1 , v088
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
orasSoaringDayPiano_FINAL_2_017:
	.byte		N11   , Bn0 , v088
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 019   ----------------------------------------
orasSoaringDayPiano_FINAL_2_019:
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
orasSoaringDayPiano_FINAL_2_020:
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 023   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 024   ----------------------------------------
orasSoaringDayPiano_FINAL_2_024:
	.byte		N11   , Fs0 , v088
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs0 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 031   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 032   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 036   ----------------------------------------
orasSoaringDayPiano_FINAL_2_036:
	.byte		N11   , Gn0 , v088
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_005
@ 039   ----------------------------------------
	.byte		N11   , Fs2 , v072
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        An1 
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N78   , En1 , v088
	.byte		N78   , Bn1 
	.byte		N78   , En2 
	.byte	W84
	.byte		N05   , En0 
	.byte		N05   , En1 
	.byte	W06
	.byte		        En0 
	.byte		N05   , En1 
	.byte	W06
@ 047   ----------------------------------------
	.byte		N11   , En0 
	.byte		N11   , En1 
	.byte	W96
	.byte	GOTO
	 .word	orasSoaringDayPiano_FINAL_2_B1
orasSoaringDayPiano_FINAL_2_B2:
@ 048   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 050   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_007
@ 051   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_008
@ 052   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 054   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_011
@ 055   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_008
@ 056   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 057   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 059   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_016
@ 060   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 061   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_019
@ 063   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_020
@ 064   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 065   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 066   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_024
@ 068   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 069   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 070   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_007
@ 071   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_008
@ 072   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 073   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_024
@ 076   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_017
@ 077   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_006
@ 078   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_009
@ 079   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_036
@ 080   ----------------------------------------
	.byte	PATT
	 .word	orasSoaringDayPiano_FINAL_2_005
@ 081   ----------------------------------------
	.byte		N11   , An0 , v088
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , An0 , v072
	.byte		N05   , An1 
	.byte	W06
	.byte		        An0 
	.byte		N05   , An1 
	.byte	W06
@ 082   ----------------------------------------
	.byte		N11   , An0 , v088
	.byte		N11   , An1 
	.byte	W11
	.byte	FINE

@******************************************************@
	.align	2

orasSoaringDayPiano_FINAL:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	orasSoaringDayPiano_FINAL_pri	@ Priority
	.byte	orasSoaringDayPiano_FINAL_rev	@ Reverb.

	.word	orasSoaringDayPiano_FINAL_grp

	.word	orasSoaringDayPiano_FINAL_1
	.word	orasSoaringDayPiano_FINAL_2

	.end
