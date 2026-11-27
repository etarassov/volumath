---
id: "40689"
title: "Trois urnes construites avec les nombres de Fibonacci"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, fibonacci, non-transitivite, jeu, strategie, encadrement, inegalite, jetons, de-proche-en-proche]
adapted_from: null
see_also: ["40688", "40690"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 3 « Plus d'une chance sur deux pour tout le monde », partie II « La suite de Fibonacci et des urnes », questions 1 et 2 (a et b). La question 2 a (le cas k = 4) est ajoutée en échauffement. À la question 2 b, le sujet écrit « choisir son dé » au lieu de « choisir son urne »."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

La *suite de Fibonacci* $(F_n)$ est définie par $F_0 = 0$, $F_1 = 1$ et, pour tout entier
$n \geqslant 0$,
$$F_{n+2} = F_{n+1} + F_n.$$
Ses premiers termes sont $0, 1, 1, 2, 3, 5, 8, 13, \ldots$

1. Montrer que, pour tout entier $n \geqslant 3$,
   $$\sqrt{2}\,F_n < F_{n+1} < 2F_n.$$

2. Soit $k \geqslant 4$ un entier. On dispose de trois urnes $A$, $B$ et $C$ et de $3F_k$ jetons
   indiscernables au toucher, numérotés de $1$ à $3F_k$. On répartit les jetons ainsi, en
   partant des plus grands numéros :
   - les $F_{k-2}$ jetons de plus grands numéros vont dans $A$ ;
   - les $F_{k-1}$ jetons de plus grands numéros restants vont dans $B$ ;
   - les $F_k$ jetons de plus grands numéros restants vont dans $C$ ;
   - les $F_{k-1}$ jetons de plus grands numéros restants vont dans $A$ ;
   - les $F_{k-2}$ derniers jetons vont dans $B$.

   On tire au hasard un jeton dans chacune des trois urnes, indépendamment, et on note $X_A$,
   $X_B$ et $X_C$ les numéros tirés dans $A$, $B$ et $C$.

   a) Dans le cas $k = 4$, donner le contenu de chaque urne et calculer $P(X_A > X_B)$,
   $P(X_B > X_C)$ et $P(X_C > X_A)$.

   b) Dans le cas général, vérifier que chaque urne contient $F_k$ jetons, puis démontrer que
   $$P(X_A > X_B) > \frac{1}{2}, \qquad P(X_B > X_C) > \frac{1}{2} \qquad \text{et} \qquad P(X_C > X_A) > \frac{1}{2}.$$

   c) Claire et Paul jouent au jeu suivant : l'un commence par choisir une des trois urnes et y
   pioche un jeton. Puis l'autre choisit une des deux autres urnes et y pioche un jeton. Celui
   qui a le jeton de plus grand numéro gagne. Claire a-t-elle intérêt à choisir son urne avant
   Paul, ou à le laisser choisir en premier ?

## Hints

1. **Question 1.** Montrer d'abord que la suite est croissante à partir de $F_1$, et que
   $F_{n-1} < F_n$ pour $n \geqslant 3$. L'inégalité de droite s'en déduit.
2. **Question 1.** Pour l'inégalité de gauche, montrer que $F_{n-1} \geqslant \frac{1}{2} F_n$,
   puis comparer $\frac{3}{2}$ et $\sqrt{2}$.
3. **Question 2 b.** Dessiner les cinq paquets de jetons dans l'ordre décroissant des numéros :
   $A$, $B$, $C$, $A$, $B$. Quels paquets d'une urne battent quels paquets d'une autre ?
4. **Question 2 b.** Exprimer les trois probabilités à l'aide du seul nombre
   $x = \frac{F_{k-1}}{F_k}$. Que valent $\frac{F_{k-2}}{F_k}$ et $\frac{F_{k+1}}{F_k}$ en
   fonction de $x$ ?
5. **Question 2 b.** La question 1, appliquée avec $n = k - 1$, encadre $x$.

## Solution

**1.** Tous les termes sont positifs ou nuls (chacun est la somme des deux précédents), et
$F_n \geqslant 1$ pour $n \geqslant 1$. Pour $n \geqslant 1$, on a
$F_{n+1} - F_n = F_{n-1} \geqslant 0$ : la suite est croissante à partir de $F_1$. De plus, pour
$n \geqslant 3$, $F_n - F_{n-1} = F_{n-2} \geqslant 1$, donc $F_{n-1} < F_n$.

Soit $n \geqslant 3$.

- *Droite.* $F_{n+1} = F_n + F_{n-1} < F_n + F_n = 2F_n$.
- *Gauche.* $F_n = F_{n-1} + F_{n-2} \leqslant 2F_{n-1}$ car $F_{n-2} \leqslant F_{n-1}$ (la
  suite croît à partir de $F_1$ et $n - 2 \geqslant 1$). Donc $F_{n-1} \geqslant \frac{1}{2} F_n$
  et $F_{n+1} = F_n + F_{n-1} \geqslant \frac{3}{2} F_n$. Or $\left(\frac{3}{2}\right)^2 =
  \frac{9}{4} > 2$, donc $\frac{3}{2} > \sqrt{2}$, et comme $F_n > 0$,
  $F_{n+1} \geqslant \frac{3}{2} F_n > \sqrt{2}\,F_n$.

