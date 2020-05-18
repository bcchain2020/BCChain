	.text
	.file	"bcio.token.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN4bcio12require_authERKNS_16permission_levelE
	.globl	_ZN4bcio12require_authERKNS_16permission_levelE
	.type	_ZN4bcio12require_authERKNS_16permission_levelE,@function
_ZN4bcio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN4bcio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN4bcio12require_authERKNS_16permission_levelE

	.hidden	_ZN4bcio5token6createEyNS_5assetE
	.globl	_ZN4bcio5token6createEyNS_5assetE
	.type	_ZN4bcio5token6createEyNS_5assetE,@function
_ZN4bcio5token6createEyNS_5assetE:
	.param  	i32, i64, i32
	.local  	i64, i64, i64, i32, i64, i32, i32
	i32.const	$push95=, 0
	i32.const	$push92=, 0
	i32.load	$push93=, __stack_pointer($pop92)
	i32.const	$push94=, 144
	i32.sub 	$push139=, $pop93, $pop94
	tee_local	$push138=, $9=, $pop139
	i32.store	__stack_pointer($pop95), $pop138
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$8=, 0
	i64.load	$push137=, 8($2)
	tee_local	$push136=, $3=, $pop137
	i64.const	$push135=, 8
	i64.shr_u	$push134=, $pop136, $pop135
	tee_local	$push133=, $4=, $pop134
	copy_local	$7=, $pop133
.LBB5_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push1=, $7
	i32.const	$push142=, 24
	i32.shl 	$push2=, $pop1, $pop142
	i32.const	$push141=, -1073741825
	i32.add 	$push3=, $pop2, $pop141
	i32.const	$push140=, 452984830
	i32.gt_u	$push4=, $pop3, $pop140
	br_if   	1, $pop4
	block   	
	i64.const	$push147=, 8
	i64.shr_u	$push146=, $7, $pop147
	tee_local	$push145=, $7=, $pop146
	i64.const	$push144=, 255
	i64.and 	$push5=, $pop145, $pop144
	i64.const	$push143=, 0
	i64.ne  	$push6=, $pop5, $pop143
	br_if   	0, $pop6
.LBB5_3:
	loop    	
	i64.const	$push152=, 8
	i64.shr_u	$push151=, $7, $pop152
	tee_local	$push150=, $7=, $pop151
	i64.const	$push149=, 255
	i64.and 	$push7=, $pop150, $pop149
	i64.const	$push148=, 0
	i64.ne  	$push8=, $pop7, $pop148
	br_if   	3, $pop8
	i32.const	$push156=, 1
	i32.add 	$push155=, $8, $pop156
	tee_local	$push154=, $8=, $pop155
	i32.const	$push153=, 7
	i32.lt_s	$push9=, $pop154, $pop153
	br_if   	0, $pop9
.LBB5_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push160=, 1
	i32.add 	$push159=, $8, $pop160
	tee_local	$push158=, $8=, $pop159
	i32.const	$push157=, 7
	i32.lt_s	$push10=, $pop158, $pop157
	br_if   	0, $pop10
	br      	2
.LBB5_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB5_7:
	end_block
	i32.const	$push11=, .L.str
	call    	bcio_assert@FUNCTION, $6, $pop11
	i32.const	$6=, 0
	block   	
	i64.load	$push162=, 0($2)
	tee_local	$push161=, $5=, $pop162
	i64.const	$push12=, 4611686018427387903
	i64.add 	$push13=, $pop161, $pop12
	i64.const	$push14=, 9223372036854775806
	i64.gt_u	$push15=, $pop13, $pop14
	br_if   	0, $pop15
	i32.const	$8=, 0
	copy_local	$7=, $4
.LBB5_9:
	block   	
	loop    	
	i32.wrap/i64	$push16=, $7
	i32.const	$push165=, 24
	i32.shl 	$push17=, $pop16, $pop165
	i32.const	$push164=, -1073741825
	i32.add 	$push18=, $pop17, $pop164
	i32.const	$push163=, 452984830
	i32.gt_u	$push19=, $pop18, $pop163
	br_if   	1, $pop19
	block   	
	i64.const	$push170=, 8
	i64.shr_u	$push169=, $7, $pop170
	tee_local	$push168=, $7=, $pop169
	i64.const	$push167=, 255
	i64.and 	$push20=, $pop168, $pop167
	i64.const	$push166=, 0
	i64.ne  	$push21=, $pop20, $pop166
	br_if   	0, $pop21
.LBB5_11:
	loop    	
	i64.const	$push175=, 8
	i64.shr_u	$push174=, $7, $pop175
	tee_local	$push173=, $7=, $pop174
	i64.const	$push172=, 255
	i64.and 	$push22=, $pop173, $pop172
	i64.const	$push171=, 0
	i64.ne  	$push23=, $pop22, $pop171
	br_if   	3, $pop23
	i32.const	$push179=, 1
	i32.add 	$push178=, $8, $pop179
	tee_local	$push177=, $8=, $pop178
	i32.const	$push176=, 7
	i32.lt_s	$push24=, $pop177, $pop176
	br_if   	0, $pop24
.LBB5_13:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push183=, 1
	i32.add 	$push182=, $8, $pop183
	tee_local	$push181=, $8=, $pop182
	i32.const	$push180=, 7
	i32.lt_s	$push25=, $pop181, $pop180
	br_if   	0, $pop25
	br      	2
.LBB5_14:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB5_15:
	end_block
	i32.const	$push26=, .L.str.1
	call    	bcio_assert@FUNCTION, $6, $pop26
	i64.const	$push27=, 0
	i64.gt_s	$push28=, $5, $pop27
	i32.const	$push29=, .L.str.2
	call    	bcio_assert@FUNCTION, $pop28, $pop29
	i32.const	$push99=, 8
	i32.add 	$push100=, $9, $pop99
	i32.const	$push192=, 32
	i32.add 	$push30=, $pop100, $pop192
	i32.const	$push191=, 0
	i32.store	0($pop30), $pop191
	i64.const	$push31=, -1
	i64.store	24($9), $pop31
	i64.const	$push190=, 0
	i64.store	32($9), $pop190
	i64.load	$push189=, 0($0)
	tee_local	$push188=, $7=, $pop189
	i64.store	8($9), $pop188
	i64.store	16($9), $4
	block   	
	block   	
	i64.const	$push187=, -4157508551318700032
	i32.call	$push186=, db_find_i64@FUNCTION, $7, $4, $pop187, $4
	tee_local	$push185=, $8=, $pop186
	i32.const	$push184=, 0
	i32.lt_s	$push32=, $pop185, $pop184
	br_if   	0, $pop32
	i32.const	$push129=, 8
	i32.add 	$push130=, $9, $pop129
	i32.call	$push33=, _ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop130, $8
	i32.load	$push34=, 48($pop33)
	i32.const	$push131=, 8
	i32.add 	$push132=, $9, $pop131
	i32.eq  	$push35=, $pop34, $pop132
	i32.const	$push36=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop35, $pop36
	i32.const	$8=, 0
	br      	1
.LBB5_17:
	end_block
	i32.const	$8=, 1
.LBB5_18:
	end_block
	i32.const	$push37=, .L.str.3
	call    	bcio_assert@FUNCTION, $8, $pop37
	i64.load	$4=, 0($0)
	i64.load	$push38=, 8($9)
	i64.call	$push39=, current_receiver@FUNCTION
	i64.eq  	$push40=, $pop38, $pop39
	i32.const	$push41=, .L.str.31
	call    	bcio_assert@FUNCTION, $pop40, $pop41
	i32.const	$push42=, 64
	i32.call	$push208=, _Znwj@FUNCTION, $pop42
	tee_local	$push207=, $8=, $pop208
	i32.call	$drop=, _ZN4bcio5token14currency_statsC2Ev@FUNCTION, $pop207
	i32.const	$push101=, 8
	i32.add 	$push102=, $9, $pop101
	i32.store	48($8), $pop102
	i64.store	8($8), $3
	i32.const	$push206=, 28
	i32.add 	$push43=, $8, $pop206
	i32.const	$push44=, 12
	i32.add 	$push45=, $2, $pop44
	i32.load	$push46=, 0($pop45)
	i32.store	0($pop43), $pop46
	i32.const	$push47=, 24
	i32.add 	$push48=, $8, $pop47
	i32.const	$push205=, 8
	i32.add 	$push49=, $2, $pop205
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push51=, 20
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 4
	i32.add 	$push54=, $2, $pop53
	i32.load	$push55=, 0($pop54)
	i32.store	0($pop52), $pop55
	i32.load	$push56=, 0($2)
	i32.store	16($8), $pop56
	i64.store	32($8), $1
	i64.call	$push57=, current_time@FUNCTION
	i64.store	40($8), $pop57
	i32.const	$push103=, 48
	i32.add 	$push104=, $9, $pop103
	i32.const	$push58=, 48
	i32.add 	$push59=, $pop104, $pop58
	i32.store	112($9), $pop59
	i32.const	$push105=, 48
	i32.add 	$push106=, $9, $pop105
	i32.store	108($9), $pop106
	i32.const	$push107=, 48
	i32.add 	$push108=, $9, $pop107
	i32.store	104($9), $pop108
	i32.const	$push109=, 104
	i32.add 	$push110=, $9, $pop109
	i32.store	120($9), $pop110
	i32.const	$push60=, 16
	i32.add 	$push61=, $8, $pop60
	i32.store	132($9), $pop61
	i32.store	128($9), $8
	i32.const	$push204=, 32
	i32.add 	$push62=, $8, $pop204
	i32.store	136($9), $pop62
	i32.const	$push63=, 40
	i32.add 	$push64=, $8, $pop63
	i32.store	140($9), $pop64
	i32.const	$push111=, 128
	i32.add 	$push112=, $9, $pop111
	i32.const	$push113=, 120
	i32.add 	$push114=, $9, $pop113
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE@FUNCTION, $pop112, $pop114
	i32.const	$push115=, 8
	i32.add 	$push116=, $9, $pop115
	i32.const	$push203=, 8
	i32.add 	$push66=, $pop116, $pop203
	i64.load	$push67=, 0($pop66)
	i64.const	$push202=, -4157508551318700032
	i64.load	$push65=, 8($8)
	i64.const	$push201=, 8
	i64.shr_u	$push200=, $pop65, $pop201
	tee_local	$push199=, $7=, $pop200
	i32.const	$push117=, 48
	i32.add 	$push118=, $9, $pop117
	i32.const	$push198=, 48
	i32.call	$push197=, db_store_i64@FUNCTION, $pop67, $pop202, $4, $pop199, $pop118, $pop198
	tee_local	$push196=, $6=, $pop197
	i32.store	52($8), $pop196
	block   	
	i32.const	$push119=, 8
	i32.add 	$push120=, $9, $pop119
	i32.const	$push195=, 16
	i32.add 	$push194=, $pop120, $pop195
	tee_local	$push193=, $2=, $pop194
	i64.load	$push68=, 0($pop193)
	i64.lt_u	$push69=, $7, $pop68
	br_if   	0, $pop69
	i64.const	$push70=, 1
	i64.add 	$push71=, $7, $pop70
	i64.store	0($2), $pop71
.LBB5_20:
	end_block
	i32.store	128($9), $8
	i32.const	$push215=, 8
	i32.add 	$push72=, $8, $pop215
	i64.load	$push73=, 0($pop72)
	i64.const	$push214=, 8
	i64.shr_u	$push213=, $pop73, $pop214
	tee_local	$push212=, $7=, $pop213
	i64.store	48($9), $pop212
	i32.store	104($9), $6
	block   	
	block   	
	i32.const	$push121=, 8
	i32.add 	$push122=, $9, $pop121
	i32.const	$push211=, 28
	i32.add 	$push77=, $pop122, $pop211
	i32.load	$push210=, 0($pop77)
	tee_local	$push209=, $2=, $pop210
	i32.const	$push74=, 40
	i32.add 	$push75=, $9, $pop74
	i32.load	$push76=, 0($pop75)
	i32.ge_u	$push78=, $pop209, $pop76
	br_if   	0, $pop78
	i64.store	8($2), $7
	i32.store	16($2), $6
	i32.const	$push81=, 0
	i32.store	128($9), $pop81
	i32.store	0($2), $8
	i32.const	$push84=, 36
	i32.add 	$push85=, $9, $pop84
	i32.const	$push82=, 24
	i32.add 	$push83=, $2, $pop82
	i32.store	0($pop85), $pop83
	br      	1
.LBB5_22:
	end_block
	i32.const	$push79=, 32
	i32.add 	$push80=, $9, $pop79
	i32.const	$push123=, 128
	i32.add 	$push124=, $9, $pop123
	i32.const	$push125=, 48
	i32.add 	$push126=, $9, $pop125
	i32.const	$push127=, 104
	i32.add 	$push128=, $9, $pop127
	call    	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop80, $pop124, $pop126, $pop128
.LBB5_23:
	end_block
	i32.load	$8=, 128($9)
	i32.const	$push86=, 0
	i32.store	128($9), $pop86
	block   	
	i32.eqz 	$push226=, $8
	br_if   	0, $pop226
	call    	_ZdlPv@FUNCTION, $8
.LBB5_25:
	end_block
	block   	
	i32.load	$push217=, 32($9)
	tee_local	$push216=, $6=, $pop217
	i32.eqz 	$push227=, $pop216
	br_if   	0, $pop227
	block   	
	block   	
	i32.const	$push87=, 36
	i32.add 	$push221=, $9, $pop87
	tee_local	$push220=, $0=, $pop221
	i32.load	$push219=, 0($pop220)
	tee_local	$push218=, $8=, $pop219
	i32.eq  	$push88=, $pop218, $6
	br_if   	0, $pop88
.LBB5_28:
	loop    	
	i32.const	$push225=, -24
	i32.add 	$push224=, $8, $pop225
	tee_local	$push223=, $8=, $pop224
	i32.load	$2=, 0($pop223)
	i32.const	$push222=, 0
	i32.store	0($8), $pop222
	block   	
	i32.eqz 	$push228=, $2
	br_if   	0, $pop228
	call    	_ZdlPv@FUNCTION, $2
.LBB5_30:
	end_block
	i32.ne  	$push89=, $6, $8
	br_if   	0, $pop89
	end_loop
	i32.const	$push90=, 32
	i32.add 	$push91=, $9, $pop90
	i32.load	$8=, 0($pop91)
	br      	1
.LBB5_32:
	end_block
	copy_local	$8=, $6
.LBB5_33:
	end_block
	i32.store	0($0), $6
	call    	_ZdlPv@FUNCTION, $8
.LBB5_34:
	end_block
	i32.const	$push98=, 0
	i32.const	$push96=, 144
	i32.add 	$push97=, $9, $pop96
	i32.store	__stack_pointer($pop98), $pop97
	.endfunc
.Lfunc_end5:
	.size	_ZN4bcio5token6createEyNS_5assetE, .Lfunc_end5-_ZN4bcio5token6createEyNS_5assetE

	.section	.text._ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,@function
_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 48
	i32.sub 	$push72=, $pop48, $pop49
	tee_local	$push71=, $9=, $pop72
	copy_local	$8=, $pop71
	i32.const	$push50=, 0
	i32.store	__stack_pointer($pop50), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push70=, 0($pop3)
	tee_local	$push69=, $7=, $pop70
	i32.load	$push68=, 24($0)
	tee_local	$push67=, $2=, $pop68
	i32.eq  	$push4=, $pop69, $pop67
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push73=, -24
	i32.add 	$6=, $7, $pop73
.LBB6_2:
	loop    	
	i32.const	$push74=, 16
	i32.add 	$push6=, $6, $pop74
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push78=, -24
	i32.add 	$push77=, $6, $pop78
	tee_local	$push76=, $4=, $pop77
	copy_local	$6=, $pop76
	i32.add 	$push9=, $4, $3
	i32.const	$push75=, -24
	i32.ne  	$push10=, $pop9, $pop75
	br_if   	0, $pop10
.LBB6_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB6_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push81=, 0
	i32.call	$push80=, db_get_i64@FUNCTION, $1, $pop14, $pop81
	tee_local	$push79=, $6=, $pop80
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop79, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.28
	call    	bcio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB6_8:
	end_block
	i32.const	$push46=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push83=, $9, $pop25
	tee_local	$push82=, $4=, $pop83
	copy_local	$push66=, $pop82
	i32.store	__stack_pointer($pop46), $pop66
