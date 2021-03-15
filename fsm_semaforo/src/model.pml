mtype = { P_Verde, P_VerToAm, P_Amarillo, S_Verde, S_VerToAm, S_Amarillo }

ltl noDosVerdes {
	[] !(p_verde && s_verde)
}
ltl peatonP_cruza {
    [] botonP -> <> p_peaton
}
ltl peatonS_cruza {
    [] botonS -> <> s_peaton
}
ltl espira {
    [] espira -> <> s_verde
}
ltl SrojoPeaton{
    [] ((s_rojo && s_peaton)||(!s_rojo && !s_peaton))
}
ltl ProjoPeaton{
    [] ((p_rojo && p_peaton)||(!p_rojo && !p_peaton))
}
ltl principalVtoA {
    <>(!p_verde W p_amarillo)
}
ltl principalAtoR {
    <>(!p_amarillo W p_rojo)
}
ltl principalRtoV {
    <>(!p_rojo W p_verde)
}
ltl secundarioVtoA {
    <>(!s_verde W s_amarillo)
}
ltl secundarioAtoR {
    <>(!s_amarillo W s_rojo)
}
ltl secundarioRtoV {
    <>(!s_rojo W s_verde)
}
ltl peatonPNoMuere{
    [] !(p_verde && p_peaton)
}
ltl peatonSNoMuere{
    [] !(s_verde && s_peaton)
}
ltl algunoRojo{
    [] (p_rojo || s_rojo)
}

/* Entradas */
int espira;
int botonP;
int botonS;

/* Salidas */
int p_verde=1;
int p_amarillo;
int p_rojo;
int p_peaton;

int s_verde;
int s_amarillo;
int s_rojo=1;
int s_peaton=1;

int estado=P_Verde;
int deadline;

active proctype fsm () 
{
    do
        ::if
            :: (estado == P_Verde) -> atomic {
                if
                :: (espira || botonP) -> espira = 0; botonP = 0; estado = P_VerToAm;
                fi
            }
            :: (estado == P_VerToAm) -> atomic {
                if
                :: deadline -> deadline = 0; p_verde = 0; p_amarillo = 1; s_peaton = 0; estado = P_Amarillo;
                fi
            }
            :: (estado == P_Amarillo) -> atomic {
                if
                :: deadline -> deadline = 0; s_rojo = 0; s_verde = 1; p_peaton = 1; p_rojo = 1; p_amarillo = 0; estado = S_Verde;
                fi
            }
            :: (estado == S_Verde) -> atomic {
                if
                :: botonS -> botonS = 0; estado = S_VerToAm; 
                :: deadline -> deadline = 0; estado = S_Amarillo; s_verde = 0; s_amarillo = 1;
                fi
            }
            :: (estado == S_VerToAm) -> atomic {
                if
                :: deadline -> deadline = 0; estado = S_Amarillo; p_peaton = 0; s_verde = 0; s_amarillo = 1;
                fi
            }
            :: (estado == S_Amarillo) -> atomic {
                if
                :: deadline -> deadline = 0; estado = P_Verde; s_peaton = 1; s_rojo = 1; s_amarillo = 0; p_rojo = 0; p_verde = 1;
                fi
            }
        fi;
        printf ("estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\n",
                estado, p_rojo, p_amarillo, p_verde, p_peaton, s_rojo, s_amarillo, s_verde, s_peaton);
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
       :: deadline = 1
       fi ;
    od
}