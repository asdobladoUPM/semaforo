	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM secundarioRtoV */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 8: // STATE 15
		goto R999;
;
		
	case 9: // STATE 21
		goto R999;
;
		
	case 10: // STATE 29
		goto R999;

	case 11: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioAtoR */
;
		;
		;
		
	case 13: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 17: // STATE 15
		goto R999;
;
		
	case 18: // STATE 21
		goto R999;
;
		
	case 19: // STATE 29
		goto R999;

	case 20: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioVtoA */
;
		;
		;
		
	case 22: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 26: // STATE 15
		goto R999;
;
		
	case 27: // STATE 21
		goto R999;
;
		
	case 28: // STATE 29
		goto R999;

	case 29: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalRtoV */
;
		;
		;
		
	case 31: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 35: // STATE 15
		goto R999;
;
		
	case 36: // STATE 21
		goto R999;
;
		
	case 37: // STATE 29
		goto R999;

	case 38: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalAtoR */
;
		;
		;
		
	case 40: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 44: // STATE 15
		goto R999;
;
		
	case 45: // STATE 21
		goto R999;
;
		
	case 46: // STATE 29
		goto R999;

	case 47: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalVtoA */
;
		;
		;
		
	case 49: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 53: // STATE 15
		goto R999;
;
		
	case 54: // STATE 21
		goto R999;
;
		
	case 55: // STATE 29
		goto R999;

	case 56: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM espira */
;
		;
		
	case 58: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonS_cruza */
;
		;
		
	case 60: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonP_cruza */
;
		;
		
	case 62: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM dosverdesomg */
;
		
	case 63: // STATE 1
		goto R999;

	case 64: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 65: // STATE 3
		;
		now.espira = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 4
		;
		now.botonP = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 5
		;
		now.botonS = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 6
		;
		now.deadline = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */

	case 70: // STATE 1
		;
		now.estado = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 2
		;
		now.p_verde = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 3
		;
		now.s_rojo = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 4
		;
		now.s_peaton = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 75: // STATE 9
		;
		now.estado = trpt->bup.ovals[2];
		now.botonP = trpt->bup.ovals[1];
		now.espira = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 77: // STATE 19
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
		
	case 79: // STATE 31
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
		
	case 81: // STATE 38
		;
		now.estado = trpt->bup.ovals[1];
		now.botonS = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 82: // STATE 45
		goto R999;

	case 83: // STATE 43
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
		
	case 85: // STATE 54
		;
		now.s_amarillo = trpt->bup.ovals[5];
		now.p_verde = trpt->bup.ovals[4];
		now.s_verde = trpt->bup.ovals[3];
		now.p_peaton = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 87: // STATE 66
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
		
	case 89: // STATE 76
		;
		p_restor(II);
		;
		;
		goto R999;
	}

