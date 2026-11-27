---
id: "40690"
title: "Des urnes qui se battent en rond, pour toutes les tailles"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, non-transitivite, denombrement, construction, jetons, de-proche-en-proche, inegalite]
adapted_from: null
see_also: ["40688", "40689"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 3 « Plus d'une chance sur deux pour tout le monde », partie III « Urnes non transitives », questions 1 (a et b) et 2 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. On dispose de trois urnes $A$, $B$ et $C$ et de $3n$ jetons
indiscernables au toucher, numérotés de $1$ à $3n$. On répartit les jetons dans les trois urnes
de sorte que chaque urne contienne $n$ jetons. On tire au hasard un jeton dans chacune des trois
urnes, indépendamment, et on note $X_A$, $X_B$ et $X_C$ les numéros tirés dans $A$, $B$ et $C$.

1. On suppose, dans cette question seulement, que chacune des trois probabilités
   $P(X_A > X_B)$, $P(X_B > X_C)$ et $P(X_C > X_A)$ est strictement supérieure à $\frac{1}{2}$.

   On prend trois autres urnes $D$, $E$, $F$ et $3n + 6$ jetons numérotés de $1$ à $3n + 6$. Les
   jetons $1$ à $3n$ sont répartis comme dans $A$, $B$ et $C$, puis :
   - l'urne $D$ reçoit le contenu de $A$, et les jetons $3n + 1$ et $3n + 6$ ;
   - l'urne $E$ reçoit le contenu de $B$, et les jetons $3n + 4$ et $3n + 5$ ;
   - l'urne $F$ reçoit le contenu de $C$, et les jetons $3n + 2$ et $3n + 3$.

   Chacune des urnes $D$, $E$, $F$ contient ainsi $n + 2$ jetons. On tire au hasard un jeton dans
   chacune, indépendamment, et on note $X_D$, $X_E$ et $X_F$ les numéros tirés.

   a) Exprimer $P(X_D > X_E)$ en fonction de $n$ et de $P(X_A > X_B)$.

   b) Montrer que chacune des probabilités $P(X_D > X_E)$, $P(X_E > X_F)$ et $P(X_F > X_D)$ est
   strictement supérieure à $\frac{1}{2}$.

2. Pour tout entier $n \geqslant 3$, on note $\mathcal{H}_n$ la propriété suivante : *il est
   possible de répartir $3n$ jetons numérotés de $1$ à $3n$ dans trois urnes $A$, $B$, $C$ de $n$
   jetons chacune, de sorte que $P(X_A > X_B)$, $P(X_B > X_C)$ et $P(X_C > X_A)$ soient toutes
   les trois strictement supérieures à $\frac{1}{2}$.*

   a) Montrer que les propriétés $\mathcal{H}_3$ et $\mathcal{H}_4$ sont vraies.

   b) Montrer que $\mathcal{H}_n$ est vraie pour tout entier $n \geqslant 3$.

## Hints

1. **Question 1 a.** Il y a $(n + 2)^2$ couples de jetons équiprobables. Compter ceux où le jeton
   de $D$ est le plus grand, en séparant selon que chaque jeton est un ancien jeton (de $1$ à
   $3n$) ou un nouveau.
2. **Question 1 a.** Le nombre de couples (jeton de $A$, jeton de $B$) où celui de $A$ gagne vaut
   $n^2 \, P(X_A > X_B)$.
3. **Question 1 b.** Écrire l'inégalité $P(X_D > X_E) > \frac{1}{2}$ et chasser le dénominateur.
4. **Question 2 a.** Pour $n = 3$, mettre dans chaque urne un petit, un moyen et un grand jeton.
   Penser aux colonnes d'un carré magique $3 \times 3$.
5. **Question 2 a.** Pour $n = 4$, s'inspirer de la question 1 : une urne peut contenir deux très
   grands jetons et deux très petits.
6. **Question 2 b.** Que donne la question 1 quand $\mathcal{H}_n$ est vraie ?

## Solution

**1. a)** Les $(n + 2)^2$ couples (jeton de $D$, jeton de $E$) sont équiprobables, et les numéros
sont tous différents. Comptons ceux où le jeton de $D$ est le plus grand.

- Un ancien jeton de $D$ contre un ancien jeton de $E$ : ce sont les couples de $A$ et $B$, et
  $D$ gagne dans $n^2 \, P(X_A > X_B)$ d'entre eux.
- Un ancien jeton de $D$ (au plus $3n$) contre un nouveau jeton de $E$ (au moins $3n + 1$) :
  $D$ perd toujours.
- Un nouveau jeton de $D$ contre un ancien jeton de $E$ : $D$ gagne toujours, soit $2n$ couples.
- Un nouveau contre un nouveau : $3n + 1$ perd contre $3n + 4$ et $3n + 5$, mais $3n + 6$ bat les
  deux. Cela fait $2$ couples.

Donc
$$P(X_D > X_E) = \frac{n^2 \, P(X_A > X_B) + 2n + 2}{(n + 2)^2}.$$