.LBB6_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	12($8), $4
	i32.store	8($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	16($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB6_11:
	end_block
	i32.const	$push29=, 64
	i32.call	$push94=, _Znwj@FUNCTION, $pop29
	tee_local	$push93=, $6=, $pop94
	i32.call	$drop=, _ZN4bcio5token14currency_statsC2Ev@FUNCTION, $pop93
	i32.store	48($6), $0
	i32.const	$push54=, 8
	i32.add 	$push55=, $8, $pop54
	i32.store	24($8), $pop55
	i32.const	$push30=, 16
	i32.add 	$push31=, $6, $pop30
	i32.store	36($8), $pop31
	i32.store	32($8), $6
	i32.const	$push32=, 32
	i32.add 	$push33=, $6, $pop32
	i32.store	40($8), $pop33
	i32.const	$push34=, 40
	i32.add 	$push35=, $6, $pop34
	i32.store	44($8), $pop35
	i32.const	$push56=, 32
	i32.add 	$push57=, $8, $pop56
	i32.const	$push58=, 24
	i32.add 	$push59=, $8, $pop58
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE@FUNCTION, $pop57, $pop59
	i32.store	52($6), $1
	i32.store	24($8), $6
	i64.load	$push36=, 8($6)
	i64.const	$push37=, 8
	i64.shr_u	$push92=, $pop36, $pop37
	tee_local	$push91=, $5=, $pop92
	i64.store	32($8), $pop91
	i32.load	$push90=, 52($6)
	tee_local	$push89=, $7=, $pop90
	i32.store	4($8), $pop89
	block   	
	block   	
	i32.const	$push40=, 28
	i32.add 	$push88=, $0, $pop40
	tee_local	$push87=, $1=, $pop88
	i32.load	$push86=, 0($pop87)
	tee_local	$push85=, $4=, $pop86
	i32.const	$push84=, 32
	i32.add 	$push38=, $0, $pop84
	i32.load	$push39=, 0($pop38)
	i32.ge_u	$push41=, $pop85, $pop39
	br_if   	0, $pop41
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push42=, 0
	i32.store	24($8), $pop42
	i32.store	0($4), $6
	i32.const	$push43=, 24
	i32.add 	$push44=, $4, $pop43
	i32.store	0($1), $pop44
	br      	1
.LBB6_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push60=, 24
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 32
	i32.add 	$push63=, $8, $pop62
	i32.const	$push64=, 4
	i32.add 	$push65=, $8, $pop64
	call    	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop61, $pop63, $pop65
.LBB6_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push45=, 0
	i32.store	24($8), $pop45
	i32.eqz 	$push95=, $4
	br_if   	0, $pop95
	call    	_ZdlPv@FUNCTION, $4
.LBB6_16:
	end_block
	i32.const	$push53=, 0
	i32.const	$push51=, 48
	i32.add 	$push52=, $8, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	copy_local	$push96=, $6
	.endfunc
.Lfunc_end6:
	.size	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl, .Lfunc_end6-_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN4bcio5token14currency_statsC2Ev,"axG",@progbits,_ZN4bcio5token14currency_statsC2Ev,comdat
	.hidden	_ZN4bcio5token14currency_statsC2Ev
	.weak	_ZN4bcio5token14currency_statsC2Ev
	.type	_ZN4bcio5token14currency_statsC2Ev,@function
_ZN4bcio5token14currency_statsC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 4407812
	i64.store	8($0), $pop0
	i64.const	$push31=, 0
	i64.store	0($0), $pop31
	i32.const	$push30=, 1
	i32.const	$push1=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop30, $pop1
	i64.load	$push2=, 8($0)
	i64.const	$push29=, 8
	i64.shr_u	$1=, $pop2, $pop29
	i32.const	$2=, 0
.LBB7_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push34=, 24
	i32.shl 	$push4=, $pop3, $pop34
	i32.const	$push33=, -1073741825
	i32.add 	$push5=, $pop4, $pop33
	i32.const	$push32=, 452984830
	i32.gt_u	$push6=, $pop5, $pop32
	br_if   	1, $pop6
	block   	
	i64.const	$push39=, 8
	i64.shr_u	$push38=, $1, $pop39
	tee_local	$push37=, $1=, $pop38
	i64.const	$push36=, 255
	i64.and 	$push7=, $pop37, $pop36
	i64.const	$push35=, 0
	i64.ne  	$push8=, $pop7, $pop35
	br_if   	0, $pop8
.LBB7_3:
	loop    	
	i64.const	$push44=, 8
	i64.shr_u	$push43=, $1, $pop44
	tee_local	$push42=, $1=, $pop43
	i64.const	$push41=, 255
	i64.and 	$push9=, $pop42, $pop41
	i64.const	$push40=, 0
	i64.ne  	$push10=, $pop9, $pop40
	br_if   	3, $pop10
	i32.const	$push48=, 1
	i32.add 	$push47=, $2, $pop48
	tee_local	$push46=, $2=, $pop47
	i32.const	$push45=, 7
	i32.lt_s	$push11=, $pop46, $pop45
	br_if   	0, $pop11
.LBB7_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push52=, 1
	i32.add 	$push51=, $2, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.const	$push49=, 7
	i32.lt_s	$push12=, $pop50, $pop49
	br_if   	0, $pop12
	br      	2
.LBB7_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB7_7:
	end_block
	i32.const	$push13=, .L.str
	call    	bcio_assert@FUNCTION, $3, $pop13
	i32.const	$push58=, 24
	i32.add 	$push57=, $0, $pop58
	tee_local	$push56=, $2=, $pop57
	i64.const	$push14=, 4407812
	i64.store	0($pop56), $pop14
	i64.const	$push55=, 0
	i64.store	16($0), $pop55
	i32.const	$push54=, 1
	i32.const	$push15=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop54, $pop15
	i64.load	$push16=, 0($2)
	i64.const	$push53=, 8
	i64.shr_u	$1=, $pop16, $pop53
	i32.const	$2=, 0
.LBB7_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push17=, $1
	i32.const	$push61=, 24
	i32.shl 	$push18=, $pop17, $pop61
	i32.const	$push60=, -1073741825
	i32.add 	$push19=, $pop18, $pop60
	i32.const	$push59=, 452984830
	i32.gt_u	$push20=, $pop19, $pop59
	br_if   	1, $pop20
	block   	
	i64.const	$push66=, 8
	i64.shr_u	$push65=, $1, $pop66
	tee_local	$push64=, $1=, $pop65
	i64.const	$push63=, 255
	i64.and 	$push21=, $pop64, $pop63
	i64.const	$push62=, 0
	i64.ne  	$push22=, $pop21, $pop62
	br_if   	0, $pop22
.LBB7_10:
	loop    	
	i64.const	$push71=, 8
	i64.shr_u	$push70=, $1, $pop71
	tee_local	$push69=, $1=, $pop70
	i64.const	$push68=, 255
	i64.and 	$push23=, $pop69, $pop68
	i64.const	$push67=, 0
	i64.ne  	$push24=, $pop23, $pop67
	br_if   	3, $pop24
	i32.const	$push75=, 1
	i32.add 	$push74=, $2, $pop75
	tee_local	$push73=, $2=, $pop74
	i32.const	$push72=, 7
	i32.lt_s	$push25=, $pop73, $pop72
	br_if   	0, $pop25
.LBB7_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push79=, 1
	i32.add 	$push78=, $2, $pop79
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 7
	i32.lt_s	$push26=, $pop77, $pop76
	br_if   	0, $pop26
	br      	2
.LBB7_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB7_14:
	end_block
	i32.const	$push27=, .L.str
	call    	bcio_assert@FUNCTION, $3, $pop27
	i64.const	$push28=, 0
	i64.store	40($0), $pop28
	copy_local	$push80=, $0
	.endfunc
.Lfunc_end7:
	.size	_ZN4bcio5token14currency_statsC2Ev, .Lfunc_end7-_ZN4bcio5token14currency_statsC2Ev

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push77=, 0($1)
	tee_local	$push76=, $2=, $pop77
	i32.load	$push1=, 8($pop76)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $3, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push75=, 8
	i32.add 	$push74=, $pop8, $pop75
	tee_local	$push73=, $4=, $pop74
	i32.store	4($2), $pop73
	i32.load	$push9=, 8($2)
	i32.sub 	$push10=, $pop9, $4
	i32.const	$push72=, 7
	i32.gt_s	$push11=, $pop10, $pop72
	i32.const	$push71=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop11, $pop71
	i32.load	$push13=, 4($2)
	i32.const	$push70=, 8
	i32.add 	$push12=, $3, $pop70
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop69
	i32.load	$push14=, 4($2)
	i32.const	$push68=, 8
	i32.add 	$push15=, $pop14, $pop68
	i32.store	4($2), $pop15
	i32.load	$3=, 4($0)
	i32.load	$push67=, 0($1)
	tee_local	$push66=, $2=, $pop67
	i32.load	$push17=, 8($pop66)
	i32.load	$push16=, 4($2)
	i32.sub 	$push18=, $pop17, $pop16
	i32.const	$push65=, 7
	i32.gt_s	$push19=, $pop18, $pop65
	i32.const	$push64=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop19, $pop64
	i32.load	$push20=, 4($2)
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $3, $pop63
	i32.load	$push21=, 4($2)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop21, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.store	4($2), $pop60
	i32.load	$push22=, 8($2)
	i32.sub 	$push23=, $pop22, $4
	i32.const	$push59=, 7
	i32.gt_s	$push24=, $pop23, $pop59
	i32.const	$push58=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop24, $pop58
	i32.load	$push26=, 4($2)
	i32.const	$push57=, 8
	i32.add 	$push25=, $3, $pop57
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop56
	i32.load	$push27=, 4($2)
	i32.const	$push55=, 8
	i32.add 	$push28=, $pop27, $pop55
	i32.store	4($2), $pop28
	i32.load	$3=, 8($0)
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $2=, $pop54
	i32.load	$push30=, 8($pop53)
	i32.load	$push29=, 4($2)
	i32.sub 	$push31=, $pop30, $pop29
	i32.const	$push52=, 7
	i32.gt_s	$push32=, $pop31, $pop52
	i32.const	$push51=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop32, $pop51
	i32.load	$push33=, 4($2)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $3, $pop50
	i32.load	$push34=, 4($2)
	i32.const	$push49=, 8
	i32.add 	$push35=, $pop34, $pop49
	i32.store	4($2), $pop35
	i32.load	$0=, 12($0)
	i32.load	$push48=, 0($1)
	tee_local	$push47=, $2=, $pop48
	i32.load	$push37=, 8($pop47)
	i32.load	$push36=, 4($2)
	i32.sub 	$push38=, $pop37, $pop36
	i32.const	$push46=, 7
	i32.gt_s	$push39=, $pop38, $pop46
	i32.const	$push45=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop39, $pop45
	i32.load	$push40=, 4($2)
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $0, $pop44
	i32.load	$push41=, 4($2)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop41, $pop43
	i32.store	4($2), $pop42
	.endfunc
.Lfunc_end8:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE, .Lfunc_end8-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE

	.section	.text._ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB9_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB9_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB9_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB9_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB9_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB9_10:
	end_block
	copy_local	$6=, $7
.LBB9_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB9_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB9_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB9_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB9_18:
	end_block
	.endfunc
.Lfunc_end9:
	.size	_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end9-_ZNSt3__16vectorIN4bcio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push77=, 0($1)
	tee_local	$push76=, $2=, $pop77
	i32.load	$push1=, 8($pop76)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push75=, 8
	i32.add 	$push74=, $pop8, $pop75
	tee_local	$push73=, $4=, $pop74
	i32.store	4($2), $pop73
	i32.load	$push9=, 8($2)
	i32.sub 	$push10=, $pop9, $4
	i32.const	$push72=, 7
	i32.gt_u	$push11=, $pop10, $pop72
	i32.const	$push71=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop11, $pop71
	i32.const	$push70=, 8
	i32.add 	$push12=, $3, $pop70
	i32.load	$push13=, 4($2)
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop69
	i32.load	$push14=, 4($2)
	i32.const	$push68=, 8
	i32.add 	$push15=, $pop14, $pop68
	i32.store	4($2), $pop15
	i32.load	$3=, 4($0)
	i32.load	$push67=, 0($1)
	tee_local	$push66=, $2=, $pop67
	i32.load	$push17=, 8($pop66)
	i32.load	$push16=, 4($2)
	i32.sub 	$push18=, $pop17, $pop16
	i32.const	$push65=, 7
	i32.gt_u	$push19=, $pop18, $pop65
	i32.const	$push64=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop19, $pop64
	i32.load	$push20=, 4($2)
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop20, $pop63
	i32.load	$push21=, 4($2)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop21, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.store	4($2), $pop60
	i32.load	$push22=, 8($2)
	i32.sub 	$push23=, $pop22, $4
	i32.const	$push59=, 7
	i32.gt_u	$push24=, $pop23, $pop59
	i32.const	$push58=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop24, $pop58
	i32.const	$push57=, 8
	i32.add 	$push25=, $3, $pop57
	i32.load	$push26=, 4($2)
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop26, $pop56
	i32.load	$push27=, 4($2)
	i32.const	$push55=, 8
	i32.add 	$push28=, $pop27, $pop55
	i32.store	4($2), $pop28
	i32.load	$3=, 8($0)
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $2=, $pop54
	i32.load	$push30=, 8($pop53)
	i32.load	$push29=, 4($2)
	i32.sub 	$push31=, $pop30, $pop29
	i32.const	$push52=, 7
	i32.gt_u	$push32=, $pop31, $pop52
	i32.const	$push51=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop32, $pop51
	i32.load	$push33=, 4($2)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop33, $pop50
	i32.load	$push34=, 4($2)
	i32.const	$push49=, 8
	i32.add 	$push35=, $pop34, $pop49
	i32.store	4($2), $pop35
	i32.load	$0=, 12($0)
	i32.load	$push48=, 0($1)
	tee_local	$push47=, $2=, $pop48
	i32.load	$push37=, 8($pop47)
	i32.load	$push36=, 4($2)
	i32.sub 	$push38=, $pop37, $pop36
	i32.const	$push46=, 7
	i32.gt_u	$push39=, $pop38, $pop46
	i32.const	$push45=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop39, $pop45
	i32.load	$push40=, 4($2)
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop40, $pop44
	i32.load	$push41=, 4($2)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop41, $pop43
	i32.store	4($2), $pop42
	.endfunc
.Lfunc_end10:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE, .Lfunc_end10-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN4bcio5assetES7_RyS8_EEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE

	.text
	.hidden	_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.globl	_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.type	_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE,@function
_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE:
	.param  	i32, i64, i32, i32
	.local  	i64, i32, i64, i32, i64, i32, i32
	i32.const	$push114=, 0
	i32.const	$push111=, 0
	i32.load	$push112=, __stack_pointer($pop111)
	i32.const	$push113=, 240
	i32.sub 	$push170=, $pop112, $pop113
	tee_local	$push169=, $10=, $pop170
	i32.store	__stack_pointer($pop114), $pop169
	i32.const	$7=, 0
	i64.load	$push168=, 8($2)
	tee_local	$push167=, $4=, $pop168
	i64.const	$push166=, 8
	i64.shr_u	$push165=, $pop167, $pop166
	tee_local	$push164=, $8=, $pop165
	copy_local	$6=, $pop164
.LBB11_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push0=, $6
	i32.const	$push173=, 24
	i32.shl 	$push1=, $pop0, $pop173
	i32.const	$push172=, -1073741825
	i32.add 	$push2=, $pop1, $pop172
	i32.const	$push171=, 452984830
	i32.gt_u	$push3=, $pop2, $pop171
	br_if   	1, $pop3
	block   	
	i64.const	$push178=, 8
	i64.shr_u	$push177=, $6, $pop178
	tee_local	$push176=, $6=, $pop177
	i64.const	$push175=, 255
	i64.and 	$push4=, $pop176, $pop175
	i64.const	$push174=, 0
	i64.ne  	$push5=, $pop4, $pop174
	br_if   	0, $pop5
.LBB11_3:
	loop    	
	i64.const	$push183=, 8
	i64.shr_u	$push182=, $6, $pop183
	tee_local	$push181=, $6=, $pop182
	i64.const	$push180=, 255
	i64.and 	$push6=, $pop181, $pop180
	i64.const	$push179=, 0
	i64.ne  	$push7=, $pop6, $pop179
	br_if   	3, $pop7
	i32.const	$push187=, 1
	i32.add 	$push186=, $7, $pop187
	tee_local	$push185=, $7=, $pop186
	i32.const	$push184=, 7
	i32.lt_s	$push8=, $pop185, $pop184
	br_if   	0, $pop8
.LBB11_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push191=, 1
	i32.add 	$push190=, $7, $pop191
	tee_local	$push189=, $7=, $pop190
	i32.const	$push188=, 7
	i32.lt_s	$push9=, $pop189, $pop188
	br_if   	0, $pop9
	br      	2
.LBB11_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB11_7:
	end_block
	i32.const	$push10=, .L.str
	call    	bcio_assert@FUNCTION, $5, $pop10
	block   	
	block   	
	i32.load8_u	$push194=, 0($3)
	tee_local	$push193=, $7=, $pop194
	i32.const	$push192=, 1
	i32.and 	$push11=, $pop193, $pop192
	br_if   	0, $pop11
	i32.const	$push195=, 1
	i32.shr_u	$7=, $7, $pop195
	br      	1
.LBB11_9:
	end_block
	i32.load	$7=, 4($3)
.LBB11_10:
	end_block
	i32.const	$push12=, 257
	i32.lt_u	$push13=, $7, $pop12
	i32.const	$push14=, .L.str.4
	call    	bcio_assert@FUNCTION, $pop13, $pop14
	i32.const	$9=, 0
	i32.const	$push118=, 104
	i32.add 	$push119=, $10, $pop118
	i32.const	$push202=, 32
	i32.add 	$push15=, $pop119, $pop202
	i32.const	$push201=, 0
	i32.store	0($pop15), $pop201
	i64.const	$push16=, -1
	i64.store	120($10), $pop16
	i64.const	$push17=, 0
	i64.store	128($10), $pop17
	i64.load	$push200=, 0($0)
	tee_local	$push199=, $6=, $pop200
	i64.store	104($10), $pop199
	i64.store	112($10), $8
	i32.const	$5=, 0
	block   	
	i64.const	$push18=, -4157508551318700032
	i32.call	$push198=, db_find_i64@FUNCTION, $6, $8, $pop18, $8
	tee_local	$push197=, $7=, $pop198
	i32.const	$push196=, 0
	i32.lt_s	$push19=, $pop197, $pop196
	br_if   	0, $pop19
	i32.const	$push160=, 104
	i32.add 	$push161=, $10, $pop160
	i32.call	$push204=, _ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop161, $7
	tee_local	$push203=, $5=, $pop204
	i32.load	$push20=, 48($pop203)
	i32.const	$push162=, 104
	i32.add 	$push163=, $10, $pop162
	i32.eq  	$push21=, $pop20, $pop163
	i32.const	$push22=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop21, $pop22
.LBB11_12:
	end_block
	i32.const	$push208=, 0
	i32.ne  	$push23=, $5, $pop208
	i32.const	$push24=, .L.str.5
	call    	bcio_assert@FUNCTION, $pop23, $pop24
	i64.load	$push25=, 32($5)
	call    	require_auth@FUNCTION, $pop25
	i32.const	$push207=, 32
	i32.add 	$3=, $5, $pop207
	block   	
	i64.load	$push206=, 0($2)
	tee_local	$push205=, $6=, $pop206
	i64.const	$push26=, 4611686018427387903
	i64.add 	$push27=, $pop205, $pop26
	i64.const	$push28=, 9223372036854775806
	i64.gt_u	$push29=, $pop27, $pop28
	br_if   	0, $pop29
	i32.const	$7=, 0
.LBB11_14:
	block   	
	loop    	
	i32.wrap/i64	$push30=, $8
	i32.const	$push211=, 24
	i32.shl 	$push31=, $pop30, $pop211
	i32.const	$push210=, -1073741825
	i32.add 	$push32=, $pop31, $pop210
	i32.const	$push209=, 452984830
	i32.gt_u	$push33=, $pop32, $pop209
	br_if   	1, $pop33
	block   	
	i64.const	$push216=, 8
	i64.shr_u	$push215=, $8, $pop216
	tee_local	$push214=, $8=, $pop215
	i64.const	$push213=, 255
	i64.and 	$push34=, $pop214, $pop213
	i64.const	$push212=, 0
	i64.ne  	$push35=, $pop34, $pop212
	br_if   	0, $pop35
.LBB11_16:
	loop    	
	i64.const	$push221=, 8
	i64.shr_u	$push220=, $8, $pop221
	tee_local	$push219=, $8=, $pop220
	i64.const	$push218=, 255
	i64.and 	$push36=, $pop219, $pop218
	i64.const	$push217=, 0
	i64.ne  	$push37=, $pop36, $pop217
	br_if   	3, $pop37
	i32.const	$push225=, 1
	i32.add 	$push224=, $7, $pop225
	tee_local	$push223=, $7=, $pop224
	i32.const	$push222=, 7
	i32.lt_s	$push38=, $pop223, $pop222
	br_if   	0, $pop38
.LBB11_18:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push229=, 1
	i32.add 	$push228=, $7, $pop229
	tee_local	$push227=, $7=, $pop228
	i32.const	$push226=, 7
	i32.lt_s	$push39=, $pop227, $pop226
	br_if   	0, $pop39
	br      	2
.LBB11_19:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB11_20:
	end_block
	i32.const	$push40=, .L.str.6
	call    	bcio_assert@FUNCTION, $9, $pop40
	i64.const	$push41=, 0
	i64.gt_s	$push42=, $6, $pop41
	i32.const	$push43=, .L.str.7
	call    	bcio_assert@FUNCTION, $pop42, $pop43
	i64.load	$push44=, 8($5)
	i64.eq  	$push45=, $4, $pop44
	i32.const	$push46=, .L.str.8
	call    	bcio_assert@FUNCTION, $pop45, $pop46
	i64.load	$push48=, 16($5)
	i64.load	$push47=, 0($5)
	i64.sub 	$push49=, $pop48, $pop47
	i64.le_s	$push50=, $6, $pop49
	i32.const	$push51=, .L.str.9
	call    	bcio_assert@FUNCTION, $pop50, $pop51
	i32.load	$push52=, 48($5)
	i32.const	$push120=, 104
	i32.add 	$push121=, $10, $pop120
	i32.eq  	$push53=, $pop52, $pop121
	i32.const	$push54=, .L.str.33
	call    	bcio_assert@FUNCTION, $pop53, $pop54
	i64.load	$push55=, 104($10)
	i64.call	$push56=, current_receiver@FUNCTION
	i64.eq  	$push57=, $pop55, $pop56
	i32.const	$push58=, .L.str.34
	call    	bcio_assert@FUNCTION, $pop57, $pop58
	i64.load	$push241=, 8($5)
	tee_local	$push240=, $8=, $pop241
	i64.eq  	$push59=, $4, $pop240
	i32.const	$push60=, .L.str.36
	call    	bcio_assert@FUNCTION, $pop59, $pop60
	i64.load	$push61=, 0($5)
	i64.add 	$push239=, $pop61, $6
	tee_local	$push238=, $6=, $pop239
	i64.store	0($5), $pop238
	i64.const	$push62=, -4611686018427387904
	i64.gt_s	$push63=, $6, $pop62
	i32.const	$push64=, .L.str.37
	call    	bcio_assert@FUNCTION, $pop63, $pop64
	i64.load	$push65=, 0($5)
	i64.const	$push66=, 4611686018427387904
	i64.lt_s	$push67=, $pop65, $pop66
	i32.const	$push68=, .L.str.38
	call    	bcio_assert@FUNCTION, $pop67, $pop68
	i64.const	$push69=, 8
	i64.shr_u	$push237=, $8, $pop69
	tee_local	$push236=, $6=, $pop237
	i64.load	$push70=, 8($5)
	i64.const	$push235=, 8
	i64.shr_u	$push71=, $pop70, $pop235
	i64.eq  	$push72=, $pop236, $pop71
	i32.const	$push73=, .L.str.35
	call    	bcio_assert@FUNCTION, $pop72, $pop73
	i32.const	$push122=, 144
	i32.add 	$push123=, $10, $pop122
	i32.const	$push74=, 48
	i32.add 	$push75=, $pop123, $pop74
	i32.store	208($10), $pop75
	i32.const	$push124=, 144
	i32.add 	$push125=, $10, $pop124
	i32.store	204($10), $pop125
	i32.const	$push126=, 144
	i32.add 	$push127=, $10, $pop126
	i32.store	200($10), $pop127
	i32.const	$push128=, 200
	i32.add 	$push129=, $10, $pop128
	i32.store	216($10), $pop129
	i32.const	$push76=, 16
	i32.add 	$push77=, $5, $pop76
	i32.store	228($10), $pop77
	i32.store	224($10), $5
	i32.store	232($10), $3
	i32.const	$push78=, 40
	i32.add 	$push79=, $5, $pop78
	i32.store	236($10), $pop79
	i32.const	$push130=, 224
	i32.add 	$push131=, $10, $pop130
	i32.const	$push132=, 216
	i32.add 	$push133=, $10, $pop132
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN4bcio5assetES8_RKySA_EEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE@FUNCTION, $pop131, $pop133
	i32.load	$push80=, 52($5)
	i64.const	$push234=, 0
	i32.const	$push134=, 144
	i32.add 	$push135=, $10, $pop134
	i32.const	$push233=, 48
	call    	db_update_i64@FUNCTION, $pop80, $pop234, $pop135, $pop233
	block   	
	i32.const	$push136=, 104
	i32.add 	$push137=, $10, $pop136
	i32.const	$push232=, 16
	i32.add 	$push231=, $pop137, $pop232
	tee_local	$push230=, $7=, $pop231
	i64.load	$push81=, 0($pop230)
	i64.lt_u	$push82=, $6, $pop81
	br_if   	0, $pop82
	i64.const	$push83=, 1
	i64.add 	$push84=, $6, $pop83
	i64.store	0($7), $pop84
.LBB11_22:
	end_block
	i32.const	$push138=, 88
	i32.add 	$push139=, $10, $pop138
	i32.const	$push85=, 12
	i32.add 	$push254=, $pop139, $pop85
	tee_local	$push253=, $7=, $pop254
	i32.const	$push252=, 12
	i32.add 	$push86=, $2, $pop252
	i32.load	$push87=, 0($pop86)
	i32.store	0($pop253), $pop87
	i32.const	$push140=, 88
	i32.add 	$push141=, $10, $pop140
	i32.const	$push251=, 8
	i32.add 	$push250=, $pop141, $pop251
	tee_local	$push249=, $5=, $pop250
	i32.const	$push248=, 8
	i32.add 	$push247=, $2, $pop248
	tee_local	$push246=, $9=, $pop247
	i32.load	$push88=, 0($pop246)
	i32.store	0($pop249), $pop88
	i32.const	$push89=, 4
	i32.add 	$push90=, $2, $pop89
	i32.load	$push91=, 0($pop90)
	i32.store	92($10), $pop91
	i32.load	$push92=, 0($2)
	i32.store	88($10), $pop92
	i64.load	$6=, 0($3)
	i32.const	$push142=, 40
	i32.add 	$push143=, $10, $pop142
	i32.const	$push245=, 12
	i32.add 	$push93=, $pop143, $pop245
	i32.load	$push94=, 0($7)
	i32.store	0($pop93), $pop94
	i32.const	$push144=, 40
	i32.add 	$push145=, $10, $pop144
	i32.const	$push244=, 8
	i32.add 	$push95=, $pop145, $pop244
	i32.load	$push96=, 0($5)
	i32.store	0($pop95), $pop96
	i32.load	$push97=, 92($10)
	i32.store	44($10), $pop97
	i32.load	$push98=, 88($10)
	i32.store	40($10), $pop98
	i32.const	$push146=, 40
	i32.add 	$push147=, $10, $pop146
	call    	_ZN4bcio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $6, $pop147, $6
	block   	
	i64.load	$push243=, 0($3)
	tee_local	$push242=, $6=, $pop243
	i64.eq  	$push99=, $pop242, $1
	br_if   	0, $pop99
	i32.const	$push148=, 72
	i32.add 	$push149=, $10, $pop148
	i32.const	$push262=, 8
	i32.add 	$push100=, $pop149, $pop262
	i64.load	$push261=, 0($9)
	tee_local	$push260=, $8=, $pop261
	i64.store	0($pop100), $pop260
	i64.load	$4=, 0($2)
	i32.const	$push150=, 24
	i32.add 	$push151=, $10, $pop150
	i32.const	$push259=, 8
	i32.add 	$push101=, $pop151, $pop259
	i64.store	0($pop101), $8
	i64.store	72($10), $4
	i32.load	$push102=, 76($10)
	i32.store	28($10), $pop102
	i32.load	$push103=, 72($10)
	i32.store	24($10), $pop103
	i32.const	$push152=, 24
	i32.add 	$push153=, $10, $pop152
	call    	_ZN4bcio5token11sub_balanceEyNS_5assetE@FUNCTION, $0, $6, $pop153
	i32.const	$push154=, 56
	i32.add 	$push155=, $10, $pop154
	i32.const	$push258=, 8
	i32.add 	$push104=, $pop155, $pop258
	i64.load	$push257=, 0($9)
	tee_local	$push256=, $8=, $pop257
	i64.store	0($pop104), $pop256
	i64.load	$4=, 0($3)
	i64.load	$6=, 0($2)
	i32.const	$push156=, 8
	i32.add 	$push157=, $10, $pop156
	i32.const	$push255=, 8
	i32.add 	$push105=, $pop157, $pop255
	i64.store	0($pop105), $8
	i64.store	56($10), $6
	i64.store	8($10), $6
	i32.const	$push158=, 8
	i32.add 	$push159=, $10, $pop158
	call    	_ZN4bcio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $1, $pop159, $4
.LBB11_24:
	end_block
	block   	
	i32.load	$push264=, 128($10)
	tee_local	$push263=, $2=, $pop264
	i32.eqz 	$push273=, $pop263
	br_if   	0, $pop273
	block   	
	block   	
	i32.const	$push106=, 132
	i32.add 	$push268=, $10, $pop106
	tee_local	$push267=, $3=, $pop268
	i32.load	$push266=, 0($pop267)
	tee_local	$push265=, $7=, $pop266
	i32.eq  	$push107=, $pop265, $2
	br_if   	0, $pop107
.LBB11_27:
	loop    	
	i32.const	$push272=, -24
	i32.add 	$push271=, $7, $pop272
	tee_local	$push270=, $7=, $pop271
	i32.load	$5=, 0($pop270)
	i32.const	$push269=, 0
	i32.store	0($7), $pop269
	block   	
	i32.eqz 	$push274=, $5
	br_if   	0, $pop274
	call    	_ZdlPv@FUNCTION, $5
.LBB11_29:
	end_block
	i32.ne  	$push108=, $2, $7
	br_if   	0, $pop108
	end_loop
	i32.const	$push109=, 128
	i32.add 	$push110=, $10, $pop109
	i32.load	$7=, 0($pop110)
	br      	1
.LBB11_31:
	end_block
	copy_local	$7=, $2
.LBB11_32:
	end_block
	i32.store	0($3), $2
	call    	_ZdlPv@FUNCTION, $7
.LBB11_33:
	end_block
	i32.const	$push117=, 0
	i32.const	$push115=, 240
	i32.add 	$push116=, $10, $pop115
	i32.store	__stack_pointer($pop117), $pop116
	.endfunc
.Lfunc_end11:
	.size	_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE, .Lfunc_end11-_ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

	.hidden	_ZN4bcio5token11add_balanceEyNS_5assetEy
	.globl	_ZN4bcio5token11add_balanceEyNS_5assetEy
	.type	_ZN4bcio5token11add_balanceEyNS_5assetEy,@function
_ZN4bcio5token11add_balanceEyNS_5assetEy:
	.param  	i32, i64, i32, i64
	.local  	i64, i32, i64, i32, i32, i32
	i32.const	$push96=, 0
	i32.const	$push93=, 0
	i32.load	$push94=, __stack_pointer($pop93)
	i32.const	$push95=, 80
	i32.sub 	$push146=, $pop94, $pop95
	tee_local	$push145=, $9=, $pop146
	i32.store	__stack_pointer($pop96), $pop145
	i32.const	$8=, 0
	i32.const	$push100=, 8
	i32.add 	$push101=, $9, $pop100
	i32.const	$push144=, 32
	i32.add 	$push0=, $pop101, $pop144
	i32.const	$push143=, 0
	i32.store	0($pop0), $pop143
	i64.const	$push1=, -1
	i64.store	24($9), $pop1
	i64.const	$push142=, 0
	i64.store	32($9), $pop142
	i64.load	$push141=, 0($0)
	tee_local	$push140=, $6=, $pop141
	i64.store	8($9), $pop140
	i64.store	16($9), $1
	block   	
	block   	
	block   	
	block   	
	i64.const	$push3=, 3607749779137757184
	i64.load	$push139=, 8($2)
	tee_local	$push138=, $4=, $pop139
	i64.const	$push137=, 8
	i64.shr_u	$push2=, $pop138, $pop137
	i32.call	$push136=, db_find_i64@FUNCTION, $6, $1, $pop3, $pop2
	tee_local	$push135=, $0=, $pop136
	i32.const	$push134=, 0
	i32.lt_s	$push4=, $pop135, $pop134
	br_if   	0, $pop4
	i32.const	$push120=, 8
	i32.add 	$push121=, $9, $pop120
	i32.call	$push166=, _ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop121, $0
	tee_local	$push165=, $8=, $pop166
	i32.load	$push5=, 16($pop165)
	i32.const	$push122=, 8
	i32.add 	$push123=, $9, $pop122
	i32.eq  	$push6=, $pop5, $pop123
	i32.const	$push7=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop6, $pop7
	i32.const	$push9=, 1
	i32.const	$push8=, .L.str.42
	call    	bcio_assert@FUNCTION, $pop9, $pop8
	i32.load	$push10=, 16($8)
	i32.const	$push124=, 8
	i32.add 	$push125=, $9, $pop124
	i32.eq  	$push11=, $pop10, $pop125
	i32.const	$push12=, .L.str.33
	call    	bcio_assert@FUNCTION, $pop11, $pop12
	i64.load	$push13=, 8($9)
	i64.call	$push14=, current_receiver@FUNCTION
	i64.eq  	$push15=, $pop13, $pop14
	i32.const	$push16=, .L.str.34
	call    	bcio_assert@FUNCTION, $pop15, $pop16
	i64.load	$push164=, 8($8)
	tee_local	$push163=, $1=, $pop164
	i64.eq  	$push17=, $4, $pop163
	i32.const	$push18=, .L.str.36
	call    	bcio_assert@FUNCTION, $pop17, $pop18
	i64.load	$push20=, 0($8)
	i64.load	$push19=, 0($2)
	i64.add 	$push162=, $pop20, $pop19
	tee_local	$push161=, $6=, $pop162
	i64.store	0($8), $pop161
	i64.const	$push21=, -4611686018427387904
	i64.gt_s	$push22=, $6, $pop21
	i32.const	$push23=, .L.str.37
	call    	bcio_assert@FUNCTION, $pop22, $pop23
	i64.load	$push24=, 0($8)
	i64.const	$push25=, 4611686018427387904
	i64.lt_s	$push26=, $pop24, $pop25
	i32.const	$push27=, .L.str.38
	call    	bcio_assert@FUNCTION, $pop26, $pop27
	i64.const	$push160=, 8
	i64.shr_u	$push159=, $1, $pop160
	tee_local	$push158=, $1=, $pop159
	i64.load	$push28=, 8($8)
	i64.const	$push157=, 8
	i64.shr_u	$push29=, $pop28, $pop157
	i64.eq  	$push30=, $pop158, $pop29
	i32.const	$push31=, .L.str.35
	call    	bcio_assert@FUNCTION, $pop30, $pop31
	i32.const	$push156=, 1
	i32.const	$push32=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop156, $pop32
	i32.const	$push126=, 64
	i32.add 	$push127=, $9, $pop126
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop127, $8, $pop33
	i32.const	$push155=, 1
	i32.const	$push154=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop155, $pop154
	i32.const	$push128=, 64
	i32.add 	$push129=, $9, $pop128
	i32.const	$push153=, 8
	i32.or  	$push35=, $pop129, $pop153
	i32.const	$push152=, 8
	i32.add 	$push34=, $8, $pop152
	i32.const	$push151=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop34, $pop151
	i32.load	$push36=, 20($8)
	i64.const	$push150=, 0
	i32.const	$push130=, 64
	i32.add 	$push131=, $9, $pop130
	i32.const	$push37=, 16
	call    	db_update_i64@FUNCTION, $pop36, $pop150, $pop131, $pop37
	i32.const	$push132=, 8
	i32.add 	$push133=, $9, $pop132
	i32.const	$push149=, 16
	i32.add 	$push148=, $pop133, $pop149
	tee_local	$push147=, $8=, $pop148
	i64.load	$push38=, 0($pop147)
	i64.lt_u	$push39=, $1, $pop38
	br_if   	1, $pop39
	i64.const	$push40=, 1
	i64.add 	$push41=, $1, $pop40
	i64.store	0($8), $pop41
	i32.load	$push168=, 32($9)
	tee_local	$push167=, $2=, $pop168
	br_if   	2, $pop167
	br      	3
.LBB12_3:
	end_block
	i64.load	$push42=, 8($9)
	i64.call	$push43=, current_receiver@FUNCTION
	i64.eq  	$push44=, $pop42, $pop43
	i32.const	$push45=, .L.str.31
	call    	bcio_assert@FUNCTION, $pop44, $pop45
	i32.const	$push173=, 32
	i32.call	$push172=, _Znwj@FUNCTION, $pop173
	tee_local	$push171=, $0=, $pop172
	i64.const	$push46=, 4407812
	i64.store	8($pop171), $pop46
	i64.const	$push170=, 0
	i64.store	0($0), $pop170
	i32.const	$push169=, 1
	i32.const	$push47=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop169, $pop47
	i32.const	$push48=, 8
	i32.add 	$5=, $0, $pop48
	i64.const	$1=, 17218
.LBB12_4:
	block   	
	loop    	
	i32.const	$7=, 0
	i32.wrap/i64	$push49=, $1
	i32.const	$push176=, 24
	i32.shl 	$push50=, $pop49, $pop176
	i32.const	$push175=, -1073741825
	i32.add 	$push51=, $pop50, $pop175
	i32.const	$push174=, 452984830
	i32.gt_u	$push52=, $pop51, $pop174
	br_if   	1, $pop52
	block   	
	i64.const	$push181=, 8
	i64.shr_u	$push180=, $1, $pop181
	tee_local	$push179=, $1=, $pop180
	i64.const	$push178=, 255
	i64.and 	$push53=, $pop179, $pop178
	i64.const	$push177=, 0
	i64.ne  	$push54=, $pop53, $pop177
	br_if   	0, $pop54
.LBB12_6:
	loop    	
	i64.const	$push186=, 8
	i64.shr_u	$push185=, $1, $pop186
	tee_local	$push184=, $1=, $pop185
	i64.const	$push183=, 255
	i64.and 	$push55=, $pop184, $pop183
	i64.const	$push182=, 0
	i64.ne  	$push56=, $pop55, $pop182
	br_if   	3, $pop56
	i32.const	$push190=, 1
	i32.add 	$push189=, $8, $pop190
	tee_local	$push188=, $8=, $pop189
	i32.const	$push187=, 7
	i32.lt_s	$push57=, $pop188, $pop187
	br_if   	0, $pop57
.LBB12_8:
	end_loop
	end_block
	i32.const	$7=, 1
	i32.const	$push194=, 1
	i32.add 	$push193=, $8, $pop194
	tee_local	$push192=, $8=, $pop193
	i32.const	$push191=, 7
	i32.lt_s	$push58=, $pop192, $pop191
	br_if   	0, $pop58
.LBB12_9:
	end_loop
	end_block
	i32.const	$push59=, .L.str
	call    	bcio_assert@FUNCTION, $7, $pop59
	i32.const	$push102=, 8
	i32.add 	$push103=, $9, $pop102
	i32.store	16($0), $pop103
	i32.const	$push60=, 8
	i32.add 	$push211=, $0, $pop60
	tee_local	$push210=, $8=, $pop211
	i32.const	$push209=, 8
	i32.add 	$push61=, $2, $pop209
	i64.load	$push62=, 0($pop61)
	i64.store	0($pop210), $pop62
	i64.load	$push63=, 0($2)
	i64.store	0($0), $pop63
	i32.const	$push65=, 1
	i32.const	$push64=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop65, $pop64
	i32.const	$push104=, 64
	i32.add 	$push105=, $9, $pop104
	i32.const	$push208=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop105, $0, $pop208
	i32.const	$push207=, 1
	i32.const	$push206=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop207, $pop206
	i32.const	$push106=, 64
	i32.add 	$push107=, $9, $pop106
	i32.const	$push205=, 8
	i32.or  	$push66=, $pop107, $pop205
	i32.const	$push204=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop66, $5, $pop204
	i32.const	$push108=, 8
	i32.add 	$push109=, $9, $pop108
	i32.const	$push203=, 8
	i32.add 	$push68=, $pop109, $pop203
	i64.load	$push69=, 0($pop68)
	i64.const	$push71=, 3607749779137757184
	i64.load	$push67=, 0($8)
	i64.const	$push202=, 8
	i64.shr_u	$push201=, $pop67, $pop202
	tee_local	$push200=, $1=, $pop201
	i32.const	$push110=, 64
	i32.add 	$push111=, $9, $pop110
	i32.const	$push70=, 16
	i32.call	$push199=, db_store_i64@FUNCTION, $pop69, $pop71, $3, $pop200, $pop111, $pop70
	tee_local	$push198=, $2=, $pop199
	i32.store	20($0), $pop198
	block   	
	i32.const	$push112=, 8
	i32.add 	$push113=, $9, $pop112
	i32.const	$push197=, 16
	i32.add 	$push196=, $pop113, $pop197
	tee_local	$push195=, $7=, $pop196
	i64.load	$push72=, 0($pop195)
	i64.lt_u	$push73=, $1, $pop72
	br_if   	0, $pop73
	i64.const	$push74=, 1
	i64.add 	$push75=, $1, $pop74
	i64.store	0($7), $pop75
.LBB12_11:
	end_block
	i32.store	56($9), $0
	i64.load	$push76=, 0($8)
	i64.const	$push218=, 8
	i64.shr_u	$push217=, $pop76, $pop218
	tee_local	$push216=, $1=, $pop217
	i64.store	64($9), $pop216
	i32.store	52($9), $2
	block   	
	block   	
	i32.const	$push80=, 36
	i32.add 	$push215=, $9, $pop80
	tee_local	$push214=, $7=, $pop215
	i32.load	$push213=, 0($pop214)
	tee_local	$push212=, $8=, $pop213
	i32.const	$push77=, 40
	i32.add 	$push78=, $9, $pop77
	i32.load	$push79=, 0($pop78)
	i32.ge_u	$push81=, $pop212, $pop79
	br_if   	0, $pop81
	i64.store	8($8), $1
	i32.store	16($8), $2
	i32.const	$push84=, 0
	i32.store	56($9), $pop84
	i32.store	0($8), $0
	i32.const	$push85=, 24
	i32.add 	$push86=, $8, $pop85
	i32.store	0($7), $pop86
	br      	1
.LBB12_13:
	end_block
	i32.const	$push82=, 32
	i32.add 	$push83=, $9, $pop82
	i32.const	$push114=, 56
	i32.add 	$push115=, $9, $pop114
	i32.const	$push116=, 64
	i32.add 	$push117=, $9, $pop116
	i32.const	$push118=, 52
	i32.add 	$push119=, $9, $pop118
	call    	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop83, $pop115, $pop117, $pop119
.LBB12_14:
	end_block
	i32.load	$8=, 56($9)
	i32.const	$push87=, 0
	i32.store	56($9), $pop87
	i32.eqz 	$push229=, $8
	br_if   	0, $pop229
	call    	_ZdlPv@FUNCTION, $8
.LBB12_16:
	end_block
	i32.load	$push220=, 32($9)
	tee_local	$push219=, $2=, $pop220
	i32.eqz 	$push230=, $pop219
	br_if   	1, $pop230
.LBB12_17:
	end_block
	block   	
	block   	
	i32.const	$push88=, 36
	i32.add 	$push224=, $9, $pop88
	tee_local	$push223=, $7=, $pop224
	i32.load	$push222=, 0($pop223)
	tee_local	$push221=, $8=, $pop222
	i32.eq  	$push89=, $pop221, $2
	br_if   	0, $pop89
.LBB12_19:
	loop    	
	i32.const	$push228=, -24
	i32.add 	$push227=, $8, $pop228
	tee_local	$push226=, $8=, $pop227
	i32.load	$0=, 0($pop226)
	i32.const	$push225=, 0
	i32.store	0($8), $pop225
	block   	
	i32.eqz 	$push231=, $0
	br_if   	0, $pop231
	call    	_ZdlPv@FUNCTION, $0
.LBB12_21:
	end_block
	i32.ne  	$push90=, $2, $8
	br_if   	0, $pop90
	end_loop
	i32.const	$push91=, 32
	i32.add 	$push92=, $9, $pop91
	i32.load	$8=, 0($pop92)
	br      	1
.LBB12_23:
	end_block
	copy_local	$8=, $2
.LBB12_24:
	end_block
	i32.store	0($7), $2
	call    	_ZdlPv@FUNCTION, $8
.LBB12_25:
	end_block
	i32.const	$push99=, 0
	i32.const	$push97=, 80
	i32.add 	$push98=, $9, $pop97
	i32.store	__stack_pointer($pop99), $pop98
	.endfunc
.Lfunc_end12:
	.size	_ZN4bcio5token11add_balanceEyNS_5assetEy, .Lfunc_end12-_ZN4bcio5token11add_balanceEyNS_5assetEy

	.hidden	_ZN4bcio5token11sub_balanceEyNS_5assetE
	.globl	_ZN4bcio5token11sub_balanceEyNS_5assetE
	.type	_ZN4bcio5token11sub_balanceEyNS_5assetE,@function
_ZN4bcio5token11sub_balanceEyNS_5assetE:
	.param  	i32, i64, i32
	.local  	i64, i32, i64, i64, i32, i32
	i32.const	$push52=, 0
	i32.const	$push49=, 0
	i32.load	$push50=, __stack_pointer($pop49)
	i32.const	$push51=, 64
	i32.sub 	$push89=, $pop50, $pop51
	tee_local	$push88=, $8=, $pop89
	i32.store	__stack_pointer($pop52), $pop88
	i32.const	$push0=, 40
	i32.add 	$push1=, $8, $pop0
	i32.const	$push2=, 0
	i32.store	0($pop1), $pop2
	i64.store	16($8), $1
	i64.const	$push3=, -1
	i64.store	24($8), $pop3
	i64.const	$push4=, 0
	i64.store	32($8), $pop4
	i64.load	$push5=, 0($0)
	i64.store	8($8), $pop5
	i32.const	$push56=, 8
	i32.add 	$push57=, $8, $pop56
	i64.load	$push87=, 8($2)
	tee_local	$push86=, $3=, $pop87
	i64.const	$push6=, 8
	i64.shr_u	$push7=, $pop86, $pop6
	i32.const	$push8=, .L.str.22
	i32.call	$push85=, _ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc@FUNCTION, $pop57, $pop7, $pop8
	tee_local	$push84=, $0=, $pop85
	i64.load	$push9=, 0($pop84)
	i64.load	$push83=, 0($2)
	tee_local	$push82=, $5=, $pop83
	i64.ge_s	$push10=, $pop9, $pop82
	i32.const	$push11=, .L.str.23
	call    	bcio_assert@FUNCTION, $pop10, $pop11
	i32.load	$push12=, 16($0)
	i32.const	$push58=, 8
	i32.add 	$push59=, $8, $pop58
	i32.eq  	$push13=, $pop12, $pop59
	i32.const	$push14=, .L.str.33
	call    	bcio_assert@FUNCTION, $pop13, $pop14
	i64.load	$push15=, 8($8)
	i64.call	$push16=, current_receiver@FUNCTION
	i64.eq  	$push17=, $pop15, $pop16
	i32.const	$push18=, .L.str.34
	call    	bcio_assert@FUNCTION, $pop17, $pop18
	i64.load	$push81=, 8($0)
	tee_local	$push80=, $6=, $pop81
	i64.eq  	$push19=, $3, $pop80
	i32.const	$push20=, .L.str.39
	call    	bcio_assert@FUNCTION, $pop19, $pop20
	i64.load	$push21=, 0($0)
	i64.sub 	$push79=, $pop21, $5
	tee_local	$push78=, $3=, $pop79
	i64.store	0($0), $pop78
	i64.const	$push22=, -4611686018427387904
	i64.gt_s	$push23=, $3, $pop22
	i32.const	$push24=, .L.str.40
	call    	bcio_assert@FUNCTION, $pop23, $pop24
	i64.load	$push25=, 0($0)
	i64.const	$push26=, 4611686018427387904
	i64.lt_s	$push27=, $pop25, $pop26
	i32.const	$push28=, .L.str.41
	call    	bcio_assert@FUNCTION, $pop27, $pop28
	i64.const	$push77=, 8
	i64.shr_u	$push76=, $6, $pop77
	tee_local	$push75=, $3=, $pop76
	i64.load	$push29=, 8($0)
	i64.const	$push74=, 8
	i64.shr_u	$push30=, $pop29, $pop74
	i64.eq  	$push31=, $pop75, $pop30
	i32.const	$push32=, .L.str.35
	call    	bcio_assert@FUNCTION, $pop31, $pop32
	i32.const	$push34=, 1
	i32.const	$push33=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop34, $pop33
	i32.const	$push60=, 48
	i32.add 	$push61=, $8, $pop60
	i32.const	$push35=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop61, $0, $pop35
	i32.const	$push73=, 1
	i32.const	$push72=, .L.str.32
	call    	bcio_assert@FUNCTION, $pop73, $pop72
	i32.const	$push62=, 48
	i32.add 	$push63=, $8, $pop62
	i32.const	$push71=, 8
	i32.or  	$push37=, $pop63, $pop71
	i32.const	$push70=, 8
	i32.add 	$push36=, $0, $pop70
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop37, $pop36, $pop69
	i32.load	$push38=, 20($0)
	i32.const	$push64=, 48
	i32.add 	$push65=, $8, $pop64
	i32.const	$push68=, 16
	call    	db_update_i64@FUNCTION, $pop38, $1, $pop65, $pop68
	block   	
	i64.load	$push39=, 24($8)
	i64.lt_u	$push40=, $3, $pop39
	br_if   	0, $pop40
	i32.const	$push66=, 8
	i32.add 	$push67=, $8, $pop66
	i32.const	$push90=, 16
	i32.add 	$push43=, $pop67, $pop90
	i64.const	$push41=, 1
	i64.add 	$push42=, $3, $pop41
	i64.store	0($pop43), $pop42
.LBB13_2:
	end_block
	block   	
	i32.load	$push92=, 32($8)
	tee_local	$push91=, $4=, $pop92
	i32.eqz 	$push101=, $pop91
	br_if   	0, $pop101
	block   	
	block   	
	i32.const	$push44=, 36
	i32.add 	$push96=, $8, $pop44
	tee_local	$push95=, $7=, $pop96
	i32.load	$push94=, 0($pop95)
	tee_local	$push93=, $0=, $pop94
	i32.eq  	$push45=, $pop93, $4
	br_if   	0, $pop45
.LBB13_5:
	loop    	
	i32.const	$push100=, -24
	i32.add 	$push99=, $0, $pop100
	tee_local	$push98=, $0=, $pop99
	i32.load	$2=, 0($pop98)
	i32.const	$push97=, 0
	i32.store	0($0), $pop97
	block   	
	i32.eqz 	$push102=, $2
	br_if   	0, $pop102
	call    	_ZdlPv@FUNCTION, $2
.LBB13_7:
	end_block
	i32.ne  	$push46=, $4, $0
	br_if   	0, $pop46
	end_loop
	i32.const	$push47=, 32
	i32.add 	$push48=, $8, $pop47
	i32.load	$0=, 0($pop48)
	br      	1
.LBB13_9:
	end_block
	copy_local	$0=, $4
.LBB13_10:
	end_block
	i32.store	0($7), $4
	call    	_ZdlPv@FUNCTION, $0
.LBB13_11:
	end_block
	i32.const	$push55=, 0
	i32.const	$push53=, 64
	i32.add 	$push54=, $8, $pop53
	i32.store	__stack_pointer($pop55), $pop54
	.endfunc
.Lfunc_end13:
	.size	_ZN4bcio5token11sub_balanceEyNS_5assetE, .Lfunc_end13-_ZN4bcio5token11sub_balanceEyNS_5assetE

	.section	.text._ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,"axG",@progbits,_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,comdat
	.hidden	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc
	.weak	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc
	.type	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,@function
_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push28=, 0($pop1)
	tee_local	$push27=, $7=, $pop28
	i32.load	$push26=, 24($0)
	tee_local	$push25=, $3=, $pop26
	i32.eq  	$push2=, $pop27, $pop25
	br_if   	0, $pop2
	i32.const	$push29=, -24
	i32.add 	$6=, $7, $pop29
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB14_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push30=, 8
	i64.shr_u	$push6=, $pop5, $pop30
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push34=, -24
	i32.add 	$push33=, $6, $pop34
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
	i32.add 	$push8=, $5, $4
	i32.const	$push31=, -24
	i32.ne  	$push9=, $pop8, $pop31
	br_if   	0, $pop9
.LBB14_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push36=, 0($pop12)
	tee_local	$push35=, $6=, $pop36
	i32.load	$push13=, 16($pop35)
	i32.eq  	$push14=, $pop13, $0
	i32.const	$push15=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop14, $pop15
	br      	1
.LBB14_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push17=, 0($0)
	i64.load	$push16=, 8($0)
	i64.const	$push18=, 3607749779137757184
	i32.call	$push39=, db_find_i64@FUNCTION, $pop17, $pop16, $pop18, $1
	tee_local	$push38=, $5=, $pop39
	i32.const	$push37=, 0
	i32.lt_s	$push19=, $pop38, $pop37
	br_if   	0, $pop19
	i32.call	$push41=, _ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push40=, $6=, $pop41
	i32.load	$push20=, 16($pop40)
	i32.eq  	$push21=, $pop20, $0
	i32.const	$push22=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop21, $pop22
.LBB14_8:
	end_block
	i32.const	$push23=, 0
	i32.ne  	$push24=, $6, $pop23
	call    	bcio_assert@FUNCTION, $pop24, $2
	copy_local	$push42=, $6
	.endfunc
.Lfunc_end14:
	.size	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc, .Lfunc_end14-_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc

	.section	.text._ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,@function
_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push60=, 0
	i32.load	$push61=, __stack_pointer($pop60)
	i32.const	$push62=, 32
	i32.sub 	$push79=, $pop61, $pop62
	tee_local	$push78=, $10=, $pop79
	copy_local	$9=, $pop78
	i32.const	$push63=, 0
	i32.store	__stack_pointer($pop63), $10
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push77=, 0($pop1)
	tee_local	$push76=, $7=, $pop77
	i32.load	$push75=, 24($0)
	tee_local	$push74=, $3=, $pop75
	i32.eq  	$push2=, $pop76, $pop74
	br_if   	0, $pop2
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
	i32.const	$push80=, -24
	i32.add 	$6=, $7, $pop80
.LBB15_2:
	loop    	
	i32.const	$push81=, 16
	i32.add 	$push4=, $6, $pop81
	i32.load	$push5=, 0($pop4)
	i32.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$7=, $6
	i32.const	$push85=, -24
	i32.add 	$push84=, $6, $pop85
	tee_local	$push83=, $5=, $pop84
	copy_local	$6=, $pop83
	i32.add 	$push7=, $5, $4
	i32.const	$push82=, -24
	i32.ne  	$push8=, $pop7, $pop82
	br_if   	0, $pop8
.LBB15_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $7, $3
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $7, $pop10
	i32.load	$5=, 0($pop11)
	br      	1
.LBB15_6:
	end_block
	i32.const	$push12=, 0
	i32.const	$push88=, 0
	i32.call	$push87=, db_get_i64@FUNCTION, $1, $pop12, $pop88
	tee_local	$push86=, $7=, $pop87
	i32.const	$push13=, 31
	i32.shr_u	$push14=, $pop86, $pop13
	i32.const	$push15=, 1
	i32.xor 	$push16=, $pop14, $pop15
	i32.const	$push17=, .L.str.28
	call    	bcio_assert@FUNCTION, $pop16, $pop17
	block   	
	block   	
	i32.const	$push18=, 512
	i32.le_u	$push19=, $7, $pop18
	br_if   	0, $pop19
	i32.call	$push90=, malloc@FUNCTION, $7
	tee_local	$push89=, $3=, $pop90
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $pop89, $7
	call    	free@FUNCTION, $3
	br      	1
.LBB15_8:
	end_block
	i32.const	$push59=, 0
	i32.const	$push20=, 15
	i32.add 	$push21=, $7, $pop20
	i32.const	$push22=, -16
	i32.and 	$push23=, $pop21, $pop22
	i32.sub 	$push92=, $10, $pop23
	tee_local	$push91=, $3=, $pop92
	copy_local	$push73=, $pop91
	i32.store	__stack_pointer($pop59), $pop73
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $3, $7
.LBB15_9:
	end_block
	i32.const	$push97=, 24
	i32.add 	$2=, $0, $pop97
	i32.const	$push24=, 32
	i32.call	$push96=, _Znwj@FUNCTION, $pop24
	tee_local	$push95=, $5=, $pop96
	i64.const	$push25=, 4407812
	i64.store	8($pop95), $pop25
	i64.const	$push94=, 0
	i64.store	0($5), $pop94
	i32.const	$push93=, 1
	i32.const	$push26=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop93, $pop26
	i32.const	$push27=, 8
	i32.add 	$10=, $5, $pop27
	i64.const	$8=, 17218
	i32.const	$6=, 0
.LBB15_10:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push28=, $8
	i32.const	$push100=, 24
	i32.shl 	$push29=, $pop28, $pop100
	i32.const	$push99=, -1073741825
	i32.add 	$push30=, $pop29, $pop99
	i32.const	$push98=, 452984830
	i32.gt_u	$push31=, $pop30, $pop98
	br_if   	1, $pop31
	block   	
	i64.const	$push105=, 8
	i64.shr_u	$push104=, $8, $pop105
	tee_local	$push103=, $8=, $pop104
	i64.const	$push102=, 255
	i64.and 	$push32=, $pop103, $pop102
	i64.const	$push101=, 0
	i64.ne  	$push33=, $pop32, $pop101
	br_if   	0, $pop33
.LBB15_12:
	loop    	
	i64.const	$push110=, 8
	i64.shr_u	$push109=, $8, $pop110
	tee_local	$push108=, $8=, $pop109
	i64.const	$push107=, 255
	i64.and 	$push34=, $pop108, $pop107
	i64.const	$push106=, 0
	i64.ne  	$push35=, $pop34, $pop106
	br_if   	3, $pop35
	i32.const	$push114=, 1
	i32.add 	$push113=, $6, $pop114
	tee_local	$push112=, $6=, $pop113
	i32.const	$push111=, 7
	i32.lt_s	$push36=, $pop112, $pop111
	br_if   	0, $pop36
.LBB15_14:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push118=, 1
	i32.add 	$push117=, $6, $pop118
	tee_local	$push116=, $6=, $pop117
	i32.const	$push115=, 7
	i32.lt_s	$push37=, $pop116, $pop115
	br_if   	0, $pop37
	br      	2
.LBB15_15:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB15_16:
	end_block
	i32.const	$push38=, .L.str
	call    	bcio_assert@FUNCTION, $4, $pop38
	i32.store	16($5), $0
	i32.const	$push39=, 7
	i32.gt_u	$push40=, $7, $pop39
	i32.const	$push41=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop40, $pop41
	i32.const	$push42=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $3, $pop42
	i32.const	$push43=, -8
	i32.and 	$push44=, $7, $pop43
	i32.const	$push131=, 8
	i32.ne  	$push45=, $pop44, $pop131
	i32.const	$push130=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop45, $pop130
	i32.const	$push129=, 8
	i32.add 	$push46=, $3, $pop129
	i32.const	$push128=, 8
	i32.call	$drop=, memcpy@FUNCTION, $10, $pop46, $pop128
	i32.store	20($5), $1
	i32.store	24($9), $5
	i32.const	$push127=, 8
	i32.add 	$push47=, $5, $pop127
	i64.load	$push48=, 0($pop47)
	i64.const	$push49=, 8
	i64.shr_u	$push126=, $pop48, $pop49
	tee_local	$push125=, $8=, $pop126
	i64.store	16($9), $pop125
	i32.load	$push124=, 20($5)
	tee_local	$push123=, $7=, $pop124
	i32.store	12($9), $pop123
	block   	
	block   	
	i32.const	$push53=, 28
	i32.add 	$push122=, $0, $pop53
	tee_local	$push121=, $1=, $pop122
	i32.load	$push120=, 0($pop121)
	tee_local	$push119=, $6=, $pop120
	i32.const	$push50=, 32
	i32.add 	$push51=, $0, $pop50
	i32.load	$push52=, 0($pop51)
	i32.ge_u	$push54=, $pop119, $pop52
	br_if   	0, $pop54
	i64.store	8($6), $8
	i32.store	16($6), $7
	i32.const	$push55=, 0
	i32.store	24($9), $pop55
	i32.store	0($6), $5
	i32.const	$push56=, 24
	i32.add 	$push57=, $6, $pop56
	i32.store	0($1), $pop57
	br      	1
.LBB15_18:
	end_block
	i32.const	$push67=, 24
	i32.add 	$push68=, $9, $pop67
	i32.const	$push69=, 16
	i32.add 	$push70=, $9, $pop69
	i32.const	$push71=, 12
	i32.add 	$push72=, $9, $pop71
	call    	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $2, $pop68, $pop70, $pop72
.LBB15_19:
	end_block
	i32.load	$6=, 24($9)
	i32.const	$push58=, 0
	i32.store	24($9), $pop58
	i32.eqz 	$push132=, $6
	br_if   	0, $pop132
	call    	_ZdlPv@FUNCTION, $6
.LBB15_21:
	end_block
	i32.const	$push66=, 0
	i32.const	$push64=, 32
	i32.add 	$push65=, $9, $pop64
	i32.store	__stack_pointer($pop66), $pop65
	copy_local	$push133=, $5
	.endfunc
.Lfunc_end15:
	.size	_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl, .Lfunc_end15-_ZNK4bcio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB16_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB16_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB16_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB16_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB16_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB16_10:
	end_block
	copy_local	$6=, $7
.LBB16_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB16_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB16_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB16_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB16_18:
	end_block
	.endfunc
.Lfunc_end16:
	.size	_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end16-_ZNSt3__16vectorIN4bcio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.text
	.hidden	_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.globl	_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.type	_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE,@function
_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE:
	.param  	i32, i64, i64, i32, i32
	.local  	i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push231=, 0
	i32.const	$push228=, 0
	i32.load	$push229=, __stack_pointer($pop228)
	i32.const	$push230=, 176
	i32.sub 	$push277=, $pop229, $pop230
	tee_local	$push276=, $12=, $pop277
	i32.store	__stack_pointer($pop231), $pop276
	i64.ne  	$push0=, $1, $2
	i32.const	$push1=, .L.str.10
	call    	bcio_assert@FUNCTION, $pop0, $pop1
	call    	require_auth@FUNCTION, $1
	i32.call	$push2=, is_account@FUNCTION, $2
	i32.const	$push3=, .L.str.11
	call    	bcio_assert@FUNCTION, $pop2, $pop3
	i64.load	$11=, 8($3)
	i32.const	$6=, 0
	i32.const	$push4=, 168
	i32.add 	$push5=, $12, $pop4
	i32.const	$push275=, 0
	i32.store	0($pop5), $pop275
	i64.const	$push274=, 8
	i64.shr_u	$push273=, $11, $pop274
	tee_local	$push272=, $9=, $pop273
	i64.store	144($12), $pop272
	i64.const	$push6=, -1
	i64.store	152($12), $pop6
	i64.const	$push271=, 0
	i64.store	160($12), $pop271
	i64.load	$push7=, 0($0)
	i64.store	136($12), $pop7
	i32.const	$push235=, 136
	i32.add 	$push236=, $12, $pop235
	i32.const	$push8=, .L.str.12
	i32.call	$5=, _ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc@FUNCTION, $pop236, $9, $pop8
	call    	require_recipient@FUNCTION, $1
	call    	require_recipient@FUNCTION, $2
	block   	
	i64.load	$push270=, 0($3)
	tee_local	$push269=, $8=, $pop270
	i64.const	$push9=, 4611686018427387903
	i64.add 	$push10=, $pop269, $pop9
	i64.const	$push11=, 9223372036854775806
	i64.gt_u	$push12=, $pop10, $pop11
	br_if   	0, $pop12
	i32.const	$7=, 0
.LBB17_2:
	block   	
	loop    	
	i32.wrap/i64	$push13=, $9
	i32.const	$push280=, 24
	i32.shl 	$push14=, $pop13, $pop280
	i32.const	$push279=, -1073741825
	i32.add 	$push15=, $pop14, $pop279
	i32.const	$push278=, 452984830
	i32.gt_u	$push16=, $pop15, $pop278
	br_if   	1, $pop16
	block   	
	i64.const	$push285=, 8
	i64.shr_u	$push284=, $9, $pop285
	tee_local	$push283=, $9=, $pop284
	i64.const	$push282=, 255
	i64.and 	$push17=, $pop283, $pop282
	i64.const	$push281=, 0
	i64.ne  	$push18=, $pop17, $pop281
	br_if   	0, $pop18
.LBB17_4:
	loop    	
	i64.const	$push290=, 8
	i64.shr_u	$push289=, $9, $pop290
	tee_local	$push288=, $9=, $pop289
	i64.const	$push287=, 255
	i64.and 	$push19=, $pop288, $pop287
	i64.const	$push286=, 0
	i64.ne  	$push20=, $pop19, $pop286
	br_if   	3, $pop20
	i32.const	$push294=, 1
	i32.add 	$push293=, $7, $pop294
	tee_local	$push292=, $7=, $pop293
	i32.const	$push291=, 7
	i32.lt_s	$push21=, $pop292, $pop291
	br_if   	0, $pop21
.LBB17_6:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push298=, 1
	i32.add 	$push297=, $7, $pop298
	tee_local	$push296=, $7=, $pop297
	i32.const	$push295=, 7
	i32.lt_s	$push22=, $pop296, $pop295
	br_if   	0, $pop22
	br      	2
.LBB17_7:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB17_8:
	end_block
	i32.const	$push23=, .L.str.6
	call    	bcio_assert@FUNCTION, $6, $pop23
	i64.const	$push302=, 0
	i64.gt_s	$push24=, $8, $pop302
	i32.const	$push25=, .L.str.13
	call    	bcio_assert@FUNCTION, $pop24, $pop25
	i64.load	$push26=, 8($5)
	i64.eq  	$push27=, $11, $pop26
	i32.const	$push28=, .L.str.8
	call    	bcio_assert@FUNCTION, $pop27, $pop28
	block   	
	block   	
	i32.load8_u	$push301=, 0($4)
	tee_local	$push300=, $7=, $pop301
	i32.const	$push299=, 1
	i32.and 	$push29=, $pop300, $pop299
	br_if   	0, $pop29
	i32.const	$push303=, 1
	i32.shr_u	$7=, $7, $pop303
	br      	1
.LBB17_10:
	end_block
	i32.load	$7=, 4($4)
.LBB17_11:
	end_block
	i32.const	$push30=, 257
	i32.lt_u	$push31=, $7, $pop30
	i32.const	$push32=, .L.str.4
	call    	bcio_assert@FUNCTION, $pop31, $pop32
	i32.const	$push237=, 120
	i32.add 	$push238=, $12, $pop237
	i32.const	$push33=, 8
	i32.add 	$push316=, $pop238, $pop33
	tee_local	$push315=, $7=, $pop316
	i32.const	$push314=, 8
	i32.add 	$push313=, $3, $pop314
	tee_local	$push312=, $6=, $pop313
	i64.load	$push34=, 0($pop312)
	i64.store	0($pop315), $pop34
	i64.load	$9=, 0($3)
	i32.const	$push239=, 56
	i32.add 	$push240=, $12, $pop239
	i32.const	$push35=, 12
	i32.add 	$push36=, $pop240, $pop35
	i32.const	$push241=, 120
	i32.add 	$push242=, $12, $pop241
	i32.const	$push311=, 12
	i32.add 	$push37=, $pop242, $pop311
	i32.load	$push38=, 0($pop37)
	i32.store	0($pop36), $pop38
	i32.const	$push243=, 56
	i32.add 	$push244=, $12, $pop243
	i32.const	$push310=, 8
	i32.add 	$push39=, $pop244, $pop310
	i32.load	$push40=, 0($7)
	i32.store	0($pop39), $pop40
	i64.store	120($12), $9
	i32.load	$push41=, 124($12)
	i32.store	60($12), $pop41
	i32.load	$push42=, 120($12)
	i32.store	56($12), $pop42
	i32.const	$push245=, 56
	i32.add 	$push246=, $12, $pop245
	call    	_ZN4bcio5token11sub_balanceEyNS_5assetE@FUNCTION, $0, $1, $pop246
	i32.const	$push247=, 104
	i32.add 	$push248=, $12, $pop247
	i32.const	$push309=, 8
	i32.add 	$push308=, $pop248, $pop309
	tee_local	$push307=, $7=, $pop308
	i64.load	$push43=, 0($6)
	i64.store	0($pop307), $pop43
	i64.load	$9=, 0($3)
	i32.const	$push249=, 40
	i32.add 	$push250=, $12, $pop249
	i32.const	$push306=, 12
	i32.add 	$push44=, $pop250, $pop306
	i32.const	$push251=, 104
	i32.add 	$push252=, $12, $pop251
	i32.const	$push305=, 12
	i32.add 	$push45=, $pop252, $pop305
	i32.load	$push46=, 0($pop45)
	i32.store	0($pop44), $pop46
	i32.const	$push253=, 40
	i32.add 	$push254=, $12, $pop253
	i32.const	$push304=, 8
	i32.add 	$push47=, $pop254, $pop304
	i32.load	$push48=, 0($7)
	i32.store	0($pop47), $pop48
	i64.store	104($12), $9
	i32.load	$push49=, 108($12)
	i32.store	44($12), $pop49
	i32.load	$push50=, 104($12)
	i32.store	40($12), $pop50
	i32.const	$push255=, 40
	i32.add 	$push256=, $12, $pop255
	call    	_ZN4bcio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $2, $pop256, $1
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.14
	i64.const	$10=, 0
.LBB17_12:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push317=, 9
	i64.gt_u	$push51=, $9, $pop317
	br_if   	0, $pop51
	i32.load8_s	$push322=, 0($7)
	tee_local	$push321=, $3=, $pop322
	i32.const	$push320=, -97
	i32.add 	$push53=, $pop321, $pop320
	i32.const	$push319=, 255
	i32.and 	$push54=, $pop53, $pop319
	i32.const	$push318=, 25
	i32.gt_u	$push55=, $pop54, $pop318
	br_if   	1, $pop55
	i32.const	$push323=, 165
	i32.add 	$3=, $3, $pop323
	br      	2
.LBB17_15:
	end_block
	i64.const	$11=, 0
	i64.const	$push324=, 11
	i64.le_u	$push52=, $9, $pop324
	br_if   	2, $pop52
	br      	3
.LBB17_16:
	end_block
	i32.const	$push329=, 208
	i32.add 	$push56=, $3, $pop329
	i32.const	$push328=, 0
	i32.const	$push327=, -49
	i32.add 	$push57=, $3, $pop327
	i32.const	$push326=, 255
	i32.and 	$push58=, $pop57, $pop326
	i32.const	$push325=, 5
	i32.lt_u	$push59=, $pop58, $pop325
	i32.select	$3=, $pop56, $pop328, $pop59
.LBB17_17:
	end_block
	i64.extend_u/i32	$push60=, $3
	i64.const	$push331=, 56
	i64.shl 	$push61=, $pop60, $pop331
	i64.const	$push330=, 56
	i64.shr_s	$11=, $pop61, $pop330
.LBB17_18:
	end_block
	i64.const	$push333=, 31
	i64.and 	$push63=, $11, $pop333
	i64.const	$push332=, 4294967295
	i64.and 	$push62=, $8, $pop332
	i64.shl 	$11=, $pop63, $pop62
.LBB17_19:
	end_block
	i32.const	$push339=, 1
	i32.add 	$7=, $7, $pop339
	i64.const	$push338=, 1
	i64.add 	$9=, $9, $pop338
	i64.or  	$10=, $11, $10
	i64.const	$push337=, -5
	i64.add 	$push336=, $8, $pop337
	tee_local	$push335=, $8=, $pop336
	i64.const	$push334=, -6
	i64.ne  	$push64=, $pop335, $pop334
	br_if   	0, $pop64
	end_loop
	block   	
	i64.eq  	$push65=, $10, $2
	br_if   	0, $pop65
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.14
	i64.const	$10=, 0
.LBB17_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push340=, 9
	i64.gt_u	$push66=, $9, $pop340
	br_if   	0, $pop66
	i32.load8_s	$push345=, 0($7)
	tee_local	$push344=, $3=, $pop345
	i32.const	$push343=, -97
	i32.add 	$push68=, $pop344, $pop343
	i32.const	$push342=, 255
	i32.and 	$push69=, $pop68, $pop342
	i32.const	$push341=, 25
	i32.gt_u	$push70=, $pop69, $pop341
	br_if   	1, $pop70
	i32.const	$push346=, 165
	i32.add 	$3=, $3, $pop346
	br      	2
.LBB17_25:
	end_block
	i64.const	$11=, 0
	i64.const	$push347=, 11
	i64.le_u	$push67=, $9, $pop347
	br_if   	2, $pop67
	br      	3
.LBB17_26:
	end_block
	i32.const	$push352=, 208
	i32.add 	$push71=, $3, $pop352
	i32.const	$push351=, 0
	i32.const	$push350=, -49
	i32.add 	$push72=, $3, $pop350
	i32.const	$push349=, 255
	i32.and 	$push73=, $pop72, $pop349
	i32.const	$push348=, 5
	i32.lt_u	$push74=, $pop73, $pop348
	i32.select	$3=, $pop71, $pop351, $pop74
.LBB17_27:
	end_block
	i64.extend_u/i32	$push75=, $3
	i64.const	$push354=, 56
	i64.shl 	$push76=, $pop75, $pop354
	i64.const	$push353=, 56
	i64.shr_s	$11=, $pop76, $pop353
.LBB17_28:
	end_block
	i64.const	$push356=, 31
	i64.and 	$push78=, $11, $pop356
	i64.const	$push355=, 4294967295
	i64.and 	$push77=, $8, $pop355
	i64.shl 	$11=, $pop78, $pop77
.LBB17_29:
	end_block
	i32.const	$push362=, 1
	i32.add 	$7=, $7, $pop362
	i64.const	$push361=, 1
	i64.add 	$9=, $9, $pop361
	i64.or  	$10=, $11, $10
	i64.const	$push360=, -5
	i64.add 	$push359=, $8, $pop360
	tee_local	$push358=, $8=, $pop359
	i64.const	$push357=, -6
	i64.ne  	$push79=, $pop358, $pop357
	br_if   	0, $pop79
	end_loop
	i64.eq  	$push80=, $10, $1
	br_if   	0, $pop80
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.15
	i64.const	$10=, 0
.LBB17_32:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push363=, 3
	i64.gt_u	$push81=, $9, $pop363
	br_if   	0, $pop81
	i32.load8_s	$push368=, 0($7)
	tee_local	$push367=, $3=, $pop368
	i32.const	$push366=, -97
	i32.add 	$push83=, $pop367, $pop366
	i32.const	$push365=, 255
	i32.and 	$push84=, $pop83, $pop365
	i32.const	$push364=, 25
	i32.gt_u	$push85=, $pop84, $pop364
	br_if   	1, $pop85
	i32.const	$push369=, 165
	i32.add 	$3=, $3, $pop369
	br      	2
.LBB17_35:
	end_block
	i64.const	$11=, 0
	i64.const	$push370=, 11
	i64.le_u	$push82=, $9, $pop370
	br_if   	2, $pop82
	br      	3
.LBB17_36:
	end_block
	i32.const	$push375=, 208
	i32.add 	$push86=, $3, $pop375
	i32.const	$push374=, 0
	i32.const	$push373=, -49
	i32.add 	$push87=, $3, $pop373
	i32.const	$push372=, 255
	i32.and 	$push88=, $pop87, $pop372
	i32.const	$push371=, 5
	i32.lt_u	$push89=, $pop88, $pop371
	i32.select	$3=, $pop86, $pop374, $pop89
.LBB17_37:
	end_block
	i64.extend_u/i32	$push90=, $3
	i64.const	$push377=, 56
	i64.shl 	$push91=, $pop90, $pop377
	i64.const	$push376=, 56
	i64.shr_s	$11=, $pop91, $pop376
.LBB17_38:
	end_block
	i64.const	$push379=, 31
	i64.and 	$push93=, $11, $pop379
	i64.const	$push378=, 4294967295
	i64.and 	$push92=, $8, $pop378
	i64.shl 	$11=, $pop93, $pop92
.LBB17_39:
	end_block
	i32.const	$push385=, 1
	i32.add 	$7=, $7, $pop385
	i64.const	$push384=, 1
	i64.add 	$9=, $9, $pop384
	i64.or  	$10=, $11, $10
	i64.const	$push383=, -5
	i64.add 	$push382=, $8, $pop383
	tee_local	$push381=, $8=, $pop382
	i64.const	$push380=, -6
	i64.ne  	$push94=, $pop381, $pop380
	br_if   	0, $pop94
	end_loop
	i64.eq  	$push95=, $10, $1
	br_if   	0, $pop95
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.16
	i64.const	$10=, 0
.LBB17_42:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push386=, 8
	i64.gt_u	$push96=, $9, $pop386
	br_if   	0, $pop96
	i32.load8_s	$push391=, 0($7)
	tee_local	$push390=, $3=, $pop391
	i32.const	$push389=, -97
	i32.add 	$push98=, $pop390, $pop389
	i32.const	$push388=, 255
	i32.and 	$push99=, $pop98, $pop388
	i32.const	$push387=, 25
	i32.gt_u	$push100=, $pop99, $pop387
	br_if   	1, $pop100
	i32.const	$push392=, 165
	i32.add 	$3=, $3, $pop392
	br      	2
.LBB17_45:
	end_block
	i64.const	$11=, 0
	i64.const	$push393=, 11
	i64.le_u	$push97=, $9, $pop393
	br_if   	2, $pop97
	br      	3
.LBB17_46:
	end_block
	i32.const	$push398=, 208
	i32.add 	$push101=, $3, $pop398
	i32.const	$push397=, 0
	i32.const	$push396=, -49
	i32.add 	$push102=, $3, $pop396
	i32.const	$push395=, 255
	i32.and 	$push103=, $pop102, $pop395
	i32.const	$push394=, 5
	i32.lt_u	$push104=, $pop103, $pop394
	i32.select	$3=, $pop101, $pop397, $pop104
.LBB17_47:
	end_block
	i64.extend_u/i32	$push105=, $3
	i64.const	$push400=, 56
	i64.shl 	$push106=, $pop105, $pop400
	i64.const	$push399=, 56
	i64.shr_s	$11=, $pop106, $pop399
.LBB17_48:
	end_block
	i64.const	$push402=, 31
	i64.and 	$push108=, $11, $pop402
	i64.const	$push401=, 4294967295
	i64.and 	$push107=, $8, $pop401
	i64.shl 	$11=, $pop108, $pop107
.LBB17_49:
	end_block
	i32.const	$push408=, 1
	i32.add 	$7=, $7, $pop408
	i64.const	$push407=, 1
	i64.add 	$9=, $9, $pop407
	i64.or  	$10=, $11, $10
	i64.const	$push406=, -5
	i64.add 	$push405=, $8, $pop406
	tee_local	$push404=, $8=, $pop405
	i64.const	$push403=, -6
	i64.ne  	$push109=, $pop404, $pop403
	br_if   	0, $pop109
	end_loop
	i64.eq  	$push110=, $10, $1
	br_if   	0, $pop110
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.17
	i64.const	$10=, 0
.LBB17_52:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push409=, 8
	i64.gt_u	$push111=, $9, $pop409
	br_if   	0, $pop111
	i32.load8_s	$push414=, 0($7)
	tee_local	$push413=, $3=, $pop414
	i32.const	$push412=, -97
	i32.add 	$push113=, $pop413, $pop412
	i32.const	$push411=, 255
	i32.and 	$push114=, $pop113, $pop411
	i32.const	$push410=, 25
	i32.gt_u	$push115=, $pop114, $pop410
	br_if   	1, $pop115
	i32.const	$push415=, 165
	i32.add 	$3=, $3, $pop415
	br      	2
.LBB17_55:
	end_block
	i64.const	$11=, 0
	i64.const	$push416=, 11
	i64.le_u	$push112=, $9, $pop416
	br_if   	2, $pop112
	br      	3
.LBB17_56:
	end_block
	i32.const	$push421=, 208
	i32.add 	$push116=, $3, $pop421
	i32.const	$push420=, 0
	i32.const	$push419=, -49
	i32.add 	$push117=, $3, $pop419
	i32.const	$push418=, 255
	i32.and 	$push118=, $pop117, $pop418
	i32.const	$push417=, 5
	i32.lt_u	$push119=, $pop118, $pop417
	i32.select	$3=, $pop116, $pop420, $pop119
.LBB17_57:
	end_block
	i64.extend_u/i32	$push120=, $3
	i64.const	$push423=, 56
	i64.shl 	$push121=, $pop120, $pop423
	i64.const	$push422=, 56
	i64.shr_s	$11=, $pop121, $pop422
.LBB17_58:
	end_block
	i64.const	$push425=, 31
	i64.and 	$push123=, $11, $pop425
	i64.const	$push424=, 4294967295
	i64.and 	$push122=, $8, $pop424
	i64.shl 	$11=, $pop123, $pop122
.LBB17_59:
	end_block
	i32.const	$push431=, 1
	i32.add 	$7=, $7, $pop431
	i64.const	$push430=, 1
	i64.add 	$9=, $9, $pop430
	i64.or  	$10=, $11, $10
	i64.const	$push429=, -5
	i64.add 	$push428=, $8, $pop429
	tee_local	$push427=, $8=, $pop428
	i64.const	$push426=, -6
	i64.ne  	$push124=, $pop427, $pop426
	br_if   	0, $pop124
	end_loop
	i64.eq  	$push125=, $10, $1
	br_if   	0, $pop125
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.18
	i64.const	$10=, 0
.LBB17_62:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push432=, 8
	i64.gt_u	$push126=, $9, $pop432
	br_if   	0, $pop126
	i32.load8_s	$push437=, 0($7)
	tee_local	$push436=, $3=, $pop437
	i32.const	$push435=, -97
	i32.add 	$push128=, $pop436, $pop435
	i32.const	$push434=, 255
	i32.and 	$push129=, $pop128, $pop434
	i32.const	$push433=, 25
	i32.gt_u	$push130=, $pop129, $pop433
	br_if   	1, $pop130
	i32.const	$push438=, 165
	i32.add 	$3=, $3, $pop438
	br      	2
.LBB17_65:
	end_block
	i64.const	$11=, 0
	i64.const	$push439=, 11
	i64.le_u	$push127=, $9, $pop439
	br_if   	2, $pop127
	br      	3
.LBB17_66:
	end_block
	i32.const	$push444=, 208
	i32.add 	$push131=, $3, $pop444
	i32.const	$push443=, 0
	i32.const	$push442=, -49
	i32.add 	$push132=, $3, $pop442
	i32.const	$push441=, 255
	i32.and 	$push133=, $pop132, $pop441
	i32.const	$push440=, 5
	i32.lt_u	$push134=, $pop133, $pop440
	i32.select	$3=, $pop131, $pop443, $pop134
.LBB17_67:
	end_block
	i64.extend_u/i32	$push135=, $3
	i64.const	$push446=, 56
	i64.shl 	$push136=, $pop135, $pop446
	i64.const	$push445=, 56
	i64.shr_s	$11=, $pop136, $pop445
.LBB17_68:
	end_block
	i64.const	$push448=, 31
	i64.and 	$push138=, $11, $pop448
	i64.const	$push447=, 4294967295
	i64.and 	$push137=, $8, $pop447
	i64.shl 	$11=, $pop138, $pop137
.LBB17_69:
	end_block
	i32.const	$push454=, 1
	i32.add 	$7=, $7, $pop454
	i64.const	$push453=, 1
	i64.add 	$9=, $9, $pop453
	i64.or  	$10=, $11, $10
	i64.const	$push452=, -5
	i64.add 	$push451=, $8, $pop452
	tee_local	$push450=, $8=, $pop451
	i64.const	$push449=, -6
	i64.ne  	$push139=, $pop450, $pop449
	br_if   	0, $pop139
	end_loop
	i64.eq  	$push140=, $10, $1
	br_if   	0, $pop140
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.19
	i64.const	$10=, 0
.LBB17_72:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push455=, 8
	i64.gt_u	$push141=, $9, $pop455
	br_if   	0, $pop141
	i32.load8_s	$push460=, 0($7)
	tee_local	$push459=, $3=, $pop460
	i32.const	$push458=, -97
	i32.add 	$push143=, $pop459, $pop458
	i32.const	$push457=, 255
	i32.and 	$push144=, $pop143, $pop457
	i32.const	$push456=, 25
	i32.gt_u	$push145=, $pop144, $pop456
	br_if   	1, $pop145
	i32.const	$push461=, 165
	i32.add 	$3=, $3, $pop461
	br      	2
.LBB17_75:
	end_block
	i64.const	$11=, 0
	i64.const	$push462=, 11
	i64.le_u	$push142=, $9, $pop462
	br_if   	2, $pop142
	br      	3
.LBB17_76:
	end_block
	i32.const	$push467=, 208
	i32.add 	$push146=, $3, $pop467
	i32.const	$push466=, 0
	i32.const	$push465=, -49
	i32.add 	$push147=, $3, $pop465
	i32.const	$push464=, 255
	i32.and 	$push148=, $pop147, $pop464
	i32.const	$push463=, 5
	i32.lt_u	$push149=, $pop148, $pop463
	i32.select	$3=, $pop146, $pop466, $pop149
.LBB17_77:
	end_block
	i64.extend_u/i32	$push150=, $3
	i64.const	$push469=, 56
	i64.shl 	$push151=, $pop150, $pop469
	i64.const	$push468=, 56
	i64.shr_s	$11=, $pop151, $pop468
.LBB17_78:
	end_block
	i64.const	$push471=, 31
	i64.and 	$push153=, $11, $pop471
	i64.const	$push470=, 4294967295
	i64.and 	$push152=, $8, $pop470
	i64.shl 	$11=, $pop153, $pop152
.LBB17_79:
	end_block
	i32.const	$push477=, 1
	i32.add 	$7=, $7, $pop477
	i64.const	$push476=, 1
	i64.add 	$9=, $9, $pop476
	i64.or  	$10=, $11, $10
	i64.const	$push475=, -5
	i64.add 	$push474=, $8, $pop475
	tee_local	$push473=, $8=, $pop474
	i64.const	$push472=, -6
	i64.ne  	$push154=, $pop473, $pop472
	br_if   	0, $pop154
	end_loop
	i64.eq  	$push155=, $10, $1
	br_if   	0, $pop155
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.20
	i64.const	$10=, 0
.LBB17_82:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push478=, 7
	i64.gt_u	$push156=, $9, $pop478
	br_if   	0, $pop156
	i32.load8_s	$push483=, 0($7)
	tee_local	$push482=, $3=, $pop483
	i32.const	$push481=, -97
	i32.add 	$push158=, $pop482, $pop481
	i32.const	$push480=, 255
	i32.and 	$push159=, $pop158, $pop480
	i32.const	$push479=, 25
	i32.gt_u	$push160=, $pop159, $pop479
	br_if   	1, $pop160
	i32.const	$push484=, 165
	i32.add 	$3=, $3, $pop484
	br      	2
.LBB17_85:
	end_block
	i64.const	$11=, 0
	i64.const	$push485=, 11
	i64.le_u	$push157=, $9, $pop485
	br_if   	2, $pop157
	br      	3
.LBB17_86:
	end_block
	i32.const	$push490=, 208
	i32.add 	$push161=, $3, $pop490
	i32.const	$push489=, 0
	i32.const	$push488=, -49
	i32.add 	$push162=, $3, $pop488
	i32.const	$push487=, 255
	i32.and 	$push163=, $pop162, $pop487
	i32.const	$push486=, 5
	i32.lt_u	$push164=, $pop163, $pop486
	i32.select	$3=, $pop161, $pop489, $pop164
.LBB17_87:
	end_block
	i64.extend_u/i32	$push165=, $3
	i64.const	$push492=, 56
	i64.shl 	$push166=, $pop165, $pop492
	i64.const	$push491=, 56
	i64.shr_s	$11=, $pop166, $pop491
.LBB17_88:
	end_block
	i64.const	$push494=, 31
	i64.and 	$push168=, $11, $pop494
	i64.const	$push493=, 4294967295
	i64.and 	$push167=, $8, $pop493
	i64.shl 	$11=, $pop168, $pop167
.LBB17_89:
	end_block
	i32.const	$push500=, 1
	i32.add 	$7=, $7, $pop500
	i64.const	$push499=, 1
	i64.add 	$9=, $9, $pop499
	i64.or  	$10=, $11, $10
	i64.const	$push498=, -5
	i64.add 	$push497=, $8, $pop498
	tee_local	$push496=, $8=, $pop497
	i64.const	$push495=, -6
	i64.ne  	$push169=, $pop496, $pop495
	br_if   	0, $pop169
	end_loop
	i64.eq  	$push170=, $10, $1
	br_if   	0, $pop170
	i64.const	$push171=, 4407812
	i64.store	96($12), $pop171
	i64.const	$push172=, 100
	i64.store	88($12), $pop172
	i32.const	$push501=, 1
	i32.const	$push173=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop501, $pop173
	i64.const	$9=, 17218
	i32.const	$7=, 0
.LBB17_92:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push174=, $9
	i32.const	$push504=, 24
	i32.shl 	$push175=, $pop174, $pop504
	i32.const	$push503=, -1073741825
	i32.add 	$push176=, $pop175, $pop503
	i32.const	$push502=, 452984830
	i32.gt_u	$push177=, $pop176, $pop502
	br_if   	1, $pop177
	block   	
	i64.const	$push509=, 8
	i64.shr_u	$push508=, $9, $pop509
	tee_local	$push507=, $9=, $pop508
	i64.const	$push506=, 255
	i64.and 	$push178=, $pop507, $pop506
	i64.const	$push505=, 0
	i64.ne  	$push179=, $pop178, $pop505
	br_if   	0, $pop179
.LBB17_94:
	loop    	
	i64.const	$push514=, 8
	i64.shr_u	$push513=, $9, $pop514
	tee_local	$push512=, $9=, $pop513
	i64.const	$push511=, 255
	i64.and 	$push180=, $pop512, $pop511
	i64.const	$push510=, 0
	i64.ne  	$push181=, $pop180, $pop510
	br_if   	3, $pop181
	i32.const	$push518=, 1
	i32.add 	$push517=, $7, $pop518
	tee_local	$push516=, $7=, $pop517
	i32.const	$push515=, 7
	i32.lt_s	$push182=, $pop516, $pop515
	br_if   	0, $pop182
.LBB17_96:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push522=, 1
	i32.add 	$push521=, $7, $pop522
	tee_local	$push520=, $7=, $pop521
	i32.const	$push519=, 7
	i32.lt_s	$push183=, $pop520, $pop519
	br_if   	0, $pop183
	br      	2
.LBB17_97:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB17_98:
	end_block
	i32.const	$push184=, .L.str
	call    	bcio_assert@FUNCTION, $3, $pop184
	i32.const	$push257=, 24
	i32.add 	$push258=, $12, $pop257
	i32.const	$push185=, 8
	i32.add 	$push186=, $pop258, $pop185
	i32.const	$push259=, 88
	i32.add 	$push260=, $12, $pop259
	i32.const	$push523=, 8
	i32.add 	$push187=, $pop260, $pop523
	i64.load	$push188=, 0($pop187)
	i64.store	0($pop186), $pop188
	i64.load	$push189=, 88($12)
	i64.store	24($12), $pop189
	i32.const	$push261=, 24
	i32.add 	$push262=, $12, $pop261
	call    	_ZN4bcio5token11sub_balanceEyNS_5assetE@FUNCTION, $0, $1, $pop262
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.20
	i64.const	$10=, 0
.LBB17_99:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push524=, 7
	i64.gt_u	$push190=, $9, $pop524
	br_if   	0, $pop190
	i32.load8_s	$push529=, 0($7)
	tee_local	$push528=, $3=, $pop529
	i32.const	$push527=, -97
	i32.add 	$push192=, $pop528, $pop527
	i32.const	$push526=, 255
	i32.and 	$push193=, $pop192, $pop526
	i32.const	$push525=, 25
	i32.gt_u	$push194=, $pop193, $pop525
	br_if   	1, $pop194
	i32.const	$push530=, 165
	i32.add 	$3=, $3, $pop530
	br      	2
.LBB17_102:
	end_block
	i64.const	$11=, 0
	i64.const	$push531=, 11
	i64.le_u	$push191=, $9, $pop531
	br_if   	2, $pop191
	br      	3
.LBB17_103:
	end_block
	i32.const	$push536=, 208
	i32.add 	$push195=, $3, $pop536
	i32.const	$push535=, 0
	i32.const	$push534=, -49
	i32.add 	$push196=, $3, $pop534
	i32.const	$push533=, 255
	i32.and 	$push197=, $pop196, $pop533
	i32.const	$push532=, 5
	i32.lt_u	$push198=, $pop197, $pop532
	i32.select	$3=, $pop195, $pop535, $pop198
.LBB17_104:
	end_block
	i64.extend_u/i32	$push199=, $3
	i64.const	$push538=, 56
	i64.shl 	$push200=, $pop199, $pop538
	i64.const	$push537=, 56
	i64.shr_s	$11=, $pop200, $pop537
.LBB17_105:
	end_block
	i64.const	$push540=, 31
	i64.and 	$push202=, $11, $pop540
	i64.const	$push539=, 4294967295
	i64.and 	$push201=, $8, $pop539
	i64.shl 	$11=, $pop202, $pop201
.LBB17_106:
	end_block
	i32.const	$push546=, 1
	i32.add 	$7=, $7, $pop546
	i64.const	$push545=, 1
	i64.add 	$9=, $9, $pop545
	i64.or  	$10=, $11, $10
	i64.const	$push544=, -5
	i64.add 	$push543=, $8, $pop544
	tee_local	$push542=, $8=, $pop543
	i64.const	$push541=, -6
	i64.ne  	$push203=, $pop542, $pop541
	br_if   	0, $pop203
	end_loop
	i64.const	$push204=, 4407812
	i64.store	80($12), $pop204
	i64.const	$push205=, 100
	i64.store	72($12), $pop205
	i32.const	$push547=, 1
	i32.const	$push206=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop547, $pop206
	i64.const	$9=, 17218
	i32.const	$7=, 0
.LBB17_108:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push207=, $9
	i32.const	$push550=, 24
	i32.shl 	$push208=, $pop207, $pop550
	i32.const	$push549=, -1073741825
	i32.add 	$push209=, $pop208, $pop549
	i32.const	$push548=, 452984830
	i32.gt_u	$push210=, $pop209, $pop548
	br_if   	1, $pop210
	block   	
	i64.const	$push555=, 8
	i64.shr_u	$push554=, $9, $pop555
	tee_local	$push553=, $9=, $pop554
	i64.const	$push552=, 255
	i64.and 	$push211=, $pop553, $pop552
	i64.const	$push551=, 0
	i64.ne  	$push212=, $pop211, $pop551
	br_if   	0, $pop212
.LBB17_110:
	loop    	
	i64.const	$push560=, 8
	i64.shr_u	$push559=, $9, $pop560
	tee_local	$push558=, $9=, $pop559
	i64.const	$push557=, 255
	i64.and 	$push213=, $pop558, $pop557
	i64.const	$push556=, 0
	i64.ne  	$push214=, $pop213, $pop556
	br_if   	3, $pop214
	i32.const	$push564=, 1
	i32.add 	$push563=, $7, $pop564
	tee_local	$push562=, $7=, $pop563
	i32.const	$push561=, 7
	i32.lt_s	$push215=, $pop562, $pop561
	br_if   	0, $pop215
.LBB17_112:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push568=, 1
	i32.add 	$push567=, $7, $pop568
	tee_local	$push566=, $7=, $pop567
	i32.const	$push565=, 7
	i32.lt_s	$push216=, $pop566, $pop565
	br_if   	0, $pop216
	br      	2
.LBB17_113:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB17_114:
	end_block
	i32.const	$push217=, .L.str
	call    	bcio_assert@FUNCTION, $3, $pop217
	i32.const	$push263=, 8
	i32.add 	$push264=, $12, $pop263
	i32.const	$push218=, 8
	i32.add 	$push219=, $pop264, $pop218
	i32.const	$push265=, 72
	i32.add 	$push266=, $12, $pop265
	i32.const	$push569=, 8
	i32.add 	$push220=, $pop266, $pop569
	i64.load	$push221=, 0($pop220)
	i64.store	0($pop219), $pop221
	i64.load	$push222=, 72($12)
	i64.store	8($12), $pop222
	i32.const	$push267=, 8
	i32.add 	$push268=, $12, $pop267
	call    	_ZN4bcio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $10, $pop268, $1
.LBB17_115:
	end_block
	block   	
	i32.load	$push571=, 160($12)
	tee_local	$push570=, $6=, $pop571
	i32.eqz 	$push580=, $pop570
	br_if   	0, $pop580
	block   	
	block   	
	i32.const	$push223=, 164
	i32.add 	$push575=, $12, $pop223
	tee_local	$push574=, $0=, $pop575
	i32.load	$push573=, 0($pop574)
	tee_local	$push572=, $7=, $pop573
	i32.eq  	$push224=, $pop572, $6
	br_if   	0, $pop224
.LBB17_118:
	loop    	
	i32.const	$push579=, -24
	i32.add 	$push578=, $7, $pop579
	tee_local	$push577=, $7=, $pop578
	i32.load	$3=, 0($pop577)
	i32.const	$push576=, 0
	i32.store	0($7), $pop576
	block   	
	i32.eqz 	$push581=, $3
	br_if   	0, $pop581
	call    	_ZdlPv@FUNCTION, $3
.LBB17_120:
	end_block
	i32.ne  	$push225=, $6, $7
	br_if   	0, $pop225
	end_loop
	i32.const	$push226=, 160
	i32.add 	$push227=, $12, $pop226
	i32.load	$7=, 0($pop227)
	br      	1
.LBB17_122:
	end_block
	copy_local	$7=, $6
.LBB17_123:
	end_block
	i32.store	0($0), $6
	call    	_ZdlPv@FUNCTION, $7
.LBB17_124:
	end_block
	i32.const	$push234=, 0
	i32.const	$push232=, 176
	i32.add 	$push233=, $12, $pop232
	i32.store	__stack_pointer($pop234), $pop233
	.endfunc
.Lfunc_end17:
	.size	_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE, .Lfunc_end17-_ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

	.section	.text._ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,"axG",@progbits,_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,comdat
	.hidden	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc
	.weak	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc
	.type	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,@function
_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push28=, 0($pop1)
	tee_local	$push27=, $7=, $pop28
	i32.load	$push26=, 24($0)
	tee_local	$push25=, $3=, $pop26
	i32.eq  	$push2=, $pop27, $pop25
	br_if   	0, $pop2
	i32.const	$push29=, -24
	i32.add 	$6=, $7, $pop29
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB18_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push30=, 8
	i64.shr_u	$push6=, $pop5, $pop30
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push34=, -24
	i32.add 	$push33=, $6, $pop34
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
	i32.add 	$push8=, $5, $4
	i32.const	$push31=, -24
	i32.ne  	$push9=, $pop8, $pop31
	br_if   	0, $pop9
.LBB18_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push36=, 0($pop12)
	tee_local	$push35=, $6=, $pop36
	i32.load	$push13=, 48($pop35)
	i32.eq  	$push14=, $pop13, $0
	i32.const	$push15=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop14, $pop15
	br      	1
.LBB18_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push17=, 0($0)
	i64.load	$push16=, 8($0)
	i64.const	$push18=, -4157508551318700032
	i32.call	$push39=, db_find_i64@FUNCTION, $pop17, $pop16, $pop18, $1
	tee_local	$push38=, $5=, $pop39
	i32.const	$push37=, 0
	i32.lt_s	$push19=, $pop38, $pop37
	br_if   	0, $pop19
	i32.call	$push41=, _ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push40=, $6=, $pop41
	i32.load	$push20=, 48($pop40)
	i32.eq  	$push21=, $pop20, $0
	i32.const	$push22=, .L.str.27
	call    	bcio_assert@FUNCTION, $pop21, $pop22
.LBB18_8:
	end_block
	i32.const	$push23=, 0
	i32.ne  	$push24=, $6, $pop23
	call    	bcio_assert@FUNCTION, $pop24, $2
	copy_local	$push42=, $6
	.endfunc
.Lfunc_end18:
	.size	_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc, .Lfunc_end18-_ZNK4bcio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc

	.text
	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 64
	i32.sub 	$push82=, $pop63, $pop64
	tee_local	$push81=, $9=, $pop82
	i32.store	__stack_pointer($pop65), $pop81
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.24
	i64.const	$7=, 0
.LBB19_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push83=, 6
	i64.gt_u	$push0=, $6, $pop83
	br_if   	0, $pop0
	i32.load8_s	$push88=, 0($4)
	tee_local	$push87=, $3=, $pop88
	i32.const	$push86=, -97
	i32.add 	$push2=, $pop87, $pop86
	i32.const	$push85=, 255
	i32.and 	$push3=, $pop2, $pop85
	i32.const	$push84=, 25
	i32.gt_u	$push4=, $pop3, $pop84
	br_if   	1, $pop4
	i32.const	$push89=, 165
	i32.add 	$3=, $3, $pop89
	br      	2
.LBB19_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push90=, 11
	i64.le_u	$push1=, $6, $pop90
	br_if   	2, $pop1
	br      	3
.LBB19_5:
	end_block
	i32.const	$push95=, 208
	i32.add 	$push5=, $3, $pop95
	i32.const	$push94=, 0
	i32.const	$push93=, -49
	i32.add 	$push6=, $3, $pop93
	i32.const	$push92=, 255
	i32.and 	$push7=, $pop6, $pop92
	i32.const	$push91=, 5
	i32.lt_u	$push8=, $pop7, $pop91
	i32.select	$3=, $pop5, $pop94, $pop8
.LBB19_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push97=, 56
	i64.shl 	$push10=, $pop9, $pop97
	i64.const	$push96=, 56
	i64.shr_s	$8=, $pop10, $pop96
.LBB19_7:
	end_block
	i64.const	$push99=, 31
	i64.and 	$push12=, $8, $pop99
	i64.const	$push98=, 4294967295
	i64.and 	$push11=, $5, $pop98
	i64.shl 	$8=, $pop12, $pop11
.LBB19_8:
	end_block
	i32.const	$push105=, 1
	i32.add 	$4=, $4, $pop105
	i64.const	$push104=, 1
	i64.add 	$6=, $6, $pop104
	i64.or  	$7=, $8, $7
	i64.const	$push103=, -5
	i64.add 	$push102=, $5, $pop103
	tee_local	$push101=, $5=, $pop102
	i64.const	$push100=, -6
	i64.ne  	$push13=, $pop101, $pop100
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.15
	i64.const	$7=, 0
.LBB19_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push106=, 3
	i64.gt_u	$push15=, $6, $pop106
	br_if   	0, $pop15
	i32.load8_s	$push111=, 0($4)
	tee_local	$push110=, $3=, $pop111
	i32.const	$push109=, -97
	i32.add 	$push17=, $pop110, $pop109
	i32.const	$push108=, 255
	i32.and 	$push18=, $pop17, $pop108
	i32.const	$push107=, 25
	i32.gt_u	$push19=, $pop18, $pop107
	br_if   	1, $pop19
	i32.const	$push112=, 165
	i32.add 	$3=, $3, $pop112
	br      	2
.LBB19_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push113=, 11
	i64.le_u	$push16=, $6, $pop113
	br_if   	2, $pop16
	br      	3
.LBB19_15:
	end_block
	i32.const	$push118=, 208
	i32.add 	$push20=, $3, $pop118
	i32.const	$push117=, 0
	i32.const	$push116=, -49
	i32.add 	$push21=, $3, $pop116
	i32.const	$push115=, 255
	i32.and 	$push22=, $pop21, $pop115
	i32.const	$push114=, 5
	i32.lt_u	$push23=, $pop22, $pop114
	i32.select	$3=, $pop20, $pop117, $pop23
.LBB19_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push120=, 56
	i64.shl 	$push25=, $pop24, $pop120
	i64.const	$push119=, 56
	i64.shr_s	$8=, $pop25, $pop119
.LBB19_17:
	end_block
	i64.const	$push122=, 31
	i64.and 	$push27=, $8, $pop122
	i64.const	$push121=, 4294967295
	i64.and 	$push26=, $5, $pop121
	i64.shl 	$8=, $pop27, $pop26
.LBB19_18:
	end_block
	i32.const	$push128=, 1
	i32.add 	$4=, $4, $pop128
	i64.const	$push127=, 1
	i64.add 	$6=, $6, $pop127
	i64.or  	$7=, $8, $7
	i64.const	$push126=, -5
	i64.add 	$push125=, $5, $pop126
	tee_local	$push124=, $5=, $pop125
	i64.const	$push123=, -6
	i64.ne  	$push28=, $pop124, $pop123
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.25
	call    	bcio_assert@FUNCTION, $pop29, $pop30
.LBB19_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.24
	i64.const	$7=, 0
.LBB19_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push129=, 6
	i64.gt_u	$push32=, $6, $pop129
	br_if   	0, $pop32
	i32.load8_s	$push134=, 0($4)
	tee_local	$push133=, $3=, $pop134
	i32.const	$push132=, -97
	i32.add 	$push34=, $pop133, $pop132
	i32.const	$push131=, 255
	i32.and 	$push35=, $pop34, $pop131
	i32.const	$push130=, 25
	i32.gt_u	$push36=, $pop35, $pop130
	br_if   	1, $pop36
	i32.const	$push135=, 165
	i32.add 	$3=, $3, $pop135
	br      	2
.LBB19_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push136=, 11
	i64.le_u	$push33=, $6, $pop136
	br_if   	2, $pop33
	br      	3
.LBB19_26:
	end_block
	i32.const	$push141=, 208
	i32.add 	$push37=, $3, $pop141
	i32.const	$push140=, 0
	i32.const	$push139=, -49
	i32.add 	$push38=, $3, $pop139
	i32.const	$push138=, 255
	i32.and 	$push39=, $pop38, $pop138
	i32.const	$push137=, 5
	i32.lt_u	$push40=, $pop39, $pop137
	i32.select	$3=, $pop37, $pop140, $pop40
.LBB19_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push143=, 56
	i64.shl 	$push42=, $pop41, $pop143
	i64.const	$push142=, 56
	i64.shr_s	$8=, $pop42, $pop142
.LBB19_28:
	end_block
	i64.const	$push145=, 31
	i64.and 	$push44=, $8, $pop145
	i64.const	$push144=, 4294967295
	i64.and 	$push43=, $5, $pop144
	i64.shl 	$8=, $pop44, $pop43
.LBB19_29:
	end_block
	i32.const	$push151=, 1
	i32.add 	$4=, $4, $pop151
	i64.const	$push150=, 1
	i64.add 	$6=, $6, $pop150
	i64.or  	$7=, $8, $7
	i64.const	$push149=, -5
	i64.add 	$push148=, $5, $pop149
	tee_local	$push147=, $5=, $pop148
	i64.const	$push146=, -6
	i64.ne  	$push45=, $pop147, $pop146
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB19_31:
	end_block
	i64.store	56($9), $0
	block   	
	block   	
	i64.const	$push47=, -3617168760277827584
	i64.eq  	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push49=, 8516769789752901632
	i64.eq  	$push50=, $2, $pop49
	br_if   	1, $pop50
	i64.const	$push51=, 5031766152489992192
	i64.ne  	$push52=, $2, $pop51
	br_if   	2, $pop52
	i32.const	$push59=, 0
	i32.store	52($9), $pop59
	i32.const	$push60=, _ZN4bcio5token6createEyNS_5assetE@FUNCTION
	i32.store	48($9), $pop60
	i64.load	$push61=, 48($9)
	i64.store	8($9):p2align=2, $pop61
	i32.const	$push77=, 56
	i32.add 	$push78=, $9, $pop77
	i32.const	$push79=, 8
	i32.add 	$push80=, $9, $pop79
	i32.call	$drop=, _ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop78, $pop80
	br      	2
.LBB19_35:
	end_block
	i32.const	$push53=, 0
	i32.store	36($9), $pop53
	i32.const	$push54=, _ZN4bcio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION
	i32.store	32($9), $pop54
	i64.load	$push55=, 32($9)
	i64.store	24($9):p2align=2, $pop55
	i32.const	$push69=, 56
	i32.add 	$push70=, $9, $pop69
	i32.const	$push71=, 24
	i32.add 	$push72=, $9, $pop71
	i32.call	$drop=, _ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop70, $pop72
	br      	1
.LBB19_36:
	end_block
	i32.const	$push56=, 0
	i32.store	44($9), $pop56
	i32.const	$push57=, _ZN4bcio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION
	i32.store	40($9), $pop57
	i64.load	$push58=, 40($9)
	i64.store	16($9):p2align=2, $pop58
	i32.const	$push73=, 56
	i32.add 	$push74=, $9, $pop73
	i32.const	$push75=, 16
	i32.add 	$push76=, $9, $pop75
	i32.call	$drop=, _ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop74, $pop76
.LBB19_37:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 64
	i32.add 	$push67=, $9, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end19:
	.size	apply, .Lfunc_end19-apply

	.section	.text._ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.type	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E,@function
_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i64, i32, i32, i32
	i32.const	$push50=, 0
	i32.load	$push51=, __stack_pointer($pop50)
	i32.const	$push52=, 96
	i32.sub 	$push79=, $pop51, $pop52
	tee_local	$push78=, $7=, $pop79
	copy_local	$9=, $pop78
	i32.const	$push53=, 0
	i32.store	__stack_pointer($pop53), $7
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	i32.const	$1=, 0
	i32.const	$5=, 0
	block   	
	i32.call	$push77=, action_data_size@FUNCTION
	tee_local	$push76=, $3=, $pop77
	i32.eqz 	$push132=, $pop76
	br_if   	0, $pop132
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB20_3:
	end_block
	i32.const	$push49=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push81=, $7, $pop5
	tee_local	$push80=, $5=, $pop81
	copy_local	$push75=, $pop80
	i32.store	__stack_pointer($pop49), $pop75
.LBB20_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $5, $3
.LBB20_5:
	end_block
	i32.const	$push6=, 40
	i32.add 	$push7=, $9, $pop6
	i64.const	$push8=, 4407812
	i64.store	0($pop7), $pop8
	i64.const	$push84=, 0
	i64.store	32($9), $pop84
	i64.const	$push83=, 0
	i64.store	24($9), $pop83
	i32.const	$push82=, 1
	i32.const	$push9=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop82, $pop9
	i64.const	$6=, 17218
.LBB20_6:
	block   	
	loop    	
	i32.const	$7=, 0
	i32.wrap/i64	$push10=, $6
	i32.const	$push87=, 24
	i32.shl 	$push11=, $pop10, $pop87
	i32.const	$push86=, -1073741825
	i32.add 	$push12=, $pop11, $pop86
	i32.const	$push85=, 452984830
	i32.gt_u	$push13=, $pop12, $pop85
	br_if   	1, $pop13
	block   	
	i64.const	$push92=, 8
	i64.shr_u	$push91=, $6, $pop92
	tee_local	$push90=, $6=, $pop91
	i64.const	$push89=, 255
	i64.and 	$push14=, $pop90, $pop89
	i64.const	$push88=, 0
	i64.ne  	$push15=, $pop14, $pop88
	br_if   	0, $pop15
.LBB20_8:
	loop    	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $6, $pop97
	tee_local	$push95=, $6=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push16=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push17=, $pop16, $pop93
	br_if   	3, $pop17
	i32.const	$push101=, 1
	i32.add 	$push100=, $1, $pop101
	tee_local	$push99=, $1=, $pop100
	i32.const	$push98=, 7
	i32.lt_s	$push18=, $pop99, $pop98
	br_if   	0, $pop18
.LBB20_10:
	end_loop
	end_block
	i32.const	$7=, 1
	i32.const	$push105=, 1
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push19=, $pop103, $pop102
	br_if   	0, $pop19
.LBB20_11:
	end_loop
	end_block
	i32.const	$push20=, .L.str
	call    	bcio_assert@FUNCTION, $7, $pop20
	i32.const	$push21=, 7
	i32.gt_u	$push22=, $3, $pop21
	i32.const	$push23=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push57=, 24
	i32.add 	$push58=, $9, $pop57
	i32.const	$push119=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop58, $5, $pop119
	i32.const	$push24=, -8
	i32.and 	$push118=, $3, $pop24
	tee_local	$push117=, $7=, $pop118
	i32.const	$push116=, 8
	i32.ne  	$push25=, $pop117, $pop116
	i32.const	$push115=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop25, $pop115
	i32.const	$push59=, 24
	i32.add 	$push60=, $9, $pop59
	i32.const	$push114=, 8
	i32.add 	$push113=, $pop60, $pop114
	tee_local	$push112=, $1=, $pop113
	i32.const	$push111=, 8
	i32.add 	$push26=, $5, $pop111
	i32.const	$push110=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop112, $pop26, $pop110
	i32.const	$push27=, 16
	i32.ne  	$push28=, $7, $pop27
	i32.const	$push109=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop28, $pop109
	i32.const	$push61=, 24
	i32.add 	$push62=, $9, $pop61
	i32.const	$push108=, 16
	i32.add 	$push30=, $pop62, $pop108
	i32.const	$push107=, 16
	i32.add 	$push29=, $5, $pop107
	i32.const	$push106=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop29, $pop106
	block   	
	i32.const	$push31=, 513
	i32.lt_u	$push32=, $3, $pop31
	br_if   	0, $pop32
	call    	free@FUNCTION, $5
.LBB20_13:
	end_block
	i32.const	$push63=, 48
	i32.add 	$push64=, $9, $pop63
	i32.const	$push125=, 8
	i32.add 	$push124=, $pop64, $pop125
	tee_local	$push123=, $7=, $pop124
	i32.const	$push122=, 8
	i32.add 	$push33=, $1, $pop122
	i64.load	$push34=, 0($pop33)
	i64.store	0($pop123), $pop34
	i64.load	$6=, 24($9)
	i64.load	$push35=, 0($1)
	i64.store	48($9), $pop35
	i32.const	$push65=, 64
	i32.add 	$push66=, $9, $pop65
	i32.const	$push121=, 8
	i32.add 	$push36=, $pop66, $pop121
	i64.load	$push37=, 0($7)
	i64.store	0($pop36), $pop37
	i64.load	$push38=, 48($9)
	i64.store	64($9), $pop38
	i32.const	$push39=, 1
	i32.shr_s	$push40=, $2, $pop39
	i32.add 	$1=, $0, $pop40
	block   	
	i32.const	$push120=, 1
	i32.and 	$push41=, $2, $pop120
	i32.eqz 	$push133=, $pop41
	br_if   	0, $pop133
	i32.load	$push42=, 0($1)
	i32.add 	$push43=, $pop42, $8
	i32.load	$8=, 0($pop43)
.LBB20_15:
	end_block
	i32.const	$push67=, 80
	i32.add 	$push68=, $9, $pop67
	i32.const	$push44=, 8
	i32.add 	$push45=, $pop68, $pop44
	i32.const	$push69=, 64
	i32.add 	$push70=, $9, $pop69
	i32.const	$push131=, 8
	i32.add 	$push46=, $pop70, $pop131
	i64.load	$push130=, 0($pop46)
	tee_local	$push129=, $4=, $pop130
	i64.store	0($pop45), $pop129
	i32.const	$push71=, 8
	i32.add 	$push72=, $9, $pop71
	i32.const	$push128=, 8
	i32.add 	$push47=, $pop72, $pop128
	i64.store	0($pop47), $4
	i64.load	$push127=, 64($9)
	tee_local	$push126=, $4=, $pop127
	i64.store	80($9), $pop126
	i64.store	8($9), $4
	i32.const	$push73=, 8
	i32.add 	$push74=, $9, $pop73
	call_indirect	$1, $6, $pop74, $8
	i32.const	$push56=, 0
	i32.const	$push54=, 96
	i32.add 	$push55=, $9, $pop54
	i32.store	__stack_pointer($pop56), $pop55
	i32.const	$push48=, 1
	.endfunc
.Lfunc_end20:
	.size	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E, .Lfunc_end20-_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32
	i32.const	$push51=, 0
	i32.const	$push48=, 0
	i32.load	$push49=, __stack_pointer($pop48)
	i32.const	$push50=, 80
	i32.sub 	$push79=, $pop49, $pop50
	tee_local	$push78=, $4=, $pop79
	i32.store	__stack_pointer($pop51), $pop78
	copy_local	$push77=, $4
	tee_local	$push76=, $5=, $pop77
	i32.store	60($pop76), $0
	i32.load	$push0=, 0($1)
	i32.store	48($5), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($5), $pop1
	i32.const	$1=, 0
	i32.const	$0=, 0
	block   	
	i32.call	$push75=, action_data_size@FUNCTION
	tee_local	$push74=, $2=, $pop75
	i32.eqz 	$push125=, $pop74
	br_if   	0, $pop125
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $2, $pop2
	br_if   	0, $pop3
	i32.call	$0=, malloc@FUNCTION, $2
	br      	1
.LBB21_3:
	end_block
	i32.const	$push47=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $2, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push81=, $4, $pop7
	tee_local	$push80=, $0=, $pop81
	copy_local	$push73=, $pop80
	i32.store	__stack_pointer($pop47), $pop73
.LBB21_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $0, $2
.LBB21_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $5, $pop8
	i64.const	$push10=, 4407812
	i64.store	0($pop9), $pop10
	i64.const	$push84=, 0
	i64.store	16($5), $pop84
	i64.const	$push83=, 0
	i64.store	8($5), $pop83
	i32.const	$push82=, 1
	i32.const	$push11=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop82, $pop11
	i64.const	$3=, 17218
.LBB21_6:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push12=, $3
	i32.const	$push87=, 24
	i32.shl 	$push13=, $pop12, $pop87
	i32.const	$push86=, -1073741825
	i32.add 	$push14=, $pop13, $pop86
	i32.const	$push85=, 452984830
	i32.gt_u	$push15=, $pop14, $pop85
	br_if   	1, $pop15
	block   	
	i64.const	$push92=, 8
	i64.shr_u	$push91=, $3, $pop92
	tee_local	$push90=, $3=, $pop91
	i64.const	$push89=, 255
	i64.and 	$push16=, $pop90, $pop89
	i64.const	$push88=, 0
	i64.ne  	$push17=, $pop16, $pop88
	br_if   	0, $pop17
.LBB21_8:
	loop    	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $3, $pop97
	tee_local	$push95=, $3=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push18=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push19=, $pop18, $pop93
	br_if   	3, $pop19
	i32.const	$push101=, 1
	i32.add 	$push100=, $1, $pop101
	tee_local	$push99=, $1=, $pop100
	i32.const	$push98=, 7
	i32.lt_s	$push20=, $pop99, $pop98
	br_if   	0, $pop20
.LBB21_10:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push105=, 1
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push21=, $pop103, $pop102
	br_if   	0, $pop21
	br      	2
.LBB21_11:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB21_12:
	end_block
	i32.const	$push22=, .L.str
	call    	bcio_assert@FUNCTION, $4, $pop22
	i32.const	$push23=, 40
	i32.add 	$push24=, $5, $pop23
	i32.const	$push122=, 0
	i32.store	0($pop24), $pop122
	i64.const	$push25=, 0
	i64.store	32($5), $pop25
	i32.store	64($5), $0
	i32.add 	$push121=, $0, $2
	tee_local	$push120=, $1=, $pop121
	i32.store	72($5), $pop120
	i32.const	$push26=, 7
	i32.gt_u	$push27=, $2, $pop26
	i32.const	$push28=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop27, $pop28
	i32.const	$push55=, 8
	i32.add 	$push56=, $5, $pop55
	i32.const	$push29=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop56, $0, $pop29
	i32.const	$push119=, 8
	i32.add 	$push118=, $0, $pop119
	tee_local	$push117=, $4=, $pop118
	i32.sub 	$push30=, $1, $pop117
	i32.const	$push116=, 7
	i32.gt_u	$push31=, $pop30, $pop116
	i32.const	$push115=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop31, $pop115
	i32.const	$push57=, 8
	i32.add 	$push58=, $5, $pop57
	i32.const	$push114=, 8
	i32.add 	$push32=, $pop58, $pop114
	i32.const	$push113=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop32, $4, $pop113
	i32.const	$push33=, 16
	i32.add 	$push112=, $0, $pop33
	tee_local	$push111=, $4=, $pop112
	i32.sub 	$push34=, $1, $pop111
	i32.const	$push110=, 7
	i32.gt_u	$push35=, $pop34, $pop110
	i32.const	$push109=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop35, $pop109
	i32.const	$push59=, 8
	i32.add 	$push60=, $5, $pop59
	i32.const	$push108=, 16
	i32.add 	$push36=, $pop60, $pop108
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $4, $pop107
	i32.const	$push37=, 24
	i32.add 	$push38=, $0, $pop37
	i32.store	68($5), $pop38
	i32.const	$push63=, 64
	i32.add 	$push64=, $5, $pop63
	i32.const	$push61=, 8
	i32.add 	$push62=, $5, $pop61
	i32.const	$push106=, 24
	i32.add 	$push39=, $pop62, $pop106
	i32.call	$drop=, _ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop64, $pop39
	block   	
	i32.const	$push40=, 513
	i32.lt_u	$push41=, $2, $pop40
	br_if   	0, $pop41
	call    	free@FUNCTION, $0
.LBB21_14:
	end_block
	i32.const	$push65=, 48
	i32.add 	$push66=, $5, $pop65
	i32.store	68($5), $pop66
	i32.const	$push67=, 60
	i32.add 	$push68=, $5, $pop67
	i32.store	64($5), $pop68
	i32.const	$push69=, 64
	i32.add 	$push70=, $5, $pop69
	i32.const	$push71=, 8
	i32.add 	$push72=, $5, $pop71
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop70, $pop72
	block   	
	i32.load8_u	$push42=, 32($5)
	i32.const	$push123=, 1
	i32.and 	$push43=, $pop42, $pop123
	i32.eqz 	$push126=, $pop43
	br_if   	0, $pop126
	i32.const	$push44=, 40
	i32.add 	$push45=, $5, $pop44
	i32.load	$push46=, 0($pop45)
	call    	_ZdlPv@FUNCTION, $pop46
.LBB21_16:
	end_block
	i32.const	$push54=, 0
	i32.const	$push52=, 80
	i32.add 	$push53=, $5, $pop52
	i32.store	__stack_pointer($pop54), $pop53
	i32.const	$push124=, 1
	.endfunc
.Lfunc_end21:
	.size	_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end21-_ZN4bcio14execute_actionINS_5tokenES1_JyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 96
	i32.sub 	$push59=, $pop35, $pop36
	tee_local	$push58=, $4=, $pop59
	i32.store	__stack_pointer($pop37), $pop58
	copy_local	$push57=, $4
	tee_local	$push56=, $5=, $pop57
	i32.store	60($pop56), $0
	i32.load	$push0=, 0($1)
	i32.store	48($5), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($5), $pop1
	i32.const	$1=, 0
	i32.const	$0=, 0
	block   	
	i32.call	$push55=, action_data_size@FUNCTION
	tee_local	$push54=, $2=, $pop55
	i32.eqz 	$push91=, $pop54
	br_if   	0, $pop91
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $2, $pop2
	br_if   	0, $pop3
	i32.call	$0=, malloc@FUNCTION, $2
	br      	1
.LBB22_3:
	end_block
	i32.const	$push33=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $2, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push61=, $4, $pop7
	tee_local	$push60=, $0=, $pop61
	copy_local	$push53=, $pop60
	i32.store	__stack_pointer($pop33), $pop53
.LBB22_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $0, $2
.LBB22_5:
	end_block
	i32.const	$push66=, 24
	i32.add 	$push8=, $5, $pop66
	i64.const	$push9=, 4407812
	i64.store	0($pop8), $pop9
	i64.const	$push65=, 0
	i64.store	8($5), $pop65
	i64.const	$push64=, 0
	i64.store	0($5), $pop64
	i64.const	$push63=, 0
	i64.store	16($5), $pop63
	i32.const	$push62=, 1
	i32.const	$push10=, .L.str.26
	call    	bcio_assert@FUNCTION, $pop62, $pop10
	i64.const	$3=, 17218
.LBB22_6:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push11=, $3
	i32.const	$push69=, 24
	i32.shl 	$push12=, $pop11, $pop69
	i32.const	$push68=, -1073741825
	i32.add 	$push13=, $pop12, $pop68
	i32.const	$push67=, 452984830
	i32.gt_u	$push14=, $pop13, $pop67
	br_if   	1, $pop14
	block   	
	i64.const	$push74=, 8
	i64.shr_u	$push73=, $3, $pop74
	tee_local	$push72=, $3=, $pop73
	i64.const	$push71=, 255
	i64.and 	$push15=, $pop72, $pop71
	i64.const	$push70=, 0
	i64.ne  	$push16=, $pop15, $pop70
	br_if   	0, $pop16
.LBB22_8:
	loop    	
	i64.const	$push79=, 8
	i64.shr_u	$push78=, $3, $pop79
	tee_local	$push77=, $3=, $pop78
	i64.const	$push76=, 255
	i64.and 	$push17=, $pop77, $pop76
	i64.const	$push75=, 0
	i64.ne  	$push18=, $pop17, $pop75
	br_if   	3, $pop18
	i32.const	$push83=, 1
	i32.add 	$push82=, $1, $pop83
	tee_local	$push81=, $1=, $pop82
	i32.const	$push80=, 7
	i32.lt_s	$push19=, $pop81, $pop80
	br_if   	0, $pop19
.LBB22_10:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push87=, 1
	i32.add 	$push86=, $1, $pop87
	tee_local	$push85=, $1=, $pop86
	i32.const	$push84=, 7
	i32.lt_s	$push20=, $pop85, $pop84
	br_if   	0, $pop20
	br      	2
.LBB22_11:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB22_12:
	end_block
	i32.const	$push21=, .L.str
	call    	bcio_assert@FUNCTION, $4, $pop21
	i32.const	$push22=, 40
	i32.add 	$push23=, $5, $pop22
	i32.const	$push88=, 0
	i32.store	0($pop23), $pop88
	i64.const	$push24=, 0
	i64.store	32($5), $pop24
	i32.store	68($5), $0
	i32.store	64($5), $0
	i32.add 	$push25=, $0, $2
	i32.store	72($5), $pop25
	i32.const	$push41=, 64
	i32.add 	$push42=, $5, $pop41
	i32.store	80($5), $pop42
	i32.store	88($5), $5
	i32.const	$push43=, 88
	i32.add 	$push44=, $5, $pop43
	i32.const	$push45=, 80
	i32.add 	$push46=, $5, $pop45
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_@FUNCTION, $pop44, $pop46
	block   	
	i32.const	$push26=, 513
	i32.lt_u	$push27=, $2, $pop26
	br_if   	0, $pop27
	call    	free@FUNCTION, $0
.LBB22_14:
	end_block
	i32.const	$push47=, 48
	i32.add 	$push48=, $5, $pop47
	i32.store	68($5), $pop48
	i32.const	$push49=, 60
	i32.add 	$push50=, $5, $pop49
	i32.store	64($5), $pop50
	i32.const	$push51=, 64
	i32.add 	$push52=, $5, $pop51
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop52, $5
	block   	
	i32.load8_u	$push28=, 32($5)
	i32.const	$push89=, 1
	i32.and 	$push29=, $pop28, $pop89
	i32.eqz 	$push92=, $pop29
	br_if   	0, $pop92
	i32.const	$push30=, 40
	i32.add 	$push31=, $5, $pop30
	i32.load	$push32=, 0($pop31)
	call    	_ZdlPv@FUNCTION, $pop32
.LBB22_16:
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 96
	i32.add 	$push39=, $5, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	i32.const	$push90=, 1
	.endfunc
.Lfunc_end22:
	.size	_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end22-_ZN4bcio14execute_actionINS_5tokenES1_JyyNS_5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push58=, 0($1)
	tee_local	$push57=, $3=, $pop58
	i32.load	$push1=, 8($pop57)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop6, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push56=, 8
	i32.add 	$push9=, $pop8, $pop56
	i32.store	4($3), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push55=, 0($1)
	tee_local	$push54=, $3=, $pop55
	i32.load	$push11=, 8($pop54)
	i32.load	$push10=, 4($3)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push53=, 7
	i32.gt_u	$push13=, $pop12, $pop53
	i32.const	$push52=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop13, $pop52
	i32.const	$push51=, 8
	i32.add 	$push14=, $0, $pop51
	i32.load	$push15=, 4($3)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop50
	i32.load	$push16=, 4($3)
	i32.const	$push49=, 8
	i32.add 	$push17=, $pop16, $pop49
	i32.store	4($3), $pop17
	i32.load	$push48=, 0($1)
	tee_local	$push47=, $3=, $pop48
	i32.load	$push19=, 8($pop47)
	i32.load	$push18=, 4($3)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push46=, 7
	i32.gt_u	$push21=, $pop20, $pop46
	i32.const	$push45=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop21, $pop45
	i32.const	$push22=, 16
	i32.add 	$push23=, $0, $pop22
	i32.load	$push24=, 4($3)
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop44
	i32.load	$push25=, 4($3)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop25, $pop43
	tee_local	$push41=, $2=, $pop42
	i32.store	4($3), $pop41
	i32.load	$push26=, 8($3)
	i32.sub 	$push27=, $pop26, $2
	i32.const	$push40=, 7
	i32.gt_u	$push28=, $pop27, $pop40
	i32.const	$push39=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop28, $pop39
	i32.const	$push29=, 24
	i32.add 	$push30=, $0, $pop29
	i32.load	$push31=, 4($3)
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop31, $pop38
	i32.load	$push32=, 4($3)
	i32.const	$push37=, 8
	i32.add 	$push33=, $pop32, $pop37
	i32.store	4($3), $pop33
	i32.load	$push36=, 0($1)
	i32.const	$push34=, 32
	i32.add 	$push35=, $0, $pop34
	i32.call	$drop=, _ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop36, $pop35
	.endfunc
.Lfunc_end23:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_, .Lfunc_end23-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN4bcio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i32, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 96
	i32.sub 	$push70=, $pop39, $pop40
	tee_local	$push69=, $5=, $pop70
	i32.store	__stack_pointer($pop41), $pop69
	i32.const	$push3=, 44
	i32.add 	$push4=, $5, $pop3
	i32.const	$push0=, 28
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.store	0($pop4), $pop2
	i32.const	$push45=, 32
	i32.add 	$push46=, $5, $pop45
	i32.const	$push8=, 8
	i32.add 	$push68=, $pop46, $pop8
	tee_local	$push67=, $4=, $pop68
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.load	$push7=, 0($pop6)
	i32.store	0($pop67), $pop7
	i32.load	$push9=, 16($1)
	i32.store	32($5), $pop9
	i32.const	$push10=, 20
	i32.add 	$push11=, $1, $pop10
	i32.load	$push12=, 0($pop11)
	i32.store	36($5), $pop12
	i64.load	$3=, 8($1)
	i64.load	$2=, 0($1)
	i32.const	$push47=, 16
	i32.add 	$push48=, $5, $pop47
	i32.const	$push13=, 32
	i32.add 	$push14=, $1, $pop13
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop48, $pop14
	i32.const	$push49=, 48
	i32.add 	$push50=, $5, $pop49
	i32.const	$push66=, 8
	i32.add 	$push15=, $pop50, $pop66
	i64.load	$push16=, 0($4)
	i64.store	0($pop15), $pop16
	i64.load	$push17=, 32($5)
	i64.store	48($5), $pop17
	i32.load	$push20=, 0($0)
	i32.load	$push21=, 0($pop20)
	i32.load	$push65=, 4($0)
	tee_local	$push64=, $1=, $pop65
	i32.load	$push63=, 4($pop64)
	tee_local	$push62=, $4=, $pop63
	i32.const	$push18=, 1
	i32.shr_s	$push19=, $pop62, $pop18
	i32.add 	$0=, $pop21, $pop19
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push61=, 1
	i32.and 	$push22=, $4, $pop61
	i32.eqz 	$push77=, $pop22
	br_if   	0, $pop77
	i32.load	$push23=, 0($0)
	i32.add 	$push24=, $pop23, $1
	i32.load	$1=, 0($pop24)
.LBB24_2:
	end_block
	i32.const	$push51=, 80
	i32.add 	$push52=, $5, $pop51
	i32.const	$push25=, 8
	i32.add 	$push75=, $pop52, $pop25
	tee_local	$push74=, $4=, $pop75
	i32.const	$push53=, 48
	i32.add 	$push54=, $5, $pop53
	i32.const	$push73=, 8
	i32.add 	$push26=, $pop54, $pop73
	i64.load	$push27=, 0($pop26)
	i64.store	0($pop74), $pop27
	i64.load	$push28=, 48($5)
	i64.store	80($5), $pop28
	i32.const	$push55=, 64
	i32.add 	$push56=, $5, $pop55
	i32.const	$push57=, 16
	i32.add 	$push58=, $5, $pop57
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop56, $pop58
	i32.const	$push72=, 8
	i32.add 	$push29=, $5, $pop72
	i64.load	$push30=, 0($4)
	i64.store	0($pop29), $pop30
	i64.load	$push31=, 80($5)
	i64.store	0($5), $pop31
	i32.const	$push59=, 64
	i32.add 	$push60=, $5, $pop59
	call_indirect	$0, $2, $3, $5, $pop60, $1
	block   	
	i32.load8_u	$push32=, 64($5)
	i32.const	$push71=, 1
	i32.and 	$push33=, $pop32, $pop71
	i32.eqz 	$push78=, $pop33
	br_if   	0, $pop78
	i32.load	$push34=, 72($5)
	call    	_ZdlPv@FUNCTION, $pop34
.LBB24_4:
	end_block
	block   	
	i32.load8_u	$push35=, 16($5)
	i32.const	$push76=, 1
	i32.and 	$push36=, $pop35, $pop76
	i32.eqz 	$push79=, $pop36
	br_if   	0, $pop79
	i32.load	$push37=, 24($5)
	call    	_ZdlPv@FUNCTION, $pop37
.LBB24_6:
	end_block
	i32.const	$push44=, 0
	i32.const	$push42=, 96
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end24:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end24-_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyS6_SD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB25_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB25_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB25_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB25_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB25_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB25_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB25_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB25_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB25_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB25_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB25_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB25_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end25:
	.size	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end25-_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

	.section	.text._ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB26_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.43
	call    	bcio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB26_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB26_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.29
	call    	bcio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end26:
	.size	_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end26-_ZN4bciorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB27_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB27_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB27_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB27_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB27_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB27_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB27_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB27_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB27_15:
	end_block
	.endfunc
.Lfunc_end27:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end27-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i32, i32
	i32.const	$push40=, 0
	i32.const	$push37=, 0
	i32.load	$push38=, __stack_pointer($pop37)
	i32.const	$push39=, 96
	i32.sub 	$push72=, $pop38, $pop39
	tee_local	$push71=, $4=, $pop72
	i32.store	__stack_pointer($pop40), $pop71
	i32.const	$push44=, 32
	i32.add 	$push45=, $4, $pop44
	i32.const	$push3=, 12
	i32.add 	$push4=, $pop45, $pop3
	i32.const	$push0=, 20
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.store	0($pop4), $pop2
	i32.const	$push46=, 32
	i32.add 	$push47=, $4, $pop46
	i32.const	$push8=, 8
	i32.add 	$push70=, $pop47, $pop8
	tee_local	$push69=, $3=, $pop70
	i32.const	$push5=, 16
	i32.add 	$push6=, $1, $pop5
	i32.load	$push7=, 0($pop6)
	i32.store	0($pop69), $pop7
	i32.load	$push9=, 8($1)
	i32.store	32($4), $pop9
	i32.const	$push68=, 12
	i32.add 	$push10=, $1, $pop68
	i32.load	$push11=, 0($pop10)
	i32.store	36($4), $pop11
	i64.load	$2=, 0($1)
	i32.const	$push48=, 16
	i32.add 	$push49=, $4, $pop48
	i32.const	$push12=, 24
	i32.add 	$push13=, $1, $pop12
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop49, $pop13
	i32.const	$push50=, 48
	i32.add 	$push51=, $4, $pop50
	i32.const	$push67=, 8
	i32.add 	$push14=, $pop51, $pop67
	i64.load	$push15=, 0($3)
	i64.store	0($pop14), $pop15
	i64.load	$push16=, 32($4)
	i64.store	48($4), $pop16
	i32.load	$push19=, 0($0)
	i32.load	$push20=, 0($pop19)
	i32.load	$push66=, 4($0)
	tee_local	$push65=, $1=, $pop66
	i32.load	$push64=, 4($pop65)
	tee_local	$push63=, $3=, $pop64
	i32.const	$push17=, 1
	i32.shr_s	$push18=, $pop63, $pop17
	i32.add 	$0=, $pop20, $pop18
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push62=, 1
	i32.and 	$push21=, $3, $pop62
	i32.eqz 	$push79=, $pop21
	br_if   	0, $pop79
	i32.load	$push22=, 0($0)
	i32.add 	$push23=, $pop22, $1
	i32.load	$1=, 0($pop23)
.LBB28_2:
	end_block
	i32.const	$push52=, 80
	i32.add 	$push53=, $4, $pop52
	i32.const	$push24=, 8
	i32.add 	$push77=, $pop53, $pop24
	tee_local	$push76=, $3=, $pop77
	i32.const	$push54=, 48
	i32.add 	$push55=, $4, $pop54
	i32.const	$push75=, 8
	i32.add 	$push25=, $pop55, $pop75
	i64.load	$push26=, 0($pop25)
	i64.store	0($pop76), $pop26
	i64.load	$push27=, 48($4)
	i64.store	80($4), $pop27
	i32.const	$push56=, 64
	i32.add 	$push57=, $4, $pop56
	i32.const	$push58=, 16
	i32.add 	$push59=, $4, $pop58
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop57, $pop59
	i32.const	$push74=, 8
	i32.add 	$push28=, $4, $pop74
	i64.load	$push29=, 0($3)
	i64.store	0($pop28), $pop29
	i64.load	$push30=, 80($4)
	i64.store	0($4), $pop30
	i32.const	$push60=, 64
	i32.add 	$push61=, $4, $pop60
	call_indirect	$0, $2, $4, $pop61, $1
	block   	
	i32.load8_u	$push31=, 64($4)
	i32.const	$push73=, 1
	i32.and 	$push32=, $pop31, $pop73
	i32.eqz 	$push80=, $pop32
	br_if   	0, $pop80
	i32.load	$push33=, 72($4)
	call    	_ZdlPv@FUNCTION, $pop33
.LBB28_4:
	end_block
	block   	
	i32.load8_u	$push34=, 16($4)
	i32.const	$push78=, 1
	i32.and 	$push35=, $pop34, $pop78
	i32.eqz 	$push81=, $pop35
	br_if   	0, $pop81
	i32.load	$push36=, 24($4)
	call    	_ZdlPv@FUNCTION, $pop36
.LBB28_6:
	end_block
	i32.const	$push43=, 0
	i32.const	$push41=, 96
	i32.add 	$push42=, $4, $pop41
	i32.store	__stack_pointer($pop43), $pop42
	.endfunc
.Lfunc_end28:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end28-_ZN5boost4mp116detail16tuple_apply_implIRZN4bcio14execute_actionINS3_5tokenES5_JyNS3_5assetENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyS6_SD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE

	.text
	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB29_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB29_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end29:
	.size	_Znwj, .Lfunc_end29-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB30_2:
	end_block
	.endfunc
.Lfunc_end30:
	.size	_ZdlPv, .Lfunc_end30-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end31:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end31-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB32_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB32_5:
	end_block
	i32.load	$3=, 4($0)
.LBB32_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB32_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB32_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB32_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB32_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB32_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB32_18:
	end_block
	i32.load	$5=, 4($0)
.LBB32_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB32_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB32_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB32_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB32_26:
	end_block
	return
.LBB32_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end32:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end32-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end33:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end33-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB34_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB34_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB34_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB34_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB34_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end34:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end34-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.text
	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB35_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB35_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB35_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end35:
	.size	memcmp, .Lfunc_end35-memcmp

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN4bcio11memory_heapE
	i32.call	$push1=, _ZN4bcio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end36:
	.size	malloc, .Lfunc_end36-malloc

	.section	.text._ZN4bcio14memory_manager6mallocEm,"axG",@progbits,_ZN4bcio14memory_manager6mallocEm,comdat
	.hidden	_ZN4bcio14memory_manager6mallocEm
	.weak	_ZN4bcio14memory_manager6mallocEm
	.type	_ZN4bcio14memory_manager6mallocEm,@function
_ZN4bcio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB37_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB37_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB37_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB37_10:
	end_block
	i32.call	$push86=, _ZN4bcio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB37_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB37_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.17
	call    	bcio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB37_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB37_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB37_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB37_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB37_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB37_23:
	end_loop
	end_block
	return  	$1
.LBB37_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB37_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end37:
	.size	_ZN4bcio14memory_manager6mallocEm, .Lfunc_end37-_ZN4bcio14memory_manager6mallocEm

	.section	.text._ZN4bcio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN4bcio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN4bcio14memory_manager16next_active_heapEv
	.weak	_ZN4bcio14memory_manager16next_active_heapEv
	.type	_ZN4bcio14memory_manager16next_active_heapEv,@function
_ZN4bcio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB38_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB38_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB38_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB38_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB38_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB38_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB38_18:
	end_block
	return  	$8
.LBB38_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB38_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB38_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end38:
	.size	_ZN4bcio14memory_manager16next_active_heapEv, .Lfunc_end38-_ZN4bcio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN4bcio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN4bcio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN4bcio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB39_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB39_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB39_7:
	end_loop
	end_block
	return
.LBB39_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end39:
	.size	free, .Lfunc_end39-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid symbol name"
	.size	.L.str, 20

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"invalid supply"
	.size	.L.str.1, 15

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"max-supply must be positive"
	.size	.L.str.2, 28

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.27, 51

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"token with symbol already exists"
	.size	.L.str.3, 33

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.31, 51

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"write"
	.size	.L.str.32, 6

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"magnitude of asset amount must be less than 2^62"
	.size	.L.str.26, 49

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"error reading iterator"
	.size	.L.str.28, 23

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"read"
	.size	.L.str.29, 5

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"memo has more than 256 bytes"
	.size	.L.str.4, 29

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"token with symbol does not exist, create token before issue"
	.size	.L.str.5, 60

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"invalid quantity"
	.size	.L.str.6, 17

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"must issue positive quantity"
	.size	.L.str.7, 29

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"symbol precision mismatch"
	.size	.L.str.8, 26

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"quantity exceeds available supply"
	.size	.L.str.9, 34

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.33, 46

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.34, 51

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"attempt to add asset with different symbol"
	.size	.L.str.36, 43

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"addition underflow"
	.size	.L.str.37, 19

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"addition overflow"
	.size	.L.str.38, 18

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.35, 59

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"no balance object found"
	.size	.L.str.22, 24

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"overdrawn balance"
	.size	.L.str.23, 18

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"attempt to subtract asset with different symbol"
	.size	.L.str.39, 48

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"subtraction underflow"
	.size	.L.str.40, 22

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"subtraction overflow"
	.size	.L.str.41, 21

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.42, 35

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"cannot transfer to self"
	.size	.L.str.10, 24

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"to account does not exist"
	.size	.L.str.11, 26

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"unable to find key"
	.size	.L.str.12, 19

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"must transfer positive quantity"
	.size	.L.str.13, 32

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"bcio.stake"
	.size	.L.str.14, 11

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"bcio"
	.size	.L.str.15, 5

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"bcio.vpay"
	.size	.L.str.16, 10

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"bcio.bpay"
	.size	.L.str.17, 10

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"bcio.vote"
	.size	.L.str.18, 10

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"bcio.mine"
	.size	.L.str.19, 10

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"bcio.fee"
	.size	.L.str.20, 9

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"onerror"
	.size	.L.str.24, 8

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"onerror action's are only valid from the \"bcio\" system account"
	.size	.L.str.25, 63

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"get"
	.size	.L.str.43, 4

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.hidden	_ZN4bcio11memory_heapE
	.type	_ZN4bcio11memory_heapE,@object
	.bss
	.globl	_ZN4bcio11memory_heapE
	.p2align	2
_ZN4bcio11memory_heapE:
	.skip	8396
	.size	_ZN4bcio11memory_heapE, 8396

	.type	.L.str.1.17,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.17:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.17, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	require_auth, void, i64
	.functype	bcio_assert, void, i32, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	current_receiver, i64
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	is_account, i32, i64
	.functype	require_recipient, void, i64
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	abort, void
