	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM principal_verde */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM espira */
;
		;
		
	case 7: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonS_cruza */
;
		;
		
	case 9: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonP_cruza */
;
		;
		
	case 11: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM dosverdesomg */
;
		
	case 12: // STATE 1
		goto R999;

	case 13: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 14: // STATE 3
		;
		now.espira = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 4
		;
		now.botonP = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 5
		;
		now.botonS = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */

	case 18: // STATE 1
		;
		now.estado = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 2
		;
		now.p_verde = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 3
		;
		s_rojo = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 4
		;
		now.s_peaton = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 9
		;
		now.estado = trpt->bup.ovals[2];
		now.botonP = trpt->bup.ovals[1];
		now.espira = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 25: // STATE 20
		;
		now.estado = trpt->bup.ovals[4];
		now.s_peaton = trpt->bup.ovals[3];
		p_amarillo = trpt->bup.ovals[2];
		now.p_verde = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 27: // STATE 33
		;
		now.estado = trpt->bup.ovals[6];
		p_amarillo = trpt->bup.ovals[5];
		p_rojo = trpt->bup.ovals[4];
		now.p_peaton = trpt->bup.ovals[3];
		now.s_verde = trpt->bup.ovals[2];
		s_rojo = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 29: // STATE 41
		;
		now.estado = trpt->bup.ovals[1];
		now.botonS = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 30: // STATE 50
		goto R999;

	case 31: // STATE 47
		;
		s_amarillo = trpt->bup.ovals[3];
		now.s_verde = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 33: // STATE 58
		;
		s_amarillo = trpt->bup.ovals[4];
		now.p_verde = trpt->bup.ovals[3];
		now.s_peaton = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 35: // STATE 71
		;
		now.p_verde = trpt->bup.ovals[6];
		p_rojo = trpt->bup.ovals[5];
		s_amarillo = trpt->bup.ovals[4];
		now.s_peaton = trpt->bup.ovals[3];
		s_rojo = trpt->bup.ovals[2];
		now.estado = trpt->bup.ovals[1];
		now.deadline = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 36: // STATE 79
		;
		p_restor(II);
		;
		;
		goto R999;
	}

