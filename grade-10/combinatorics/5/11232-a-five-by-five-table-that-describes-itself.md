---
id: "11232"
title: "Un tableau 5 × 5 qui se décrit lui-même"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [tableau, double-comptage, disjonction-de-cas, autodescriptif, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (la solution ici réorganise celle du corrigé et détaille tous les cas, que le corrigé expédie par « on tombe assez rapidement » ; le corrigé a plusieurs coquilles : sa formule f) décale les indices, avec « 5y5 » et « x1 + … + x5 » ; il écrit « f(1, 1) = 1 et f(1, 1) = 5 » pour dire que L1 ne peut pas contenir que des 1 ; « il n'y a donc pas de 4 sur L3 » au lieu de L2 ; « par utilisation de c) » au lieu de f))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

On considère des tableaux de $5 \times 5$ cases. Les lignes sont notées $L_0, L_1, L_2, L_3, L_4$
de bas en haut, et les colonnes $C_0, C_1, C_2, C_3, C_4$ de gauche à droite. Dans chaque case, on
écrit un nombre. Le nombre écrit dans la case de la ligne $L_i$ et de la colonne $C_j$ est noté
$f(i, j)$.

Un tableau est dit **cohérent** lorsque, pour tous $i$ et $j$ compris entre $0$ et $4$ :

> le nombre $f(i, j)$ est égal au nombre de cases de la ligne $L_j$ dans lesquelles est écrit le
> nombre $i$.

Déterminer tous les tableaux cohérents.

## Hints

1. Que t'apprend la colonne $C_j$ sur la ligne $L_j$ ? Que vaut la somme des nombres de la ligne
   $L_v$ ? Et que signifie un $0$ dans la ligne $L_v$ ?
2. Montre que $f(0, 0) \geqslant 1$, puis qu'aucune case ne contient $5$. Écris alors deux
   égalités : l'une avec le nombre total de cases, l'autre avec la somme de tous les nombres du
   tableau.
3. Si la ligne $L_v$ ne contient aucun $0$, alors toutes les lignes contiennent $v$. Montre que
   seule $L_1$ peut être dans ce cas, et qu'elle l'est.
4. Montre que le nombre $1$ est écrit au moins $8$ fois. Compte ensuite les $0$ du tableau de deux
   façons : tu verras que les lignes $L_2$, $L_3$ et $L_4$ ne contiennent presque que des $0$ et
   des $1$.
5. Il reste quelques cas, selon les deux nombres de droite de la ligne $L_0$.

## Solution

On écrit une ligne entre parenthèses, de la colonne $C_0$ à la colonne $C_4$. Pour chaque nombre
$v$ de $0$ à $4$, on note $n_v$ le nombre de cases du tableau qui contiennent $v$.

Prenons un tableau cohérent.

**Étape 0. Trois façons de lire le tableau.**

- **(R1)** La colonne $C_j$ est la « fiche » de la ligne $L_j$ : de bas en haut, elle dit combien
  $L_j$ contient de $0$, de $1$, de $2$, de $3$ et de $4$.
- **(R2)** La ligne $L_v$ contient les nombres de $v$ des lignes $L_0$, $L_1$, …, $L_4$. Leur somme
  est le nombre total de $v$ dans le tableau : **la somme de la ligne $L_v$ vaut $n_v$.**
- **(R3)** La case de $L_v$ située dans la colonne $C_j$ contient $0$ exactement quand la ligne
  $L_j$ ne contient pas $v$. Donc **le nombre de $0$ de $L_v$, qui vaut $f(0, v)$, est le nombre de lignes qui ne
  contiennent pas $v$.** En particulier, $L_v$ ne contient aucun $0$ exactement quand toutes les
  lignes contiennent $v$.

Enfin, chaque $f(i, j)$ compte des cases parmi les $5$ cases d'une ligne : c'est un entier de $0$
à $5$.

**Étape 1. La ligne $L_0$ contient un $0$.** Si on avait $f(0, 0) = 0$, la case $f(0, 0)$, qui est
dans $L_0$, contiendrait un $0$, donc $L_0$ contiendrait au moins un $0$, et on aurait
$f(0, 0) \geqslant 1$. C'est contradictoire. Donc $f(0, 0) \geqslant 1$ : $L_0$ contient un $0$.

**Étape 2. Aucune case ne contient $5$.** Supposons que $f(i, j) = 5$. Les cinq cases de $L_j$
contiennent alors le nombre $i$. La case $f(j, j)$ est dans $L_j$, donc $f(j, j) = i$.

- Si $i \neq 0$, alors $f(j, j) \geqslant 1$, donc $L_j$ contient le nombre $j$. Comme $L_j$ ne
  contient que des $i$, on a $j = i$, puis $5 = f(i, j) = f(j, j) = i$. C'est impossible, car $i$
  est compris entre $0$ et $4$.
- Si $i = 0$, la ligne $L_j$ ne contient que des $0$, et $j \neq 0$ d'après l'étape 1. Pour
  $k = 1, 2, 3, 4$, la ligne $L_j$ ne contient aucun $k$, donc $f(k, j) = 0$ : chacune des lignes
  $L_1$, $L_2$, $L_3$, $L_4$ contient un $0$, dans la colonne $C_j$. La ligne $L_0$ en contient
  un aussi. Toutes les lignes contiennent $0$, donc d'après (R3), $L_0$ ne contient aucun $0$. Cela
  contredit l'étape 1.

Toutes les cases contiennent donc un entier de $0$ à $4$. Les cinq nombres d'une ligne sont tous
comptés dans sa fiche : **chaque colonne a pour somme $5$.**

**Étape 3. Deux égalités.** Les $25$ cases contiennent chacune un nombre de $0$ à $4$, d'où
l'égalité (E1) :
$$n_0 + n_1 + n_2 + n_3 + n_4 = 25 .$$
La somme de tous les nombres du tableau vaut $5 \times 5 = 25$ si on la calcule colonne par colonne,
et $0 \times n_0 + 1 \times n_1 + 2 \times n_2 + 3 \times n_3 + 4 \times n_4$ si on la calcule
nombre par nombre. D'où l'égalité (E2) :
$$n_1 + 2n_2 + 3n_3 + 4n_4 = 25 .$$

**Étape 4. $L_1$ est la seule ligne sans $0$.** Supposons que $L_i$ ne contienne aucun $0$. D'après
(R3), toutes les lignes contiennent $i$.

- $i = 0$ est impossible, d'après l'étape 1.
- Si $i \geqslant 2$ : chaque ligne $L_v$ contient une case égale à $i$, donc sa somme $n_v$ est au
  moins $i$, donc au moins $2$. De plus, $L_i$ contient une case égale à $i$ et quatre autres cases
  au moins égales à $1$, donc $n_i \geqslant i + 4 \geqslant 6$. Alors
  $$n_1 + 2n_2 + 3n_3 + 4n_4 \geqslant 2 \times (1 + 2 + 3 + 4) + 4i \geqslant 20 + 8 = 28,$$
  ce qui contredit (E2).

Seule $L_1$ peut donc n'avoir aucun $0$. Or $L_0$ contient un $0$, dans une colonne $C_j$ : d'après
(R3), la ligne $L_j$ n'a aucun $0$. C'est donc que $j = 1$. Ainsi $L_1$ ne contient aucun $0$, toutes
les autres lignes en contiennent, et $L_0$ contient un seul $0$, dans la colonne $C_1$. Donc
$f(0, 0) = 1$, et
$$L_0 = (1, 0, \alpha, \beta, \gamma) \quad \text{avec } \alpha, \beta, \gamma \geqslant 1 .$$
Enfin, comme $L_1$ n'a aucun $0$, **toutes les lignes contiennent au moins un $1$.**

**Étape 5. Le nombre $1$ est écrit au moins $8$ fois.** Notons $t = f(1, 1)$ le nombre de $1$ de
$L_1$. Toutes les lignes contiennent un $1$, donc $t \geqslant 1$, et $t \leqslant 4$. Dans $L_1$,
qui n'a aucun $0$, toute case qui ne contient pas $1$ contient au moins $2$.

- Si $t = 1$, la case $f(1, 1)$ est le seul $1$ de $L_1$, et les quatre autres cases valent au moins
  $2$ : $n_1 \geqslant 1 + 4 \times 2 = 9$.
- Si $t \geqslant 2$, la case $f(1, 1) = t$ n'est pas un $1$. La ligne $L_1$ contient donc $t$ cases
  égales à $1$, la case $f(1, 1) = t$, et $4 - t$ autres cases qui valent au moins $2$ :
  $n_1 \geqslant t + t + 2(4 - t) = 8$.

D'après (R2), dans tous les cas, $n_1 \geqslant 8$.

**Étape 6. On compte les $0$ de deux façons.** Pour chaque $v$, notons $r_v$ le nombre de lignes qui
contiennent $v$. D'après (R3), la ligne $L_v$ a $5 - r_v$ cases nulles et $r_v$ cases non nulles.
Posons $e_v = n_v - r_v$. Chacune des $r_v$ cases non nulles de $L_v$ vaut au moins $1$, et leur
somme vaut $n_v$. Le nombre $e_v$ est donc la somme des « excès » $(\text{case} - 1)$ des cases non
nulles de $L_v$. Une case égale à $2$ apporte $1$ à $e_v$, une case égale à $3$ ou $4$ apporte au
moins $2$.

*Première façon.* La ligne $L_0$ est formée des $f(0, v)$, qui valent $5 - r_v$. Comme $r_0 = 4$
(toutes les lignes sauf $L_1$ contiennent $0$) et $r_1 = 5$, on obtient
$$n_0 = 25 - r_0 - r_1 - r_2 - r_3 - r_4 = 16 - r_2 - r_3 - r_4 .$$

*Deuxième façon.* En retranchant (E1) de (E2), on obtient $n_2 + 2n_3 + 3n_4 - n_0 = 0$, donc
$n_0 = n_2 + 2n_3 + 3n_4$.

Ainsi $n_2 + 2n_3 + 3n_4 + r_2 + r_3 + r_4 = 16$. En ajoutant $e_2 + e_3 + e_4$ des deux côtés, on
trouve
$$2n_2 + 3n_3 + 4n_4 = 16 + e_2 + e_3 + e_4 ,$$
puis, d'après (E2), $n_1 = 9 - (e_2 + e_3 + e_4)$. Comme $n_1 \geqslant 8$, on a
$e_2 + e_3 + e_4 \leqslant 1$. Autrement dit :

> **(C)** Dans les lignes $L_2$, $L_3$ et $L_4$, toutes les cases contiennent $0$ ou $1$, sauf au
> plus une case en tout, qui contient $2$.

**Étape 7. Les lignes $L_3$ et $L_4$.** D'après (C), les lignes $L_2$, $L_3$, $L_4$ ne contiennent
aucun $3$ ni aucun $4$. Donc $f(3, 2) = f(3, 3) = f(3, 4) = 0$, et de même pour $4$ :
$$L_3 = (a, b, 0, 0, 0) \qquad \text{et} \qquad L_4 = (c, d, 0, 0, 0),$$
où $a$ et $b$ sont les nombres de $3$ de $L_0$ et de $L_1$, et $c$ et $d$ leurs nombres de $4$.
D'après (C), $a$, $b$, $c$, $d$ valent $0$, $1$ ou $2$. D'après l'étape 4, $L_3$ et $L_4$ contiennent
un $1$.

Le nombre $\beta = f(0, 3)$ est le nombre de $0$ de $L_3$. Il vaut au moins $3$, et pas $5$, d'après
l'étape 2. Donc $\beta = 3$ quand $a$ et $b$ sont tous les deux non nuls, et $\beta = 4$ quand un
seul des deux l'est. De même, $\gamma$ vaut $3$ ou $4$, selon que $c$ et $d$ sont tous les deux non
nuls ou non. Rappelons que $a$ est le nombre de $3$ et $c$ le nombre de $4$ de
$L_0 = (1, 0, \alpha, \beta, \gamma)$.

**Étape 8. Les quatre cas.**

*Cas 1 : $\beta = \gamma = 4$.* Alors $L_0$ contient au moins deux $4$, donc $c = 2$, et comme
$\gamma = 4$, $d = 0$. La ligne $L_4 = (2, 0, 0, 0, 0)$ ne contient aucun $1$ : c'est impossible.

*Cas 2 : $\beta = \gamma = 3$.* Alors $L_0$ contient au moins deux $3$, donc $a = 2$, et
$L_3 = (2, b, 0, 0, 0)$. Ce $2$ est le seul permis par (C), donc $b \leqslant 1$ et $d \leqslant 1$, et comme $b \neq 0$
(car $\beta = 3$), $b = 1$. Comme
$\gamma = 3$, $c$ et $d$ sont non nuls : $d = 1$, et $L_0$ contient un $4$, qui ne peut être que
$\alpha$. Donc $\alpha = 4$, $c = 1$ et $L_4 = (1, 1, 0, 0, 0)$. Cette ligne contient deux $1$,
donc $f(1, 4) = 2$ : la ligne $L_1$ contient un $2$, et $L_3$ aussi. Au moins deux lignes
contiennent $2$, donc d'après (R3), $L_2$ a au plus trois $0$, c'est-à-dire $\alpha \leqslant 3$.
Cela contredit $\alpha = 4$.

*Cas 3 : $\beta = 3$ et $\gamma = 4$.* Comme $\gamma = 4$, un seul des nombres $c$ et $d$ est non
nul. Or $L_0$ contient le $4$ de la colonne $C_4$, donc $c \geqslant 1$, puis $d = 0$. Comme $L_4$
contient un $1$, on a $c = 1$ : $L_4 = (1, 0, 0, 0, 0)$, et $L_0$ ne contient qu'un seul $4$, donc
$\alpha \neq 4$. Il reste trois valeurs pour $\alpha$.

- $\alpha = 1$. D'après (R3), quatre lignes contiennent $2$. Mais $L_0 = (1, 0, 1, 3, 4)$ et
  $L_4 = (1, 0, 0, 0, 0)$ n'en contiennent pas. C'est impossible.
- $\alpha = 2$. Alors $L_0 = (1, 0, 2, 3, 4)$, donc $a = 1$ et $L_3 = (1, b, 0, 0, 0)$, avec
  $b = 1$ ou $b = 2$. D'après (R3), trois lignes contiennent $2$, dont $L_0$.
  - Si $b = 2$, ce $2$ de $L_3$ est le seul permis par (C). La ligne $L_2$ ne contient donc que des
    $0$ et des $1$, et comme elle a trois cases non nulles, $f(1, 2) = 3$. On lit les nombres de
    $1$ des lignes $L_0$, $L_3$, $L_4$ : $L_1 = (1, t, 3, 1, 1)$. Elle doit contenir $b = 2$ fois
    le nombre $3$, donc $t = 3$ et $L_1 = (1, 3, 3, 1, 1)$, qui ne contient pas de $2$. Les lignes
    $L_1$, $L_2$, $L_4$ ne contiennent pas de $2$ : au plus deux lignes en contiennent, au lieu de
    trois. C'est impossible.
  - Si $b = 1$, alors $L_3 = (1, 1, 0, 0, 0)$, donc $f(1, 3) = 2$, et $L_1$ contient un $2$. Les
    trois lignes qui contiennent $2$ sont $L_0$, $L_1$, et forcément $L_2$, puisque $L_3$ et $L_4$
    n'en contiennent pas. Donc $L_2 = (1, u, x, 0, 0)$, où $u \geqslant 1$ est le nombre de $2$ de
    $L_1$ et $x \geqslant 1$ celui de $L_2$. Les $2$ de $L_2$ ne peuvent être que $u$ ou $x$, et
    d'après (C), au plus un des deux vaut $2$. Si $x = 2$, alors $u = 1$ et $L_2$ ne contient qu'un
    seul $2$ : contradiction. Donc $x = 1$, il y a un $2$ dans $L_2$, c'est $u$ :
    $L_2 = (1, 2, 1, 0, 0)$ et $f(1, 2) = 2$. Ainsi $L_1 = (1, t, 2, 2, 1)$, qui doit contenir
    $b = 1$ fois le nombre $3$ : $t = 3$. Mais $L_1 = (1, 3, 2, 2, 1)$ contient deux $1$, et non
    trois. C'est impossible.
- $\alpha = 3$. Alors $L_0 = (1, 0, 3, 3, 4)$, donc $a = 2$ et $L_3 = (2, b, 0, 0, 0)$. Ce $2$ est le
  seul permis par (C), donc $b = 1$ (car $b \geqslant 1$ quand $\beta = 3$) :
  $L_3 = (2, 1, 0, 0, 0)$. La ligne $L_2$ ne contient que des $0$ et des $1$, et elle a trois $0$,
  donc deux $1$ : $f(1, 2) = 2$. En lisant les nombres de $1$ de $L_0$, $L_2$, $L_3$, $L_4$, on
  obtient $L_1 = (1, t, 2, 1, 1)$. En dehors de la case $t$, elle contient trois $1$. Si $t$ valait
  $1$, il y en aurait quatre, donc $t \neq 1$ et $t = 3$ : $L_1 = (1, 3, 2, 1, 1)$. Enfin, en
  lisant les nombres de $2$ de chaque ligne, $L_2 = (0, 1, x, 1, 0)$, où $x = 0$ puisque $L_2$ ne
  contient pas de $2$ : $L_2 = (0, 1, 0, 1, 0)$.

  On obtient un seul tableau, le tableau $T_1$ ci-dessous.

*Cas 4 : $\beta = 4$ et $\gamma = 3$.* C'est le même raisonnement, en échangeant les rôles de $3$ et
de $4$. Comme $\beta = 4$, un seul des nombres $a$ et $b$ est non nul. Or $L_0$ contient le $3$ de la
colonne $C_4$, donc $a \geqslant 1$, puis $b = 0$, et comme $L_3$ contient un $1$,
$L_3 = (1, 0, 0, 0, 0)$. La ligne $L_0$ ne contient qu'un seul $3$, donc $\alpha \neq 3$.

- $\alpha = 1$. Quatre lignes devraient contenir $2$, mais $L_0 = (1, 0, 1, 4, 3)$ et
  $L_3 = (1, 0, 0, 0, 0)$ n'en contiennent pas. C'est impossible.
- $\alpha = 2$. Alors $L_0 = (1, 0, 2, 4, 3)$, donc $c = 1$ et $L_4 = (1, d, 0, 0, 0)$, avec $d = 1$
  ou $d = 2$. Trois lignes contiennent $2$, dont $L_0$.
  - Si $d = 2$, la ligne $L_2$ ne contient que des $0$ et des $1$, et en a trois non nuls :
    $f(1, 2) = 3$, puis $L_1 = (1, t, 3, 1, 1)$. Elle doit contenir $d = 2$ fois le nombre $4$,
    alors que seule la case $t$ peut valoir $4$. C'est impossible.
  - Si $d = 1$, alors $L_4 = (1, 1, 0, 0, 0)$, $f(1, 4) = 2$ et $L_1$ contient un $2$. Exactement
    comme dans le cas 3, on obtient $L_2 = (1, 2, 1, 0, 0)$, puis $L_1 = (1, t, 2, 1, 2)$. Elle doit
    contenir $d = 1$ fois le nombre $4$, donc $t = 4$. Mais $L_1 = (1, 4, 2, 1, 2)$ contient deux
    $1$, et non quatre. C'est impossible.
- $\alpha = 4$. Alors $L_0 = (1, 0, 4, 4, 3)$, donc $c = 2$ et $L_4 = (2, d, 0, 0, 0)$. Ce $2$ est le
  seul permis par (C), donc $d = 1$ (car $d \geqslant 1$ quand $\gamma = 3$) :
  $L_4 = (2, 1, 0, 0, 0)$. La ligne $L_2$ ne contient que des
  $0$ et des $1$, et elle a quatre $0$, donc un seul $1$ : $f(1, 2) = 1$. En lisant les nombres de
  $1$ des lignes, $L_1 = (1, t, 1, 1, 1)$. En dehors de la case $t$, elle contient quatre $1$, donc
  $t \neq 1$ et $t = 4$ : $L_1 = (1, 4, 1, 1, 1)$. Enfin, en lisant les nombres de $2$ de chaque
  ligne, $L_2 = (0, 0, 0, 0, 1)$.

  On obtient un seul tableau, le tableau $T_2$ ci-dessous.

**Étape 9. Vérification.** Voici les deux tableaux trouvés, avec $L_4$ en haut et $L_0$ en bas,
comme dans l'énoncé.

Tableau $T_1$ :

|         | $C_0$ | $C_1$ | $C_2$ | $C_3$ | $C_4$ |
|---------|:-----:|:-----:|:-----:|:-----:|:-----:|
| $L_4$   |   1   |   0   |   0   |   0   |   0   |
| $L_3$   |   2   |   1   |   0   |   0   |   0   |
| $L_2$   |   0   |   1   |   0   |   1   |   0   |
| $L_1$   |   1   |   3   |   2   |   1   |   1   |
| $L_0$   |   1   |   0   |   3   |   3   |   4   |

Tableau $T_2$ :

|         | $C_0$ | $C_1$ | $C_2$ | $C_3$ | $C_4$ |
|---------|:-----:|:-----:|:-----:|:-----:|:-----:|
| $L_4$   |   2   |   1   |   0   |   0   |   0   |
| $L_3$   |   1   |   0   |   0   |   0   |   0   |
| $L_2$   |   0   |   0   |   0   |   0   |   1   |
| $L_1$   |   1   |   4   |   1   |   1   |   1   |
| $L_0$   |   1   |   0   |   4   |   4   |   3   |

Il faut vérifier que chaque colonne est bien la fiche de sa ligne. Par exemple, dans $T_1$, la
colonne $C_0$ se lit de bas en haut $1, 1, 0, 2, 1$, et la ligne $L_0 = (1, 0, 3, 3, 4)$ contient
bien un $0$, un $1$, aucun $2$, deux $3$ et un $4$. Les neuf autres vérifications se font de la
même façon, et elles sont toutes justes.

**Conclusion : il y a exactement deux tableaux cohérents, les tableaux $T_1$ et $T_2$.**

## Going further

- Le même problème a une version plus courte avec des nombres. Le nombre $21\,200$ « se décrit
  lui-même » : son premier chiffre dit qu'il contient deux $0$, le deuxième qu'il contient un $1$,
  le troisième deux $2$, le quatrième aucun $3$, le cinquième aucun $4$. Cherche un nombre de quatre
  chiffres qui a la même propriété (il y en a deux).
- Un ordinateur qui essaie tous les cas ne trouve aucun tableau cohérent de taille $2 \times 2$,
  $3 \times 3$ ou $4 \times 4$. Selon les auteurs de l'exercice, la taille $5 \times 5$ est même la
  seule pour laquelle il existe des tableaux cohérents.
