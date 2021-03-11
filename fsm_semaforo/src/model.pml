mtype = { P_Verde, P_VerToAm, P_Amarillo, S_Verde, S_VerToAm, S_Amarillo }

/* Entradas */
int espira;
int botonP;
int botonS;

/* Salidas */
int p_verde;
int p_amarillo;
int p_rojo;
int p_peaton;

int s_verde;
int s_amarillo;
int s_rojo;
int s_peaton;

int deadline;

active proctype fsm () 
{
    int estado = P_Verde;
    int p_verde = 1;
    int s_rojo = 1;
    printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
	    estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
    do
    :: (estado == P_Verde) -> atomic {
        if
        :: espira || botonP -> espira = 0; botonP = 0; estado = P_VerToAm;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    :: (estado == P_VerToAm) -> atomic {
        if
        :: deadline -> deadline = 0; p_verde = 0; p_amarillo = 1; estado = P_Amarillo;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    :: (estado == P_Amarillo) -> atomic {
        if
        :: deadline -> deadline = 0; s_rojo = 0; s_verde = 1; p_rojo = 1; p_amarillo = 0; estado = S_Verde;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    :: (estado == S_Verde) -> atomic {
        if
        :: botonS -> botonS = 0; estado = S_VerToAm;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        :: deadline -> deadline = 0; estado = S_Amarillo; s_verde = 0; s_amarillo = 1;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    :: (estado == S_VerToAm) -> atomic {
        if
        :: deadline -> deadline = 0; estado = S_Amarillo; s_verde = 0; s_amarillo = 1;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    :: (estado == S_Amarillo) -> atomic {
        if
        :: deadline -> deadline = 0; estado = P_Verde; s_rojo = 1; s_amarillo = 0; p_rojo = 0; p_verde = 1;
            printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
            estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
        fi
    }
    od
}

active proctype entorno ()
{
    do
    :: if
       :: skip -> skip
       :: espira = 1
       :: botonP = 1
       :: botonS = 1
       fi ;
       printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
	        estado, p_verde, p_amarillo, p_rojo, p_peaton, s_verde, s_amarillo, s_rojo, s_peaton);
    od
}