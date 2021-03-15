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

	trans = (Trans ***) emalloc(18*sizeof(Trans **));

	/* proctype 16: secundarioRojo */

	trans[16] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[16][13]	= settr(433,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[16][12] = settr(432,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(432,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(432,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(432,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(432,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(432,0,10,0,0,"DO", 0, 2, 0);
	trans[16][1]	= settr(421,0,20,3,0,"(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))", 1, 2, 0);
	trans[16][2]	= settr(422,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 16][5] = settr(425,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(425,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[16][3]	= settr(423,0,12,4,4,"(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached16[4] = 1;
	trans[16][4]	= settr(0,0,0,0,0,"assert(!(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde))))))",0,0,0);
	trans[16][6]	= settr(426,0,40,5,0,"((!(!((s_amarillo&!(s_verde))))&&!((s_rojo&!(s_verde)))))", 1, 2, 0);
	trans[16][7]	= settr(427,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[16][8]	= settr(428,0,28,6,0,"(((!(!((s_amarillo&!(s_verde))))&&!(!(s_verde)))&&!((s_rojo&!(s_verde)))))", 1, 2, 0);
	trans[16][9]	= settr(429,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[16][10]	= settr(430,0,12,1,0,"(1)", 0, 2, 0);
	trans[16][11]	= settr(431,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[16][14]	= settr(434,0,20,1,0,"break", 0, 2, 0);
	trans[16][21]	= settr(441,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[16][20] = settr(440,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(440,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(440,0,19,0,0,"DO", 0, 2, 0);
	trans[16][15]	= settr(435,0,20,7,0,"(!((s_rojo&!(s_verde))))", 1, 2, 0);
	trans[16][16]	= settr(436,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 16][19] = settr(439,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(439,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[16][17]	= settr(437,0,20,8,8,"((!(!(s_verde))&&!((s_rojo&!(s_verde)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached16[18] = 1;
	trans[16][18]	= settr(0,0,0,0,0,"assert(!((!(!(s_verde))&&!((s_rojo&!(s_verde))))))",0,0,0);
	trans[16][22]	= settr(442,0,28,1,0,"break", 0, 2, 0);
	trans[16][29]	= settr(449,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[16][28] = settr(448,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(448,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(448,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 16][25] = settr(445,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(445,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[16][23]	= settr(443,0,28,9,9,"(!(!(s_verde)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached16[24] = 1;
	trans[16][24]	= settr(0,0,0,0,0,"assert(!(!(!(s_verde))))",0,0,0);
	trans[16][26]	= settr(446,0,48,1,0,"(1)", 0, 2, 0);
	trans[16][27]	= settr(447,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[16][30]	= settr(450,0,40,1,0,"break", 0, 2, 0);
	trans[16][41]	= settr(461,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[16][40] = settr(460,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(460,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(460,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(460,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(460,0,38,0,0,"DO", 0, 2, 0);
	trans[16][31]	= settr(451,0,20,10,0,"((!(!(s_verde))&&!((s_rojo&!(s_verde)))))", 1, 2, 0);
	trans[16][32]	= settr(452,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 16][35] = settr(455,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(455,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[16][33]	= settr(453,0,40,11,11,"((!(!(s_verde))&&!((s_rojo&!(s_verde)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached16[34] = 1;
	trans[16][34]	= settr(0,0,0,0,0,"assert(!((!(!(s_verde))&&!((s_rojo&!(s_verde))))))",0,0,0);
	trans[16][36]	= settr(456,0,40,12,0,"(!((s_rojo&!(s_verde))))", 1, 2, 0);
	trans[16][37]	= settr(457,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[16][38]	= settr(458,0,28,13,0,"((!(!(s_verde))&&!((s_rojo&!(s_verde)))))", 1, 2, 0);
	trans[16][39]	= settr(459,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[16][42]	= settr(462,0,48,1,0,"break", 0, 2, 0);
	trans[16][49]	= settr(469,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[16][48] = settr(468,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(468,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(468,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 16][45] = settr(465,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(465,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[16][43]	= settr(463,0,48,14,14,"(!(!(s_verde)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached16[44] = 1;
	trans[16][44]	= settr(0,0,0,0,0,"assert(!(!(!(s_verde))))",0,0,0);
	trans[16][46]	= settr(466,0,48,1,0,"(1)", 0, 2, 0);
	trans[16][47]	= settr(467,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[16][50]	= settr(470,0,51,1,0,"break", 0, 2, 0);
	trans[16][51]	= settr(471,0,52,1,0,"(1)", 0, 2, 0);
	trans[16][52]	= settr(472,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 15: principalRojo */

	trans[15] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[15][13]	= settr(381,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[15][12] = settr(380,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(380,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(380,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(380,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(380,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(380,0,10,0,0,"DO", 0, 2, 0);
	trans[15][1]	= settr(369,0,20,16,0,"(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))", 1, 2, 0);
	trans[15][2]	= settr(370,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 15][5] = settr(373,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(373,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[15][3]	= settr(371,0,12,17,17,"(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached15[4] = 1;
	trans[15][4]	= settr(0,0,0,0,0,"assert(!(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde))))))",0,0,0);
	trans[15][6]	= settr(374,0,40,18,0,"((!(!((p_amarillo&!(p_verde))))&&!((p_rojo&!(p_verde)))))", 1, 2, 0);
	trans[15][7]	= settr(375,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[15][8]	= settr(376,0,28,19,0,"(((!(!((p_amarillo&!(p_verde))))&&!(!(p_verde)))&&!((p_rojo&!(p_verde)))))", 1, 2, 0);
	trans[15][9]	= settr(377,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[15][10]	= settr(378,0,12,1,0,"(1)", 0, 2, 0);
	trans[15][11]	= settr(379,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[15][14]	= settr(382,0,20,1,0,"break", 0, 2, 0);
	trans[15][21]	= settr(389,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[15][20] = settr(388,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(388,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(388,0,19,0,0,"DO", 0, 2, 0);
	trans[15][15]	= settr(383,0,20,20,0,"(!((p_rojo&!(p_verde))))", 1, 2, 0);
	trans[15][16]	= settr(384,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 15][19] = settr(387,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(387,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[15][17]	= settr(385,0,20,21,21,"((!(!(p_verde))&&!((p_rojo&!(p_verde)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached15[18] = 1;
	trans[15][18]	= settr(0,0,0,0,0,"assert(!((!(!(p_verde))&&!((p_rojo&!(p_verde))))))",0,0,0);
	trans[15][22]	= settr(390,0,28,1,0,"break", 0, 2, 0);
	trans[15][29]	= settr(397,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[15][28] = settr(396,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(396,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(396,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 15][25] = settr(393,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(393,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[15][23]	= settr(391,0,28,22,22,"(!(!(p_verde)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached15[24] = 1;
	trans[15][24]	= settr(0,0,0,0,0,"assert(!(!(!(p_verde))))",0,0,0);
	trans[15][26]	= settr(394,0,48,1,0,"(1)", 0, 2, 0);
	trans[15][27]	= settr(395,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[15][30]	= settr(398,0,40,1,0,"break", 0, 2, 0);
	trans[15][41]	= settr(409,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[15][40] = settr(408,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(408,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(408,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(408,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(408,0,38,0,0,"DO", 0, 2, 0);
	trans[15][31]	= settr(399,0,20,23,0,"((!(!(p_verde))&&!((p_rojo&!(p_verde)))))", 1, 2, 0);
	trans[15][32]	= settr(400,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 15][35] = settr(403,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(403,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[15][33]	= settr(401,0,40,24,24,"((!(!(p_verde))&&!((p_rojo&!(p_verde)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached15[34] = 1;
	trans[15][34]	= settr(0,0,0,0,0,"assert(!((!(!(p_verde))&&!((p_rojo&!(p_verde))))))",0,0,0);
	trans[15][36]	= settr(404,0,40,25,0,"(!((p_rojo&!(p_verde))))", 1, 2, 0);
	trans[15][37]	= settr(405,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[15][38]	= settr(406,0,28,26,0,"((!(!(p_verde))&&!((p_rojo&!(p_verde)))))", 1, 2, 0);
	trans[15][39]	= settr(407,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[15][42]	= settr(410,0,48,1,0,"break", 0, 2, 0);
	trans[15][49]	= settr(417,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[15][48] = settr(416,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(416,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(416,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 15][45] = settr(413,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(413,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[15][43]	= settr(411,0,48,27,27,"(!(!(p_verde)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached15[44] = 1;
	trans[15][44]	= settr(0,0,0,0,0,"assert(!(!(!(p_verde))))",0,0,0);
	trans[15][46]	= settr(414,0,48,1,0,"(1)", 0, 2, 0);
	trans[15][47]	= settr(415,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[15][50]	= settr(418,0,51,1,0,"break", 0, 2, 0);
	trans[15][51]	= settr(419,0,52,1,0,"(1)", 0, 2, 0);
	trans[15][52]	= settr(420,0,0,28,28,"-end-", 0, 3500, 0);

	/* proctype 14: secundarioVerde */

	trans[14] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[14][13]	= settr(329,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[14][12] = settr(328,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(328,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(328,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(328,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(328,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(328,0,10,0,0,"DO", 0, 2, 0);
	trans[14][1]	= settr(317,0,20,29,0,"(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0);
	trans[14][2]	= settr(318,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 14][5] = settr(321,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(321,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[14][3]	= settr(319,0,12,30,30,"(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached14[4] = 1;
	trans[14][4]	= settr(0,0,0,0,0,"assert(!(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo))))))",0,0,0);
	trans[14][6]	= settr(322,0,40,31,0,"((!(!((s_rojo&!(s_amarillo))))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0);
	trans[14][7]	= settr(323,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[14][8]	= settr(324,0,28,32,0,"(((!(!((s_rojo&!(s_amarillo))))&&!(!(s_amarillo)))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0);
	trans[14][9]	= settr(325,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[14][10]	= settr(326,0,12,1,0,"(1)", 0, 2, 0);
	trans[14][11]	= settr(327,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[14][14]	= settr(330,0,20,1,0,"break", 0, 2, 0);
	trans[14][21]	= settr(337,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[14][20] = settr(336,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(336,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(336,0,19,0,0,"DO", 0, 2, 0);
	trans[14][15]	= settr(331,0,20,33,0,"(!((s_verde&!(s_amarillo))))", 1, 2, 0);
	trans[14][16]	= settr(332,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 14][19] = settr(335,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(335,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[14][17]	= settr(333,0,20,34,34,"((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached14[18] = 1;
	trans[14][18]	= settr(0,0,0,0,0,"assert(!((!(!(s_amarillo))&&!((s_verde&!(s_amarillo))))))",0,0,0);
	trans[14][22]	= settr(338,0,28,1,0,"break", 0, 2, 0);
	trans[14][29]	= settr(345,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[14][28] = settr(344,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(344,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(344,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 14][25] = settr(341,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(341,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[14][23]	= settr(339,0,28,35,35,"(!(!(s_amarillo)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached14[24] = 1;
	trans[14][24]	= settr(0,0,0,0,0,"assert(!(!(!(s_amarillo))))",0,0,0);
	trans[14][26]	= settr(342,0,48,1,0,"(1)", 0, 2, 0);
	trans[14][27]	= settr(343,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[14][30]	= settr(346,0,40,1,0,"break", 0, 2, 0);
	trans[14][41]	= settr(357,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[14][40] = settr(356,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(356,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(356,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(356,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(356,0,38,0,0,"DO", 0, 2, 0);
	trans[14][31]	= settr(347,0,20,36,0,"((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0);
	trans[14][32]	= settr(348,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 14][35] = settr(351,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(351,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[14][33]	= settr(349,0,40,37,37,"((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached14[34] = 1;
	trans[14][34]	= settr(0,0,0,0,0,"assert(!((!(!(s_amarillo))&&!((s_verde&!(s_amarillo))))))",0,0,0);
	trans[14][36]	= settr(352,0,40,38,0,"(!((s_verde&!(s_amarillo))))", 1, 2, 0);
	trans[14][37]	= settr(353,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[14][38]	= settr(354,0,28,39,0,"((!(!(s_amarillo))&&!((s_verde&!(s_amarillo)))))", 1, 2, 0);
	trans[14][39]	= settr(355,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[14][42]	= settr(358,0,48,1,0,"break", 0, 2, 0);
	trans[14][49]	= settr(365,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[14][48] = settr(364,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(364,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(364,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 14][45] = settr(361,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(361,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[14][43]	= settr(359,0,48,40,40,"(!(!(s_amarillo)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached14[44] = 1;
	trans[14][44]	= settr(0,0,0,0,0,"assert(!(!(!(s_amarillo))))",0,0,0);
	trans[14][46]	= settr(362,0,48,1,0,"(1)", 0, 2, 0);
	trans[14][47]	= settr(363,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[14][50]	= settr(366,0,51,1,0,"break", 0, 2, 0);
	trans[14][51]	= settr(367,0,52,1,0,"(1)", 0, 2, 0);
	trans[14][52]	= settr(368,0,0,41,41,"-end-", 0, 3500, 0);

	/* proctype 13: principalVerde */

	trans[13] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[13][13]	= settr(277,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[13][12] = settr(276,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(276,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(276,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(276,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(276,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(276,0,10,0,0,"DO", 0, 2, 0);
	trans[13][1]	= settr(265,0,20,42,0,"(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0);
	trans[13][2]	= settr(266,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 13][5] = settr(269,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(269,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[13][3]	= settr(267,0,12,43,43,"(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached13[4] = 1;
	trans[13][4]	= settr(0,0,0,0,0,"assert(!(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo))))))",0,0,0);
	trans[13][6]	= settr(270,0,40,44,0,"((!(!((p_rojo&!(p_amarillo))))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0);
	trans[13][7]	= settr(271,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[13][8]	= settr(272,0,28,45,0,"(((!(!((p_rojo&!(p_amarillo))))&&!(!(p_amarillo)))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0);
	trans[13][9]	= settr(273,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[13][10]	= settr(274,0,12,1,0,"(1)", 0, 2, 0);
	trans[13][11]	= settr(275,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[13][14]	= settr(278,0,20,1,0,"break", 0, 2, 0);
	trans[13][21]	= settr(285,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[13][20] = settr(284,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(284,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(284,0,19,0,0,"DO", 0, 2, 0);
	trans[13][15]	= settr(279,0,20,46,0,"(!((p_verde&!(p_amarillo))))", 1, 2, 0);
	trans[13][16]	= settr(280,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 13][19] = settr(283,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(283,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[13][17]	= settr(281,0,20,47,47,"((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached13[18] = 1;
	trans[13][18]	= settr(0,0,0,0,0,"assert(!((!(!(p_amarillo))&&!((p_verde&!(p_amarillo))))))",0,0,0);
	trans[13][22]	= settr(286,0,28,1,0,"break", 0, 2, 0);
	trans[13][29]	= settr(293,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[13][28] = settr(292,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(292,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(292,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 13][25] = settr(289,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(289,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[13][23]	= settr(287,0,28,48,48,"(!(!(p_amarillo)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached13[24] = 1;
	trans[13][24]	= settr(0,0,0,0,0,"assert(!(!(!(p_amarillo))))",0,0,0);
	trans[13][26]	= settr(290,0,48,1,0,"(1)", 0, 2, 0);
	trans[13][27]	= settr(291,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[13][30]	= settr(294,0,40,1,0,"break", 0, 2, 0);
	trans[13][41]	= settr(305,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[13][40] = settr(304,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(304,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(304,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(304,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(304,0,38,0,0,"DO", 0, 2, 0);
	trans[13][31]	= settr(295,0,20,49,0,"((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0);
	trans[13][32]	= settr(296,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 13][35] = settr(299,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(299,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[13][33]	= settr(297,0,40,50,50,"((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached13[34] = 1;
	trans[13][34]	= settr(0,0,0,0,0,"assert(!((!(!(p_amarillo))&&!((p_verde&!(p_amarillo))))))",0,0,0);
	trans[13][36]	= settr(300,0,40,51,0,"(!((p_verde&!(p_amarillo))))", 1, 2, 0);
	trans[13][37]	= settr(301,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[13][38]	= settr(302,0,28,52,0,"((!(!(p_amarillo))&&!((p_verde&!(p_amarillo)))))", 1, 2, 0);
	trans[13][39]	= settr(303,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[13][42]	= settr(306,0,48,1,0,"break", 0, 2, 0);
	trans[13][49]	= settr(313,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[13][48] = settr(312,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(312,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(312,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 13][45] = settr(309,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(309,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[13][43]	= settr(307,0,48,53,53,"(!(!(p_amarillo)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached13[44] = 1;
	trans[13][44]	= settr(0,0,0,0,0,"assert(!(!(!(p_amarillo))))",0,0,0);
	trans[13][46]	= settr(310,0,48,1,0,"(1)", 0, 2, 0);
	trans[13][47]	= settr(311,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[13][50]	= settr(314,0,51,1,0,"break", 0, 2, 0);
	trans[13][51]	= settr(315,0,52,1,0,"(1)", 0, 2, 0);
	trans[13][52]	= settr(316,0,0,54,54,"-end-", 0, 3500, 0);

	/* proctype 12: secundarioAmarillo */

	trans[12] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[12][13]	= settr(225,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[12][12] = settr(224,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(224,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(224,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(224,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(224,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(224,0,10,0,0,"DO", 0, 2, 0);
	trans[12][1]	= settr(213,0,20,55,0,"(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0);
	trans[12][2]	= settr(214,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 12][5] = settr(217,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(217,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[12][3]	= settr(215,0,12,56,56,"(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached12[4] = 1;
	trans[12][4]	= settr(0,0,0,0,0,"assert(!(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo))))))",0,0,0);
	trans[12][6]	= settr(218,0,40,57,0,"((!(!((s_verde&!(s_rojo))))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0);
	trans[12][7]	= settr(219,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[12][8]	= settr(220,0,28,58,0,"(((!(!((s_verde&!(s_rojo))))&&!(!(s_rojo)))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0);
	trans[12][9]	= settr(221,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[12][10]	= settr(222,0,12,1,0,"(1)", 0, 2, 0);
	trans[12][11]	= settr(223,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[12][14]	= settr(226,0,20,1,0,"break", 0, 2, 0);
	trans[12][21]	= settr(233,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[12][20] = settr(232,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(232,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(232,0,19,0,0,"DO", 0, 2, 0);
	trans[12][15]	= settr(227,0,20,59,0,"(!((s_amarillo&!(s_rojo))))", 1, 2, 0);
	trans[12][16]	= settr(228,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 12][19] = settr(231,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(231,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[12][17]	= settr(229,0,20,60,60,"((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached12[18] = 1;
	trans[12][18]	= settr(0,0,0,0,0,"assert(!((!(!(s_rojo))&&!((s_amarillo&!(s_rojo))))))",0,0,0);
	trans[12][22]	= settr(234,0,28,1,0,"break", 0, 2, 0);
	trans[12][29]	= settr(241,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[12][28] = settr(240,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(240,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(240,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 12][25] = settr(237,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(237,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[12][23]	= settr(235,0,28,61,61,"(!(!(s_rojo)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached12[24] = 1;
	trans[12][24]	= settr(0,0,0,0,0,"assert(!(!(!(s_rojo))))",0,0,0);
	trans[12][26]	= settr(238,0,48,1,0,"(1)", 0, 2, 0);
	trans[12][27]	= settr(239,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[12][30]	= settr(242,0,40,1,0,"break", 0, 2, 0);
	trans[12][41]	= settr(253,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[12][40] = settr(252,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(252,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(252,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(252,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(252,0,38,0,0,"DO", 0, 2, 0);
	trans[12][31]	= settr(243,0,20,62,0,"((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0);
	trans[12][32]	= settr(244,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 12][35] = settr(247,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(247,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[12][33]	= settr(245,0,40,63,63,"((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached12[34] = 1;
	trans[12][34]	= settr(0,0,0,0,0,"assert(!((!(!(s_rojo))&&!((s_amarillo&!(s_rojo))))))",0,0,0);
	trans[12][36]	= settr(248,0,40,64,0,"(!((s_amarillo&!(s_rojo))))", 1, 2, 0);
	trans[12][37]	= settr(249,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[12][38]	= settr(250,0,28,65,0,"((!(!(s_rojo))&&!((s_amarillo&!(s_rojo)))))", 1, 2, 0);
	trans[12][39]	= settr(251,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[12][42]	= settr(254,0,48,1,0,"break", 0, 2, 0);
	trans[12][49]	= settr(261,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[12][48] = settr(260,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(260,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(260,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 12][45] = settr(257,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(257,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[12][43]	= settr(255,0,48,66,66,"(!(!(s_rojo)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached12[44] = 1;
	trans[12][44]	= settr(0,0,0,0,0,"assert(!(!(!(s_rojo))))",0,0,0);
	trans[12][46]	= settr(258,0,48,1,0,"(1)", 0, 2, 0);
	trans[12][47]	= settr(259,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[12][50]	= settr(262,0,51,1,0,"break", 0, 2, 0);
	trans[12][51]	= settr(263,0,52,1,0,"(1)", 0, 2, 0);
	trans[12][52]	= settr(264,0,0,67,67,"-end-", 0, 3500, 0);

	/* proctype 11: principalAmarillo */

	trans[11] = (Trans **) emalloc(53*sizeof(Trans *));

	trans[11][13]	= settr(173,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[11][12] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,10,0,0,"DO", 0, 2, 0);
	trans[11][1]	= settr(161,0,20,68,0,"(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0);
	trans[11][2]	= settr(162,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 11][5] = settr(165,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(165,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[11][3]	= settr(163,0,12,69,69,"(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0); /* m: 4 -> 12,0 */
	reached11[4] = 1;
	trans[11][4]	= settr(0,0,0,0,0,"assert(!(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo))))))",0,0,0);
	trans[11][6]	= settr(166,0,40,70,0,"((!(!((p_verde&!(p_rojo))))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0);
	trans[11][7]	= settr(167,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[11][8]	= settr(168,0,28,71,0,"(((!(!((p_verde&!(p_rojo))))&&!(!(p_rojo)))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0);
	trans[11][9]	= settr(169,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[11][10]	= settr(170,0,12,1,0,"(1)", 0, 2, 0);
	trans[11][11]	= settr(171,0,12,1,0,"goto T0_init", 0, 2, 0);
	trans[11][14]	= settr(174,0,20,1,0,"break", 0, 2, 0);
	trans[11][21]	= settr(181,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[11][20] = settr(180,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(180,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(180,0,19,0,0,"DO", 0, 2, 0);
	trans[11][15]	= settr(175,0,20,72,0,"(!((p_amarillo&!(p_rojo))))", 1, 2, 0);
	trans[11][16]	= settr(176,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 11][19] = settr(179,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(179,2,17,0,0,"ATOMIC", 1, 2, 0);
	trans[11][17]	= settr(177,0,20,73,73,"((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0); /* m: 18 -> 20,0 */
	reached11[18] = 1;
	trans[11][18]	= settr(0,0,0,0,0,"assert(!((!(!(p_rojo))&&!((p_amarillo&!(p_rojo))))))",0,0,0);
	trans[11][22]	= settr(182,0,28,1,0,"break", 0, 2, 0);
	trans[11][29]	= settr(189,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[11][28] = settr(188,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(188,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(188,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 11][25] = settr(185,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(185,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[11][23]	= settr(183,0,28,74,74,"(!(!(p_rojo)))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached11[24] = 1;
	trans[11][24]	= settr(0,0,0,0,0,"assert(!(!(!(p_rojo))))",0,0,0);
	trans[11][26]	= settr(186,0,48,1,0,"(1)", 0, 2, 0);
	trans[11][27]	= settr(187,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[11][30]	= settr(190,0,40,1,0,"break", 0, 2, 0);
	trans[11][41]	= settr(201,0,40,1,0,".(goto)", 0, 2, 0);
	T = trans[11][40] = settr(200,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(200,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(200,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(200,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(200,0,38,0,0,"DO", 0, 2, 0);
	trans[11][31]	= settr(191,0,20,75,0,"((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0);
	trans[11][32]	= settr(192,0,20,1,0,"goto accept_S11", 0, 2, 0);
	T = trans[ 11][35] = settr(195,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(195,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[11][33]	= settr(193,0,40,76,76,"((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0); /* m: 34 -> 40,0 */
	reached11[34] = 1;
	trans[11][34]	= settr(0,0,0,0,0,"assert(!((!(!(p_rojo))&&!((p_amarillo&!(p_rojo))))))",0,0,0);
	trans[11][36]	= settr(196,0,40,77,0,"(!((p_amarillo&!(p_rojo))))", 1, 2, 0);
	trans[11][37]	= settr(197,0,40,1,0,"goto T0_S14", 0, 2, 0);
	trans[11][38]	= settr(198,0,28,78,0,"((!(!(p_rojo))&&!((p_amarillo&!(p_rojo)))))", 1, 2, 0);
	trans[11][39]	= settr(199,0,28,1,0,"goto accept_S2", 0, 2, 0);
	trans[11][42]	= settr(202,0,48,1,0,"break", 0, 2, 0);
	trans[11][49]	= settr(209,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[11][48] = settr(208,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(208,0,45,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(208,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 11][45] = settr(205,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(205,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[11][43]	= settr(203,0,48,79,79,"(!(!(p_rojo)))", 1, 2, 0); /* m: 44 -> 48,0 */
	reached11[44] = 1;
	trans[11][44]	= settr(0,0,0,0,0,"assert(!(!(!(p_rojo))))",0,0,0);
	trans[11][46]	= settr(206,0,48,1,0,"(1)", 0, 2, 0);
	trans[11][47]	= settr(207,0,48,1,0,"goto T0_S2", 0, 2, 0);
	trans[11][50]	= settr(210,0,51,1,0,"break", 0, 2, 0);
	trans[11][51]	= settr(211,0,52,1,0,"(1)", 0, 2, 0);
	trans[11][52]	= settr(212,0,0,80,80,"-end-", 0, 3500, 0);

	/* proctype 10: peatonSNoMuere */

	trans[10] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[10][7]	= settr(157,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[10][6] = settr(156,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(156,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(156,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 10][3] = settr(153,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(153,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[10][1]	= settr(151,0,6,81,81,"(!(!((s_verde&&s_peaton))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached10[2] = 1;
	trans[10][2]	= settr(0,0,0,0,0,"assert(!(!(!((s_verde&&s_peaton)))))",0,0,0);
	trans[10][4]	= settr(154,0,6,1,0,"(1)", 0, 2, 0);
	trans[10][5]	= settr(155,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[10][8]	= settr(158,0,9,1,0,"break", 0, 2, 0);
	trans[10][9]	= settr(159,0,10,1,0,"(1)", 0, 2, 0);
	trans[10][10]	= settr(160,0,0,82,82,"-end-", 0, 3500, 0);

	/* proctype 9: peatonPNoMuere */

	trans[9] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[9][7]	= settr(147,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[9][6] = settr(146,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(146,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(146,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 9][3] = settr(143,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(143,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[9][1]	= settr(141,0,6,83,83,"(!(!((p_verde&&p_peaton))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached9[2] = 1;
	trans[9][2]	= settr(0,0,0,0,0,"assert(!(!(!((p_verde&&p_peaton)))))",0,0,0);
	trans[9][4]	= settr(144,0,6,1,0,"(1)", 0, 2, 0);
	trans[9][5]	= settr(145,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[9][8]	= settr(148,0,9,1,0,"break", 0, 2, 0);
	trans[9][9]	= settr(149,0,10,1,0,"(1)", 0, 2, 0);
	trans[9][10]	= settr(150,0,0,84,84,"-end-", 0, 3500, 0);

	/* proctype 8: ProjoPeaton */

	trans[8] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[8][7]	= settr(137,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[8][6] = settr(136,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(136,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(136,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 8][3] = settr(133,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(133,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[8][1]	= settr(131,0,6,85,85,"(!(((p_rojo&&p_peaton)||(!(p_rojo)&&!(p_peaton)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached8[2] = 1;
	trans[8][2]	= settr(0,0,0,0,0,"assert(!(!(((p_rojo&&p_peaton)||(!(p_rojo)&&!(p_peaton))))))",0,0,0);
	trans[8][4]	= settr(134,0,6,1,0,"(1)", 0, 2, 0);
	trans[8][5]	= settr(135,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[8][8]	= settr(138,0,9,1,0,"break", 0, 2, 0);
	trans[8][9]	= settr(139,0,10,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(140,0,0,86,86,"-end-", 0, 3500, 0);

	/* proctype 7: SrojoPeaton */

	trans[7] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[7][7]	= settr(127,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(126,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(126,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(126,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(123,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(123,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(121,0,6,87,87,"(!(((s_rojo&&s_peaton)||(!(s_rojo)&&!(s_peaton)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!(!(((s_rojo&&s_peaton)||(!(s_rojo)&&!(s_peaton))))))",0,0,0);
	trans[7][4]	= settr(124,0,6,1,0,"(1)", 0, 2, 0);
	trans[7][5]	= settr(125,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(128,0,9,1,0,"break", 0, 2, 0);
	trans[7][9]	= settr(129,0,10,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(130,0,0,88,88,"-end-", 0, 3500, 0);

	/* proctype 6: espira */

	trans[6] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[6][4]	= settr(118,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[6][3] = settr(117,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(117,0,1,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(115,0,3,89,0,"((!(s_verde)&&espira))", 1, 2, 0);
	trans[6][2]	= settr(116,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[6][5]	= settr(119,0,6,1,0,"break", 0, 2, 0);
	trans[6][6]	= settr(120,0,0,90,90,"-end-", 0, 3500, 0);

	/* proctype 5: peatonS_cruza */

	trans[5] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[5][4]	= settr(112,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[5][3] = settr(111,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(111,0,1,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(109,0,3,91,0,"((!(s_peaton)&&botonS))", 1, 2, 0);
	trans[5][2]	= settr(110,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[5][5]	= settr(113,0,6,1,0,"break", 0, 2, 0);
	trans[5][6]	= settr(114,0,0,92,92,"-end-", 0, 3500, 0);

	/* proctype 4: peatonP_cruza */

	trans[4] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[4][4]	= settr(106,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[4][3] = settr(105,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(105,0,1,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(103,0,3,93,0,"((!(p_peaton)&&botonP))", 1, 2, 0);
	trans[4][2]	= settr(104,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[4][5]	= settr(107,0,6,1,0,"break", 0, 2, 0);
	trans[4][6]	= settr(108,0,0,94,94,"-end-", 0, 3500, 0);

	/* proctype 3: algunoRojo */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(99,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(98,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(98,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(98,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(95,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(95,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(93,0,6,95,95,"(!((p_rojo||s_rojo)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!((p_rojo||s_rojo))))",0,0,0);
	trans[3][4]	= settr(96,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(97,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(100,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(101,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(102,0,0,96,96,"-end-", 0, 3500, 0);

	/* proctype 2: noDosVerdes */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(89,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(88,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(88,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(88,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(85,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(85,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(83,0,6,97,97,"(!(!((p_verde&&s_verde))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!(!(!((p_verde&&s_verde)))))",0,0,0);
	trans[2][4]	= settr(86,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(87,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(90,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(91,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(92,0,0,98,98,"-end-", 0, 3500, 0);

	/* proctype 1: entorno */

	trans[1] = (Trans **) emalloc(13*sizeof(Trans *));

	trans[1][10]	= settr(80,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[1][9] = settr(79,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(79,0,7,0,0,"DO", 0, 2, 0);
	T = trans[1][7] = settr(77,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(77,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(77,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(77,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(77,0,5,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(77,0,6,0,0,"IF", 0, 2, 0);
	trans[1][1]	= settr(71,0,2,1,0,"(1)", 0, 2, 0);
	trans[1][2]	= settr(72,0,9,1,0,"(1)", 0, 2, 0);
	trans[1][8]	= settr(78,0,9,1,0,".(goto)", 0, 2, 0);
	trans[1][3]	= settr(73,0,9,99,99,"espira = 1", 1, 2, 0);
	trans[1][4]	= settr(74,0,9,100,100,"botonP = 1", 1, 2, 0);
	trans[1][5]	= settr(75,0,9,101,101,"botonS = 1", 1, 2, 0);
	trans[1][6]	= settr(76,0,9,102,102,"deadline = 1", 1, 2, 0);
	trans[1][11]	= settr(81,0,12,1,0,"break", 0, 2, 0);
	trans[1][12]	= settr(82,0,0,103,103,"-end-", 0, 3500, 0);

	/* proctype 0: fsm */

	trans[0] = (Trans **) emalloc(72*sizeof(Trans *));

	trans[0][69]	= settr(68,0,68,1,0,".(goto)", 0, 2, 0);
	T = trans[0][68] = settr(67,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(67,0,65,0,0,"DO", 0, 2, 0);
	T = trans[0][65] = settr(64,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,18,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,31,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,43,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(64,0,52,0,0,"IF", 0, 2, 0);
	trans[0][1]	= settr(0,0,8,104,0,"((estado==P_Verde))", 1, 2, 0);
	T = trans[ 0][8] = settr(7,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(7,2,6,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][6] = settr(5,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(5,2,2,0,0,"IF", 1, 2, 0);
	trans[0][2]	= settr(1,0,67,105,105,"((espira||botonP))", 1, 2, 0); /* m: 3 -> 67,0 */
	reached0[3] = 1;
	trans[0][3]	= settr(0,0,0,0,0,"espira = 0",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"botonP = 0",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"estado = P_VerToAm",0,0,0);
	trans[0][7]	= settr(6,0,67,1,0,".(goto)", 1, 2, 0);
	trans[0][66]	= settr(65,0,67,1,0,".(goto)", 0, 2, 0);
	trans[0][9]	= settr(8,0,17,106,0,"((estado==P_VerToAm))", 1, 2, 0);
	T = trans[ 0][17] = settr(16,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(16,2,15,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][15] = settr(14,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(14,2,10,0,0,"IF", 1, 2, 0);
	trans[0][10]	= settr(9,0,67,107,107,"(deadline)", 1, 2, 0); /* m: 11 -> 67,0 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"p_verde = 0",0,0,0);
	trans[0][13]	= settr(0,0,0,0,0,"p_amarillo = 1",0,0,0);
	trans[0][14]	= settr(0,0,0,0,0,"estado = P_Amarillo",0,0,0);
	trans[0][16]	= settr(15,0,67,1,0,".(goto)", 1, 2, 0);
	trans[0][18]	= settr(17,0,30,108,0,"((estado==P_Amarillo))", 1, 2, 0);
	T = trans[ 0][30] = settr(29,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(29,2,28,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][28] = settr(27,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(27,2,19,0,0,"IF", 1, 2, 0);
	trans[0][19]	= settr(18,0,67,109,109,"(deadline)", 1, 2, 0); /* m: 20 -> 67,0 */
	reached0[20] = 1;
	trans[0][20]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][21]	= settr(0,0,0,0,0,"p_amarillo = 0",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"p_rojo = 1",0,0,0);
	trans[0][23]	= settr(0,0,0,0,0,"p_peaton = 1",0,0,0);
	trans[0][24]	= settr(0,0,0,0,0,"s_rojo = 0",0,0,0);
	trans[0][25]	= settr(0,0,0,0,0,"s_verde = 1",0,0,0);
	trans[0][26]	= settr(0,0,0,0,0,"s_peaton = 0",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"estado = S_Verde",0,0,0);
	trans[0][29]	= settr(28,0,67,1,0,".(goto)", 1, 2, 0);
	trans[0][31]	= settr(30,0,42,110,0,"((estado==S_Verde))", 1, 2, 0);
	T = trans[ 0][42] = settr(41,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(41,2,40,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][40] = settr(39,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(39,2,32,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(39,2,35,0,0,"IF", 1, 2, 0);
	trans[0][32]	= settr(31,0,67,111,111,"(botonS)", 1, 2, 0); /* m: 33 -> 67,0 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"botonS = 0",0,0,0);
	trans[0][34]	= settr(0,0,0,0,0,"estado = S_VerToAm",0,0,0);
	trans[0][41]	= settr(40,0,67,112,112,".(goto)", 1, 2, 0);
	trans[0][35]	= settr(34,0,67,113,113,"(deadline)", 1, 2, 0); /* m: 36 -> 67,0 */
	reached0[36] = 1;
	trans[0][36]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][37]	= settr(0,0,0,0,0,"estado = S_Amarillo",0,0,0);
	trans[0][38]	= settr(0,0,0,0,0,"s_verde = 0",0,0,0);
	trans[0][39]	= settr(0,0,0,0,0,"s_amarillo = 1",0,0,0);
	trans[0][43]	= settr(42,0,51,114,0,"((estado==S_VerToAm))", 1, 2, 0);
	T = trans[ 0][51] = settr(50,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(50,2,49,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][49] = settr(48,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(48,2,44,0,0,"IF", 1, 2, 0);
	trans[0][44]	= settr(43,0,67,115,115,"(deadline)", 1, 2, 0); /* m: 45 -> 67,0 */
	reached0[45] = 1;
	trans[0][45]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][46]	= settr(0,0,0,0,0,"estado = S_Amarillo",0,0,0);
	trans[0][47]	= settr(0,0,0,0,0,"s_verde = 0",0,0,0);
	trans[0][48]	= settr(0,0,0,0,0,"s_amarillo = 1",0,0,0);
	trans[0][50]	= settr(49,0,67,1,0,".(goto)", 1, 2, 0);
	trans[0][52]	= settr(51,0,64,116,0,"((estado==S_Amarillo))", 1, 2, 0);
	T = trans[ 0][64] = settr(63,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(63,2,62,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][62] = settr(61,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(61,2,53,0,0,"IF", 1, 2, 0);
	trans[0][53]	= settr(52,0,67,117,117,"(deadline)", 1, 2, 0); /* m: 54 -> 67,0 */
	reached0[54] = 1;
	trans[0][54]	= settr(0,0,0,0,0,"deadline = 0",0,0,0);
	trans[0][55]	= settr(0,0,0,0,0,"estado = P_Verde",0,0,0);
	trans[0][56]	= settr(0,0,0,0,0,"s_peaton = 1",0,0,0);
	trans[0][57]	= settr(0,0,0,0,0,"s_rojo = 1",0,0,0);
	trans[0][58]	= settr(0,0,0,0,0,"s_amarillo = 0",0,0,0);
	trans[0][59]	= settr(0,0,0,0,0,"p_rojo = 0",0,0,0);
	trans[0][60]	= settr(0,0,0,0,0,"p_verde = 1",0,0,0);
	trans[0][61]	= settr(0,0,0,0,0,"p_peaton = 0",0,0,0);
	trans[0][63]	= settr(62,0,67,1,0,".(goto)", 1, 2, 0);
	trans[0][67]	= settr(66,0,68,118,0,"printf('estado = %d, principal (r,a,v, peaton) = (%d, %d, %d, %d), secundario (r,a,v, peaton) = (%d, %d, %d, %d)\\n',estado,p_rojo,p_amarillo,p_verde,p_peaton,s_rojo,s_amarillo,s_verde,s_peaton)", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,1,0,"break", 0, 2, 0);
	trans[0][71]	= settr(70,0,0,119,119,"-end-", 0, 3500, 0);
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
