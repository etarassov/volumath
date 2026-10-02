---
id: "11230"
title: "Les parties anormales d'un tournoi"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [tournoi, moyenne, construction, extremalite, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (dans le b), le corrigé compte les groupes « modulo k » alors qu'il faut compter modulo 2k + 1 ; dans le a), il écrit une inégalité stricte qui est fausse quand tous les scores sont égaux, il faut une inégalité large ; le détail de ses retouches est confus, mais son nombre total de parties anormales est juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

Dans un tournoi d'échecs, $n$ joueurs ($n \geqslant 2$) jouent chacun exactement une partie contre
chacun des autres. Une victoire rapporte $1$ point, un match nul un demi-point et une défaite
$0$ point. Le **score** d'un joueur est son nombre total de points à la fin du tournoi.

Une partie est dite **anormale** si elle a un gagnant, et si ce gagnant a, à la fin du tournoi, un
score strictement plus petit que celui du perdant. Un match nul n'est donc jamais anormal.

a) Montrer qu'au plus 75 % des parties sont anormales.

b) Peut-il arriver qu'au moins 70 % des parties soient anormales ?

## Hints

1. Pour le a), range les joueurs du meilleur score au moins bon, et coupe la liste en deux moitiés :
   les « forts » et les « faibles ». Le score moyen des forts peut-il être plus petit que le score
   moyen de tous les joueurs ?
2. Toujours pour le a) : une partie entre un fort et un faible, gagnée par le fort ou finie par un
   nul, peut-elle être anormale ? Combien de points les forts ont-ils pris aux faibles ?
3. Pour le b), commence par un tournoi où tout le monde a le même score : des groupes de joueurs
   placés en cercle, chaque groupe perdant contre les groupes qui le suivent sur le cercle et gagnant
   contre ceux qui le précèdent.
4. Puis remplace quelques victoires et quelques défaites par des nuls, pour que les groupes aient
   des scores tous différents, sans perdre trop de parties anormales. Essaie des groupes de
   $k = 20$ joueurs.

## Solution

Notons $N = \frac{n(n-1)}{2}$ le nombre de parties. Chaque partie distribue exactement $1$ point
en tout ($1 + 0$ ou $\frac12 + \frac12$), donc la somme de tous les scores vaut $N$, et le score
moyen d'un joueur vaut $\frac{N}{n} = \frac{n-1}{2}$.

### a) Au plus 75 % de parties anormales

Rangeons les joueurs du plus grand score au plus petit (en cas d'égalité, dans n'importe quel
ordre). Notons $m$ le nombre $\frac{n}{2}$ si $n$ est pair, et $\frac{n-1}{2}$ si $n$ est impair.
Les $m$ premiers joueurs de la liste sont les **forts**, les $n - m$ autres sont les **faibles**.
Tout fort a un score supérieur ou égal à celui de n'importe quel faible.

**Étape 1. Les forts ont, en moyenne, au moins le score moyen.** Notons $A$ la moyenne des scores
des forts et $B$ celle des faibles. Le plus petit score d'un fort est supérieur ou égal au plus grand
score d'un faible. Or $A$ est au moins égal au plus petit score d'un fort, et $B$ est au plus égal au
plus grand score d'un faible. Donc $A \geqslant B$. La moyenne de tous les scores vaut alors
$$\frac{mA + (n - m)B}{n} \leqslant \frac{mA + (n - m)A}{n} = A .$$
Ainsi $A \geqslant \frac{n-1}{2}$, et la somme $S$ des scores des forts vérifie
$S = mA \geqslant \frac{m(n-1)}{2}$.

**Étape 2. Les points pris aux faibles.** Les forts jouent $\frac{m(m-1)}{2}$ parties entre eux, qui
leur rapportent en tout $\frac{m(m-1)}{2}$ points. Le reste de $S$ vient des parties entre un fort
et un faible. Notons $P$ le nombre de points que les forts gagnent dans ces parties :
$$P = S - \frac{m(m-1)}{2} \geqslant \frac{m(n-1)}{2} - \frac{m(m-1)}{2} = \frac{m(n-m)}{2} .$$

