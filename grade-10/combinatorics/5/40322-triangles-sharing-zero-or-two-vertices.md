---
id: "40322"
title: "Des triangles qui partagent zéro ou deux sommets"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [triangle, denombrement, maximum, construction, disjonction-de-cas, decoupage-en-blocs, recouvrement, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2010, mathématiques, série S"
  reference: "cg-2010-s-sujet.pdf, exercice 2 « Des configurations géométriques », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2010.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2010-s-sujet.pdf"
---

## Statement

Dans le plan, on considère $n$ points ($n \geq 3$), trois d'entre eux n'étant jamais alignés.
On construit des triangles dont les sommets sont choisis parmi ces points, en respectant la
règle suivante.

> **Règle 1.** Deux triangles distincts quelconques ont zéro ou deux sommets en commun, jamais
> un seul.

On appelle $t(n)$ le nombre maximal de triangles que l'on peut ainsi construire.

1. Vérifier que $t(4) = 4$, puis déterminer $t(5)$ et $t(6)$.
2. Montrer que $t(n) \leq n$, puis déterminer la valeur exacte de $t(n)$ en fonction de $n$.

On ajoute maintenant une seconde règle.

> **Règle 2.** Deux triangles distincts quelconques n'ont pas de point intérieur en commun.

Autrement dit, deux triangles ne peuvent pas se chevaucher (ils peuvent avoir un côté commun).
On note $u(n)$ le nombre maximal de triangles que l'on peut construire en respectant les deux
règles, quand on choisit aussi au mieux la position des $n$ points.

3. Vérifier que $u(4) = 3$, puis déterminer $u(5)$ et $u(6)$.
4. Déterminer $u(n)$ en fonction de $n$.

## Hints

1. **Question 1.** Avec $4$ points, combien y a-t-il de triangles en tout ? Deux d'entre eux
   peuvent-ils avoir un seul sommet commun ?
2. **Question 1.** Avec $5$ ou $6$ points, on peut déjà construire $4$ triangles. Pour savoir
   si l'on peut faire mieux, il faut comprendre la question 2.
3. **Question 2.** Supposons construits deux triangles $abc$ et $abd$. Un troisième triangle a
   un sommet commun avec l'un d'eux. Quelles formes peut-il avoir ?
4. **Question 2.** Montrer que les triangles se rangent en « paquets » qui n'ont aucun sommet en
   commun entre eux : soit des triangles qui ont tous le même côté $[ab]$, soit des triangles dont
   les sommets sont pris parmi $4$ points seulement.
5. **Question 2.** Dans chaque paquet, comparer le nombre de triangles et le nombre de points
   utilisés.
6. **Question 2.** Pour la valeur exacte, regarder le reste de la division de $n$ par $4$.
7. **Question 3.** Deux triangles $abx$ et $aby$, avec $x$ et $y$ du même côté de la droite
   $(ab)$, se chevauchent-ils ?
8. **Question 3.** Quatre points sans trois alignés forment soit un quadrilatère convexe, soit un
   triangle avec un point à l'intérieur. Traiter les deux cas.
9. **Question 4.** Reprendre les paquets de la question 2 : combien de triangles au plus peut
   contenir chaque sorte de paquet quand la règle 2 s'applique ?

## Solution

On désigne un triangle par ses trois sommets, par exemple $abc$. Deux triangles distincts ne
peuvent pas avoir trois sommets communs, donc la règle 1 dit que deux triangles construits ont
exactement $0$ ou exactement $2$ sommets communs.

**1.** Avec $4$ points $a$, $b$, $c$, $d$, il y a exactement $4$ triangles : $abc$, $abd$,
$acd$, $bcd$. Chacun laisse de côté un des quatre points ; deux triangles différents laissent de
côté deux points différents, donc ils ont en commun les deux points restants. Les $4$ triangles
respectent la règle 1, et on ne peut pas en construire plus de $4$. Donc $t(4) = 4$.

Avec $5$ ou $6$ points, on peut construire les $4$ triangles de $4$ des points, donc
$t(5) \geq 4$ et $t(6) \geq 4$. La question 2 montre qu'on ne peut pas faire mieux :
**$t(5) = 4$ et $t(6) = 4$.**

**2.** *Étape 1.* Supposons construits $abc$ et $abd$ (avec $c \neq d$), et soit $T$ un autre
triangle construit qui a un sommet commun avec l'un des deux. Alors $T$ a deux sommets communs
avec $abc$ ou avec $abd$, donc il contient l'une des paires $\{a,b\}$, $\{a,c\}$, $\{b,c\}$,
$\{a,d\}$, $\{b,d\}$. Il contient donc $a$ ou $b$.

- S'il contient $a$ et $b$, il est de la forme $abx$.
- S'il contient $a$ mais pas $b$ : il a le sommet $a$ en commun avec $abc$, donc il doit en avoir
  deux, et il contient $c$. De même avec $abd$, il contient $d$. Donc $T = acd$.
- S'il contient $b$ mais pas $a$, on trouve de même $T = bcd$.

*Étape 2 : les paquets.* Partons d'un triangle construit $abc$.

- *S'il n'a aucun voisin*, c'est-à-dire aucun triangle avec deux sommets communs, alors aucun
  autre triangle ne touche ses sommets (un seul sommet commun est interdit). C'est un paquet d'un
  triangle sur $3$ points.
- *S'il a un voisin*, appelons-le $abd$. Deux cas.

  *Cas A : ni $acd$ ni $bcd$ n'est construit.* Soit $E$ l'ensemble des triangles construits qui
  contiennent à la fois $a$ et $b$ : c'est un **éventail** $abx_1$, $abx_2$, …, $abx_k$, avec
  $k \geq 2$. Supposons qu'un triangle $T$ hors de $E$ touche un sommet d'un triangle $abx$ de
  $E$. Choisissons $y$ parmi $c$ et $d$, différent de $x$. L'étape 1, appliquée à $abx$ et $aby$,
  montre que $T = axy$ ou $T = bxy$. Si $x$ est $c$ ou $d$, alors $\{x, y\} = \{c, d\}$ et
  $T$ est $acd$ ou $bcd$, ce qui est exclu. Sinon, disons $y = c$ : alors $T = axc$ ou $bxc$, et
  $T$ n'a qu'un seul sommet commun avec $abd$, ce qui est interdit. Donc aucun triangle hors de
  $E$ ne touche les $k + 2$ points de l'éventail.

  *Cas B : $acd$ ou $bcd$ est construit.* Soit $Q$ l'ensemble des triangles construits parmi
  $abc$, $abd$, $acd$, $bcd$ : c'est un **bloc** de $3$ ou $4$ triangles sur les $4$ points
  $a$, $b$, $c$, $d$. Si un autre triangle $T$ touchait l'un de ces points, il toucherait $abc$
  ou $abd$, donc d'après l'étape 1 il serait de la forme $abx$ avec $x$ ni $c$ ni $d$. Mais
  $abx$ n'a qu'un sommet commun avec celui des triangles $acd$, $bcd$ qui est construit :
  c'est interdit. Donc aucun autre triangle ne touche $a$, $b$, $c$, $d$.

Ainsi les triangles construits se rangent en paquets qui n'ont aucun point en commun : des
éventails de $k$ triangles sur $k + 2$ points ($k \geq 1$), et des blocs de $3$ ou $4$ triangles
sur $4$ points. Il peut aussi rester des points inutilisés.

*Majoration.* Dans chaque paquet, il y a au plus autant de triangles que de points
($k \leq k + 2$, et $3$ ou $4$ triangles pour $4$ points). En additionnant, le nombre de
triangles est au plus le nombre de points utilisés, donc au plus $n$ : **$t(n) \leq n$.**

*Valeur exacte.* Appelons *déficit* d'un paquet la différence « nombre de points moins nombre
de triangles » : il vaut $0$ pour un bloc de $4$ triangles, $1$ pour un bloc de $3$ triangles,
$2$ pour un éventail. Comptons aussi un déficit de $1$ pour chaque point inutilisé. Le nombre de
triangles est égal à $n$ moins la somme des déficits.

- Si la somme des déficits est $0$, il n'y a que des blocs de $4$ points : $n$ est un multiple
  de $4$.
- Si elle vaut $1$, il y a un seul élément de déficit $1$ (un bloc de $3$ triangles, ou un point
  inutilisé) et sinon des blocs de $4$ points : $n$ est un multiple de $4$, ou un multiple de $4$
  plus $1$.

Donc la somme des déficits est au moins $1$ quand $n$ a pour reste $1$ dans la division par $4$,
et au moins $2$ quand le reste est $2$ ou $3$. Ces valeurs sont atteintes. Écrivons $n = 4q + s$.
On répartit $4q$ points en $q$ groupes de $4$ et on construit dans chaque groupe les $4$
triangles (deux groupes différents n'ont aucun sommet commun). Si $s = 1$ ou $s = 2$, on laisse
les points restants inutilisés. Si $s = 3$, on ajoute le triangle des $3$ points restants.

**Conclusion :**
$$t(n) = n \text{ si } n = 4q, \quad t(n) = n - 1 \text{ si } n = 4q + 1, \quad t(n) = n - 2 \text{ si } n = 4q + 2 \text{ ou } n = 4q + 3 .$$
En particulier $t(5) = 4$, $t(6) = 4$, et par exemple $t(7) = 5$, $t(8) = 8$.

**3.** Deux remarques.

- *Remarque (i).* Si $x$ et $y$ sont du même côté de la droite $(ab)$, les triangles $abx$ et $aby$ se
  chevauchent : les points très proches du milieu de $[ab]$, de ce côté, sont à l'intérieur des
  deux triangles.
- *Remarque (ii).* Quatre points sans trois alignés forment soit un quadrilatère convexe, soit un triangle
  avec le quatrième point à l'intérieur.

Avec $4$ points, les triangles possibles sont $abc$, $abd$, $acd$, $bcd$.

*Quadrilatère convexe $abcd$* (sommets dans cet ordre). Deux triangles qui ont en commun un côté
du quadrilatère se chevauchent d'après (i), car les deux autres sommets sont du même côté de ce
côté. Les seules paires qui ne se chevauchent pas sont $\{abc, acd\}$ et $\{abd, bcd\}$, qui
ont en commun une diagonale. Parmi trois triangles, deux viennent de paires différentes et se
chevauchent. On construit donc au plus $2$ triangles.

*Point $d$ à l'intérieur du triangle $abc$.* Le triangle $abc$ contient les trois autres, donc
il les chevauche tous. Les triangles $abd$, $bcd$, $cad$, eux, ne se chevauchent pas : par
exemple $abd$ et $bcd$ sont de part et d'autre de la droite $(bd)$, car cette droite traverse le
côté $[ac]$. Ils ont deux à deux deux sommets communs. On en construit donc $3$, et pas plus.

Ainsi **$u(4) = 3$**. La question 4 donne **$u(5) = 3$ et $u(6) = 3$**.

**4.** Les triangles respectent toujours la règle 1, donc ils se rangent encore en paquets comme à
la question 2. La règle 2 limite chaque paquet.

- Un éventail $abx_1, \ldots, abx_k$ : d'après (i), il y a au plus un $x_i$ de chaque côté de la
  droite $(ab)$, donc $k \leq 2$. C'est un triangle seul sur $3$ points, ou une **paire** de
  triangles sur $4$ points.
- Un bloc sur $4$ points : d'après la question 3, au plus $3$ triangles, et seulement quand un
  des points est à l'intérieur du triangle des trois autres. Comme un bloc a au moins $3$
  triangles, c'est un **bloc de $3$ triangles sur $4$ points**.

Notons $\beta$ le nombre de blocs, $\pi$ le nombre de paires, $\sigma$ le nombre de triangles
seuls et $\iota$ le nombre de points inutilisés. Alors
$$n = 4\beta + 4\pi + 3\sigma + \iota, \qquad u = 3\beta + 2\pi + \sigma ,$$
où $u$ est le nombre de triangles construits. On en tire
$$3n - 4u = 4\pi + 5\sigma + 3\iota .$$
Appelons $D$ ce nombre. C'est une somme de $4$, de $5$ et de $3$, donc il ne peut valoir ni $1$
ni $2$. Écrivons $n = 4q + s$ avec $s \in \{0, 1, 2, 3\}$, de sorte que $4u = 12q + 3s - D$.

- $s = 0$ : $D \geq 0$, donc $4u \leq 12q$ et $u \leq 3q$.
- $s = 1$ : $4u = 12q + 3 - D$ est un multiple de $4$, donc $D \geq 3$ et $u \leq 3q$.
- $s = 2$ : $4u = 12q + 6 - D$, donc $D$ a pour reste $2$ dans la division par $4$. Comme
  $D \neq 2$, on a $D \geq 6$ et $u \leq 3q$.
- $s = 3$ : $4u = 12q + 9 - D$, donc $D$ a pour reste $1$. Comme $D \neq 1$, on a $D \geq 5$ et
  $u \leq 3q + 1$.

Ces valeurs sont atteintes : on place $q$ groupes de $4$ points loin les uns des autres, chaque
groupe formé d'un triangle avec un point à l'intérieur, et on construit les $3$ triangles qui
ont ce point pour sommet. Si $s = 3$, on ajoute loin des autres un triangle formé des $3$ points
restants. On peut placer tous ces points sans que trois soient alignés.

**Conclusion :** en écrivant $n = 4q + s$ avec $s \in \{0, 1, 2, 3\}$,
$$u(n) = 3q \text{ si } s = 0, 1 \text{ ou } 2, \qquad u(n) = 3q + 1 \text{ si } s = 3 .$$
Par exemple $u(4) = u(5) = u(6) = 3$ et $u(7) = 4$.

**Bilan.** Sous la règle 1, les triangles se groupent en éventails (tous autour d'un même côté)
et en blocs (tous dans un même groupe de $4$ points). Le meilleur paquet est le bloc complet de
$4$ triangles sur $4$ points, ce qui donne $t(n) = n$ quand $n$ est un multiple de $4$. Quand
on interdit aussi les chevauchements, le meilleur paquet devient un triangle avec un point
intérieur, qui donne $3$ triangles pour $4$ points.
