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

		 /* CLAIM secundarioRojo */
	case 3: // STATE 1 - _spin_nvr.tmp:248 - [(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))] (0:0:0 - 1)
		
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
		reached[16][1] = 1;
		if (!((( !( !((now.s_amarillo& !(now.s_verde))))&& !( !(now.s_verde)))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:249 - [(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))] (12:0:0 - 1)
		
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
		reached[16][3] = 1;
		if (!((( !( !((now.s_amarillo& !(now.s_verde))))&& !( !(now.s_verde)))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		/* merge: assert(!(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde))))))(0, 4, 12) */
		reached[16][4] = 1;
		spin_assert( !((( !( !((now.s_amarillo& !(now.s_verde))))&& !( !(now.s_verde)))&& !((now.s_rojo& !(now.s_verde))))), " !((( !( !((s_amarillo& !(s_verde))))&& !( !(s_verde)))&& !((s_rojo& !(s_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[16][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 6 - _spin_nvr.tmp:250 - [((!(!((s_amarillo&!(s_verde))))&&!((s_rojo&!(s_verde)))))] (0:0:0 - 1)
		
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
		reached[16][6] = 1;
		if (!(( !( !((now.s_amarillo& !(now.s_verde))))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:251 - [(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))] (0:0:0 - 1)
		
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
		reached[16][8] = 1;
		if (!((( !( !((now.s_amarillo& !(now.s_verde))))&& !( !(now.s_verde)))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 15 - _spin_nvr.tmp:256 - [(!((s_rojo&!(s_verde))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][15] = 1;
		if (!( !((now.s_rojo& !(now.s_verde)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 17 - _spin_nvr.tmp:257 - [((!(!(s_verde))&&!((s_rojo&!(s_verde)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][17] = 1;
		if (!(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		/* merge: assert(!((!(!(s_verde))&&!((s_rojo&!(s_verde))))))(0, 18, 20) */
		reached[16][18] = 1;
		spin_assert( !(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))), " !(( !( !(s_verde))&& !((s_rojo& !(s_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[16][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 23 - _spin_nvr.tmp:261 - [(!(!(s_verde)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][23] = 1;
		if (!( !( !(now.s_verde))))
			continue;
		/* merge: assert(!(!(!(s_verde))))(0, 24, 28) */
		reached[16][24] = 1;
		spin_assert( !( !( !(now.s_verde))), " !( !( !(s_verde)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[16][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 31 - _spin_nvr.tmp:266 - [((!(!(s_verde))&&!((s_rojo&!(s_verde)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][31] = 1;
		if (!(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 33 - _spin_nvr.tmp:267 - [((!(!(s_verde))&&!((s_rojo&!(s_verde)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][33] = 1;
		if (!(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		/* merge: assert(!((!(!(s_verde))&&!((s_rojo&!(s_verde))))))(0, 34, 40) */
		reached[16][34] = 1;
		spin_assert( !(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))), " !(( !( !(s_verde))&& !((s_rojo& !(s_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[16][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 36 - _spin_nvr.tmp:268 - [(!((s_rojo&!(s_verde))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][36] = 1;
		if (!( !((now.s_rojo& !(now.s_verde)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 38 - _spin_nvr.tmp:269 - [((!(!(s_verde))&&!((s_rojo&!(s_verde)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][38] = 1;
		if (!(( !( !(now.s_verde))&& !((now.s_rojo& !(now.s_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 43 - _spin_nvr.tmp:273 - [(!(!(s_verde)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][43] = 1;
		if (!( !( !(now.s_verde))))
			continue;
		/* merge: assert(!(!(!(s_verde))))(0, 44, 48) */
		reached[16][44] = 1;
		spin_assert( !( !( !(now.s_verde))), " !( !( !(s_verde)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[16][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 52 - _spin_nvr.tmp:278 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalRojo */
	case 16: // STATE 1 - _spin_nvr.tmp:214 - [(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.p_amarillo& !(now.p_verde))))&& !( !(now.p_verde)))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 3 - _spin_nvr.tmp:215 - [(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))] (12:0:0 - 1)
		
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
		reached[15][3] = 1;
		if (!((( !( !((now.p_amarillo& !(now.p_verde))))&& !( !(now.p_verde)))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		/* merge: assert(!(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde))))))(0, 4, 12) */
		reached[15][4] = 1;
		spin_assert( !((( !( !((now.p_amarillo& !(now.p_verde))))&& !( !(now.p_verde)))&& !((now.p_rojo& !(now.p_verde))))), " !((( !( !((p_amarillo& !(p_verde))))&& !( !(p_verde)))&& !((p_rojo& !(p_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[15][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 6 - _spin_nvr.tmp:216 - [((!(!((p_amarillo&!(p_verde))))&&!((p_rojo&!(p_verde)))))] (0:0:0 - 1)
		
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
		reached[15][6] = 1;
		if (!(( !( !((now.p_amarillo& !(now.p_verde))))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:217 - [(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))] (0:0:0 - 1)
		
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
		reached[15][8] = 1;
		if (!((( !( !((now.p_amarillo& !(now.p_verde))))&& !( !(now.p_verde)))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 15 - _spin_nvr.tmp:222 - [(!((p_rojo&!(p_verde))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][15] = 1;
		if (!( !((now.p_rojo& !(now.p_verde)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - _spin_nvr.tmp:223 - [((!(!(p_verde))&&!((p_rojo&!(p_verde)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][17] = 1;
		if (!(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		/* merge: assert(!((!(!(p_verde))&&!((p_rojo&!(p_verde))))))(0, 18, 20) */
		reached[15][18] = 1;
		spin_assert( !(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))), " !(( !( !(p_verde))&& !((p_rojo& !(p_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[15][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 23 - _spin_nvr.tmp:227 - [(!(!(p_verde)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][23] = 1;
		if (!( !( !(now.p_verde))))
			continue;
		/* merge: assert(!(!(!(p_verde))))(0, 24, 28) */
		reached[15][24] = 1;
		spin_assert( !( !( !(now.p_verde))), " !( !( !(p_verde)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[15][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 31 - _spin_nvr.tmp:232 - [((!(!(p_verde))&&!((p_rojo&!(p_verde)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][31] = 1;
		if (!(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 33 - _spin_nvr.tmp:233 - [((!(!(p_verde))&&!((p_rojo&!(p_verde)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][33] = 1;
		if (!(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		/* merge: assert(!((!(!(p_verde))&&!((p_rojo&!(p_verde))))))(0, 34, 40) */
		reached[15][34] = 1;
		spin_assert( !(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))), " !(( !( !(p_verde))&& !((p_rojo& !(p_verde)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[15][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 36 - _spin_nvr.tmp:234 - [(!((p_rojo&!(p_verde))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][36] = 1;
		if (!( !((now.p_rojo& !(now.p_verde)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 38 - _spin_nvr.tmp:235 - [((!(!(p_verde))&&!((p_rojo&!(p_verde)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][38] = 1;
		if (!(( !( !(now.p_verde))&& !((now.p_rojo& !(now.p_verde))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 43 - _spin_nvr.tmp:239 - [(!(!(p_verde)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][43] = 1;
		if (!( !( !(now.p_verde))))
			continue;
		/* merge: assert(!(!(!(p_verde))))(0, 44, 48) */
		reached[15][44] = 1;
		spin_assert( !( !( !(now.p_verde))), " !( !( !(p_verde)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[15][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 52 - _spin_nvr.tmp:244 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secundarioVerde */
	case 29: // STATE 1 - _spin_nvr.tmp:180 - [(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.s_rojo& !(now.s_amarillo))))&& !( !(now.s_amarillo)))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 3 - _spin_nvr.tmp:181 - [(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))] (12:0:0 - 1)
		
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
		reached[14][3] = 1;
		if (!((( !( !((now.s_rojo& !(now.s_amarillo))))&& !( !(now.s_amarillo)))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		/* merge: assert(!(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo))))))(0, 4, 12) */
		reached[14][4] = 1;
		spin_assert( !((( !( !((now.s_rojo& !(now.s_amarillo))))&& !( !(now.s_amarillo)))&& !((now.s_verde& !(now.s_amarillo))))), " !((( !( !((s_rojo& !(s_amarillo))))&& !( !(s_amarillo)))&& !((s_verde& !(s_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[14][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 6 - _spin_nvr.tmp:182 - [((!(!((s_rojo&!(s_amarillo))))&&!((s_verde&!(s_amarillo)))))] (0:0:0 - 1)
		
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
		reached[14][6] = 1;
		if (!(( !( !((now.s_rojo& !(now.s_amarillo))))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 8 - _spin_nvr.tmp:183 - [(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))] (0:0:0 - 1)
		
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
		reached[14][8] = 1;
		if (!((( !( !((now.s_rojo& !(now.s_amarillo))))&& !( !(now.s_amarillo)))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 15 - _spin_nvr.tmp:188 - [(!((s_verde&!(s_amarillo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][15] = 1;
		if (!( !((now.s_verde& !(now.s_amarillo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 17 - _spin_nvr.tmp:189 - [((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][17] = 1;
		if (!(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		/* merge: assert(!((!(!(s_amarillo))&&!((s_verde&!(s_amarillo))))))(0, 18, 20) */
		reached[14][18] = 1;
		spin_assert( !(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))), " !(( !( !(s_amarillo))&& !((s_verde& !(s_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[14][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 23 - _spin_nvr.tmp:193 - [(!(!(s_amarillo)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][23] = 1;
		if (!( !( !(now.s_amarillo))))
			continue;
		/* merge: assert(!(!(!(s_amarillo))))(0, 24, 28) */
		reached[14][24] = 1;
		spin_assert( !( !( !(now.s_amarillo))), " !( !( !(s_amarillo)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[14][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 31 - _spin_nvr.tmp:198 - [((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][31] = 1;
		if (!(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 33 - _spin_nvr.tmp:199 - [((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][33] = 1;
		if (!(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		/* merge: assert(!((!(!(s_amarillo))&&!((s_verde&!(s_amarillo))))))(0, 34, 40) */
		reached[14][34] = 1;
		spin_assert( !(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))), " !(( !( !(s_amarillo))&& !((s_verde& !(s_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[14][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 38: // STATE 36 - _spin_nvr.tmp:200 - [(!((s_verde&!(s_amarillo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][36] = 1;
		if (!( !((now.s_verde& !(now.s_amarillo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 38 - _spin_nvr.tmp:201 - [((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][38] = 1;
		if (!(( !( !(now.s_amarillo))&& !((now.s_verde& !(now.s_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 43 - _spin_nvr.tmp:205 - [(!(!(s_amarillo)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][43] = 1;
		if (!( !( !(now.s_amarillo))))
			continue;
		/* merge: assert(!(!(!(s_amarillo))))(0, 44, 48) */
		reached[14][44] = 1;
		spin_assert( !( !( !(now.s_amarillo))), " !( !( !(s_amarillo)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[14][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 52 - _spin_nvr.tmp:210 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalVerde */
	case 42: // STATE 1 - _spin_nvr.tmp:146 - [(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.p_rojo& !(now.p_amarillo))))&& !( !(now.p_amarillo)))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 3 - _spin_nvr.tmp:147 - [(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))] (12:0:0 - 1)
		
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
		if (!((( !( !((now.p_rojo& !(now.p_amarillo))))&& !( !(now.p_amarillo)))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		/* merge: assert(!(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo))))))(0, 4, 12) */
		reached[13][4] = 1;
		spin_assert( !((( !( !((now.p_rojo& !(now.p_amarillo))))&& !( !(now.p_amarillo)))&& !((now.p_verde& !(now.p_amarillo))))), " !((( !( !((p_rojo& !(p_amarillo))))&& !( !(p_amarillo)))&& !((p_verde& !(p_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[13][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 6 - _spin_nvr.tmp:148 - [((!(!((p_rojo&!(p_amarillo))))&&!((p_verde&!(p_amarillo)))))] (0:0:0 - 1)
		
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
		reached[13][6] = 1;
		if (!(( !( !((now.p_rojo& !(now.p_amarillo))))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 8 - _spin_nvr.tmp:149 - [(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.p_rojo& !(now.p_amarillo))))&& !( !(now.p_amarillo)))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 15 - _spin_nvr.tmp:154 - [(!((p_verde&!(p_amarillo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][15] = 1;
		if (!( !((now.p_verde& !(now.p_amarillo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 17 - _spin_nvr.tmp:155 - [((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][17] = 1;
		if (!(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		/* merge: assert(!((!(!(p_amarillo))&&!((p_verde&!(p_amarillo))))))(0, 18, 20) */
		reached[13][18] = 1;
		spin_assert( !(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))), " !(( !( !(p_amarillo))&& !((p_verde& !(p_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[13][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 23 - _spin_nvr.tmp:159 - [(!(!(p_amarillo)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][23] = 1;
		if (!( !( !(now.p_amarillo))))
			continue;
		/* merge: assert(!(!(!(p_amarillo))))(0, 24, 28) */
		reached[13][24] = 1;
		spin_assert( !( !( !(now.p_amarillo))), " !( !( !(p_amarillo)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[13][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 49: // STATE 31 - _spin_nvr.tmp:164 - [((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][31] = 1;
		if (!(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 33 - _spin_nvr.tmp:165 - [((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][33] = 1;
		if (!(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		/* merge: assert(!((!(!(p_amarillo))&&!((p_verde&!(p_amarillo))))))(0, 34, 40) */
		reached[13][34] = 1;
		spin_assert( !(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))), " !(( !( !(p_amarillo))&& !((p_verde& !(p_amarillo)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[13][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 36 - _spin_nvr.tmp:166 - [(!((p_verde&!(p_amarillo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][36] = 1;
		if (!( !((now.p_verde& !(now.p_amarillo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 38 - _spin_nvr.tmp:167 - [((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][38] = 1;
		if (!(( !( !(now.p_amarillo))&& !((now.p_verde& !(now.p_amarillo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 43 - _spin_nvr.tmp:171 - [(!(!(p_amarillo)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][43] = 1;
		if (!( !( !(now.p_amarillo))))
			continue;
		/* merge: assert(!(!(!(p_amarillo))))(0, 44, 48) */
		reached[13][44] = 1;
		spin_assert( !( !( !(now.p_amarillo))), " !( !( !(p_amarillo)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[13][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 54: // STATE 52 - _spin_nvr.tmp:176 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secundarioAmarillo */
	case 55: // STATE 1 - _spin_nvr.tmp:112 - [(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.s_verde& !(now.s_rojo))))&& !( !(now.s_rojo)))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 3 - _spin_nvr.tmp:113 - [(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))] (12:0:0 - 1)
		
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
		if (!((( !( !((now.s_verde& !(now.s_rojo))))&& !( !(now.s_rojo)))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		/* merge: assert(!(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo))))))(0, 4, 12) */
		reached[12][4] = 1;
		spin_assert( !((( !( !((now.s_verde& !(now.s_rojo))))&& !( !(now.s_rojo)))&& !((now.s_amarillo& !(now.s_rojo))))), " !((( !( !((s_verde& !(s_rojo))))&& !( !(s_rojo)))&& !((s_amarillo& !(s_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[12][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 6 - _spin_nvr.tmp:114 - [((!(!((s_verde&!(s_rojo))))&&!((s_amarillo&!(s_rojo)))))] (0:0:0 - 1)
		
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
		reached[12][6] = 1;
		if (!(( !( !((now.s_verde& !(now.s_rojo))))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 8 - _spin_nvr.tmp:115 - [(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.s_verde& !(now.s_rojo))))&& !( !(now.s_rojo)))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 15 - _spin_nvr.tmp:120 - [(!((s_amarillo&!(s_rojo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][15] = 1;
		if (!( !((now.s_amarillo& !(now.s_rojo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 17 - _spin_nvr.tmp:121 - [((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][17] = 1;
		if (!(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		/* merge: assert(!((!(!(s_rojo))&&!((s_amarillo&!(s_rojo))))))(0, 18, 20) */
		reached[12][18] = 1;
		spin_assert( !(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))), " !(( !( !(s_rojo))&& !((s_amarillo& !(s_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[12][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 23 - _spin_nvr.tmp:125 - [(!(!(s_rojo)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][23] = 1;
		if (!( !( !(now.s_rojo))))
			continue;
		/* merge: assert(!(!(!(s_rojo))))(0, 24, 28) */
		reached[12][24] = 1;
		spin_assert( !( !( !(now.s_rojo))), " !( !( !(s_rojo)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[12][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 62: // STATE 31 - _spin_nvr.tmp:130 - [((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][31] = 1;
		if (!(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 33 - _spin_nvr.tmp:131 - [((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][33] = 1;
		if (!(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		/* merge: assert(!((!(!(s_rojo))&&!((s_amarillo&!(s_rojo))))))(0, 34, 40) */
		reached[12][34] = 1;
		spin_assert( !(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))), " !(( !( !(s_rojo))&& !((s_amarillo& !(s_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[12][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 64: // STATE 36 - _spin_nvr.tmp:132 - [(!((s_amarillo&!(s_rojo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][36] = 1;
		if (!( !((now.s_amarillo& !(now.s_rojo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 38 - _spin_nvr.tmp:133 - [((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][38] = 1;
		if (!(( !( !(now.s_rojo))&& !((now.s_amarillo& !(now.s_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 43 - _spin_nvr.tmp:137 - [(!(!(s_rojo)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][43] = 1;
		if (!( !( !(now.s_rojo))))
			continue;
		/* merge: assert(!(!(!(s_rojo))))(0, 44, 48) */
		reached[12][44] = 1;
		spin_assert( !( !( !(now.s_rojo))), " !( !( !(s_rojo)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[12][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 67: // STATE 52 - _spin_nvr.tmp:142 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM principalAmarillo */
	case 68: // STATE 1 - _spin_nvr.tmp:78 - [(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.p_verde& !(now.p_rojo))))&& !( !(now.p_rojo)))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 3 - _spin_nvr.tmp:79 - [(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))] (12:0:0 - 1)
		
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
		if (!((( !( !((now.p_verde& !(now.p_rojo))))&& !( !(now.p_rojo)))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		/* merge: assert(!(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo))))))(0, 4, 12) */
		reached[11][4] = 1;
		spin_assert( !((( !( !((now.p_verde& !(now.p_rojo))))&& !( !(now.p_rojo)))&& !((now.p_amarillo& !(now.p_rojo))))), " !((( !( !((p_verde& !(p_rojo))))&& !( !(p_rojo)))&& !((p_amarillo& !(p_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[11][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 70: // STATE 6 - _spin_nvr.tmp:80 - [((!(!((p_verde&!(p_rojo))))&&!((p_amarillo&!(p_rojo)))))] (0:0:0 - 1)
		
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
		reached[11][6] = 1;
		if (!(( !( !((now.p_verde& !(now.p_rojo))))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 8 - _spin_nvr.tmp:81 - [(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))] (0:0:0 - 1)
		
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
		if (!((( !( !((now.p_verde& !(now.p_rojo))))&& !( !(now.p_rojo)))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 15 - _spin_nvr.tmp:86 - [(!((p_amarillo&!(p_rojo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][15] = 1;
		if (!( !((now.p_amarillo& !(now.p_rojo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 17 - _spin_nvr.tmp:87 - [((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][17] = 1;
		if (!(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		/* merge: assert(!((!(!(p_rojo))&&!((p_amarillo&!(p_rojo))))))(0, 18, 20) */
		reached[11][18] = 1;
		spin_assert( !(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))), " !(( !( !(p_rojo))&& !((p_amarillo& !(p_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[11][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 74: // STATE 23 - _spin_nvr.tmp:91 - [(!(!(p_rojo)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][23] = 1;
		if (!( !( !(now.p_rojo))))
			continue;
		/* merge: assert(!(!(!(p_rojo))))(0, 24, 28) */
		reached[11][24] = 1;
		spin_assert( !( !( !(now.p_rojo))), " !( !( !(p_rojo)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[11][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 31 - _spin_nvr.tmp:96 - [((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][31] = 1;
		if (!(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 33 - _spin_nvr.tmp:97 - [((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))] (40:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][33] = 1;
		if (!(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		/* merge: assert(!((!(!(p_rojo))&&!((p_amarillo&!(p_rojo))))))(0, 34, 40) */
		reached[11][34] = 1;
		spin_assert( !(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))), " !(( !( !(p_rojo))&& !((p_amarillo& !(p_rojo)))))", II, tt, t);
		/* merge: .(goto)(0, 41, 40) */
		reached[11][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 77: // STATE 36 - _spin_nvr.tmp:98 - [(!((p_amarillo&!(p_rojo))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][36] = 1;
		if (!( !((now.p_amarillo& !(now.p_rojo)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 38 - _spin_nvr.tmp:99 - [((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][38] = 1;
		if (!(( !( !(now.p_rojo))&& !((now.p_amarillo& !(now.p_rojo))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 43 - _spin_nvr.tmp:103 - [(!(!(p_rojo)))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][43] = 1;
		if (!( !( !(now.p_rojo))))
			continue;
		/* merge: assert(!(!(!(p_rojo))))(0, 44, 48) */
		reached[11][44] = 1;
		spin_assert( !( !( !(now.p_rojo))), " !( !( !(p_rojo)))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[11][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 80: // STATE 52 - _spin_nvr.tmp:108 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonSNoMuere */
	case 81: // STATE 1 - _spin_nvr.tmp:69 - [(!(!((s_verde&&s_peaton))))] (6:0:0 - 1)
		
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
		if (!( !( !((now.s_verde&&now.s_peaton)))))
			continue;
		/* merge: assert(!(!(!((s_verde&&s_peaton)))))(0, 2, 6) */
		reached[10][2] = 1;
		spin_assert( !( !( !((now.s_verde&&now.s_peaton)))), " !( !( !((s_verde&&s_peaton))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[10][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 82: // STATE 10 - _spin_nvr.tmp:74 - [-end-] (0:0:0 - 1)
		
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
		reached[10][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonPNoMuere */
	case 83: // STATE 1 - _spin_nvr.tmp:60 - [(!(!((p_verde&&p_peaton))))] (6:0:0 - 1)
		
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
		if (!( !( !((now.p_verde&&now.p_peaton)))))
			continue;
		/* merge: assert(!(!(!((p_verde&&p_peaton)))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !( !( !((now.p_verde&&now.p_peaton)))), " !( !( !((p_verde&&p_peaton))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 84: // STATE 10 - _spin_nvr.tmp:65 - [-end-] (0:0:0 - 1)
		
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
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ProjoPeaton */
	case 85: // STATE 1 - _spin_nvr.tmp:51 - [(!(((p_rojo&&p_peaton)||(!(p_rojo)&&!(p_peaton)))))] (6:0:0 - 1)
		
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
		if (!( !(((now.p_rojo&&now.p_peaton)||( !(now.p_rojo)&& !(now.p_peaton))))))
			continue;
		/* merge: assert(!(!(((p_rojo&&p_peaton)||(!(p_rojo)&&!(p_peaton))))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !(((now.p_rojo&&now.p_peaton)||( !(now.p_rojo)&& !(now.p_peaton))))), " !( !(((p_rojo&&p_peaton)||( !(p_rojo)&& !(p_peaton)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 86: // STATE 10 - _spin_nvr.tmp:56 - [-end-] (0:0:0 - 1)
		
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
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM SrojoPeaton */
	case 87: // STATE 1 - _spin_nvr.tmp:42 - [(!(((s_rojo&&s_peaton)||(!(s_rojo)&&!(s_peaton)))))] (6:0:0 - 1)
		
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
		if (!( !(((now.s_rojo&&now.s_peaton)||( !(now.s_rojo)&& !(now.s_peaton))))))
			continue;
		/* merge: assert(!(!(((s_rojo&&s_peaton)||(!(s_rojo)&&!(s_peaton))))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !(((now.s_rojo&&now.s_peaton)||( !(now.s_rojo)&& !(now.s_peaton))))), " !( !(((s_rojo&&s_peaton)||( !(s_rojo)&& !(s_peaton)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 88: // STATE 10 - _spin_nvr.tmp:47 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM espira */
	case 89: // STATE 1 - _spin_nvr.tmp:36 - [((!(s_verde)&&espira))] (0:0:0 - 1)
		
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
		if (!(( !(now.s_verde)&&now.espira)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 6 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
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
		reached[6][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonS_cruza */
	case 91: // STATE 1 - _spin_nvr.tmp:29 - [((!(s_peaton)&&botonS))] (0:0:0 - 1)
		
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
		if (!(( !(now.s_peaton)&&now.botonS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 6 - _spin_nvr.tmp:31 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM peatonP_cruza */
	case 93: // STATE 1 - _spin_nvr.tmp:22 - [((!(p_peaton)&&botonP))] (0:0:0 - 1)
		
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
		if (!(( !(now.p_peaton)&&now.botonP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 6 - _spin_nvr.tmp:24 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM algunoRojo */
	case 95: // STATE 1 - _spin_nvr.tmp:12 - [(!((p_rojo||s_rojo)))] (6:0:0 - 1)
		
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
		if (!( !((now.p_rojo||now.s_rojo))))
			continue;
		/* merge: assert(!(!((p_rojo||s_rojo))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !((now.p_rojo||now.s_rojo))), " !( !((p_rojo||s_rojo)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 96: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
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
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM noDosVerdes */
	case 97: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((p_verde&&s_verde))))] (6:0:0 - 1)
		
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
	case 98: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
	case 99: // STATE 3 - model.pml:90 - [espira = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.espira;
		now.espira = 1;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 4 - model.pml:91 - [botonP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.botonP;
		now.botonP = 1;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 5 - model.pml:92 - [botonS = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.botonS;
		now.botonS = 1;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 6 - model.pml:93 - [deadline = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.deadline;
		now.deadline = 1;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 12 - model.pml:96 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 104: // STATE 1 - model.pml:48 - [((estado==P_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.estado==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 2 - model.pml:50 - [((espira||botonP))] (67:0:3 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.espira||now.botonP)))
			continue;
		/* merge: espira = 0(67, 3, 67) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.espira;
		now.espira = 0;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		/* merge: botonP = 0(67, 4, 67) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = now.botonP;
		now.botonP = 0;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		/* merge: estado = P_VerToAm(67, 5, 67) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = now.estado;
		now.estado = 5;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(67, 7, 67) */
		reached[0][7] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 106: // STATE 9 - model.pml:53 - [((estado==P_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.estado==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 10 - model.pml:55 - [(deadline)] (67:0:4 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(67, 11, 67) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: p_verde = 0(67, 12, 67) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = now.p_verde;
		now.p_verde = 0;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: p_amarillo = 1(67, 13, 67) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = now.p_amarillo;
		now.p_amarillo = 1;
#ifdef VAR_RANGES
		logval("p_amarillo", now.p_amarillo);
#endif
		;
		/* merge: estado = P_Amarillo(67, 14, 67) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = now.estado;
		now.estado = 4;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(67, 16, 67) */
		reached[0][16] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 108: // STATE 18 - model.pml:58 - [((estado==P_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.estado==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 19 - model.pml:60 - [(deadline)] (67:0:8 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(67, 20, 67) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: p_amarillo = 0(67, 21, 67) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = now.p_amarillo;
		now.p_amarillo = 0;
#ifdef VAR_RANGES
		logval("p_amarillo", now.p_amarillo);
#endif
		;
		/* merge: p_rojo = 1(67, 22, 67) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.p_rojo;
		now.p_rojo = 1;
#ifdef VAR_RANGES
		logval("p_rojo", now.p_rojo);
#endif
		;
		/* merge: p_peaton = 1(67, 23, 67) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[3] = now.p_peaton;
		now.p_peaton = 1;
#ifdef VAR_RANGES
		logval("p_peaton", now.p_peaton);
#endif
		;
		/* merge: s_rojo = 0(67, 24, 67) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[4] = now.s_rojo;
		now.s_rojo = 0;
#ifdef VAR_RANGES
		logval("s_rojo", now.s_rojo);
#endif
		;
		/* merge: s_verde = 1(67, 25, 67) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[5] = now.s_verde;
		now.s_verde = 1;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: s_peaton = 0(67, 26, 67) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[6] = now.s_peaton;
		now.s_peaton = 0;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: estado = S_Verde(67, 27, 67) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[7] = now.estado;
		now.estado = 3;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(67, 29, 67) */
		reached[0][29] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 110: // STATE 31 - model.pml:63 - [((estado==S_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((now.estado==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 32 - model.pml:65 - [(botonS)] (67:0:2 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(now.botonS))
			continue;
		/* merge: botonS = 0(67, 33, 67) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.botonS;
		now.botonS = 0;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		/* merge: estado = S_VerToAm(67, 34, 67) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 2;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: .(goto)(67, 41, 67) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 112: // STATE 41 - model.pml:68 - [.(goto)] (0:67:0 - 2)
		IfNotBlocked
		reached[0][41] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 113: // STATE 35 - model.pml:66 - [(deadline)] (67:0:4 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(67, 36, 67) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(67, 37, 67) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_verde = 0(67, 38, 67) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 0;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: s_amarillo = 1(67, 39, 67) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[3] = now.s_amarillo;
		now.s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: .(goto)(67, 41, 67) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 114: // STATE 43 - model.pml:69 - [((estado==S_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.estado==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 44 - model.pml:71 - [(deadline)] (67:0:4 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(67, 45, 67) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(67, 46, 67) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_verde = 0(67, 47, 67) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 0;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: s_amarillo = 1(67, 48, 67) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[3] = now.s_amarillo;
		now.s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: .(goto)(67, 50, 67) */
		reached[0][50] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 116: // STATE 52 - model.pml:74 - [((estado==S_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.estado==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 53 - model.pml:76 - [(deadline)] (67:0:8 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(67, 54, 67) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = P_Verde(67, 55, 67) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 6;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_peaton = 1(67, 56, 67) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[2] = now.s_peaton;
		now.s_peaton = 1;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: s_rojo = 1(67, 57, 67) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals[3] = now.s_rojo;
		now.s_rojo = 1;
#ifdef VAR_RANGES
		logval("s_rojo", now.s_rojo);
#endif
		;
		/* merge: s_amarillo = 0(67, 58, 67) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[4] = now.s_amarillo;
		now.s_amarillo = 0;
#ifdef VAR_RANGES
		logval("s_amarillo", now.s_amarillo);
#endif
		;
		/* merge: p_rojo = 0(67, 59, 67) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[5] = now.p_rojo;
		now.p_rojo = 0;
#ifdef VAR_RANGES
		logval("p_rojo", now.p_rojo);
#endif
		;
		/* merge: p_verde = 1(67, 60, 67) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals[6] = now.p_verde;
		now.p_verde = 1;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: p_peaton = 0(67, 61, 67) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[7] = now.p_peaton;
		now.p_peaton = 0;
#ifdef VAR_RANGES
		logval("p_peaton", now.p_peaton);
#endif
		;
		/* merge: .(goto)(67, 63, 67) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 118: // STATE 67 - model.pml:80 - [printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_rojo,p_amarillo,p_verde,p_peaton,s_rojo,s_amarillo,s_verde,s_peaton)] (0:0:0 - 7)
		IfNotBlocked
		reached[0][67] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_rojo, now.p_amarillo, now.p_verde, now.p_peaton, now.s_rojo, now.s_amarillo, now.s_verde, now.s_peaton);
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 71 - model.pml:83 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
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