**Étape 3. Ces parties ne sont pas anormales.** Prenons une partie entre un fort et un faible qui
rapporte des points au fort. Soit c'est un nul, et elle n'est pas anormale. Soit le fort a gagné :
le gagnant a alors un score supérieur ou égal à celui du perdant, et la partie n'est pas anormale
non plus. Chacune de ces parties rapporte au plus $1$ point au fort. Il y a donc au moins $P$ parties
qui ne sont pas anormales, donc au moins $\frac{m(n-m)}{2}$.

**Étape 4. Le calcul.** Montrons que $4m(n - m) \geqslant n(n - 1)$.

- Si $n$ est pair, $m = n - m = \frac{n}{2}$ et $4m(n - m) = n^2 \geqslant n^2 - n$.
- Si $n$ est impair, $m = \frac{n-1}{2}$, $n - m = \frac{n+1}{2}$ et
  $4m(n - m) = n^2 - 1 \geqslant n^2 - n$, car $n \geqslant 1$.

Le nombre de parties qui ne sont pas anormales est donc au moins
$$\frac{m(n-m)}{2} \geqslant \frac{n(n-1)}{8} = \frac{N}{4} .$$
Au moins un quart des parties ne sont pas anormales, donc **au plus trois quarts, soit 75 %, des
parties sont anormales.**

### b) Oui, c'est possible

**Le premier tournoi.** Soit $k$ un entier, $k \geqslant 1$. On prend $n = k(2k + 1)$ joueurs,
répartis en $2k + 1$ groupes $G_1, G_2, \ldots, G_{2k+1}$ de $k$ joueurs chacun. On place les
groupes sur un cercle, dans cet ordre : après $G_{2k+1}$ revient $G_1$.

- Dans un même groupe, toutes les parties sont nulles.
- Chaque groupe perd toutes ses parties contre les $k$ groupes qui le suivent sur le cercle, et gagne
  toutes ses parties contre les $k$ groupes qui le précèdent.

C'est cohérent : il y a $2k$ autres groupes, $k$ qui suivent et $k$ qui précèdent, et si $G_j$ est
parmi les $k$ groupes qui suivent $G_i$, alors $G_i$ est parmi les $k$ groupes qui précèdent $G_j$.
Chaque joueur fait $k - 1$ nuls dans son groupe et gagne contre $k$ groupes de $k$ joueurs. Tous les
joueurs ont donc le même score
$$B = \frac{k-1}{2} + k^2 .$$

**Les retouches.** On ne modifie que des parties du groupe du milieu, $G_{k+1}$. Numérotons de $1$ à
$k$ les joueurs de chaque groupe. Pour chaque $i$ de $1$ à $k$ :

- $G_{k+1}$ bat le groupe $G_{k+1-i}$, qui le précède. Le joueur numéro $a$ de $G_{k+1}$ fait
  désormais match nul contre les joueurs numéros $a, a + 1, \ldots, a + i - 1$ de $G_{k+1-i}$, en
  comptant modulo $k$ (après $k$ revient $1$). Ainsi chaque joueur de $G_{k+1}$, et aussi chaque
  joueur de $G_{k+1-i}$, transforme exactement $i$ de ses parties en nuls.
- De même, $G_{k+1}$ perd contre $G_{k+1+i}$, qui le suit. On transforme en nuls, de la même façon,
  exactement $i$ parties de chaque joueur de $G_{k+1}$ et de chaque joueur de $G_{k+1+i}$.

**Les nouveaux scores.**

