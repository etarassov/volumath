---
id: "12609"
title: "Morgane, 3, 4 et 12 au tableau"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [invariant, divisibilite, puissances-de-cinq, fractions, chemin-minimal, carres]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 7 (senior) ; corrigé 2021-01_Corrige-Test-2.pdf (la solution ci-dessous reprend le raisonnement du corrigé, sans valuations p-adiques)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

Morgane a écrit les trois entiers $3$, $4$ et $12$ au tableau. Elle effectue ensuite des
changements successifs de la façon suivante : elle choisit deux nombres $a$ et $b$ écrits au
tableau, les efface, et les remplace par
$$\frac{3a + 4b}{5} \qquad \text{et} \qquad \frac{4a - 3b}{5} .$$

Morgane peut-elle, après un nombre fini de tels changements,

1. parvenir à écrire le nombre $13$ au tableau ?
2. parvenir à écrire le nombre $-12$ au tableau ?

## Hints

1. Calcule la somme des carrés des trois nombres écrits, avant et après un changement.
2. Morgane remplace $a$ et $b$ par $a'$ et $b'$. Si elle applique ensuite le changement à $a'$
   puis $b'$, dans cet ordre, qu'obtient-elle ?
3. Question 1 : si $13$ est écrit, que valent les deux autres nombres ? À partir des nombres
   $0$, $0$, $13$, que peut-on dire de tous les nombres que l'on obtient ensuite ?
4. Question 2 : tout nombre écrit est de la forme $\dfrac{m}{5^j}$ avec $m$ entier. Regarde la
   plus grande puissance de $5$ nécessaire au dénominateur. Quand elle vient d'augmenter, peut-on
   la faire redescendre autrement qu'en annulant le dernier changement ?
5. Cherche tous les triplets d'entiers dont la somme des carrés vaut $169$.

## Solution

On note $f(a, b) = \dfrac{3a + 4b}{5}$ et $g(a, b) = \dfrac{4a - 3b}{5}$. On parle d'un
**changement** quand Morgane remplace $a$ et $b$ par $f(a, b)$ et $g(a, b)$. Les trois nombres
écrits forment un **triplet**, et l'ordre des deux nombres choisis compte.

### Deux propriétés des changements

**La somme des carrés ne change pas.** En développant,
$$f(a,b)^2 + g(a,b)^2 = \frac{9a^2 + 24ab + 16b^2 + 16a^2 - 24ab + 9b^2}{25} = a^2 + b^2 .$$
Au départ, $3^2 + 4^2 + 12^2 = 9 + 16 + 144 = 169 = 13^2$. Donc la somme des carrés des trois
nombres écrits vaut toujours $169$.

**Un changement s'annule par un changement.** Si $a' = f(a, b)$ et $b' = g(a, b)$, alors
$$f(a', b') = \frac{3(3a + 4b) + 4(4a - 3b)}{25} = a, \qquad
g(a', b') = \frac{4(3a + 4b) - 3(4a - 3b)}{25} = b .$$
En choisissant $a'$ puis $b'$, Morgane retrouve $a$ et $b$. Donc si elle peut passer d'un triplet
$T$ à un triplet $T'$, elle peut aussi revenir de $T'$ à $T$.

**Les nombres écrits.** Par récurrence, tout nombre écrit est de la forme $\dfrac{m}{5^j}$ avec
$m$ entier et $j \geqslant 0$ entier : c'est vrai au départ, et si $a = \dfrac{p}{5^j}$ et
$b = \dfrac{q}{5^j}$ (on peut prendre le même dénominateur), alors
$f(a,b) = \dfrac{3p + 4q}{5^{j+1}}$ et $g(a,b) = \dfrac{4p - 3q}{5^{j+1}}$.

### Question 1 : le nombre $13$

Supposons que Morgane écrive $13$, avec deux autres nombres $x$ et $y$. Alors
$x^2 + y^2 + 13^2 = 169$, donc $x^2 + y^2 = 0$ et $x = y = 0$. Elle aurait donc atteint le
triplet $(0, 0, 13)$, et en annulant ses changements un par un, elle pourrait revenir de
$(0, 0, 13)$ à $(3, 4, 12)$.

Disons qu'un nombre est **bon** s'il s'écrit $\dfrac{13m}{5^j}$ avec $m$ entier. Les trois
nombres $0$, $0$, $13$ sont bons. Si $a$ et $b$ sont bons, on peut les écrire
$a = \dfrac{13p}{5^j}$ et $b = \dfrac{13q}{5^j}$, et alors
$$f(a, b) = \frac{13\,(3p + 4q)}{5^{j+1}}, \qquad g(a, b) = \frac{13\,(4p - 3q)}{5^{j+1}}$$
sont bons. Donc, en partant de $(0, 0, 13)$, on n'écrit que des nombres bons.

