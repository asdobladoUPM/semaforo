	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM secundarioRojo */
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
		
	case 8: // STATE 17
		goto R999;
;
		
	case 9: // STATE 23
		goto R999;
;
		;
		;
		
	case 11: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 14: // STATE 43
		goto R999;

	case 15: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalRojo */
;
		;
		;
		
	case 17: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 21: // STATE 17
		goto R999;
;
		
	case 22: // STATE 23
		goto R999;
;
		;
		;
		
	case 24: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 27: // STATE 43
		goto R999;

	case 28: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioVerde */
;
		;
		;
		
	case 30: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 34: // STATE 17
		goto R999;
;
		
	case 35: // STATE 23
		goto R999;
;
		;
		;
		
	case 37: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 40: // STATE 43
		goto R999;

	case 41: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalVerde */
;
		;
		;
		
	case 43: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 47: // STATE 17
		goto R999;
;
		
	case 48: // STATE 23
		goto R999;
;
		;
		;
		
	case 50: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 53: // STATE 43
		goto R999;

	case 54: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secundarioAmarillo */
;
		;
		;
		
	case 56: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 60: // STATE 17
		goto R999;
;
		
	case 61: // STATE 23
		goto R999;
;
		;
		;
		
	case 63: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 66: // STATE 43
		goto R999;

	case 67: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM principalAmarillo */
;
		;
		;
		
	case 69: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 73: // STATE 17
		goto R999;
;
		
	case 74: // STATE 23
		goto R999;
;
		;
		;
		
	case 76: // STATE 33
		goto R999;
;
		;
		;
		;
		;
		
	case 79: // STATE 43
		goto R999;

	case 80: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonSNoMuere */
;
		
	case 81: // STATE 1
		goto R999;

	case 82: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonPNoMuere */
;
		
	case 83: // STATE 1
		goto R999;

	case 84: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM ProjoPeaton */
;
		
	case 85: // STATE 1
		goto R999;

	case 86: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM SrojoPeaton */
;
		
	case 87: // STATE 1
		goto R999;

	case 88: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM espira */
;
		;
		
	case 90: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonS_cruza */
;
		;
		
	case 92: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonP_cruza */
;
		;
		
	case 94: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM algunoRojo */
;
		
	case 95: // STATE 1
		goto R999;

	case 96: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM noDosVerdes */
;
		
	case 97: // STATE 1
		goto R999;

	case 98: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 99: // STATE 3
		;
		now.espira = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 4
		;
		now.botonP = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 5
		;
		now.botonS = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 6
		;
		now.deadline = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */
;
		;
		
	case 105: // STATE 5
		;
		now.estado = trpt->bup.ovals[2];
		now.botonP = trpt->bup.ovals[1];
		now.espira = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 107: // STATE 14
		;
		now.estado = trpt->bup.ovals[3];
		now.p_amarillo = trpt->bup.ovals[2];
		now.p_verde = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 109: // STATE 27
		;
		now.estado = trpt->bup.ovals[7];
		now.s_peaton = trpt->bup.ovals[6];
		now.s_verde = trpt->bup.ovals[5];
		now.s_rojo = trpt->bup.ovals[4];
		now.p_peaton = trpt->bup.ovals[3];
		now.p_rojo = trpt->bup.ovals[2];
		now.p_amarillo = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;
;
		;
		
	case 111: // STATE 34
		;
		now.estado = trpt->bup.ovals[1];
		now.botonS = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 112: // STATE 41
		goto R999;

	case 113: // STATE 39
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
		
	case 115: // STATE 48
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
		
	case 117: // STATE 61
		;
		now.p_peaton = trpt->bup.ovals[7];
		now.p_verde = trpt->bup.ovals[6];
		now.p_rojo = trpt->bup.ovals[5];
		now.s_amarillo = trpt->bup.ovals[4];
		now.s_rojo = trpt->bup.ovals[3];
		now.s_peaton = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;
;
		;
		
	case 119: // STATE 71
		;
		p_restor(II);
		;
		;
		goto R999;
	}

