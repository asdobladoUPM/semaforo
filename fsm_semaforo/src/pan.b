	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM peatonSNoMuere */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonPNoMuere */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioRtoV */
;
		;
		;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioAtoR */
;
		;
		;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioVtoA */
;
		;
		;
		;
		;
		;
		
	case 18: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalRtoV */
;
		;
		;
		;
		;
		;
		
	case 22: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalAtoR */
;
		;
		;
		;
		;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalVtoA */
;
		;
		;
		;
		;
		;
		
	case 30: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM ProjoPeaton */
;
		
	case 31: // STATE 1
		goto R999;

	case 32: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM SrojoPeaton */
;
		
	case 33: // STATE 1
		goto R999;

	case 34: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM espira */
;
		;
		
	case 36: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonS_cruza */
;
		;
		
	case 38: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonP_cruza */
;
		;
		
	case 40: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM noDosVerdes */
;
		
	case 41: // STATE 1
		goto R999;

	case 42: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 43: // STATE 3
		;
		now.espira = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 4
		;
		now.botonP = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 5
		;
		now.botonS = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 6
		;
		now.deadline = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */

	case 48: // STATE 1
		;
		now.estado = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 2
		;
		now.p_verde = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 3
		;
		now.s_rojo = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 4
		;
		now.s_peaton = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 53: // STATE 9
		;
		now.estado = trpt->bup.ovals[2];
		now.botonP = trpt->bup.ovals[1];
		now.espira = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 55: // STATE 19
		;
		now.estado = trpt->bup.ovals[4];
		now.s_peaton = trpt->bup.ovals[3];
		now.p_amarillo = trpt->bup.ovals[2];
		now.p_verde = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 57: // STATE 31
		;
		now.estado = trpt->bup.ovals[6];
		now.p_amarillo = trpt->bup.ovals[5];
		now.p_rojo = trpt->bup.ovals[4];
		now.p_peaton = trpt->bup.ovals[3];
		now.s_verde = trpt->bup.ovals[2];
		now.s_rojo = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 59: // STATE 38
		;
		now.estado = trpt->bup.ovals[1];
		now.botonS = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 60: // STATE 45
		goto R999;

	case 61: // STATE 43
		;
		now.s_amarillo = trpt->bup.ovals[3];
		now.s_verde = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 63: // STATE 53
		;
		now.s_amarillo = trpt->bup.ovals[4];
		now.s_verde = trpt->bup.ovals[3];
		now.p_peaton = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 65: // STATE 65
		;
		now.p_verde = trpt->bup.ovals[6];
		now.p_rojo = trpt->bup.ovals[5];
		now.s_amarillo = trpt->bup.ovals[4];
		now.s_peaton = trpt->bup.ovals[3];
		now.s_rojo = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 67: // STATE 75
		;
		p_restor(II);
		;
		;
		goto R999;
	}

