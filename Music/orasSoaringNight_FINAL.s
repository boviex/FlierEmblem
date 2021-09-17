	.include "MPlayDef.s"

	.equ	orasSoaringNight_FINAL_grp, voicegroup000
	.equ	orasSoaringNight_FINAL_pri, 0
	.equ	orasSoaringNight_FINAL_rev, 0
	.equ	orasSoaringNight_FINAL_mvl, 127
	.equ	orasSoaringNight_FINAL_key, 0
	.equ	orasSoaringNight_FINAL_tbs, 1
	.equ	orasSoaringNight_FINAL_exg, 0
	.equ	orasSoaringNight_FINAL_cmp, 1

	.section .rodata
	.global	orasSoaringNight_FINAL
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

orasSoaringNight_FINAL_1:
	.byte		VOL   , 127*orasSoaringNight_FINAL_mvl/mxv
	.byte	KEYSH , orasSoaringNight_FINAL_key+0
orasSoaringNight_FINAL_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 90*orasSoaringNight_FINAL_tbs/2
	.byte		VOICE , 3
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		N48   , Gn3 , v024
	.byte		N48   , Cn4 
	.byte	W92
	.byte	W04
@ 001   ----------------------------------------
	.byte		        Gn3 
	.byte		N48   , Bn3 
	.byte	W01
	.byte	W90
	.byte	W01
	.byte	W04
@ 002   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte	W01
	.byte	W92
	.byte	W01
	.byte	W02
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte		N48   , Bn3 
	.byte	W01
	.byte	W56
	.byte	W03
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , Gn4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Bn4 
	.byte	W36
	.byte		N24   , An4 
	.byte	W22
	.byte	W02
@ 005   ----------------------------------------
	.byte		N48   , Bn3 
	.byte		N48   , En4 
	.byte		N48   , Fs4 
	.byte		N48   , Bn4 
	.byte	W44
	.byte	W04
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn5 
	.byte	W10
	.byte	W02
@ 006   ----------------------------------------
	.byte		N36   , Gn4 
	.byte		N36   , Bn4 
	.byte		N36   , Dn5 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W10
	.byte	W02
@ 007   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Fn4 
	.byte		N48   , Gn4 
	.byte	W44
	.byte	W02
	.byte	W02
	.byte		N24   , Cn4 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W10
	.byte	W02
@ 008   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , En4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Cn4 
	.byte		N36   , En4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N24   , En4 
	.byte		N24   , Dn5 
	.byte	W22
	.byte	W02
@ 009   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , Dn4 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , Gn4 
	.byte	W22
	.byte	W02
@ 010   ----------------------------------------
	.byte		N96   , Cn4 
	.byte		N96   , En4 
	.byte		N96   , An4 
	.byte	W92
	.byte	W02
	.byte	W02
@ 011   ----------------------------------------
	.byte		N72   , Cn4 
	.byte		N72   , Dn4 
	.byte		N72   , Gn4 
	.byte	W72
	.byte		N12   , Bn3 
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W11
	.byte		N36   , Gn3 
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W01
@ 012   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N36   
	.byte	W36
	.byte		N24   , Bn4 
	.byte	W23
	.byte	W01
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte	W01
@ 013   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N36   
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N24   , Fs4 
	.byte		N24   , Cn5 
	.byte	W23
	.byte	W01
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte		N36   , Dn5 
	.byte	W01
@ 014   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        Bn4 
	.byte	W36
	.byte		N24   , Dn5 
	.byte	W23
	.byte	W01
	.byte		N36   , Bn3 
	.byte		N36   , Dn4 
	.byte		N36   , Gn4 
	.byte	W01
@ 015   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        Dn4 
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W11
	.byte	W01
	.byte		N72   , An3 
	.byte		N72   , Cn4 
	.byte		N72   , En4 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N24   
	.byte	W23
	.byte	W01
	.byte		N36   , An3 
	.byte		N36   , Cs4 
	.byte		N36   , En4 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        Fs4 
	.byte	W36
	.byte		N24   , Gn4 
	.byte	W23
	.byte	W01
	.byte		N96   , Dn4 
	.byte		N96   , Gn4 
	.byte		N96   , An4 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte	W01
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte	W01
@ 019   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N12   , Gn5 , v024
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , En3 , v028
	.byte		N24   , Gn3 
	.byte		N24   , Bn3 
	.byte	W01
@ 020   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W05
	.byte	W01
	.byte		N48   , En4 
	.byte		N48   , Gn4 
	.byte		N48   , Bn4 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte		N36   , An4 
	.byte	W01