Or $3$ n'est pas bon : sinon $3 \times 5^j = 13m$, et le nombre premier $13$ apparaîtrait dans la
décomposition en facteurs premiers de $3 \times 5^j$, ce qui est faux. On ne peut donc pas revenir
de $(0, 0, 13)$ à $(3, 4, 12)$.

**Morgane ne peut pas écrire le nombre $13$.**

### Question 2 : le nombre $-12$

On va montrer mieux : **les seuls entiers que Morgane peut écrire sont $0$, $\pm 3$, $\pm 4$,
$\pm 5$ et $12$.** On note $\Omega$ cet ensemble de nombres. Le nombre $-12$ n'y est pas.

**L'ordre d'un triplet.** Pour un nombre $x$ écrit au tableau, il existe un plus petit entier
$j \geqslant 0$ tel que $5^j x$ soit entier : on l'appelle l'**ordre** de $x$. Les entiers sont
les nombres d'ordre $0$. L'ordre d'un triplet est le plus grand des ordres de ses trois nombres.

Si un triplet $(x_1, x_2, x_3)$ est d'ordre au plus $n$, on pose $X_u = 5^n x_u$ : ce sont des
entiers. Le nombre $x_u$ est d'ordre exactement $n$ si et seulement si $X_u$ n'est pas un multiple
de $5$ (lorsque $X_u = 5Y$, on a $5^{n-1} x_u = Y$ entier).

**Étape A : dans un triplet d'ordre $n \geqslant 1$, exactement deux nombres sont d'ordre $n$.**
Avec les notations ci-dessus,
$$X_1^2 + X_2^2 + X_3^2 = 25^n \times 169,$$
qui est un multiple de $5$. Le carré d'un multiple de $5$ est un multiple de $5$. Le carré d'un
entier qui n'est pas multiple de $5$ a pour reste $1$ ou $4$ dans la division par $5$ (il suffit
de regarder les restes $1, 2, 3, 4$, dont les carrés sont $1, 4, 9, 16$). Au moins un des $X_u$
n'est pas multiple de $5$, puisque l'ordre vaut exactement $n$.

- S'il y en a un seul, la somme a pour reste $1$ ou $4$ : impossible.
- S'il y en a trois, la somme des restes vaut $3$, $6$, $9$ ou $12$, ce qui ne donne jamais un
  multiple de $5$ : impossible.

Il y en a donc exactement deux.

**Étape B : quand l'ordre vient d'augmenter, seul le retour en arrière le fait baisser.**
Soit $T$ un triplet d'ordre au plus $n$ (avec $n \geqslant 0$), et supposons qu'un changement sur
les places $i$ et $j$ (dans cet ordre) donne un triplet $U$ d'ordre $n + 1$. On note $k$ la
troisième place, et $X_u = 5^n x_u$ comme plus haut. Avec $Y_u = 5^{n+1} y_u$ pour les nombres
$y_u$ de $U$ :
$$Y_i = 3X_i + 4X_j, \qquad Y_j = 4X_i - 3X_j, \qquad Y_k = 5 X_k .$$
Comme $Y_k$ est multiple de $5$, l'étape A dit que **$Y_i$ et $Y_j$ ne sont pas multiples de $5$**.

Faisons maintenant un changement sur $U$, sur deux places $p$ puis $q$, et notons
$Z_u = 5^{n+2} z_u$ pour le nouveau triplet $V$. On a $Z_p = 3Y_p + 4Y_q$ et $Z_q = 4Y_p - 3Y_q$.
Le triplet $V$ est d'ordre $n + 2$ dès que l'un des $Z_u$ n'est pas multiple de $5$.

- Si $k$ est l'une des deux places choisies, l'autre étant $i$ : selon l'ordre, $Z_i = 3Y_i + 4Y_k$
  ou $Z_k = 3Y_k + 4Y_i$. Comme $Y_k$ est multiple de $5$, ce nombre diffère de $3Y_i$ ou de $4Y_i$
  par un multiple de $5$. Or ni $3Y_i$ ni $4Y_i$ n'est multiple de $5$. Donc $V$ est d'ordre $n+2$.
  Même chose si l'autre place est $j$.
- Si Morgane choisit $j$ puis $i$ :
  $Z_j = 3Y_j + 4Y_i = 3(4X_i - 3X_j) + 4(3X_i + 4X_j) = 24X_i + 7X_j$. Donc
  $Z_j - Y_j = 20X_i + 10X_j$ est multiple de $5$, et comme $Y_j$ ne l'est pas, $Z_j$ non plus.
  Donc $V$ est d'ordre $n + 2$.
- Il reste le choix $i$ puis $j$, qui ramène à $T$.

Conclusion de l'étape B : **à partir de $U$, tout changement fait monter l'ordre à $n + 2$, sauf
celui qui ramène à $T$.**

**Étape C : un chemin le plus court ne passe que par des entiers.** Supposons que Morgane puisse
écrire $-12$. Parmi toutes les suites de changements qui y parviennent, prenons-en une de longueur
$k$ minimale : $T_0 = (3, 4, 12)$, $T_1$, ..., $T_k$, où $T_k$ contient $-12$. Aucun des triplets
$T_0, \ldots, T_{k-1}$ ne contient $-12$.

