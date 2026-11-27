---
id: "40563"
title: "Tout entier assez grand est une somme de cubes distincts"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [cubes, entiers-distincts, decomposition, telescopage, inegalite, de-proche-en-proche, intervalle]
adapted_from: null
see_also: ["40561", "40562"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2016, mathématiques, série S"
  reference: "cg-2016-s-sujet.pdf, problème I « Sommes de cubes », questions 2 (a et b) et 6 (a et b) ; les questions 3, 4 et 5 sont admises"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2016-s-sujet.pdf"
---

## Statement

On note :

- $S$ l'ensemble des entiers strictement positifs qui peuvent s'écrire comme une somme de cubes
  d'entiers strictement positifs deux à deux distincts ;
- $S_0$ l'ensemble des entiers strictement positifs qui peuvent s'écrire comme une somme de cubes
  d'entiers **pairs** strictement positifs deux à deux distincts ;
- $S_1$ l'ensemble des entiers strictement positifs qui peuvent s'écrire comme une somme de cubes
  d'entiers **impairs** strictement positifs deux à deux distincts.

Une somme peut n'avoir qu'un seul terme. Par exemple, $190 = 1^3 + 4^3 + 5^3$ est dans $S$,
$1072 = 2^3 + 4^3 + 10^3$ est dans $S_0$ et $2568 = 1^3 + 3^3 + 7^3 + 13^3$ est dans $S_1$.
L'objectif est de démontrer que tout entier assez grand appartient à $S$.

Pour des entiers $k \leqslant p$, on note
$$\sum_{j=k}^{p} (2j-1)^3 = (2k-1)^3 + (2k+1)^3 + \cdots + (2p-1)^3 .$$

On admet les trois résultats suivants, démontrés dans d'autres parties du problème.

- **(R1)** Il existe $288$ entiers $s_1, \ldots, s_{288}$ appartenant à $S_1$ tels que, pour tout
  $i$ de $1$ à $288$, $s_i - i$ soit un multiple de $288$. On fixe de tels entiers et on note $m$ le
  plus grand d'entre eux.
- **(R2)** Soit $n$ un entier tel que $288n \geqslant m$, et soit $u_1, \ldots, u_n$ des entiers
  positifs ou nuls tels que $u_{j+1} - u_j = 288$ pour $1 \leqslant j < n$. Alors tout entier de
  l'intervalle $[m + u_1, 288n + u_1]$ peut s'écrire $s_i + u_j$, avec $1 \leqslant i \leqslant 288$
  et $1 \leqslant j \leqslant n$.
- **(R3)** Pour tout entier $n \geqslant 2$, il existe $n$ éléments $u_1, \ldots, u_n$ de $S_0$ tels
  que $u_{j+1} - u_j = 288$ pour $1 \leqslant j < n$.

1. a) Montrer que, pour tout réel $x \geqslant 5$, on a $(2x+1)^3 \leqslant 2(2x-1)^3$.

   b) Soit $k$ un entier supérieur ou égal à $5$. Montrer que, pour tout entier $p \geqslant k$,
$$(2p+1)^3 \leqslant (2k-1)^3 + \sum_{j=k}^{p} (2j-1)^3 .$$

2. Soit $k$ un entier supérieur ou égal à $5$ tel que $(2k+1)^3 > m$.

   a) Montrer qu'il existe un entier $N \geqslant 1$ tel que tout entier de l'intervalle
   $[N, N + 2(2k-1)^3]$ puisse s'écrire $s_i + u$, avec $1 \leqslant i \leqslant 288$ et $u \in S_0$.

   b) Montrer que tout entier supérieur ou égal à $N$ appartient à $S$. On pourra examiner, pour
   tout entier $p \geqslant k$, le cas des entiers de l'intervalle $[N, N_p]$, où
$$N_p = N + (2k-1)^3 + \sum_{j=k}^{p} (2j-1)^3 .$$

## Hints

1. **Question 1a.** Comparer le quotient $\frac{2x+1}{2x-1}$ à $\frac{11}{9}$.
2. **Question 1b.** Écrire $(2p+1)^3 - (2k-1)^3$ comme la somme des différences
   $(2j+1)^3 - (2j-1)^3$ pour $j$ allant de $k$ à $p$ : presque tous les termes se simplifient.
3. **Question 1b.** La question 1a dit exactement que $(2j+1)^3 - (2j-1)^3 \leqslant (2j-1)^3$
   lorsque $j \geqslant 5$.