@ 022   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N48   , Dn4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N03   
	.byte	W04
	.byte		N04   , Gn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W03
	.byte	W01
	.byte		N12   , Dn4 
	.byte	W01
@ 023   ----------------------------------------
	.byte	W11
	.byte		        Gn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , An4 
	.byte	W11
	.byte	W01
	.byte		N36   , En4 
	.byte		N36   , Gn4 
	.byte		N36   , Bn4 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N48   , En4 
	.byte	W56
	.byte	W03
	.byte	W01
	.byte		N60   
	.byte	W01
@ 025   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N18   , Dn4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N08   , En4 
	.byte		N08   , Gn4 
	.byte	W09
	.byte		N09   , Fs4 
	.byte		N09   , An4 
	.byte	W08
	.byte	W01
	.byte		N56   , Fs4 
	.byte		N56   , Bn4 
	.byte		N56   , Dn5 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W23
	.byte	W01
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte	W01
@ 027   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N02   
	.byte		N12   , An4 
	.byte	W03
	.byte		N03   , Gn4 
	.byte	W03
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	W01
@ 028   ----------------------------------------
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N60   , Bn3 
	.byte	W60
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W05
	.byte		N04   , Fs4 
	.byte	W02
	.byte	W02
@ 029   ----------------------------------------
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        Dn4 
	.byte		N36   , En4 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W22
	.byte	W02
@ 030   ----------------------------------------
	.byte		N36   , Dn4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N24   , An4 
	.byte	W22
	.byte	W02
@ 031   ----------------------------------------
	.byte		N56   , En4 
	.byte		N56   , Gn4 
	.byte	W60
	.byte		N18   , En4 
	.byte	W18
	.byte		        Gn4 
	.byte	W16
	.byte	W02
@ 032   ----------------------------------------
	.byte		N36   , Cn4 
	.byte		N36   , En4 
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		N18   
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gn4 
	.byte		N18   , Bn4 
	.byte	W16
	.byte	W02
@ 033   ----------------------------------------
	.byte		N36   , En4 
	.byte		N36   , An4 
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Gn4 
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N24   , En4 
	.byte		N24   , Gn4 
	.byte	W22
	.byte	W02
@ 034   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , En4 
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        An4 
	.byte	W22
	.byte	W02
@ 035   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte		N48   , Fs4 
	.byte	W60
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte		N96   , Bn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 .word	orasSoaringNight_FINAL_1_B1
orasSoaringNight_FINAL_1_B2:
	.byte	W02
@ 037   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

orasSoaringNight_FINAL_2:
	.byte		VOL   , 127*orasSoaringNight_FINAL_mvl/mxv
	.byte	KEYSH , orasSoaringNight_FINAL_key+0
orasSoaringNight_FINAL_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		MODT  , 0
	.byte		LFOS  , 44
	.byte		N12   , Gn1 , v024
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W08
	.byte	W04
@ 001   ----------------------------------------
	.byte		        Gn1 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W08
	.byte	W04
@ 002   ----------------------------------------
	.byte		        Gn1 
	.byte	W01
	.byte	W11
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W10
	.byte	W02
@ 003   ----------------------------------------
	.byte		        Gn1 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 005   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W08
	.byte	W04
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W10
	.byte	W02
@ 006   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W10
	.byte	W02
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 008   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 009   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W10
	.byte	W02
@ 010   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 013   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 014   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 015   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W10
	.byte	W02
@ 016   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 017   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W10
	.byte	W02
@ 018   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 019   ----------------------------------------
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
	.byte		        An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 021   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 022   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W10
	.byte	W02
@ 023   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 024   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W04
	.byte	W02
@ 025   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W10
	.byte	W02
@ 026   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		        Gn3 
	.byte	W13
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 027   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 029   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W10
	.byte	W02
@ 030   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W10
	.byte	W02
@ 031   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 032   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W10
	.byte	W02
@ 033   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W10
	.byte	W02
@ 034   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W10
	.byte	W02
@ 035   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 .word	orasSoaringNight_FINAL_2_B1
orasSoaringNight_FINAL_2_B2:
	.byte	W02
@ 037   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

orasSoaringNight_FINAL:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	orasSoaringNight_FINAL_pri	@ Priority
	.byte	orasSoaringNight_FINAL_rev	@ Reverb.

	.word	orasSoaringNight_FINAL_grp

	.word	orasSoaringNight_FINAL_1
	.word	orasSoaringNight_FINAL_2

	.end
