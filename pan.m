#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
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

		 /* PROC :init: */
	case 3: // STATE 1 - Ex16.pml:32 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((P1 *)this)->i<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - Ex16.pml:32 - [(run visit())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - Ex16.pml:32 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - Ex16.pml:33 - [((i==5))] (8:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((P1 *)this)->i==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->i = 0;
		/* merge: goto :b0(0, 5, 8) */
		reached[1][5] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 7: // STATE 10 - Ex16.pml:36 - [((count==5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((now.count==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - Ex16.pml:37 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 1;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 12 - Ex16.pml:39 - [((i<(5+1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((P1 *)this)->i<(5+1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - Ex16.pml:39 - [printf('\\npid:%u val:%u\\n',i,returnVal[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		Printf("\npid:%u val:%u\n", ((P1 *)this)->i, returnVal[ Index(((P1 *)this)->i, 6) ]);
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 14 - Ex16.pml:39 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 15 - Ex16.pml:40 - [((i==(5+1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)this)->i==(5+1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 20 - Ex16.pml:43 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC visit */
	case 14: // STATE 1 - Ex16.pml:13 - [last = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.last;
		now.last = ((P0 *)this)->i;
#ifdef VAR_RANGES
		logval("last", now.last);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - Ex16.pml:15 - [(goRight)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((int)now.goRight)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - Ex16.pml:15 - [returnVal[_pid] = RIGHT] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = returnVal[ Index(((int)((P0 *)this)->_pid), 6) ];
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = now.RIGHT;
#ifdef VAR_RANGES
		logval("returnVal[_pid]", returnVal[ Index(((int)((P0 *)this)->_pid), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 9 - Ex16.pml:18 - [goRight = 1] (0:0:1 - 2)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.goRight);
		now.goRight = 1;
#ifdef VAR_RANGES
		logval("goRight", ((int)now.goRight));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 10 - Ex16.pml:20 - [((last==i))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.last==((P0 *)this)->i)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 11 - Ex16.pml:20 - [returnVal[_pid] = STOP] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = returnVal[ Index(((int)((P0 *)this)->_pid), 6) ];
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = now.STOP;
#ifdef VAR_RANGES
		logval("returnVal[_pid]", returnVal[ Index(((int)((P0 *)this)->_pid), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 14 - Ex16.pml:21 - [returnVal[_pid] = DOWN] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = returnVal[ Index(((int)((P0 *)this)->_pid), 6) ];
		returnVal[ Index(((P0 *)this)->_pid, 6) ] = now.DOWN;
#ifdef VAR_RANGES
		logval("returnVal[_pid]", returnVal[ Index(((int)((P0 *)this)->_pid), 6) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - Ex16.pml:25 - [count = (count+1)] (0:0:1 - 6)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.count;
		now.count = (now.count+1);
#ifdef VAR_RANGES
		logval("count", now.count);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - Ex16.pml:26 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
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

