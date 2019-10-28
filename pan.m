#define rand	pan_rand
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :never: */
	case 3: /* STATE 1 - line 138 "pan.___" - [(!((procEnSectionCritique<2)))] (0:0:0 - 1) */
		reached[2][1] = 1;
		if (!( !((((int)now.procEnSectionCritique)<2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 8 - line 143 "pan.___" - [-end-] (0:0:0 - 1) */
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: /* STATE 1 - line 100 "pan.___" - [I = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = 0;
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 2 - line 102 "pan.___" - [((I<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.I)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - line 104 "pan.___" - [(((Ini[0]==0)&&(4>=1)))] (16:0:2 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((((int)((P1 *)this)->Ini[0])==0)&&(4>=1))))
			continue;
		/* merge: Ini[0] = I(16, 4, 16) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[0]);
		((P1 *)this)->Ini[0] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[0]", ((int)((P1 *)this)->Ini[0]));
#endif
		;
		/* merge: .(goto)(16, 12, 16) */
		reached[1][12] = 1;
		;
		/* merge: I = (I+1)(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 8: /* STATE 5 - line 105 "pan.___" - [(((Ini[1]==0)&&(4>=2)))] (16:0:2 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!(((((int)((P1 *)this)->Ini[1])==0)&&(4>=2))))
			continue;
		/* merge: Ini[1] = I(16, 6, 16) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[1]);
		((P1 *)this)->Ini[1] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[1]", ((int)((P1 *)this)->Ini[1]));
#endif
		;
		/* merge: .(goto)(16, 12, 16) */
		reached[1][12] = 1;
		;
		/* merge: I = (I+1)(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: /* STATE 7 - line 106 "pan.___" - [(((Ini[2]==0)&&(4>=3)))] (16:0:2 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((((int)((P1 *)this)->Ini[2])==0)&&(4>=3))))
			continue;
		/* merge: Ini[2] = I(16, 8, 16) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[2]);
		((P1 *)this)->Ini[2] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[2]", ((int)((P1 *)this)->Ini[2]));
#endif
		;
		/* merge: .(goto)(16, 12, 16) */
		reached[1][12] = 1;
		;
		/* merge: I = (I+1)(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 10: /* STATE 9 - line 107 "pan.___" - [(((Ini[3]==0)&&(4>=4)))] (16:0:2 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		if (!(((((int)((P1 *)this)->Ini[3])==0)&&(4>=4))))
			continue;
		/* merge: Ini[3] = I(16, 10, 16) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[3]);
		((P1 *)this)->Ini[3] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[3]", ((int)((P1 *)this)->Ini[3]));
#endif
		;
		/* merge: .(goto)(16, 12, 16) */
		reached[1][12] = 1;
		;
		/* merge: I = (I+1)(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 11: /* STATE 13 - line 109 "pan.___" - [I = (I+1)] (0:16:1 - 5) */
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: /* STATE 14 - line 110 "pan.___" - [((I>=4))] (27:0:2 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((int)now.I)>=4)))
			continue;
		/* merge: goto :b6(27, 15, 27) */
		reached[1][15] = 1;
		;
		/* merge: proc = 1(27, 19, 27) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: i = 0(27, 20, 27) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->i);
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->i));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: /* STATE 19 - line 114 "pan.___" - [proc = 1] (0:27:2 - 3) */
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: i = 0(27, 20, 27) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->i);
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->i));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: /* STATE 21 - line 117 "pan.___" - [((proc<=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((int)((P1 *)this)->proc)<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 22 - line 118 "pan.___" - [(run mutualExclusion(Ini[i]))] (27:0:2 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		if (!(addproc(0, ((int)((P1 *)this)->Ini[ Index(((int)((P1 *)this)->i), 4) ]))))
			continue;
		/* merge: proc = (proc+1)(27, 23, 27) */
		reached[1][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = (((int)((P1 *)this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: i = (i+1)(27, 24, 27) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->i);
		((P1 *)this)->i = (((int)((P1 *)this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->i));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: /* STATE 25 - line 121 "pan.___" - [((proc>4))] (29:0:1 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((int)((P1 *)this)->proc)>4)))
			continue;
		/* dead 1: proc */  (trpt+1)->bup.oval = ((P1 *)this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->proc = 0;
		/* merge: goto :b7(0, 26, 29) */
		reached[1][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 17: /* STATE 31 - line 124 "pan.___" - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC mutualExclusion */
	case 18: /* STATE 1 - line 11 "pan.___" - [(1)] (4:0:1 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!(1))
			continue;
		/* merge: counter = 0(0, 2, 4) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 19: /* STATE 3 - line 17 "pan.___" - [flag[index] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]);
		now.flag[ Index(((P0 *)this)->index, 4) ] = 1;
#ifdef VAR_RANGES
		logval("flag[mutualExclusion:index]", ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 5 - line 22 "pan.___" - [(((counter<4)&&(flag[counter]<3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])<3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 6 - line 22 "pan.___" - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = (((int)((P0 *)this)->counter)+1);
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 7 - line 23 "pan.___" - [(((counter<4)&&(flag[counter]>=3)))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])>=3))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 8 - line 23 "pan.___" - [counter = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 9 - line 24 "pan.___" - [((counter>=4))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)this)->counter)>=4)))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 14 - line 29 "pan.___" - [flag[index] = 3] (0:23:2 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]);
		now.flag[ Index(((P0 *)this)->index, 4) ] = 3;
#ifdef VAR_RANGES
		logval("flag[mutualExclusion:index]", ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]));
#endif
		;
		/* merge: counter = 0(23, 16, 23) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		/* merge: .(goto)(0, 24, 23) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: /* STATE 17 - line 36 "pan.___" - [(((counter<4)&&(flag[counter]==1)))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==1))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 19 - line 37 "pan.___" - [(((counter<4)&&(flag[counter]!=1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
/* STATE 20 - line 37 "pan.___" - [counter = (counter+1)] (0:0 - 1) same as 21 (0:0 - 1) */
/* STATE 21 - line 38 "pan.___" - [((counter>=4))] (0:0 - 1) same as 24 (0:0 - 1) */
	case 28: /* STATE 26 - line 43 "pan.___" - [flag[index] = 2] (0:35:2 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]);
		now.flag[ Index(((P0 *)this)->index, 4) ] = 2;
#ifdef VAR_RANGES
		logval("flag[mutualExclusion:index]", ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]));
#endif
		;
		/* merge: counter = 0(35, 28, 35) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: /* STATE 29 - line 50 "pan.___" - [(((counter<4)&&(flag[counter]==4)))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==4))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 31 - line 51 "pan.___" - [(((counter<4)&&(flag[counter]!=4)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
/* STATE 32 - line 51 "pan.___" - [counter = (counter+1)] (0:0 - 1) same as 21 (0:0 - 1) */
	case 31: /* STATE 33 - line 52 "pan.___" - [((counter>=4))] (35:0:2 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((int)((P0 *)this)->counter)>=4)))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		/* merge: counter = 0(0, 34, 35) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: /* STATE 38 - line 57 "pan.___" - [flag[index] = 4] (0:47:2 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]);
		now.flag[ Index(((P0 *)this)->index, 4) ] = 4;
#ifdef VAR_RANGES
		logval("flag[mutualExclusion:index]", ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]));
#endif
		;
		/* merge: counter = 0(47, 40, 47) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 33: /* STATE 41 - line 64 "pan.___" - [(((counter<index)&&(flag[counter]<2)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!(((((int)((P0 *)this)->counter)<((int)((P0 *)this)->index))&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])<2))))
			continue;
		_m = 3; goto P999; /* 0 */
/* STATE 42 - line 64 "pan.___" - [counter = (counter+1)] (0:0 - 1) same as 21 (0:0 - 1) */
	case 34: /* STATE 43 - line 65 "pan.___" - [(((counter<index)&&(flag[counter]>=2)))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((((int)((P0 *)this)->counter)<((int)((P0 *)this)->index))&&(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])>=2))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
/* STATE 44 - line 65 "pan.___" - [counter = 0] (0:0 - 1) same as 23 (0:0 - 1) */
	case 35: /* STATE 45 - line 66 "pan.___" - [((counter>=index))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((int)((P0 *)this)->counter)>=((int)((P0 *)this)->index))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 50 - line 70 "pan.___" - [procEnSectionCritique = (procEnSectionCritique+1)] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)now.procEnSectionCritique);
		now.procEnSectionCritique = (((int)now.procEnSectionCritique)+1);
#ifdef VAR_RANGES
		logval("procEnSectionCritique", ((int)now.procEnSectionCritique));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 51 - line 76 "pan.___" - [counter = (index+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = (((int)((P0 *)this)->index)+1);
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 52 - line 79 "pan.___" - [(((counter<4)&&(((flag[counter]==0)||(flag[counter]==1))||(flag[counter]==4))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&(((((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==0)||(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==1))||(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
/* STATE 53 - line 79 "pan.___" - [counter = (counter+1)] (0:0 - 1) same as 21 (0:0 - 1) */
	case 39: /* STATE 54 - line 80 "pan.___" - [(((counter<4)&&((flag[counter]==2)||(flag[counter]==3))))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		if (!(((((int)((P0 *)this)->counter)<4)&&((((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==2)||(((int)now.flag[ Index(((int)((P0 *)this)->counter), 4) ])==3)))))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.oval = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		_m = 3; goto P999; /* 0 */
/* STATE 55 - line 80 "pan.___" - [counter = (index+1)] (0:0 - 1) same as 37 (0:0 - 1) */
	case 40: /* STATE 56 - line 81 "pan.___" - [((counter>=4))] (62:0:2 - 1) */
		IfNotBlocked
		reached[0][56] = 1;
		if (!((((int)((P0 *)this)->counter)>=4)))
			continue;
		/* dead 1: counter */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->counter = 0;
		/* merge: goto :b5(62, 57, 62) */
		reached[0][57] = 1;
		;
		/* merge: counter = 0(62, 61, 62) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 41: /* STATE 61 - line 84 "pan.___" - [counter = 0] (0:62:1 - 3) */
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->counter);
		((P0 *)this)->counter = 0;
#ifdef VAR_RANGES
		logval("mutualExclusion:counter", ((int)((P0 *)this)->counter));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 62 - line 87 "pan.___" - [procEnSectionCritique = (procEnSectionCritique-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)now.procEnSectionCritique);
		now.procEnSectionCritique = (((int)now.procEnSectionCritique)-1);
#ifdef VAR_RANGES
		logval("procEnSectionCritique", ((int)now.procEnSectionCritique));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 63 - line 89 "pan.___" - [flag[index] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]);
		now.flag[ Index(((P0 *)this)->index, 4) ] = 0;
#ifdef VAR_RANGES
		logval("flag[mutualExclusion:index]", ((int)now.flag[ Index(((int)((P0 *)this)->index), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 68 - line 91 "pan.___" - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

