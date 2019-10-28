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
	printf("file %s line %3d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(4*sizeof(Trans **));

	/* proctype 2: :never: */

	trans[2] = (Trans **) emalloc(9*sizeof(Trans *));

	T = trans[2][5] = settr(103,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(103,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(103,0,3,0,0,"IF", 0, 2, 0);
	trans[2][1]	= settr(99,0,7,3,0,"(!((procEnSectionCritique<2)))", 1, 2, 0);
	trans[2][2]	= settr(100,0,7,1,0,"goto accept_all", 0, 2, 0);
	trans[2][6]	= settr(104,0,7,1,0,".(goto)", 0, 2, 0);
	trans[2][3]	= settr(101,0,5,1,0,"(1)", 0, 2, 0);
	trans[2][4]	= settr(102,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[2][7]	= settr(105,0,8,1,0,"(1)", 0, 2, 0);
	trans[2][8]	= settr(106,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 1: :init: */

	trans[1] = (Trans **) emalloc(32*sizeof(Trans *));

	T = trans[ 1][30] = settr(97,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(97,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(68,2,16,5,5,"I = 0", 1, 2, 0);
	trans[1][17]	= settr(84,2,16,1,0,".(goto)", 1, 2, 0);
	T = trans[1][16] = settr(83,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(83,2,2,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(83,2,14,0,0,"DO", 1, 2, 0);
	trans[1][2]	= settr(69,2,11,6,0,"((I<4))", 1, 2, 0);
	T = trans[1][11] = settr(78,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(78,2,3,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(78,2,5,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(78,2,7,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(78,2,9,0,0,"IF", 1, 2, 0);
	trans[1][3]	= settr(70,2,16,7,7,"(((Ini[0]==0)&&(4>=1)))", 1, 2, 0); /* m: 4 -> 16,0 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"Ini[0] = I",0,0,0);
	trans[1][12]	= settr(79,2,16,8,0,".(goto)", 1, 2, 0); /* m: 13 -> 0,16 */
	reached1[13] = 1;
	trans[1][5]	= settr(72,2,16,8,8,"(((Ini[1]==0)&&(4>=2)))", 1, 2, 0); /* m: 6 -> 16,0 */
	reached1[6] = 1;
	trans[1][6]	= settr(0,0,0,0,0,"Ini[1] = I",0,0,0);
	trans[1][7]	= settr(74,2,16,9,9,"(((Ini[2]==0)&&(4>=3)))", 1, 2, 0); /* m: 8 -> 16,0 */
	reached1[8] = 1;
	trans[1][8]	= settr(0,0,0,0,0,"Ini[2] = I",0,0,0);
	trans[1][9]	= settr(76,2,16,10,10,"(((Ini[3]==0)&&(4>=4)))", 1, 2, 0); /* m: 10 -> 16,0 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"Ini[3] = I",0,0,0);
	trans[1][13]	= settr(80,2,16,11,11,"I = (I+1)", 1, 2, 0);
	trans[1][14]	= settr(81,2,27,12,12,"((I>=4))", 1, 2, 0); /* m: 19 -> 27,0 */
	reached1[19] = 1;
	trans[1][15]	= settr(82,2,27,13,0,"goto :b6", 1, 2, 0); /* m: 19 -> 0,27 */
	reached1[19] = 1;
	trans[1][18]	= settr(85,2,19,1,0,"break", 1, 2, 0);
	trans[1][19]	= settr(86,2,27,13,13,"proc = 1", 1, 2, 0); /* m: 20 -> 0,27 */
	reached1[20] = 1;
	trans[1][20]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][28]	= settr(95,2,27,1,0,".(goto)", 1, 2, 0);
	T = trans[1][27] = settr(94,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(94,2,21,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(94,2,25,0,0,"DO", 1, 2, 0);
	trans[1][21]	= settr(88,2,22,14,0,"((proc<=4))", 1, 2, 0);
	trans[1][22]	= settr(89,2,27,15,15,"(run mutualExclusion(Ini[i]))", 1, 2, 0); /* m: 23 -> 27,0 */
	reached1[23] = 1;
	trans[1][23]	= settr(0,0,0,0,0,"proc = (proc+1)",0,0,0);
	trans[1][24]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][25]	= settr(92,2,29,16,16,"((proc>4))", 1, 2, 0); /* m: 26 -> 29,0 */
	reached1[26] = 1;
	trans[1][26]	= settr(93,2,29,1,0,"goto :b7", 1, 2, 0);
	trans[1][29]	= settr(96,0,31,1,0,"break", 1, 2, 0);
	trans[1][31]	= settr(98,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 0: mutualExclusion */

	trans[0] = (Trans **) emalloc(69*sizeof(Trans *));

	trans[0][66]	= settr(65,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[0][65] = settr(64,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(64,0,1,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,4,18,18,"(1)", 0, 2, 0); /* m: 2 -> 4,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	T = trans[ 0][4] = settr(3,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[0][3]	= settr(2,0,11,19,19,"flag[index] = 1", 1, 2, 0);
	trans[0][12]	= settr(11,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[0][11] = settr(10,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(10,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(10,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(10,0,9,0,0,"DO", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,20,0,"(((counter<4)&&(flag[counter]<3)))", 1, 2, 0);
	trans[0][6]	= settr(5,0,11,21,21,"counter = (counter+1)", 0, 2, 0);
	trans[0][7]	= settr(6,0,8,22,22,"(((counter<4)&&(flag[counter]>=3)))", 1, 2, 0);
	trans[0][8]	= settr(7,0,11,23,23,"counter = 0", 0, 2, 0);
	trans[0][9]	= settr(8,0,15,24,24,"((counter>=4))", 0, 2, 0);
	trans[0][10]	= settr(9,0,15,1,0,"goto :b1", 0, 2, 0);
	trans[0][13]	= settr(12,0,15,1,0,"break", 0, 2, 0);
	T = trans[ 0][15] = settr(14,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(14,2,14,0,0,"ATOMIC", 1, 2, 0);
	trans[0][14]	= settr(13,0,23,25,25,"flag[index] = 3", 1, 2, 0); /* m: 16 -> 0,23 */
	reached0[16] = 1;
	trans[0][16]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	trans[0][24]	= settr(23,0,23,1,0,".(goto)", 0, 2, 0);
	T = trans[0][23] = settr(22,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(22,0,17,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(22,0,19,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(22,0,21,0,0,"DO", 0, 2, 0);
	trans[0][17]	= settr(16,0,27,26,26,"(((counter<4)&&(flag[counter]==1)))", 1, 2, 0);
	trans[0][18]	= settr(17,0,27,1,0,"goto L1", 0, 2, 0);
	trans[0][19]	= settr(18,0,20,27,0,"(((counter<4)&&(flag[counter]!=1)))", 1, 2, 0);
	trans[0][20]	= /* c */ settr(19,0,23,21,21,"counter = (counter+1)", 0, 2, 0);
	trans[0][21]	= /* c */ settr(20,0,39,24,24,"((counter>=4))", 0, 2, 0);
	trans[0][22]	= settr(21,0,39,1,0,"goto L2", 0, 2, 0);
	trans[0][25]	= settr(24,0,27,1,0,"break", 0, 2, 0);
	T = trans[ 0][27] = settr(26,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(26,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[0][26]	= settr(25,0,35,28,28,"flag[index] = 2", 1, 2, 0); /* m: 28 -> 0,35 */
	reached0[28] = 1;
	trans[0][28]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	trans[0][36]	= settr(35,0,35,1,0,".(goto)", 0, 2, 0);
	T = trans[0][35] = settr(34,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(34,0,29,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(34,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(34,0,33,0,0,"DO", 0, 2, 0);
	trans[0][29]	= settr(28,0,39,29,29,"(((counter<4)&&(flag[counter]==4)))", 1, 2, 0);
	trans[0][30]	= settr(29,0,39,1,0,"goto L2", 0, 2, 0);
	trans[0][31]	= settr(30,0,32,30,0,"(((counter<4)&&(flag[counter]!=4)))", 1, 2, 0);
	trans[0][32]	= /* c */ settr(31,0,35,21,21,"counter = (counter+1)", 0, 2, 0);
	trans[0][33]	= settr(32,0,35,31,31,"((counter>=4))", 0, 2, 0); /* m: 34 -> 35,0 */
	reached0[34] = 1;
	trans[0][34]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	trans[0][37]	= settr(36,0,39,1,0,"break", 0, 2, 0);
	T = trans[ 0][39] = settr(38,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(38,2,38,0,0,"ATOMIC", 1, 2, 0);
	trans[0][38]	= settr(37,0,47,32,32,"flag[index] = 4", 1, 2, 0); /* m: 40 -> 0,47 */
	reached0[40] = 1;
	trans[0][40]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	trans[0][48]	= settr(47,0,47,1,0,".(goto)", 0, 2, 0);
	T = trans[0][47] = settr(46,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,43,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(46,0,45,0,0,"DO", 0, 2, 0);
	trans[0][41]	= settr(40,0,42,33,0,"(((counter<index)&&(flag[counter]<2)))", 1, 2, 0);
	trans[0][42]	= /* c */ settr(41,0,47,21,21,"counter = (counter+1)", 0, 2, 0);
	trans[0][43]	= settr(42,0,44,34,34,"(((counter<index)&&(flag[counter]>=2)))", 1, 2, 0);
	trans[0][44]	= /* c */ settr(43,0,47,23,23,"counter = 0", 0, 2, 0);
	trans[0][45]	= settr(44,0,50,35,35,"((counter>=index))", 0, 2, 0);
	trans[0][46]	= settr(45,0,50,1,0,"goto :b4", 0, 2, 0);
	trans[0][49]	= settr(48,0,50,1,0,"break", 0, 2, 0);
	trans[0][50]	= settr(49,0,51,36,36,"procEnSectionCritique = (procEnSectionCritique+1)", 1, 2, 0);
	trans[0][51]	= settr(50,0,58,37,37,"counter = (index+1)", 0, 2, 0);
	trans[0][59]	= settr(58,0,58,1,0,".(goto)", 0, 2, 0);
	T = trans[0][58] = settr(57,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(57,0,52,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(57,0,54,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(57,0,56,0,0,"DO", 0, 2, 0);
	trans[0][52]	= settr(51,0,53,38,0,"(((counter<4)&&(((flag[counter]==0)||(flag[counter]==1))||(flag[counter]==4))))", 1, 2, 0);
	trans[0][53]	= /* c */ settr(52,0,58,21,21,"counter = (counter+1)", 0, 2, 0);
	trans[0][54]	= settr(53,0,55,39,39,"(((counter<4)&&((flag[counter]==2)||(flag[counter]==3))))", 1, 2, 0);
	trans[0][55]	= /* c */ settr(54,0,58,37,37,"counter = (index+1)", 0, 2, 0);
	trans[0][56]	= settr(55,0,62,40,40,"((counter>=4))", 0, 2, 0); /* m: 61 -> 62,0 */
	reached0[61] = 1;
	trans[0][57]	= settr(56,0,62,41,0,"goto :b5", 0, 2, 0); /* m: 61 -> 0,62 */
	reached0[61] = 1;
	trans[0][60]	= settr(59,0,61,1,0,"break", 0, 2, 0);
	trans[0][61]	= settr(60,0,62,41,41,"counter = 0", 0, 2, 0);
	trans[0][62]	= settr(61,0,64,42,42,"procEnSectionCritique = (procEnSectionCritique-1)", 1, 2, 0);
	T = trans[ 0][64] = settr(63,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(63,2,63,0,0,"ATOMIC", 1, 2, 0);
	trans[0][63]	= settr(62,0,65,43,43,"flag[index] = 0", 1, 2, 0);
	trans[0][67]	= settr(66,0,68,1,0,"break", 0, 2, 0);
	trans[0][68]	= settr(67,0,0,44,44,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
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
uchar *visited;
void
dovisit(int n, int m, int is, uchar reach[])
{	Trans *z;
	if (is >= m || !trans[n][is]
	||  is <= 0 || visited[is])
		return;
	visited[is] = 1;
	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		dovisit(n, m, z->st, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dovisit(n, m, j, reach);
		}
#endif
	}
}
void
check_unreachable(int n, int m, int is, short srcln[], uchar reach[])
{	int i; static int oldm=0;
	if (m > oldm)	/* not much memory */
	{	visited = (uchar *) emalloc(m * sizeof(uchar));
		oldm = m;
	} else
		memset(visited, 0, m);
	dovisit(n, m, is, reach);
	for (i = 1; i < m; i++)
		if (!visited[i] && reach[i] == 0)
		{	if (0) printf("%s: merged state %d, line %d\n",
				procname[n], i, srcln[i]);
			reach[i] = 1;
		}
}
int cnt;
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
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
retrans(int n, int m, int is, short srcln[], uchar reach[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	int i, k;
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 proctype %s\n", 
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
	{	printf("STEP 2 proctype %s\n", 
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
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 proctype %s\n", 
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
 {		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
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
 {		Trans *T4;
		T4 = T3 = (Trans *) 0;
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
	{
		if (a_cycles)
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
#if 1
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
#endif
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
		  {
#if 1
			printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
#endif
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {
#if 1
			printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
#endif
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
	if (state_tables)
	{	printf("proctype ");
		if (!strcmp(procname[n], ":init:"))
			printf("init\n");
		else
			printf("%s\n", procname[n]);
		for (i = 1; i < m; i++)
			reach[i] = 1;
		tagtable(n, m, is, srcln, reach);
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (strcmp(procname[n], ":never:") != 0)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (T0->st == i
			&& strcmp(T0->tp, "(1)") == 0)
			{	printf("error: proctype '%s' ",
					procname[n]);
		  		printf("line %d, state %d: has un",
					srcln[i], i);
				printf("conditional self-loop\n");
				pan_exit(1);
		}	}
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
	if (0) check_unreachable(n, m, is, srcln, reach);
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
		crack(n, is, z, srcln);
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
	printf(" [%s%s%s%s%s] line %d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
#if 0
	printf("\n");
#else
	if (z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
#endif
	fflush(stdout);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	unsigned char vals[BYTESIZE];
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
dumpval(unsigned char X[], int range)
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
