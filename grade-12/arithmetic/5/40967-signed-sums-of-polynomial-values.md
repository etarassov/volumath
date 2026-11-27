---
id: "40967"
title: "Sommes signées des valeurs d'un polynôme sans diviseur commun"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [polynome, divisibilite, restes, signes, construction, parite, pgcd, maths-expertes]
adapted_from: null
see_also: ["40964", "40965", "40966"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 2 « Sommes consécutives signées », partie 6 « Généralisation », question 18"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

On appelle *signe* un nombre égal à $+1$ ou à $-1$, et *fonction polynomiale à coefficients
entiers* une fonction de la forme $P(x) = a_0 + a_1 x + \cdots + a_d x^d$, où $a_0, \ldots, a_d$
sont des entiers relatifs.

On admet le résultat suivant, démontré dans une partie précédente.

> **(R)** Pour tout entier $d \geqslant 1$, il existe $2^d$ signes $u_0, \ldots, u_{2^d - 1}$ et un
> entier $R_d \neq 0$ tels que, pour tout entier $n \geqslant 1$,
> $$\sum_{i=0}^{2^d - 1} u_i\,(n+i)^d = R_d \qquad \text{et} \qquad \sum_{i=0}^{2^d - 1} u_i\,(n+i)^j = 0 \quad \text{pour } 0 \leqslant j < d.$$

On sait aussi que, pour tout entier $k \geqslant 1$, tout entier $M \geqslant 1$ s'écrit
$\pm 1^k \pm 2^k \pm \cdots \pm n^k$. On veut généraliser ce résultat. Soit $P$ une fonction polynomiale à coefficients entiers. On suppose
qu'il n'existe aucun entier $\delta \geqslant 2$ qui divise $P(n)$ pour tous les entiers
$n \geqslant 1$.

Démontrer que, pour tout entier $M \geqslant 1$, il existe un entier $n \geqslant 1$ et des signes
$\varepsilon_1, \ldots, \varepsilon_n$ tels que

$$M = \varepsilon_1 P(1) + \varepsilon_2 P(2) + \cdots + \varepsilon_n P(n).$$

## Hints

1. Traiter d'abord le cas où $P$ est constante. Ensuite, si $P$ est de degré $d \geqslant 1$, que
   vaut $\sum_i u_i\,P(n+i)$ avec les signes de (R) ?
2. On dispose donc de blocs qui ajoutent $\pm R$, avec $R \neq 0$ fixe. Il suffit d'atteindre une
   somme signée qui a le même reste que $M$ dans la division par $r = \lvert R \rvert$.
3. Si $x$ et $y$ ont le même reste dans la division par $r$, alors $P(x)$ et $P(y)$ aussi. En
   déduire que $r$ divise $P(n) + P(n+1) + \cdots + P(n + r^2 - 1)$, puis qu'un bloc de $r^2$
   termes avec un seul signe $+$ bien placé ajoute $2P(c)$ au reste, pour le $c \in \{1, \ldots, r\}$
   de son choix.
4. Il reste à fabriquer $2$ (ou $1$) avec des $P(c)$ : montrer qu'il existe des entiers
   $\lambda_c \geqslant 0$ tels que $r$ divise $\lambda_1 P(1) + \cdots + \lambda_r P(r) - 1$.
   Considérer l'ensemble $A$ des entiers $\lambda_1 P(1) + \cdots + \lambda_r P(r) + \mu r$, avec
   $\lambda_c \geqslant 0$ et $\mu \in \mathbb{Z}$, et son plus petit élément strictement positif.
5. Comme dans le cas de $x^k$, ajouter $2$ ne change pas la parité : choisir une somme de départ
   $P(1) + \cdots + P(m_0)$ de la même parité que $M$, avec $m_0 \in \{1, 2, 3\}$.

## Solution

*Notations.* Pour deux entiers $x$ et $y$, on note $r \mid x$ pour « $r$ divise $x$ ».

**Cas où $P$ est constante**, égale à $c$. Si $c = 0$, tout entier $\delta \geqslant 2$ divise
toutes les valeurs, ce qui est exclu ; si $\lvert c \rvert \geqslant 2$, $\delta = \lvert c \rvert$
est exclu de même. Donc $c = \pm 1$, et $M = c \times c + c \times c + \cdots + c \times c$ ($M$
termes) convient, avec $\varepsilon_i = c$ et $n = M$.

**Cas où $P$ est de degré $d \geqslant 1$**, de coefficient dominant $a_d \neq 0$.

*Étape 1 : des blocs qui ajoutent $\pm R$.* Avec les signes de (R), pour tout $n \geqslant 1$,

$$\sum_{i} u_i\,P(n+i) = \sum_{j=0}^{d} a_j \sum_{i} u_i\,(n+i)^j = a_d\,R_d.$$

Posons $R = a_d R_d \neq 0$ et $r = \lvert R \rvert$. Placé juste après une somme qui s'arrête en
$n$, ce bloc de $2^d$ termes ajoute $R$ ; avec tous ses signes changés, il ajoute $-R$. Il suffit
donc de construire une somme signée $\Sigma = \varepsilon_1 P(1) + \cdots + \varepsilon_m P(m)$
telle que $r \mid M - \Sigma$ : on écrit $M - \Sigma = t r$ et on ajoute $\lvert t \rvert$ blocs
bien orientés. Si $r = 1$, n'importe quelle somme convient. On suppose désormais $r \geqslant 2$.

*Étape 2 : les restes de $P$.* Si $r \mid x - y$, alors $r \mid x^j - y^j$ pour tout $j$, car
$x^j - y^j = (x - y)(x^{j-1} + x^{j-2}y + \cdots + y^{j-1})$. En combinant,
$r \mid P(x) - P(y)$. Ainsi $P(x)$ a le même reste que $P(y)$ dès que $x$ et $y$ ont le même reste.
Tout entier $m \geqslant 1$ a le même reste qu'un entier de $\{1, \ldots, r\}$, donc
$P(m)$ a le même reste que l'un des nombres $P(1), \ldots, P(r)$.

*Étape 3 : des blocs qui ajoutent $2P(c)$.* Soit $n \geqslant 1$ et
$S = P(n) + P(n+1) + \cdots + P(n + r^2 - 1)$. Parmi ces $r^2$ entiers consécutifs, chaque reste
apparaît exactement $r$ fois, donc, d'après l'étape 2, $S$ a le même reste que
$r\left(P(1) + \cdots + P(r)\right)$, qui est un multiple de $r$. Donc $r \mid S$.

Soit $c \in \{1, \ldots, r\}$. Parmi $n, \ldots, n + r - 1$, un entier $x$ a le même reste que $c$.
Mettons $+$ devant $P(x)$ et $-$ devant les autres termes du bloc : la somme du bloc vaut
$-S + 2P(x)$, qui a le même reste que $2P(c)$. Un tel bloc de $r^2$ termes, placé à la suite d'une
somme, ajoute donc $2P(c)$ à son reste.

*Étape 4 : fabriquer $1$.* Soit $A$ l'ensemble des entiers
$\lambda_1 P(1) + \cdots + \lambda_r P(r) + \mu r$, où les $\lambda_c$ sont des entiers positifs ou
nuls et $\mu$ un entier relatif.

- $A$ est stable par addition (on ajoute les $\lambda$ et les $\mu$).
- $A$ est stable par passage à l'opposé : si $a \in A$, alors $-a = (r-1)a - r a$ ; or $(r-1)a$
  est dans $A$ (somme de $r - 1$ copies de $a$), et retrancher $r a$ ne change que $\mu$.
- $A$ contient $r > 0$. Soit $\delta$ le plus petit élément strictement positif de $A$.

Pour tout $a \in A$, écrivons la division $a = q\delta + \rho$ avec $0 \leqslant \rho < \delta$.
Comme $A$ est stable par addition et par opposé, $\rho = a - q\delta$ est dans $A$, donc
$\rho = 0$ par minimalité de $\delta$. Ainsi $\delta$ divise tout élément de $A$, en particulier
$r$ et $P(1), \ldots, P(r)$. D'après l'étape 2, chaque $P(m)$ s'écrit $P(c) + (\text{multiple de } r)$,
donc $\delta \mid P(m)$ pour tout $m \geqslant 1$. L'hypothèse impose $\delta = 1$.

Donc $1 \in A$ : il existe des entiers $\lambda_c \geqslant 0$ tels que
$r \mid \lambda_1 P(1) + \cdots + \lambda_r P(r) - 1$. En plaçant à la suite, pour chaque $c$,
$\lambda_c$ blocs de l'étape 3 (chacun ajoutant $2P(c)$), on ajoute $2$ au reste. Appelons
*paquet* cette suite de blocs.

*Étape 5 : la parité de départ.* Une somme signée $\pm P(1) \pm \cdots \pm P(m)$ a la même
parité que $s_m = P(1) + \cdots + P(m)$, puisque changer un signe change la somme d'un nombre pair.
Le raisonnement de l'étape 2, avec $2$ à la place de $r$, montre que $P(m)$ a la parité de $P(1)$
si $m$ est impair, et celle de $P(2)$ si $m$ est pair. Donc $P(1)$ et $P(2)$ ne sont pas tous deux
pairs, sinon $2$ diviserait toutes les valeurs. Ainsi :

- si $P(1)$ et $P(2)$ sont impairs, $s_1$ est impair et $s_2$ est pair ;
- si $P(1)$ est impair et $P(2)$ pair, $s_1$ est impair et $s_3$ est pair ;
- si $P(1)$ est pair et $P(2)$ impair, $s_1$ est pair et $s_2$ est impair.

On choisit $m_0 \in \{1, 2, 3\}$ tel que $\Sigma_0 = s_{m_0}$ ait la même parité que $M$.

*Étape 6 : conclusion.* Posons $D = M - \Sigma_0$. Comme dans le cas des puissances $k$-ièmes,
on trouve un entier $j \geqslant 0$ tel que $r \mid D - 2j$ : si $r$ est pair, $D$ est pair et on
lui ajoute un multiple de $r$ pour le rendre positif ; si $r$ est impair, on ajoute un multiple
de $r$ pour le rendre positif, puis encore $r$ s'il est impair ; on prend pour $2j$ le résultat.
En plaçant $j$ paquets après $\Sigma_0$, on obtient une somme $\Sigma$ avec
$r \mid \Sigma - \Sigma_0 - 2j$, donc $r \mid M - \Sigma$. L'étape 1 termine.

**Conclusion :** tout entier $M \geqslant 1$ s'écrit $\varepsilon_1 P(1) + \cdots + \varepsilon_n P(n)$.

**Bilan.** Dès que les valeurs $P(1), P(2), \ldots$ n'ont aucun diviseur commun supérieur ou égal
à $2$, tout entier $M \geqslant 1$ est une somme signée $\pm P(1) \pm P(2) \pm \cdots \pm P(n)$.
La condition est d'ailleurs nécessaire : si $\delta \geqslant 2$ divise tous les $P(n)$, il divise
aussi toutes ces sommes, et $M = 1$ n'est pas atteint.

## Going further

- L'étape 4 est une forme du théorème de Bézout, vu en maths expertes : si le PGCD de plusieurs
  entiers vaut $1$, une combinaison de ces entiers à coefficients entiers vaut $1$.
- Appliquer le résultat à $P(x) = x^2 + x + 1$. Ses valeurs sont toutes impaires. Pourquoi
  aucun $\delta \geqslant 2$ ne les divise-t-il toutes ? Écrire $2$ sous la forme
  $\pm P(1) \pm \cdots \pm P(n)$ (c'est possible avec $n = 4$).
