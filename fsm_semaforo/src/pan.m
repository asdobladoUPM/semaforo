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

		 /* CLAIM peatonSNoMuere */
	case 3: // STATE 1 - _spin_nvr.tmp:126 - [(!((s_verde&&!(s_peaton))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!( !((now.s_verde&& !(now.s_peaton)))))
			continue;
		/* merge: assert(!(!((s_verde&&!(s_peaton)))))(0, 2, 6) */
		reached[15][2] = 1;
		spin_assert( !( !((now.s_verde&& !(now.s_peaton)))), " !( !((s_verde&& !(s_peaton))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[15][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:131 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonPNoMuere */
	case 5: // STATE 1 - _spin_nvr.tmp:117 - [(!((p_verde&&!(p_peaton))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!( !((now.p_verde&& !(now.p_peaton)))))
			continue;
		/* merge: assert(!(!((p_verde&&!(p_peaton)))))(0, 2, 6) */
		reached[14][2] = 1;
		spin_assert( !( !((now.p_verde&& !(now.p_peaton)))), " !( !((p_verde&& !(p_peaton))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[14][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:122 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secundarioRtoV */
	case 7: // STATE 1 - _spin_nvr.tmp:106 - [((!(!(s_rojo))&&!(s_verde)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!(( !( !(now.s_rojo))&& !(now.s_verde))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - _spin_nvr.tmp:107 - [(!(s_verde))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][3] = 1;
		if (!( !(now.s_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:111 - [(!(s_verde))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][8] = 1;
		if (!( !(now.s_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:113 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secundarioAtoR */
	case 11: // STATE 1 - _spin_nvr.tmp:95 - [((!(!(s_amarillo))&&!(s_rojo)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!(( !( !(now.s_amarillo))&& !(now.s_rojo))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - _spin_nvr.tmp:96 - [(!(s_rojo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][3] = 1;
		if (!( !(now.s_rojo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:100 - [(!(s_rojo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][8] = 1;
		if (!( !(now.s_rojo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:102 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secundarioVtoA */
	case 15: // STATE 1 - _spin_nvr.tmp:84 - [((!(!(s_verde))&&!(s_amarillo)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!(( !( !(now.s_verde))&& !(now.s_amarillo))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - _spin_nvr.tmp:85 - [(!(s_amarillo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][3] = 1;
		if (!( !(now.s_amarillo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - _spin_nvr.tmp:89 - [(!(s_amarillo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!( !(now.s_amarillo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 13 - _spin_nvr.tmp:91 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalRtoV */
	case 19: // STATE 1 - _spin_nvr.tmp:73 - [((!(!(p_rojo))&&!(p_verde)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(now.p_rojo))&& !(now.p_verde))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - _spin_nvr.tmp:74 - [(!(p_verde))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][3] = 1;
		if (!( !(now.p_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 8 - _spin_nvr.tmp:78 - [(!(p_verde))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!( !(now.p_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 13 - _spin_nvr.tmp:80 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalAtoR */
	case 23: // STATE 1 - _spin_nvr.tmp:62 - [((!(!(p_amarillo))&&!(p_rojo)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!(( !( !(now.p_amarillo))&& !(now.p_rojo))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 3 - _spin_nvr.tmp:63 - [(!(p_rojo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][3] = 1;
		if (!( !(now.p_rojo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - _spin_nvr.tmp:67 - [(!(p_rojo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][8] = 1;
		if (!( !(now.p_rojo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:69 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalVtoA */
	case 27: // STATE 1 - _spin_nvr.tmp:51 - [((!(!(p_verde))&&!(p_amarillo)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !(now.p_verde))&& !(now.p_amarillo))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 3 - _spin_nvr.tmp:52 - [(!(p_amarillo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][3] = 1;
		if (!( !(now.p_amarillo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 8 - _spin_nvr.tmp:56 - [(!(p_amarillo))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !(now.p_amarillo)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 13 - _spin_nvr.tmp:58 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ProjoPeaton */
	case 31: // STATE 1 - _spin_nvr.tmp:42 - [(!((p_rojo&&p_peaton)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !((now.p_rojo&&now.p_peaton))))
			continue;
		/* merge: assert(!(!((p_rojo&&p_peaton))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !((now.p_rojo&&now.p_peaton))), " !( !((p_rojo&&p_peaton)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 10 - _spin_nvr.tmp:47 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM SrojoPeaton */
	case 33: // STATE 1 - _spin_nvr.tmp:33 - [(!((s_rojo&&s_peaton)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !((now.s_rojo&&now.s_peaton))))
			continue;
		/* merge: assert(!(!((s_rojo&&s_peaton))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !((now.s_rojo&&now.s_peaton))), " !( !((s_rojo&&s_peaton)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 10 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM espira */
	case 35: // STATE 1 - _spin_nvr.tmp:27 - [((!(s_verde)&&espira))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !(now.s_verde)&&now.espira)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 6 - _spin_nvr.tmp:29 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonS_cruza */
	case 37: // STATE 1 - _spin_nvr.tmp:20 - [((!(s_peaton)&&botonS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !(now.s_peaton)&&now.botonS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 6 - _spin_nvr.tmp:22 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonP_cruza */
	case 39: // STATE 1 - _spin_nvr.tmp:13 - [((!(p_peaton)&&botonP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !(now.p_peaton)&&now.botonP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 6 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM noDosVerdes */
	case 41: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((p_verde&&s_verde))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !( !((now.p_verde&&now.s_verde)))))
			continue;
		/* merge: assert(!(!(!((p_verde&&s_verde)))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !((now.p_verde&&now.s_verde)))), " !( !( !((p_verde&&s_verde))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 43: // STATE 3 - model.pml:88 - [espira = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.espira;
		now.espira = 1;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 4 - model.pml:89 - [botonP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.botonP;
		now.botonP = 1;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 5 - model.pml:90 - [botonS = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.botonS;
		now.botonS = 1;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 6 - model.pml:91 - [deadline = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.deadline;
		now.deadline = 1;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 12 - model.pml:94 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 48: // STATE 1 - model.pml:40 - [estado = P_Verde] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.estado;
		now.estado = 6;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 2 - model.pml:41 - [p_verde = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.p_verde;
		now.p_verde = 1;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 3 - model.pml:42 - [s_rojo = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.s_rojo;
		now.s_rojo = 1;
#ifdef VAR_RANGES
		logval("s_rojo", now.s_rojo);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 4 - model.pml:43 - [s_peaton = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.s_peaton;
		now.s_peaton = 1;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 5 - model.pml:46 - [((estado==P_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.estado==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 6 - model.pml:48 - [((espira||botonP))] (72:0:3 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.espira||now.botonP)))
			continue;
		/* merge: espira = 0(72, 7, 72) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.espira;
		now.espira = 0;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		/* merge: botonP = 0(72, 8, 72) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[1] = now.botonP;
		now.botonP = 0;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		/* merge: estado = P_VerToAm(72, 9, 72) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[2] = now.estado;
		now.estado = 5;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(72, 11, 72) */
		reached[0][11] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 54: // STATE 13 - model.pml:51 - [((estado==P_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((now.estado==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 14 - model.pml:53 - [(deadline)] (72:0:5 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(72, 15, 72) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: p_verde = 0(72, 16, 72) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = now.p_verde;
		now.p_verde = 0;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: p_amarillo = 1(72, 17, 72) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = now.p_amarillo;
		now.p_amarillo = 1;
#ifdef VAR_RANGES
		logval("p_amarillo", now.p_amarillo);
#endif
		;
		/* merge: s_peaton = 0(72, 18, 72) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[3] = now.s_peaton;
		now.s_peaton = 0;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: estado = P_Amarillo(72, 19, 72) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[4] = now.estado;
		now.estado = 4;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(72, 21, 72) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 56: // STATE 23 - model.pml:56 - [((estado==P_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.estado==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 24 - model.pml:58 - [(deadline)] (72:0:7 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(72, 25, 72) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: s_rojo = 0(72, 26, 72) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = now.s_rojo;
		now.s_rojo = 0;
#ifdef VAR_RANGES
		logval("s_rojo", now.s_rojo);
#endif
		;
		/* merge: s_verde = 1(72, 27, 72) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 1;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: p_peaton = 1(72, 28, 72) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[3] = now.p_peaton;
		now.p_peaton = 1;
#ifdef VAR_RANGES
		logval("p_peaton", now.p_peaton);
#endif
		;
		/* merge: p_rojo = 1(72, 29, 72) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[4] = now.p_rojo;
		now.p_rojo = 1;
#ifdef VAR_RANGES
		logval("p_rojo", now.p_rojo);
#endif
		;
		/* merge: p_amarillo = 0(72, 30, 72) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[5] = now.p_amarillo;
		now.p_amarillo = 0;
#ifdef VAR_RANGES
		logval("p_amarillo", now.p_amarillo);
#endif
		;
		/* merge: estado = S_Verde(72, 31, 72) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[6] = now.estado;
		now.estado = 3;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(72, 33, 72) */
		reached[0][33] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 58: // STATE 35 - model.pml:61 - [((estado==S_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((now.estado==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 36 - model.pml:63 - [(botonS)] (72:0:2 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(now.botonS))
			continue;
		/* merge: botonS = 0(72, 37, 72) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.botonS;
		now.botonS = 0;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		/* merge: estado = S_VerToAm(72, 38, 72) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 2;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(72, 45, 72) */
		reached[0][45] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 60: // STATE 45 - model.pml:66 - [.(goto)] (0:72:0 - 2)
		IfNotBlocked
		reached[0][45] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 61: // STATE 39 - model.pml:64 - [(deadline)] (72:0:4 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(72, 40, 72) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(72, 41, 72) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_verde = 0(72, 42, 72) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 0;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: s_amarillo = 1(72, 43, 72) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[3] = now.s_amarillo;
		now.s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: .(goto)(72, 45, 72) */
		reached[0][45] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 62: // STATE 47 - model.pml:67 - [((estado==S_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((now.estado==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 48 - model.pml:69 - [(deadline)] (72:0:6 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(72, 49, 72) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(72, 50, 72) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: p_peaton = 0(72, 51, 72) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[2] = now.p_peaton;
		now.p_peaton = 0;
#ifdef VAR_RANGES
		logval("p_peaton", now.p_peaton);
#endif
		;
		/* merge: s_verde = 0(72, 52, 72) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals[3] = now.s_verde;
		now.s_verde = 0;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: p_verde = 0(72, 53, 72) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[4] = now.p_verde;
		now.p_verde = 0;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: s_amarillo = 1(72, 54, 72) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[5] = now.s_amarillo;
		now.s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: .(goto)(72, 56, 72) */
		reached[0][56] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 64: // STATE 58 - model.pml:72 - [((estado==S_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((now.estado==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 59 - model.pml:74 - [(deadline)] (72:0:7 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(72, 60, 72) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = P_Verde(72, 61, 72) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 6;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_rojo = 1(72, 62, 72) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[2] = now.s_rojo;
		now.s_rojo = 1;
#ifdef VAR_RANGES
		logval("s_rojo", now.s_rojo);
#endif
		;
		/* merge: s_peaton = 1(72, 63, 72) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals[3] = now.s_peaton;
		now.s_peaton = 1;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: s_amarillo = 0(72, 64, 72) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[4] = now.s_amarillo;
		now.s_amarillo = 0;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: p_rojo = 0(72, 65, 72) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals[5] = now.p_rojo;
		now.p_rojo = 0;
#ifdef VAR_RANGES
		logval("p_rojo", now.p_rojo);
#endif
		;
		/* merge: p_verde = 1(72, 66, 72) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals[6] = now.p_verde;
		now.p_verde = 1;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: .(goto)(72, 68, 72) */
		reached[0][68] = 1;
		;
		/* merge: .(goto)(0, 71, 72) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 66: // STATE 72 - model.pml:78 - [printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_rojo,p_amarillo,p_verde,p_peaton,s_rojo,s_amarillo,s_verde,s_peaton)] (0:0:0 - 7)
		IfNotBlocked
		reached[0][72] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_rojo, now.p_amarillo, now.p_verde, now.p_peaton, now.s_rojo, now.s_amarillo, now.s_verde, now.s_peaton);
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 76 - model.pml:81 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
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

