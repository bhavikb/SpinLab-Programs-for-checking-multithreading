	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */
;
		;
		
	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
	/* 0 */	((P1 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 8: // STATE 11
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 11: // STATE 14
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 15
		;
	/* 0 */	((P1 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 13: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC visit */

	case 14: // STATE 1
		;
		now.last = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 3
		;
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 9
		;
		now.goRight = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 10
		;
	/* 0 */	((P0 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 11
		;
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 14
		;
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 17
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;
	}