Soit $N$ le plus grand ordre parmi $T_0, \ldots, T_k$, et supposons $N \geqslant 1$. Soit $r$ le
premier rang tel que $T_r$ soit d'ordre $N$. Alors $r \geqslant 1$, et $T_{r-1}$ est d'ordre au
plus $N - 1$.

- Si $r \leqslant k - 1$ : d'après l'étape B, le changement qui mène de $T_r$ à $T_{r+1}$ ramène à
  $T_{r-1}$, puisque sinon $T_{r+1}$ serait d'ordre $N + 1$. Donc $T_{r+1} = T_{r-1}$, et en
  supprimant $T_r$ et $T_{r+1}$, on obtient une suite plus courte qui mène encore à $T_k$.
  C'est contraire au choix de $k$.
- Si $r = k$ : d'après l'étape B, les deux nombres modifiés par le dernier changement sont d'ordre
  $N \geqslant 1$, donc ne sont pas entiers. Le nombre $-12$ est donc le troisième, celui qui n'a
  pas changé : il était déjà dans $T_{k-1}$. C'est encore contraire au choix de $k$.

Donc $N = 0$ : **tous les triplets $T_0, \ldots, T_k$ sont formés d'entiers.**

**Étape D : d'un triplet d'entiers de $\Omega$, on ne sort pas de $\Omega$.**
Cherchons d'abord les triplets d'entiers dont la somme des carrés vaut $169$. Le plus grand des
trois carrés vaut au moins $169/3 > 56$, donc le plus grand nombre en valeur absolue est $8$,
$9$, $10$, $11$, $12$ ou $13$. Il reste alors à écrire $105$, $88$, $69$, $48$, $25$ ou $0$ comme
somme de deux carrés, et en essayant on trouve seulement $25 = 0 + 25 = 9 + 16$ et
$0 = 0 + 0$. Au signe et à l'ordre près, les triplets possibles sont donc
$$(0, 0, 13), \qquad (0, 5, 12), \qquad (3, 4, 12).$$
D'après la question 1, le premier n'apparaît jamais.

Soit maintenant un triplet d'entiers $t$ à valeurs dans $\Omega$, et supposons qu'un changement
sur les places $i$ puis $j$ donne encore un triplet d'entiers $t'$. Les nombres de $t$ sont, à
l'ordre près, $12$ et deux nombres de $\{0, \pm 3, \pm 4, \pm 5\}$.

- Si le $12$ n'est pas modifié, les deux nouveaux nombres $y_i$, $y_j$ sont des entiers avec
  $y_i^2 + y_j^2 = 169 - 144 = 25$, donc ils sont dans $\{0, \pm 3, \pm 4, \pm 5\}$.
- Si $x_i = 12$, il faut que $3 \times 12 + 4x_j = 36 + 4x_j$ soit multiple de $5$, avec
  $x_j \in \{0, \pm 3, \pm 4, \pm 5\}$. On essaie les sept valeurs : seul $x_j = -4$ convient
  ($36 - 16 = 20$). On obtient alors $y_i = 4$ et $y_j = \dfrac{48 + 12}{5} = 12$.
- Si $x_j = 12$, il faut que $3x_i + 48$ soit multiple de $5$ : seul $x_i = 4$ convient
  ($12 + 48 = 60$). On obtient $y_i = 12$ et $y_j = \dfrac{16 - 36}{5} = -4$.

Dans tous les cas, $t'$ est encore à valeurs dans $\Omega$.

**Fin de la question 2.** Le triplet $T_0 = (3, 4, 12)$ est à valeurs dans $\Omega$. D'après
l'étape C, tous les $T_r$ sont des triplets d'entiers, et d'après l'étape D, de proche en proche,
ils sont tous à valeurs dans $\Omega$. Mais $T_k$ contient $-12$, qui n'est pas dans $\Omega$.
C'est une contradiction.

### Conclusion

**Dans les deux cas, la réponse est non : Morgane ne peut écrire ni $13$, ni $-12$.**

## Going further

- Morgane peut écrire $5$ : en choisissant $3$ puis $4$, elle obtient $\dfrac{9 + 16}{5} = 5$
  et $\dfrac{12 - 12}{5} = 0$. Elle peut aussi écrire $-5$ en deux changements : $4$ puis $12$
  donnent $12$ et $-4$, puis $-4$ puis $3$ donnent $0$ et $-5$. Tous les nombres de $\Omega$ sont
  donc bien atteints.
- Elle peut écrire des nombres qui ne sont pas entiers : en choisissant $4$ puis $3$, elle obtient
  $\dfrac{24}{5}$ et $\dfrac{7}{5}$. Mais d'après l'étape C, pour aller d'un triplet d'entiers à
  un autre, passer par des fractions ne sert à rien.