**2. a)** Pour $k = 4$ : $F_2 = 1$, $F_3 = 2$, $F_4 = 3$, et il y a $9$ jetons. En partant du
haut : $9$ va dans $A$ ; $8$ et $7$ dans $B$ ; $6$, $5$, $4$ dans $C$ ; $3$ et $2$ dans $A$ ; $1$
dans $B$. Donc $A = \{9, 3, 2\}$, $B = \{8, 7, 1\}$, $C = \{6, 5, 4\}$.

Sur les $9$ couples équiprobables :

- $A$ bat $B$ : $9$ bat les trois, $3$ et $2$ battent $1$. Donc $P(X_A > X_B) = \frac{5}{9}$.
- $B$ bat $C$ : $8$ et $7$ battent les trois, $1$ aucun. Donc $P(X_B > X_C) = \frac{6}{9} = \frac{2}{3}$.
- $C$ bat $A$ : chacun de $6$, $5$, $4$ bat $3$ et $2$. Donc $P(X_C > X_A) = \frac{6}{9} = \frac{2}{3}$.

Les trois sont supérieures à $\frac{1}{2}$.

**2. b)** L'urne $A$ reçoit $F_{k-2} + F_{k-1} = F_k$ jetons, l'urne $B$ aussi, et l'urne $C$
reçoit $F_k$ jetons. (Au total, $3F_k$ jetons sont bien répartis.)

Nommons les cinq paquets, du plus haut au plus bas : $A_1$ ($F_{k-2}$ jetons), $B_1$
($F_{k-1}$), $C$ ($F_k$), $A_2$ ($F_{k-1}$), $B_2$ ($F_{k-2}$). Tout jeton d'un paquet bat tout
jeton d'un paquet situé plus bas. Les numéros étant tous différents, il n'y a pas d'égalité, et
les $F_k \times F_k$ couples de jetons sont équiprobables.

- $X_A > X_B$ : un jeton de $A_1$ bat tous les jetons de $B$ ; un jeton de $A_2$ ne bat que ceux
  de $B_2$. Cela fait $F_{k-2} F_k + F_{k-1} F_{k-2} = F_{k-2}\,(F_k + F_{k-1}) = F_{k-2} F_{k+1}$
  couples, donc
  $$P(X_A > X_B) = \frac{F_{k-2}\,F_{k+1}}{F_k^2}.$$
- $X_B > X_C$ : seuls les jetons de $B_1$ battent ceux de $C$, et ils les battent tous :
  $P(X_B > X_C) = \frac{F_{k-1} F_k}{F_k^2} = \frac{F_{k-1}}{F_k}$.
- $X_C > X_A$ : les jetons de $C$ battent exactement ceux de $A_2$ :
  $P(X_C > X_A) = \frac{F_k F_{k-1}}{F_k^2} = \frac{F_{k-1}}{F_k}$.

Posons $x = \frac{F_{k-1}}{F_k}$. Comme $F_{k-2} = F_k - F_{k-1}$ et $F_{k+1} = F_k + F_{k-1}$,
$$\frac{F_{k-2}}{F_k} = 1 - x, \qquad \frac{F_{k+1}}{F_k} = 1 + x, \qquad \text{donc} \qquad P(X_A > X_B) = (1 - x)(1 + x) = 1 - x^2.$$
La question 1 avec $n = k - 1 \geqslant 3$ donne $\sqrt{2}\,F_{k-1} < F_k < 2F_{k-1}$, c'est-à-dire
$$\frac{1}{2} < x < \frac{1}{\sqrt{2}}.$$
Donc $P(X_B > X_C) = P(X_C > X_A) = x > \frac{1}{2}$, et $x^2 < \frac{1}{2}$ donne
$P(X_A > X_B) = 1 - x^2 > \frac{1}{2}$.

**2. c)** Claire a intérêt à laisser Paul choisir en premier. Si Paul prend $A$, elle prend $C$ ;
s'il prend $B$, elle prend $A$ ; s'il prend $C$, elle prend $B$. Dans chaque cas, d'après la
question b, elle gagne avec une probabilité strictement supérieure à $\frac{1}{2}$.

**Bilan.** Pour tout $k \geqslant 4$, cette répartition de $3F_k$ jetons en trois urnes de $F_k$
jetons forme un cycle : $A$ bat $B$, $B$ bat $C$ et $C$ bat $A$, chaque fois avec une probabilité
strictement supérieure à $\frac{1}{2}$. Les probabilités valent $1 - x^2$, $x$ et $x$ avec
$x = \frac{F_{k-1}}{F_k}$, et l'encadrement $\frac{1}{2} < x < \frac{1}{\sqrt{2}}$ suffit. Comme
pour les dés, c'est le joueur qui choisit en second qui a l'avantage.

## Going further

- Le rapport $x = \frac{F_{k-1}}{F_k}$ se rapproche de $\frac{\sqrt{5} - 1}{2} \approx
  \text{0,618}$ quand $k$ grandit. Vers quoi tendent alors les trois probabilités ? Vérifier
  qu'elles s'égalisent : $1 - x^2 = x$ quand $x^2 + x - 1 = 0$.
- Dans la suite du sujet, on construisait trois urnes de $n$ jetons formant un cycle pour tout
  $n \geqslant 3$ (exercice 40690).