**1. b)** Le même décompte donne les deux autres probabilités : les anciens jetons contre les
anciens donnent $n^2$ fois l'ancienne probabilité, un nouveau jeton bat toujours un ancien
($2n$ couples), et il reste à comparer les nouveaux jetons entre eux.

- $E$ contre $F$ : les nouveaux jetons de $E$ ($3n + 4$ et $3n + 5$) battent les deux nouveaux de
  $F$ ($3n + 2$ et $3n + 3$), soit $4$ couples, d'où
  $$P(X_E > X_F) = \frac{n^2 \, P(X_B > X_C) + 2n + 4}{(n + 2)^2}.$$
- $F$ contre $D$ : $3n + 2$ et $3n + 3$ battent $3n + 1$ mais pas $3n + 6$, soit $2$ couples, d'où
  $$P(X_F > X_D) = \frac{n^2 \, P(X_C > X_A) + 2n + 2}{(n + 2)^2}.$$

Comme $(n + 2)^2 = n^2 + 4n + 4$, on a
$$P(X_D > X_E) > \frac{1}{2} \iff 2n^2 \, P(X_A > X_B) + 4n + 4 > n^2 + 4n + 4 \iff P(X_A > X_B) > \frac{1}{2},$$
ce qui est vrai par hypothèse. De même, $P(X_F > X_D) > \frac{1}{2}$ équivaut à
$P(X_C > X_A) > \frac{1}{2}$, vrai. Enfin $P(X_E > X_F) > \frac{1}{2}$ équivaut à
$2n^2 \, P(X_B > X_C) + 4 > n^2$, qui est vrai puisque $2n^2 \, P(X_B > X_C) > n^2$.

Les trois probabilités sont strictement supérieures à $\frac{1}{2}$.

**2. a)** *$\mathcal{H}_3$.* Prenons $A = \{2, 4, 9\}$, $B = \{1, 6, 8\}$ et $C = \{3, 5, 7\}$ (ce
sont les colonnes du carré magique de lignes $2, 7, 6$ ; $9, 5, 1$ ; $4, 3, 8$). Sur les $9$
couples :

- $A$ bat $B$ : $2$ bat $1$ ; $4$ bat $1$ ; $9$ bat les trois. Total $5$.
- $B$ bat $C$ : $6$ bat $3$ et $5$ ; $8$ bat les trois. Total $5$.
- $C$ bat $A$ : $3$ bat $2$ ; $5$ et $7$ battent $2$ et $4$. Total $5$.

Les trois probabilités valent $\frac{5}{9} > \frac{1}{2}$ : $\mathcal{H}_3$ est vraie.

*$\mathcal{H}_4$.* Prenons $A = \{1, 3, 10, 12\}$, $B = \{2, 7, 8, 9\}$ et $C = \{4, 5, 6, 11\}$.
Sur les $16$ couples :

- $A$ bat $B$ : $3$ bat $2$ ; $10$ et $12$ battent les quatre. Total $1 + 4 + 4 = 9$.
- $B$ bat $C$ : $7$, $8$ et $9$ battent $4$, $5$ et $6$. Total $9$.
- $C$ bat $A$ : $4$, $5$ et $6$ battent $1$ et $3$ ; $11$ bat $1$, $3$ et $10$. Total
  $2 + 2 + 2 + 3 = 9$.

Les trois probabilités valent $\frac{9}{16} > \frac{1}{2}$ : $\mathcal{H}_4$ est vraie.

**2. b)** La question 1 montre que, si $\mathcal{H}_n$ est vraie, alors $\mathcal{H}_{n+2}$ est
vraie : à partir de trois urnes de $n$ jetons qui conviennent, on fabrique trois urnes de
$n + 2$ jetons qui conviennent.

En partant de $\mathcal{H}_3$, on obtient de proche en proche $\mathcal{H}_5$, $\mathcal{H}_7$,
$\mathcal{H}_9$, …, donc $\mathcal{H}_n$ pour tout $n$ impair supérieur ou égal à $3$. En partant
de $\mathcal{H}_4$, on obtient $\mathcal{H}_6$, $\mathcal{H}_8$, …, donc $\mathcal{H}_n$ pour tout
$n$ pair supérieur ou égal à $4$. Ainsi $\mathcal{H}_n$ est vraie pour tout $n \geqslant 3$.

**Bilan.** Pour tout $n \geqslant 3$, on peut répartir les jetons $1$ à $3n$ en trois urnes de $n$
jetons qui se battent en rond, chacune battant la suivante avec une probabilité strictement
supérieure à $\frac{1}{2}$. On le montre en construisant les cas $n = 3$ et $n = 4$, puis en
ajoutant à chaque urne deux jetons bien choisis pour passer de $n$ à $n + 2$.

## Going further

- Le cas $n = 2$ est-il possible ? (Chercher les répartitions de $1, \ldots, 6$ en trois urnes de
  deux jetons.)
- Avec les urnes de $\mathcal{H}_3$, appliquer deux fois la construction de la question 1 :
  donner les trois urnes de $7$ jetons obtenues et calculer leurs trois probabilités.
- D'autres constructions de cycles : exercices 40688 (dés) et 40689 (urnes de Fibonacci).