4. **Question 2a.** Prendre dans $S_0$ une progression de raison $288$ assez longue grâce à (R3),
   puis appliquer (R2). Essayer $N = m + u_1$.
5. **Question 2b.** Si l'on ajoute un cube impair à $s_i + u$, il faut être sûr qu'il n'apparaît
   pas déjà dans $s_i$. Quels entiers impairs peuvent apparaître dans l'écriture de $s_i$ ? Comparer
   leurs cubes à $m$.
6. **Question 2b.** Montrer de proche en proche, pour $p = k$, puis $p = k + 1$, et ainsi de suite,
   que tout entier de $[N, N_p]$ s'écrit $s_i + u + c$, où $u \in S_0$ et où $c$ est nul ou est une
   somme de cubes d'entiers impairs distincts pris parmi $2k+1, 2k+3, \ldots, 2p-1$.
7. **Question 2b.** Pour passer de $p$ à $p + 1$, retirer $(2p+1)^3$ à un entier compris entre
   $N_p$ et $N_{p+1}$, et utiliser la question 1b pour voir qu'on retombe dans $[N, N_p]$.

## Solution

**1. a)** Soit $x \geqslant 5$. Alors $2x - 1 \geqslant 9 > 0$, et
$$\frac{2x+1}{2x-1} = 1 + \frac{2}{2x-1} \leqslant 1 + \frac{2}{9} = \frac{11}{9}.$$
Ces nombres sont positifs, et la fonction cube est croissante, donc
$$\left(\frac{2x+1}{2x-1}\right)^3 \leqslant \left(\frac{11}{9}\right)^3 = \frac{1331}{729} < 2,$$
car $2 \times 729 = 1458 > 1331$. En multipliant par $(2x-1)^3 > 0$, on obtient
$(2x+1)^3 \leqslant 2(2x-1)^3$.

La condition $x \geqslant 5$ compte : pour $x = 4$, on a $9^3 = 729 > 2 \times 7^3 = 686$.

**b)** Soit $p \geqslant k$. Écrivons $(2p+1)^3 - (2k-1)^3$ comme une somme télescopique :
$$(2p+1)^3 - (2k-1)^3 = \sum_{j=k}^{p} \left((2j+1)^3 - (2j-1)^3\right).$$
En effet, dans la somme de droite, chaque cube $(2k+1)^3, \ldots, (2p-1)^3$ apparaît une fois avec le
signe $+$ et une fois avec le signe $-$ ; il ne reste que $(2p+1)^3 - (2k-1)^3$.

Pour chaque $j$ entre $k$ et $p$, on a $j \geqslant k \geqslant 5$, donc la question 1a, avec
$x = j$, donne $(2j+1)^3 \leqslant 2(2j-1)^3$, c'est-à-dire
$(2j+1)^3 - (2j-1)^3 \leqslant (2j-1)^3$. En additionnant ces inégalités pour $j$ de $k$ à $p$ :
$$(2p+1)^3 - (2k-1)^3 \leqslant \sum_{j=k}^{p} (2j-1)^3 .$$

**Conclusion :** $(2p+1)^3 \leqslant (2k-1)^3 + \sum_{j=k}^{p} (2j-1)^3$ pour tout $p \geqslant k$.

**2. a)** Choisissons un entier $n \geqslant 2$ assez grand pour que
$288n \geqslant m + 2(2k-1)^3$. D'après (R3), il existe des éléments $u_1, \ldots, u_n$ de $S_0$
tels que $u_{j+1} - u_j = 288$. Comme $288n \geqslant m$, le résultat (R2) s'applique : tout
entier de $[m + u_1, 288n + u_1]$ s'écrit $s_i + u_j$, avec $u_j \in S_0$.

Posons $N = m + u_1$. C'est un entier supérieur ou égal à $1$, et
$$N + 2(2k-1)^3 = u_1 + m + 2(2k-1)^3 \leqslant u_1 + 288n .$$
L'intervalle $[N, N + 2(2k-1)^3]$ est donc contenu dans $[m + u_1, 288n + u_1]$.

**Conclusion :** avec $N = m + u_1$, tout entier de $[N, N + 2(2k-1)^3]$ s'écrit $s_i + u$ avec
$1 \leqslant i \leqslant 288$ et $u \in S_0$.

**b)** *Les impairs qui apparaissent dans les $s_i$.* Chaque $s_i$ est une somme de cubes d'entiers
impairs distincts. Si $c$ est l'un de ces entiers, alors $c^3 \leqslant s_i \leqslant m < (2k+1)^3$,
donc $c < 2k + 1$, et comme $c$ est impair, $c \leqslant 2k - 1$.