- Un joueur de $G_{k+1-i}$ change $i$ défaites en nuls : son score augmente de $\frac{i}{2}$.
- Un joueur de $G_{k+1+i}$ change $i$ victoires en nuls : son score baisse de $\frac{i}{2}$.
- Un joueur de $G_{k+1}$, pour chaque $i$, change $i$ victoires en nuls, ce qui lui fait perdre
  $\frac{i}{2}$, et $i$ défaites en nuls, ce qui lui fait gagner $\frac{i}{2}$. Son score ne change
  pas.

Dans tous les cas, un joueur du groupe $G_j$ a pour score $B + \frac{k+1-j}{2}$. Les scores
**diminuent strictement** quand le numéro du groupe augmente.

**On compte les parties anormales.** Les parties dans un même groupe sont nulles. Prenons deux
groupes $G_i$ et $G_j$ avec $i < j$. Le joueur de $G_i$ a le plus grand score, donc une partie
entre eux est anormale exactement quand le joueur de $G_j$ la gagne.

Dans le premier tournoi, $G_j$ bat $G_i$ quand $G_i$ est parmi les $k$ groupes qui précèdent $G_j$,
c'est-à-dire quand $j - i \leqslant k$. Si au contraire $j - i \geqslant k + 1$, en avançant
sur le cercle à partir de $G_j$, on atteint $G_i$ en $2k + 1 - (j - i) \leqslant k$ pas. Donc $G_i$
est parmi les $k$ groupes qui suivent $G_j$, et c'est $G_i$ qui gagne.

Pour un écart $d = j - i$ donné, entre $1$ et $2k$, il y a $2k + 1 - d$ couples de groupes. Le
nombre de couples avec un écart d'au plus $k$ vaut
$$\sum_{d=1}^{k} (2k + 1 - d) = k(2k + 1) - \frac{k(k+1)}{2} = \frac{k(3k + 1)}{2} .$$
Chaque couple de groupes joue $k^2$ parties. Dans le premier tournoi, il y a donc
$\frac{k^3(3k + 1)}{2}$ parties gagnées par le joueur du groupe de plus grand numéro.

Les retouches en changent certaines en nuls, et ne touchent à aucune autre partie. Pour chaque $i$,
$G_{k+1}$ avait battu $G_{k+1-i}$, de numéro plus petit, et $G_{k+1+i}$, de numéro plus grand,
avait battu $G_{k+1}$ : on perd $ik$ parties de chaque sorte. En tout, on en perd
$$2(1 + 2 + \cdots + k)\,k = k^2(k + 1) .$$
Le nombre de parties anormales vaut donc
$$\frac{k^3(3k + 1)}{2} - k^2(k + 1) .$$

**Le cas $k = 20$.** On a alors $n = 20 \times 41 = 820$ joueurs et
$$N = \frac{820 \times 819}{2} = 335\,790$$
parties. Le nombre de parties anormales vaut
$$\frac{8000 \times 61}{2} - 400 \times 21 = 244\,000 - 8400 = 235\,600 .$$
Or 70 % de $335\,790$ font $235\,053$, et $235\,600 \geqslant 235\,053$.

**Conclusion : oui, avec $820$ joueurs répartis en $41$ groupes de $20$, plus de 70 % des parties
sont anormales (environ 70,2 %).**

## Going further

- Pour des groupes de $k$ joueurs, la proportion de parties anormales vaut
  $$\frac{k(3k + 2)(k - 1)}{(2k + 1)(2k - 1)(k + 1)} .$$
  Pour $k = 19$, on n'obtient qu'environ 69,9 %, c'est pourquoi on a pris $k = 20$. Quand $k$
  devient très grand, cette proportion se rapproche autant qu'on veut de $\frac34$.
- La borne du a) n'est donc pas améliorable, même si elle n'est jamais atteinte : le calcul de
  l'étape 4 donne même une inégalité stricte $4m(n - m) > n(n - 1)$ dès que $n \geqslant 2$, donc
  il y a toujours strictement moins de 75 % de parties anormales.
