	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :never: */
;
		;
		
	case 4: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: /* STATE 1 */
		;
		now.I = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: /* STATE 13 */
		;
		now.I = trpt->bup.ovals[1];
		((P1 *)this)->Ini[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 8: /* STATE 13 */
		;
		now.I = trpt->bup.ovals[1];
		((P1 *)this)->Ini[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: /* STATE 13 */
		;
		now.I = trpt->bup.ovals[1];
		((P1 *)this)->Ini[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: /* STATE 13 */
		;
		now.I = trpt->bup.ovals[1];
		((P1 *)this)->Ini[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: /* STATE 13 */
		;
		now.I = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 20 */
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->proc = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: /* STATE 20 */
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->proc = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 15: /* STATE 24 */
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
		((P1 *)this)->proc = trpt->bup.ovals[0];
		;
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: /* STATE 25 */
		;
	/* 0 */	((P1 *)this)->proc = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: /* STATE 31 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC mutualExclusion */

	case 18: /* STATE 2 */
		;
		((P0 *)this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 3 */
		;
		now.flag[ Index(((P0 *)this)->index, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 6 */
		;
		((P0 *)this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 22: /* STATE 7 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;

	case 23: /* STATE 8 */
		;
		((P0 *)this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 9 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;

	case 25: /* STATE 16 */
		;
		((P0 *)this)->counter = trpt->bup.ovals[1];
		now.flag[ Index(((P0 *)this)->index, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: /* STATE 17 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 28: /* STATE 28 */
		;
		((P0 *)this)->counter = trpt->bup.ovals[1];
		now.flag[ Index(((P0 *)this)->index, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 29: /* STATE 29 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 31: /* STATE 34 */
		;
		((P0 *)this)->counter = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->counter = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: /* STATE 40 */
		;
		((P0 *)this)->counter = trpt->bup.ovals[1];
		now.flag[ Index(((P0 *)this)->index, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 34: /* STATE 43 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;

	case 35: /* STATE 45 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: /* STATE 50 */
		;
		now.procEnSectionCritique = trpt->bup.oval;
		;
		goto R999;

	case 37: /* STATE 51 */
		;
		((P0 *)this)->counter = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: /* STATE 54 */
		;
	/* 0 */	((P0 *)this)->counter = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: /* STATE 61 */
		;
		((P0 *)this)->counter = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->counter = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: /* STATE 61 */
		;
		((P0 *)this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 42: /* STATE 62 */
		;
		now.procEnSectionCritique = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 63 */
		;
		now.flag[ Index(((P0 *)this)->index, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 44: /* STATE 68 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