*La propriété à propager.* Pour $p \geqslant k$, notons $P(p)$ la propriété suivante : tout entier
$M$ de l'intervalle $[N, N_p]$ peut s'écrire
$$M = s_i + u + c,$$
avec $1 \leqslant i \leqslant 288$, $u \in S_0$, et $c$ égal à $0$ ou à une somme de cubes d'entiers
impairs deux à deux distincts pris parmi $2k+1, 2k+3, \ldots, 2p-1$.

*Une telle écriture prouve que $M$ appartient à $S$.* Les entiers dont les cubes forment $s_i$ sont
impairs et au plus égaux à $2k - 1$ ; ceux de $c$ sont impairs et au moins égaux à $2k + 1$ ; ceux
de $u$ sont pairs. Dans chaque groupe ils sont deux à deux distincts, et deux groupes différents
n'ont aucun entier en commun. Donc $M$ est une somme de cubes d'entiers strictement positifs
deux à deux distincts.

*Départ : $P(k)$ est vraie.* On a $N_k = N + (2k-1)^3 + (2k-1)^3 = N + 2(2k-1)^3$. D'après la
question 2a, tout entier de $[N, N_k]$ s'écrit $s_i + u$, ce qui est l'écriture voulue avec
$c = 0$.

*Passage de $p$ à $p + 1$.* Supposons $P(p)$ vraie pour un entier $p \geqslant k$. On a
$N_{p+1} = N_p + (2p+1)^3$. Soit $M$ un entier de $[N, N_{p+1}]$.

- Si $M \leqslant N_p$, l'écriture donnée par $P(p)$ convient, car les impairs $2k+1, \ldots, 2p-1$
  font partie des impairs $2k+1, \ldots, 2p+1$.
- Si $N_p < M \leqslant N_{p+1}$, posons $M' = M - (2p+1)^3$. Alors $M' \leqslant N_p$. De plus,
  d'après la question 1b,
  $$N_p - N = (2k-1)^3 + \sum_{j=k}^{p} (2j-1)^3 \geqslant (2p+1)^3,$$
  donc $M' > N_p - (2p+1)^3 \geqslant N$. Ainsi $M'$ est dans $[N, N_p]$, et d'après $P(p)$,
  $M' = s_i + u + c'$, où $c'$ est nul ou une somme de cubes d'impairs distincts pris parmi
  $2k+1, \ldots, 2p-1$. Alors $M = s_i + u + c$ avec $c = c' + (2p+1)^3$ : comme $2p+1$ ne fait pas
  partie des impairs utilisés dans $c'$, le nombre $c$ est une somme de cubes d'impairs distincts
  pris parmi $2k+1, \ldots, 2p+1$.

Donc $P(p+1)$ est vraie.

*Conclusion de proche en proche.* $P(k)$ est vraie, donc $P(k+1)$, donc $P(k+2)$, et ainsi de suite :
$P(p)$ est vraie pour tout $p \geqslant k$. Enfin, $N_p \geqslant N + (2p-1)^3$ dépasse n'importe quel
entier quand $p$ est assez grand. Si $M \geqslant N$, on choisit $p$ tel que $M \leqslant N_p$ ;
alors $M$ est dans $[N, N_p]$, il a une écriture du type voulu, et donc $M$ appartient à $S$.

**Conclusion :** tout entier supérieur ou égal à $N$ appartient à $S$.

**Bilan.** En ajoutant à une somme de cubes impairs bien choisie une somme de cubes pairs, on
remplit tout un intervalle, et l'inégalité de la question 1 permet ensuite d'agrandir cet intervalle
sans fin en ajoutant les cubes impairs suivants un par un. Il en résulte que tout entier assez
grand est une somme de cubes d'entiers strictement positifs deux à deux distincts.

## Going further

- Les résultats admis (R1), (R2) et (R3) sont démontrés dans les exercices 40562 et 40561.
- La méthode donne un entier $N$ gigantesque. En réalité, tout entier supérieur à $12\,758$ est une
  somme de cubes d'entiers distincts, et $12\,758$ ne l'est pas.
- Un raisonnement du même genre montre qu'à partir d'un certain rang, tout entier est une somme de carrés
  d'entiers distincts. Pouvez-vous trouver le plus grand entier qui n'en est pas une ? (Réponse :
  $128$.)
