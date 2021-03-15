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

		 /* CLAIM principal_verde */
	case 3: // STATE 1 - _spin_nvr.tmp:33 - [(!(p_verde))] (0:0:0 - 1)
		
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
		if (!( !(now.p_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:38 - [(!(p_verde))] (0:0:0 - 1)
		
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
		reached[6][8] = 1;
		if (!( !(now.p_verde)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:40 - [-end-] (0:0:0 - 1)
		
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
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM espira */
	case 6: // STATE 1 - _spin_nvr.tmp:27 - [((!(s_verde)&&espira))] (0:0:0 - 1)
		
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
	case 7: // STATE 6 - _spin_nvr.tmp:29 - [-end-] (0:0:0 - 1)
		
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
	case 8: // STATE 1 - _spin_nvr.tmp:20 - [((!(s_peaton)&&botonS))] (0:0:0 - 1)
		
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
	case 9: // STATE 6 - _spin_nvr.tmp:22 - [-end-] (0:0:0 - 1)
		
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
	case 10: // STATE 1 - _spin_nvr.tmp:13 - [((!(p_peaton)&&botonP))] (0:0:0 - 1)
		
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
	case 11: // STATE 6 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM dosverdesomg */
	case 12: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((p_verde&&s_verde))))] (6:0:0 - 1)
		
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
	case 13: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
	case 14: // STATE 3 - model.pml:89 - [espira = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.espira;
		now.espira = 1;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 4 - model.pml:90 - [botonP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.botonP;
		now.botonP = 1;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 5 - model.pml:91 - [botonS = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.botonS;
		now.botonS = 1;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 11 - model.pml:94 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 18: // STATE 1 - model.pml:31 - [estado = P_Verde] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.estado;
		now.estado = 6;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - model.pml:32 - [p_verde = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.p_verde;
		now.p_verde = 1;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - model.pml:33 - [s_rojo = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = s_rojo;
		s_rojo = 1;
#ifdef VAR_RANGES
		logval("s_rojo", s_rojo);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 4 - model.pml:34 - [s_peaton = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.s_peaton;
		now.s_peaton = 1;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 5 - model.pml:36 - [((estado==P_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.estado==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 6 - model.pml:38 - [((espira||botonP))] (76:0:3 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.espira||now.botonP)))
			continue;
		/* merge: espira = 0(76, 7, 76) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.espira;
		now.espira = 0;
#ifdef VAR_RANGES
		logval("espira", now.espira);
#endif
		;
		/* merge: botonP = 0(76, 8, 76) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[1] = now.botonP;
		now.botonP = 0;
#ifdef VAR_RANGES
		logval("botonP", now.botonP);
#endif
		;
		/* merge: estado = P_VerToAm(76, 9, 76) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[2] = now.estado;
		now.estado = 5;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 10, 76) */
		reached[0][10] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 12, 76) */
		reached[0][12] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 24: // STATE 14 - model.pml:43 - [((estado==P_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((now.estado==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 15 - model.pml:45 - [(deadline)] (76:0:5 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(76, 16, 76) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: p_verde = 0(76, 17, 76) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[1] = now.p_verde;
		now.p_verde = 0;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: p_amarillo = 1(76, 18, 76) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[2] = p_amarillo;
		p_amarillo = 1;
#ifdef VAR_RANGES
		logval("p_amarillo", p_amarillo);
#endif
		;
		/* merge: s_peaton = 0(76, 19, 76) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[3] = now.s_peaton;
		now.s_peaton = 0;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: estado = P_Amarillo(76, 20, 76) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[4] = now.estado;
		now.estado = 4;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 21, 76) */
		reached[0][21] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 23, 76) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 26: // STATE 25 - model.pml:50 - [((estado==P_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.estado==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 26 - model.pml:52 - [(deadline)] (76:0:7 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(76, 27, 76) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: s_rojo = 0(76, 28, 76) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = s_rojo;
		s_rojo = 0;
#ifdef VAR_RANGES
		logval("s_rojo", s_rojo);
#endif
		;
		/* merge: s_verde = 1(76, 29, 76) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 1;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: p_peaton = 1(76, 30, 76) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[3] = now.p_peaton;
		now.p_peaton = 1;
#ifdef VAR_RANGES
		logval("p_peaton", now.p_peaton);
#endif
		;
		/* merge: p_rojo = 1(76, 31, 76) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[4] = p_rojo;
		p_rojo = 1;
#ifdef VAR_RANGES
		logval("p_rojo", p_rojo);
#endif
		;
		/* merge: p_amarillo = 0(76, 32, 76) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[5] = p_amarillo;
		p_amarillo = 0;
#ifdef VAR_RANGES
		logval("p_amarillo", p_amarillo);
#endif
		;
		/* merge: estado = S_Verde(76, 33, 76) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[6] = now.estado;
		now.estado = 3;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 34, 76) */
		reached[0][34] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 36, 76) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 28: // STATE 38 - model.pml:57 - [((estado==S_Verde))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.estado==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 39 - model.pml:59 - [(botonS)] (76:0:2 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(now.botonS))
			continue;
		/* merge: botonS = 0(76, 40, 76) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.botonS;
		now.botonS = 0;
#ifdef VAR_RANGES
		logval("botonS", now.botonS);
#endif
		;
		/* merge: estado = S_VerToAm(76, 41, 76) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 2;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 42, 76) */
		reached[0][42] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 50, 76) */
		reached[0][50] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 50 - model.pml:66 - [.(goto)] (0:76:0 - 2)
		IfNotBlocked
		reached[0][50] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 31: // STATE 43 - model.pml:62 - [(deadline)] (76:0:4 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(76, 44, 76) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(76, 45, 76) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_verde = 0(76, 46, 76) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[2] = now.s_verde;
		now.s_verde = 0;
#ifdef VAR_RANGES
		logval("s_verde", now.s_verde);
#endif
		;
		/* merge: s_amarillo = 1(76, 47, 76) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[3] = s_amarillo;
		s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", s_amarillo);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 48, 76) */
		reached[0][48] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 50, 76) */
		reached[0][50] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 32: // STATE 52 - model.pml:67 - [((estado==S_VerToAm))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.estado==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 53 - model.pml:69 - [(deadline)] (76:0:5 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(76, 54, 76) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = S_Amarillo(76, 55, 76) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 1;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_peaton = 0(76, 56, 76) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[2] = now.s_peaton;
		now.s_peaton = 0;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: p_verde = 0(76, 57, 76) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals[3] = now.p_verde;
		now.p_verde = 0;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: s_amarillo = 1(76, 58, 76) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[4] = s_amarillo;
		s_amarillo = 1;
#ifdef VAR_RANGES
		logval("s_amarillo", s_amarillo);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 59, 76) */
		reached[0][59] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 61, 76) */
		reached[0][61] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 8 */
	case 34: // STATE 63 - model.pml:74 - [((estado==S_Amarillo))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((now.estado==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 64 - model.pml:76 - [(deadline)] (76:0:7 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!(now.deadline))
			continue;
		/* merge: deadline = 0(76, 65, 76) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.deadline;
		now.deadline = 0;
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: estado = P_Verde(76, 66, 76) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals[1] = now.estado;
		now.estado = 6;
#ifdef VAR_RANGES
		logval("estado", now.estado);
#endif
		;
		/* merge: s_rojo = 1(76, 67, 76) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals[2] = s_rojo;
		s_rojo = 1;
#ifdef VAR_RANGES
		logval("s_rojo", s_rojo);
#endif
		;
		/* merge: s_peaton = 1(76, 68, 76) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[3] = now.s_peaton;
		now.s_peaton = 1;
#ifdef VAR_RANGES
		logval("s_peaton", now.s_peaton);
#endif
		;
		/* merge: s_amarillo = 0(76, 69, 76) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals[4] = s_amarillo;
		s_amarillo = 0;
#ifdef VAR_RANGES
		logval("s_amarillo", s_amarillo);
#endif
		;
		/* merge: p_rojo = 0(76, 70, 76) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals[5] = p_rojo;
		p_rojo = 0;
#ifdef VAR_RANGES
		logval("p_rojo", p_rojo);
#endif
		;
		/* merge: p_verde = 1(76, 71, 76) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[6] = now.p_verde;
		now.p_verde = 1;
#ifdef VAR_RANGES
		logval("p_verde", now.p_verde);
#endif
		;
		/* merge: printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)(76, 72, 76) */
		reached[0][72] = 1;
		Printf("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n", now.estado, now.p_verde, p_amarillo, p_rojo, now.p_peaton, now.s_verde, s_amarillo, s_rojo, now.s_peaton);
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 36: // STATE 79 - model.pml:82 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
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

