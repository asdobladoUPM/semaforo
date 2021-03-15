#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(13*sizeof(Trans **));

	/* proctype 11: secundarioRtoV */

	trans[11] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[11][11]	= settr(316,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[11][10] = settr(315,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(315,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(315,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(315,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(315,0,8,0,0,"DO", 0, 2, 0);
	trans[11][1]	= settr(306,0,18,3,0,"((!(!(s_rojo))&&!(s_verde)))", 1, 2, 0);
	trans[11][2]	= settr(307,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 11][5] = settr(310,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(310,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[11][3]	= settr(308,0,10,4,4,"((!(!(s_rojo))&&!(s_verde)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached11[4] = 1;
	trans[11][4]	= settr(0,0,0,0,0,"assert(!((!(!(s_rojo))&&!(s_verde))))",0,0,0);
	trans[11][6]	= settr(311,0,10,5,0,"(!(s_verde))", 1, 2, 0);
	trans[11][7]	= settr(312,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[11][8]	= settr(313,0,26,6,0,"((!(!(s_rojo))&&!(s_verde)))", 1, 2, 0);
	trans[11][9]	= settr(314,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[11][12]	= settr(317,0,18,1,0,"break", 0, 2, 0);
	trans[11][19]	= settr(324,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[11][18] = settr(323,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(323,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(323,0,17,0,0,"DO", 0, 2, 0);
	trans[11][13]	= settr(318,0,18,7,0,"(!(s_verde))", 1, 2, 0);
	trans[11][14]	= settr(319,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 11][17] = settr(322,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(322,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[11][15]	= settr(320,0,18,8,8,"((!(!(s_rojo))&&!(s_verde)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached11[16] = 1;
	trans[11][16]	= settr(0,0,0,0,0,"assert(!((!(!(s_rojo))&&!(s_verde))))",0,0,0);
	trans[11][20]	= settr(325,0,26,1,0,"break", 0, 2, 0);
	trans[11][27]	= settr(332,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[11][26] = settr(331,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(331,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(331,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 11][23] = settr(328,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(328,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[11][21]	= settr(326,0,26,9,9,"(!(!(s_rojo)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached11[22] = 1;
	trans[11][22]	= settr(0,0,0,0,0,"assert(!(!(!(s_rojo))))",0,0,0);
	trans[11][24]	= settr(329,0,34,1,0,"(1)", 0, 2, 0);
	trans[11][25]	= settr(330,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[11][28]	= settr(333,0,34,1,0,"break", 0, 2, 0);
	trans[11][35]	= settr(340,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[11][34] = settr(339,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(339,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(339,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 11][31] = settr(336,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(336,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[11][29]	= settr(334,0,34,10,10,"(!(!(s_rojo)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached11[30] = 1;
	trans[11][30]	= settr(0,0,0,0,0,"assert(!(!(!(s_rojo))))",0,0,0);
	trans[11][32]	= settr(337,0,34,1,0,"(1)", 0, 2, 0);
	trans[11][33]	= settr(338,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[11][36]	= settr(341,0,37,1,0,"break", 0, 2, 0);
	trans[11][37]	= settr(342,0,38,1,0,"(1)", 0, 2, 0);
	trans[11][38]	= settr(343,0,0,11,11,"-end-", 0, 3500, 0);

	/* proctype 10: secundarioAtoR */

	trans[10] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[10][11]	= settr(278,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[10][10] = settr(277,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(277,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(277,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(277,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(277,0,8,0,0,"DO", 0, 2, 0);
	trans[10][1]	= settr(268,0,18,12,0,"((!(!(s_amarillo))&&!(s_rojo)))", 1, 2, 0);
	trans[10][2]	= settr(269,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 10][5] = settr(272,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(272,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[10][3]	= settr(270,0,10,13,13,"((!(!(s_amarillo))&&!(s_rojo)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached10[4] = 1;
	trans[10][4]	= settr(0,0,0,0,0,"assert(!((!(!(s_amarillo))&&!(s_rojo))))",0,0,0);
	trans[10][6]	= settr(273,0,10,14,0,"(!(s_rojo))", 1, 2, 0);
	trans[10][7]	= settr(274,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[10][8]	= settr(275,0,26,15,0,"((!(!(s_amarillo))&&!(s_rojo)))", 1, 2, 0);
	trans[10][9]	= settr(276,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[10][12]	= settr(279,0,18,1,0,"break", 0, 2, 0);
	trans[10][19]	= settr(286,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[10][18] = settr(285,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(285,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(285,0,17,0,0,"DO", 0, 2, 0);
	trans[10][13]	= settr(280,0,18,16,0,"(!(s_rojo))", 1, 2, 0);
	trans[10][14]	= settr(281,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 10][17] = settr(284,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(284,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[10][15]	= settr(282,0,18,17,17,"((!(!(s_amarillo))&&!(s_rojo)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached10[16] = 1;
	trans[10][16]	= settr(0,0,0,0,0,"assert(!((!(!(s_amarillo))&&!(s_rojo))))",0,0,0);
	trans[10][20]	= settr(287,0,26,1,0,"break", 0, 2, 0);
	trans[10][27]	= settr(294,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[10][26] = settr(293,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(293,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(293,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 10][23] = settr(290,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(290,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[10][21]	= settr(288,0,26,18,18,"(!(!(s_amarillo)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached10[22] = 1;
	trans[10][22]	= settr(0,0,0,0,0,"assert(!(!(!(s_amarillo))))",0,0,0);
	trans[10][24]	= settr(291,0,34,1,0,"(1)", 0, 2, 0);
	trans[10][25]	= settr(292,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[10][28]	= settr(295,0,34,1,0,"break", 0, 2, 0);
	trans[10][35]	= settr(302,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[10][34] = settr(301,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(301,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(301,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 10][31] = settr(298,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(298,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[10][29]	= settr(296,0,34,19,19,"(!(!(s_amarillo)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached10[30] = 1;
	trans[10][30]	= settr(0,0,0,0,0,"assert(!(!(!(s_amarillo))))",0,0,0);
	trans[10][32]	= settr(299,0,34,1,0,"(1)", 0, 2, 0);
	trans[10][33]	= settr(300,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[10][36]	= settr(303,0,37,1,0,"break", 0, 2, 0);
	trans[10][37]	= settr(304,0,38,1,0,"(1)", 0, 2, 0);
	trans[10][38]	= settr(305,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 9: secundarioVtoA */

	trans[9] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[9][11]	= settr(240,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[9][10] = settr(239,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(239,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(239,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(239,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(239,0,8,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(230,0,18,21,0,"((!(!(s_verde))&&!(s_amarillo)))", 1, 2, 0);
	trans[9][2]	= settr(231,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 9][5] = settr(234,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(234,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[9][3]	= settr(232,0,10,22,22,"((!(!(s_verde))&&!(s_amarillo)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached9[4] = 1;
	trans[9][4]	= settr(0,0,0,0,0,"assert(!((!(!(s_verde))&&!(s_amarillo))))",0,0,0);
	trans[9][6]	= settr(235,0,10,23,0,"(!(s_amarillo))", 1, 2, 0);
	trans[9][7]	= settr(236,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[9][8]	= settr(237,0,26,24,0,"((!(!(s_verde))&&!(s_amarillo)))", 1, 2, 0);
	trans[9][9]	= settr(238,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[9][12]	= settr(241,0,18,1,0,"break", 0, 2, 0);
	trans[9][19]	= settr(248,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[9][18] = settr(247,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(247,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(247,0,17,0,0,"DO", 0, 2, 0);
	trans[9][13]	= settr(242,0,18,25,0,"(!(s_amarillo))", 1, 2, 0);
	trans[9][14]	= settr(243,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 9][17] = settr(246,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(246,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[9][15]	= settr(244,0,18,26,26,"((!(!(s_verde))&&!(s_amarillo)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached9[16] = 1;
	trans[9][16]	= settr(0,0,0,0,0,"assert(!((!(!(s_verde))&&!(s_amarillo))))",0,0,0);
	trans[9][20]	= settr(249,0,26,1,0,"break", 0, 2, 0);
	trans[9][27]	= settr(256,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[9][26] = settr(255,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(255,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(255,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 9][23] = settr(252,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(252,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[9][21]	= settr(250,0,26,27,27,"(!(!(s_verde)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached9[22] = 1;
	trans[9][22]	= settr(0,0,0,0,0,"assert(!(!(!(s_verde))))",0,0,0);
	trans[9][24]	= settr(253,0,34,1,0,"(1)", 0, 2, 0);
	trans[9][25]	= settr(254,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[9][28]	= settr(257,0,34,1,0,"break", 0, 2, 0);
	trans[9][35]	= settr(264,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[9][34] = settr(263,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(263,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(263,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 9][31] = settr(260,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(260,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[9][29]	= settr(258,0,34,28,28,"(!(!(s_verde)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached9[30] = 1;
	trans[9][30]	= settr(0,0,0,0,0,"assert(!(!(!(s_verde))))",0,0,0);
	trans[9][32]	= settr(261,0,34,1,0,"(1)", 0, 2, 0);
	trans[9][33]	= settr(262,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[9][36]	= settr(265,0,37,1,0,"break", 0, 2, 0);
	trans[9][37]	= settr(266,0,38,1,0,"(1)", 0, 2, 0);
	trans[9][38]	= settr(267,0,0,29,29,"-end-", 0, 3500, 0);

	/* proctype 8: principalRtoV */

	trans[8] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[8][11]	= settr(202,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[8][10] = settr(201,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(201,0,8,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(192,0,18,30,0,"((!(!(p_rojo))&&!(p_verde)))", 1, 2, 0);
	trans[8][2]	= settr(193,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 8][5] = settr(196,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(196,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[8][3]	= settr(194,0,10,31,31,"((!(!(p_rojo))&&!(p_verde)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached8[4] = 1;
	trans[8][4]	= settr(0,0,0,0,0,"assert(!((!(!(p_rojo))&&!(p_verde))))",0,0,0);
	trans[8][6]	= settr(197,0,10,32,0,"(!(p_verde))", 1, 2, 0);
	trans[8][7]	= settr(198,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[8][8]	= settr(199,0,26,33,0,"((!(!(p_rojo))&&!(p_verde)))", 1, 2, 0);
	trans[8][9]	= settr(200,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[8][12]	= settr(203,0,18,1,0,"break", 0, 2, 0);
	trans[8][19]	= settr(210,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[8][18] = settr(209,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(209,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(209,0,17,0,0,"DO", 0, 2, 0);
	trans[8][13]	= settr(204,0,18,34,0,"(!(p_verde))", 1, 2, 0);
	trans[8][14]	= settr(205,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 8][17] = settr(208,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(208,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[8][15]	= settr(206,0,18,35,35,"((!(!(p_rojo))&&!(p_verde)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached8[16] = 1;
	trans[8][16]	= settr(0,0,0,0,0,"assert(!((!(!(p_rojo))&&!(p_verde))))",0,0,0);
	trans[8][20]	= settr(211,0,26,1,0,"break", 0, 2, 0);
	trans[8][27]	= settr(218,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[8][26] = settr(217,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(217,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(217,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 8][23] = settr(214,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(214,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[8][21]	= settr(212,0,26,36,36,"(!(!(p_rojo)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached8[22] = 1;
	trans[8][22]	= settr(0,0,0,0,0,"assert(!(!(!(p_rojo))))",0,0,0);
	trans[8][24]	= settr(215,0,34,1,0,"(1)", 0, 2, 0);
	trans[8][25]	= settr(216,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[8][28]	= settr(219,0,34,1,0,"break", 0, 2, 0);
	trans[8][35]	= settr(226,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[8][34] = settr(225,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(225,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(225,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 8][31] = settr(222,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(222,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[8][29]	= settr(220,0,34,37,37,"(!(!(p_rojo)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached8[30] = 1;
	trans[8][30]	= settr(0,0,0,0,0,"assert(!(!(!(p_rojo))))",0,0,0);
	trans[8][32]	= settr(223,0,34,1,0,"(1)", 0, 2, 0);
	trans[8][33]	= settr(224,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[8][36]	= settr(227,0,37,1,0,"break", 0, 2, 0);
	trans[8][37]	= settr(228,0,38,1,0,"(1)", 0, 2, 0);
	trans[8][38]	= settr(229,0,0,38,38,"-end-", 0, 3500, 0);

	/* proctype 7: principalAtoR */

	trans[7] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[7][11]	= settr(164,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[7][10] = settr(163,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(163,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(163,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(163,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(163,0,8,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(154,0,18,39,0,"((!(!(p_amarillo))&&!(p_rojo)))", 1, 2, 0);
	trans[7][2]	= settr(155,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 7][5] = settr(158,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(158,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[7][3]	= settr(156,0,10,40,40,"((!(!(p_amarillo))&&!(p_rojo)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached7[4] = 1;
	trans[7][4]	= settr(0,0,0,0,0,"assert(!((!(!(p_amarillo))&&!(p_rojo))))",0,0,0);
	trans[7][6]	= settr(159,0,10,41,0,"(!(p_rojo))", 1, 2, 0);
	trans[7][7]	= settr(160,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(161,0,26,42,0,"((!(!(p_amarillo))&&!(p_rojo)))", 1, 2, 0);
	trans[7][9]	= settr(162,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[7][12]	= settr(165,0,18,1,0,"break", 0, 2, 0);
	trans[7][19]	= settr(172,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[7][18] = settr(171,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(171,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(171,0,17,0,0,"DO", 0, 2, 0);
	trans[7][13]	= settr(166,0,18,43,0,"(!(p_rojo))", 1, 2, 0);
	trans[7][14]	= settr(167,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 7][17] = settr(170,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(170,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[7][15]	= settr(168,0,18,44,44,"((!(!(p_amarillo))&&!(p_rojo)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached7[16] = 1;
	trans[7][16]	= settr(0,0,0,0,0,"assert(!((!(!(p_amarillo))&&!(p_rojo))))",0,0,0);
	trans[7][20]	= settr(173,0,26,1,0,"break", 0, 2, 0);
	trans[7][27]	= settr(180,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[7][26] = settr(179,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(179,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(179,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 7][23] = settr(176,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(176,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[7][21]	= settr(174,0,26,45,45,"(!(!(p_amarillo)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached7[22] = 1;
	trans[7][22]	= settr(0,0,0,0,0,"assert(!(!(!(p_amarillo))))",0,0,0);
	trans[7][24]	= settr(177,0,34,1,0,"(1)", 0, 2, 0);
	trans[7][25]	= settr(178,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[7][28]	= settr(181,0,34,1,0,"break", 0, 2, 0);
	trans[7][35]	= settr(188,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[7][34] = settr(187,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(187,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(187,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 7][31] = settr(184,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(184,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[7][29]	= settr(182,0,34,46,46,"(!(!(p_amarillo)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached7[30] = 1;
	trans[7][30]	= settr(0,0,0,0,0,"assert(!(!(!(p_amarillo))))",0,0,0);
	trans[7][32]	= settr(185,0,34,1,0,"(1)", 0, 2, 0);
	trans[7][33]	= settr(186,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[7][36]	= settr(189,0,37,1,0,"break", 0, 2, 0);
	trans[7][37]	= settr(190,0,38,1,0,"(1)", 0, 2, 0);
	trans[7][38]	= settr(191,0,0,47,47,"-end-", 0, 3500, 0);

	/* proctype 6: principalVtoA */

	trans[6] = (Trans **) emalloc(39*sizeof(Trans *));

	trans[6][11]	= settr(126,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(125,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,6,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(125,0,8,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(116,0,18,48,0,"((!(!(p_verde))&&!(p_amarillo)))", 1, 2, 0);
	trans[6][2]	= settr(117,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 6][5] = settr(120,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(120,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[6][3]	= settr(118,0,10,49,49,"((!(!(p_verde))&&!(p_amarillo)))", 1, 2, 0); /* m: 4 -> 10,0 */
	reached6[4] = 1;
	trans[6][4]	= settr(0,0,0,0,0,"assert(!((!(!(p_verde))&&!(p_amarillo))))",0,0,0);
	trans[6][6]	= settr(121,0,10,50,0,"(!(p_amarillo))", 1, 2, 0);
	trans[6][7]	= settr(122,0,10,1,0,"goto T0_init", 0, 2, 0);
	trans[6][8]	= settr(123,0,26,51,0,"((!(!(p_verde))&&!(p_amarillo)))", 1, 2, 0);
	trans[6][9]	= settr(124,0,26,1,0,"goto accept_S13", 0, 2, 0);
	trans[6][12]	= settr(127,0,18,1,0,"break", 0, 2, 0);
	trans[6][19]	= settr(134,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[6][18] = settr(133,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(133,0,13,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(133,0,17,0,0,"DO", 0, 2, 0);
	trans[6][13]	= settr(128,0,18,52,0,"(!(p_amarillo))", 1, 2, 0);
	trans[6][14]	= settr(129,0,18,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 6][17] = settr(132,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(132,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[6][15]	= settr(130,0,18,53,53,"((!(!(p_verde))&&!(p_amarillo)))", 1, 2, 0); /* m: 16 -> 18,0 */
	reached6[16] = 1;
	trans[6][16]	= settr(0,0,0,0,0,"assert(!((!(!(p_verde))&&!(p_amarillo))))",0,0,0);
	trans[6][20]	= settr(135,0,26,1,0,"break", 0, 2, 0);
	trans[6][27]	= settr(142,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[6][26] = settr(141,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(141,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(141,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 6][23] = settr(138,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(138,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[6][21]	= settr(136,0,26,54,54,"(!(!(p_verde)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached6[22] = 1;
	trans[6][22]	= settr(0,0,0,0,0,"assert(!(!(!(p_verde))))",0,0,0);
	trans[6][24]	= settr(139,0,34,1,0,"(1)", 0, 2, 0);
	trans[6][25]	= settr(140,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[6][28]	= settr(143,0,34,1,0,"break", 0, 2, 0);
	trans[6][35]	= settr(150,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[6][34] = settr(149,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(149,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(149,0,32,0,0,"DO", 0, 2, 0);
	T = trans[ 6][31] = settr(146,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(146,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[6][29]	= settr(144,0,34,55,55,"(!(!(p_verde)))", 1, 2, 0); /* m: 30 -> 34,0 */
	reached6[30] = 1;
	trans[6][30]	= settr(0,0,0,0,0,"assert(!(!(!(p_verde))))",0,0,0);
	trans[6][32]	= settr(147,0,34,1,0,"(1)", 0, 2, 0);
	trans[6][33]	= settr(148,0,34,1,0,"goto T0_S13", 0, 2, 0);
	trans[6][36]	= settr(151,0,37,1,0,"break", 0, 2, 0);
	trans[6][37]	= settr(152,0,38,1,0,"(1)", 0, 2, 0);
	trans[6][38]	= settr(153,0,0,56,56,"-end-", 0, 3500, 0);

	/* proctype 5: espira */

	trans[5] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[5][4]	= settr(113,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[5][3] = settr(112,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(112,0,1,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(110,0,3,57,0,"((!(s_verde)&&espira))", 1, 2, 0);
	trans[5][2]	= settr(111,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[5][5]	= settr(114,0,6,1,0,"break", 0, 2, 0);
	trans[5][6]	= settr(115,0,0,58,58,"-end-", 0, 3500, 0);

	/* proctype 4: peatonS_cruza */

	trans[4] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[4][4]	= settr(107,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[4][3] = settr(106,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(106,0,1,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(104,0,3,59,0,"((!(s_peaton)&&botonS))", 1, 2, 0);
	trans[4][2]	= settr(105,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[4][5]	= settr(108,0,6,1,0,"break", 0, 2, 0);
	trans[4][6]	= settr(109,0,0,60,60,"-end-", 0, 3500, 0);

	/* proctype 3: peatonP_cruza */

	trans[3] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[3][4]	= settr(101,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[3][3] = settr(100,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(100,0,1,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(98,0,3,61,0,"((!(p_peaton)&&botonP))", 1, 2, 0);
	trans[3][2]	= settr(99,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[3][5]	= settr(102,0,6,1,0,"break", 0, 2, 0);
	trans[3][6]	= settr(103,0,0,62,62,"-end-", 0, 3500, 0);

	/* proctype 2: dosverdesomg */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(94,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(93,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(93,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(93,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(90,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(90,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(88,0,6,63,63,"(!(!((p_verde&&s_verde))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!(!(!((p_verde&&s_verde)))))",0,0,0);
	trans[2][4]	= settr(91,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(92,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(95,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(96,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(97,0,0,64,64,"-end-", 0, 3500, 0);

	/* proctype 1: entorno */

	trans[1] = (Trans **) emalloc(13*sizeof(Trans *));

	trans[1][10]	= settr(85,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[1][9] = settr(84,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(84,0,7,0,0,"DO", 0, 2, 0);
	T = trans[1][7] = settr(82,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(82,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(82,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(82,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(82,0,5,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(82,0,6,0,0,"IF", 0, 2, 0);
	trans[1][1]	= settr(76,0,2,1,0,"(1)", 0, 2, 0);
	trans[1][2]	= settr(77,0,9,1,0,"(1)", 0, 2, 0);
	trans[1][8]	= settr(83,0,9,1,0,".(goto)", 0, 2, 0);
	trans[1][3]	= settr(78,0,9,65,65,"espira = 1", 1, 2, 0);
	trans[1][4]	= settr(79,0,9,66,66,"botonP = 1", 1, 2, 0);
	trans[1][5]	= settr(80,0,9,67,67,"botonS = 1", 1, 2, 0);
	trans[1][6]	= settr(81,0,9,68,68,"deadline = 1", 1, 2, 0);
	trans[1][11]	= settr(86,0,12,1,0,"break", 0, 2, 0);
	trans[1][12]	= settr(87,0,0,69,69,"-end-", 0, 3500, 0);

	/* proctype 0: fsm */

	trans[0] = (Trans **) emalloc(77*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,70,70,"estado = P_Verde", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,71,71,"p_verde = 1", 1, 2, 0);
	trans[0][3]	= settr(2,0,4,72,72,"s_rojo = 1", 1, 2, 0);
	trans[0][4]	= settr(3,0,73,73,73,"s_peaton = 1", 1, 2, 0);
	trans[0][74]	= settr(73,0,73,1,0,".(goto)", 0, 2, 0);
	T = trans[0][73] = settr(72,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(72,0,70,0,0,"DO", 0, 2, 0);
	T = trans[0][70] = settr(69,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,23,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,35,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(69,0,58,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,12,74,0,"((estado==P_Verde))", 1, 2, 0);
	T = trans[ 0][12] = settr(11,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(11,2,10,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][10] = settr(9,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(9,2,6,0,0,"IF", 1, 2, 0);
	trans[0][6]	= settr(5,0,72,75,75,"((espira||botonP))", 1, 2, 0); /* m: 7 -> 72,0 */
	reached0[7] = 1;
	trans[0][7]	= settr(0,0,0,0,0,"espira = 0",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"botonP = 0",0,0,0);
	trans[0][9]	= settr(0,0,0,0,0,"estado = P_VerToAm",0,0,0);
	trans[0][11]	= settr(10,0,72,1,0,".(goto)", 1, 2, 0);
	trans[0][71]	= settr(70,0,72,1,0,".(goto)", 0, 2, 0);
	trans[0][13]	= settr(12,0,22,76,0,"((estado==P_VerToAm))", 1, 2, 0);
	T = trans[ 0][22] = settr(21,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(21,2,20,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][20] = settr(19,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(19,2,14,0,0,"IF", 1, 2, 0);
	trans[0][14]	= settr(13,0,72,77,77,"(deadline)", 1, 2, 0); /* m: 15 -> 72,0 */
	reached0[15] = 1;
	trans[0][15]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][16]	= settr(0,0,0,0,0,"p_verde = 0",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"p_amarillo = 1",0,0,0);
	trans[0][18]	= settr(0,0,0,0,0,"s_peaton = 0",0,0,0);
	trans[0][19]	= settr(0,0,0,0,0,"estado = P_Amarillo",0,0,0);
	trans[0][21]	= settr(20,0,72,1,0,".(goto)", 1, 2, 0);
	trans[0][23]	= settr(22,0,34,78,0,"((estado==P_Amarillo))", 1, 2, 0);
	T = trans[ 0][34] = settr(33,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(33,2,32,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][32] = settr(31,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(31,2,24,0,0,"IF", 1, 2, 0);
	trans[0][24]	= settr(23,0,72,79,79,"(deadline)", 1, 2, 0); /* m: 25 -> 72,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][26]	= settr(0,0,0,0,0,"s_rojo = 0",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"s_verde = 1",0,0,0);
	trans[0][28]	= settr(0,0,0,0,0,"p_peaton = 1",0,0,0);
	trans[0][29]	= settr(0,0,0,0,0,"p_rojo = 1",0,0,0);
	trans[0][30]	= settr(0,0,0,0,0,"p_amarillo = 0",0,0,0);
	trans[0][31]	= settr(0,0,0,0,0,"estado = S_Verde",0,0,0);
	trans[0][33]	= settr(32,0,72,1,0,".(goto)", 1, 2, 0);
	trans[0][35]	= settr(34,0,46,80,0,"((estado==S_Verde))", 1, 2, 0);
	T = trans[ 0][46] = settr(45,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(45,2,44,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][44] = settr(43,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(43,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(43,2,39,0,0,"IF", 1, 2, 0);
	trans[0][36]	= settr(35,0,72,81,81,"(botonS)", 1, 2, 0); /* m: 37 -> 72,0 */
	reached0[37] = 1;
	trans[0][37]	= settr(0,0,0,0,0,"botonS = 0",0,0,0);
	trans[0][38]	= settr(0,0,0,0,0,"estado = S_VerToAm",0,0,0);
	trans[0][45]	= settr(44,0,72,82,82,".(goto)", 1, 2, 0);
	trans[0][39]	= settr(38,0,72,83,83,"(deadline)", 1, 2, 0); /* m: 40 -> 72,0 */
	reached0[40] = 1;
	trans[0][40]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][41]	= settr(0,0,0,0,0,"estado = S_Amarillo",0,0,0);
	trans[0][42]	= settr(0,0,0,0,0,"s_verde = 0",0,0,0);
	trans[0][43]	= settr(0,0,0,0,0,"s_amarillo = 1",0,0,0);
	trans[0][47]	= settr(46,0,57,84,0,"((estado==S_VerToAm))", 1, 2, 0);
	T = trans[ 0][57] = settr(56,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(56,2,55,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][55] = settr(54,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(54,2,48,0,0,"IF", 1, 2, 0);
	trans[0][48]	= settr(47,0,72,85,85,"(deadline)", 1, 2, 0); /* m: 49 -> 72,0 */
	reached0[49] = 1;
	trans[0][49]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][50]	= settr(0,0,0,0,0,"estado = S_Amarillo",0,0,0);
	trans[0][51]	= settr(0,0,0,0,0,"p_peaton = 0",0,0,0);
	trans[0][52]	= settr(0,0,0,0,0,"s_verde = 0",0,0,0);
	trans[0][53]	= settr(0,0,0,0,0,"p_verde = 0",0,0,0);
	trans[0][54]	= settr(0,0,0,0,0,"s_amarillo = 1",0,0,0);
	trans[0][56]	= settr(55,0,72,1,0,".(goto)", 1, 2, 0);
	trans[0][58]	= settr(57,0,69,86,0,"((estado==S_Amarillo))", 1, 2, 0);
	T = trans[ 0][69] = settr(68,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(68,2,67,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][67] = settr(66,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(66,2,59,0,0,"IF", 1, 2, 0);
	trans[0][59]	= settr(58,0,72,87,87,"(deadline)", 1, 2, 0); /* m: 60 -> 72,0 */
	reached0[60] = 1;
	trans[0][60]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][61]	= settr(0,0,0,0,0,"estado = P_Verde",0,0,0);
	trans[0][62]	= settr(0,0,0,0,0,"s_rojo = 1",0,0,0);
	trans[0][63]	= settr(0,0,0,0,0,"s_peaton = 1",0,0,0);
	trans[0][64]	= settr(0,0,0,0,0,"s_amarillo = 0",0,0,0);
	trans[0][65]	= settr(0,0,0,0,0,"p_rojo = 0",0,0,0);
	trans[0][66]	= settr(0,0,0,0,0,"p_verde = 1",0,0,0);
	trans[0][68]	= settr(67,0,72,1,0,".(goto)", 1, 2, 0);
	trans[0][72]	= settr(71,0,73,88,0,"printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_verde,p_amarillo,p_rojo,p_peaton,s_verde,s_amarillo,s_rojo,s_peaton)", 1, 2, 0);
	trans[0][75]	= settr(74,0,76,1,0,"break", 0, 2, 0);
	trans[0][76]	= settr(75,0,0,89,89,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
