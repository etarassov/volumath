---
id: "11432"
title: "En alternant additions et multiplications"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [parite, divisibilite, plus-petit-contre-exemple, suites, operations]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Seniors, exercice 16 ; corrigé 2022-04_corrige-envoi-4.pdf ; la question 1 est traitée ici pour tout n ⩾ 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. On part du nombre $1$ et on lui applique une suite d'opérations :

- chaque opération consiste à **ajouter** $2$ ou $n$, ou à **multiplier** par $2$ ou par $n$, au
  nombre qu'on vient d'obtenir ;
- la première opération est une addition ou une multiplication, au choix ;
- ensuite, les additions et les multiplications **alternent** : jamais deux additions de suite, ni
  deux multiplications de suite.

Un entier $N \geqslant 1$ est dit **atteignable** si $N = 1$ ou si l'on peut obtenir $N$ de cette
façon. Par exemple, pour $n = 3$, le nombre $15$ est atteignable :

$$1 \xrightarrow{\times 2} 2 \xrightarrow{+3} 5 \xrightarrow{\times 3} 15 .$$

1. Montrer que, si $n$ est assez grand (par exemple dès que $n \geqslant 8$), il existe une infinité
   d'entiers qui ne sont pas atteignables.
2. Montrer que, pour $n = 3$, tous les entiers $N \geqslant 1$ sont atteignables, sauf $7$.

## Hints

1. Question 1, quand $n$ est pair : que devient la parité du nombre après une multiplication ? Et
   ensuite ?
2. Question 1, quand $n$ est impair : pose $q = n - 2$. Ajouter $2$ ou ajouter $n$, c'est presque la
   même chose si on ne regarde que les restes dans la division par $q$. De même pour multiplier par
   $2$ ou par $n$.
3. Toujours pour $n$ impair, regarde les nombres $k$ tels que $q$ divise $k + 2$. Montre qu'on ne
   peut jamais en obtenir un par une chaîne qui se termine par une addition : prends le plus petit
   qui le serait et remonte deux opérations en arrière.
4. Question 2 : sépare les nombres obtenus par une chaîne qui se termine par une addition de ceux
   obtenus par une chaîne qui se termine par une multiplication. Calcule les premiers à la main.
5. Pour $n = 3$, les nombres $7$, $16$, $34$, $70$, $\ldots$ (chacun vaut le double du précédent
   plus $2$) ne s'obtiennent jamais par une addition. Pour les autres, essaie d'écrire $N$ sous la
   forme $2x + 2$ ou $2x + 3$ avec $x$ plus petit.

## Solution

Dans toute la solution, on appelle **chaîne** une suite d'opérations autorisée, qui commence à $1$
et comporte au moins une opération. Une remarque sert sans cesse : comme les opérations alternent,
**le nombre juste avant la dernière opération** est soit $1$ (si la chaîne n'a qu'une opération),
soit un nombre obtenu par une chaîne qui se termine par l'**autre** sorte d'opération.

### Question 1, quand $n$ est pair

Soit $n \geqslant 4$ un entier pair. Les nombres $2$ et $n$ sont pairs, donc :

- multiplier par $2$ ou par $n$ donne toujours un nombre pair ;
- ajouter $2$ ou $n$ ne change pas la parité.

Dès qu'une chaîne contient une multiplication, le nombre devient pair et le reste jusqu'au bout. Un
nombre **impair** atteignable s'obtient donc par une chaîne sans multiplication. Comme les opérations
alternent, une telle chaîne a au plus une opération, une addition. Les seuls nombres impairs
atteignables sont donc

$$1, \qquad 1 + 2 = 3, \qquad 1 + n .$$

Tous les autres nombres impairs, qui sont une infinité, ne sont pas atteignables.

### Question 1, quand $n$ est impair et $n \geqslant 9$

Posons $q = n - 2$. C'est un entier impair, et $q \geqslant 7$. Disons qu'un entier $k \geqslant 1$
est **spécial** si $q$ divise $k + 2$.

**Un petit lemme.** Si le nombre impair $q$ divise $2x$, alors $q$ divise $x$. En effet, écrivons
$2x = q\,t$. Le nombre $q\,t$ est pair alors que $q$ est impair, donc $t$ est pair, et
$x = q \times \dfrac{t}{2}$.

**Étape 1 : aucun nombre spécial ne s'obtient par une chaîne qui se termine par une addition.**
Supposons le contraire, et prenons le **plus petit** nombre spécial $k$ obtenu par une chaîne qui se
termine par une addition. Remontons la chaîne.

- La dernière opération donne $k = l + 2$ ou $k = l + n$. Dans le premier cas, $l + 4 = k + 2$. Dans
  le second, $l + 4 = k + 2 - (n - 2) = (k + 2) - q$. Dans les deux cas, **$q$ divise $l + 4$**.
- On ne peut pas avoir $l = 1$, car $q \geqslant 7$ ne divise pas $1 + 4 = 5$. D'après la remarque
  du début, $l$ est donc obtenu par une chaîne qui se termine par une multiplication : $l = 2m$ ou
  $l = nm$, où $m$ est le nombre juste avant.
- Si $l = 2m$, alors $l + 4 = 2(m + 2)$. Si $l = nm$, alors
  $l + 4 = (q + 2)m + 4 = qm + 2(m + 2)$. Dans les deux cas, $q$ divise $2(m + 2)$, donc $q$ divise
  $m + 2$ d'après le lemme : **$m$ est spécial**.
- On ne peut pas avoir $m = 1$, car $q$ ne divise pas $1 + 2 = 3$. Donc $m$ est obtenu par une chaîne
  qui se termine par une addition.

Mais $m < l < k$. On a trouvé un nombre spécial plus petit que $k$ et obtenu par une chaîne qui se
termine par une addition : c'est une contradiction.

**Étape 2 : un nombre spécial atteignable est pair ou multiple de $n$.** Le nombre $1$ n'est pas
spécial, puisque $q$ ne divise pas $3$. D'après l'étape 1, un nombre spécial atteignable s'obtient
donc par une chaîne qui se termine par une multiplication : il s'écrit $2m$ ou $nm$.

**Étape 3 : une infinité de nombres non atteignables.** Pour chaque entier $j \geqslant 0$, posons

$$k_j = q\,(2nj + 1) - 2 .$$

- $k_j$ est spécial, puisque $k_j + 2 = q\,(2nj + 1)$.
- $k_j$ est impair : $q$ et $2nj + 1$ sont impairs, leur produit aussi, et on retire $2$.
- $k_j$ n'est pas un multiple de $n$. En effet, en développant avec $q = n - 2$,

  $$k_j = 2n^2 j + n - 4nj - 2 - 2 = n\,(2nj - 4j + 1) - 4 ,$$

  donc le reste de la division de $k_j$ par $n$ est $n - 4$, qui n'est pas nul.

D'après l'étape 2, aucun des nombres $k_j$ n'est atteignable. Ils sont tous différents, donc il y a
une infinité de nombres non atteignables. Par exemple, pour $n = 9$, on a $q = 7$ et les nombres
$5$, $131$, $257$, $\ldots$ ne sont pas atteignables.

**Conclusion de la question 1.** Pour $n$ pair, et pour $n$ impair à partir de $9$, il y a une
infinité d'entiers non atteignables. C'est donc le cas pour tout $n \geqslant 8$.

### Question 2 : le cas $n = 3$

Notons $A$ l'ensemble des nombres obtenus par une chaîne qui se termine par une **addition**, et
$M$ l'ensemble de ceux obtenus par une chaîne qui se termine par une **multiplication**. D'après la
remarque du début, voici les seules règles :

- **(R1)** $1 + 2 = 3$ et $1 + 3 = 4$ sont dans $A$ ; $1 \times 2 = 2$ et $1 \times 3 = 3$ sont dans $M$.
- **(R2)** Si $x$ est dans $M$, alors $x + 2$ et $x + 3$ sont dans $A$.
- **(R3)** Si $x$ est dans $A$, alors $2x$ et $3x$ sont dans $M$.

**Pourquoi $7$ n'est pas atteignable.** Le nombre $7$ n'est ni pair ni multiple de $3$, donc il
n'est pas dans $M$. S'il était dans $A$, il vaudrait $l + 2$ ou $l + 3$, avec $l = 1$ ou $l$ dans $M$,
donc $l = 5$ ou $l = 4$. Or $5$ n'est pas dans $M$ (ni pair ni multiple de $3$). Et $4$ n'est pas non
plus dans $M$ : il faudrait $4 = 2 \times 2$ avec $2$ égal à $1$ ou dans $A$, mais un nombre de $A$
vaut au moins $1 + 2 = 3$. Donc $7$ n'est pas atteignable.

**Les nombres exceptionnels.** Posons $e_0 = 7$, puis $e_{t+1} = 2e_t + 2$ :

$$e_0 = 7, \quad e_1 = 16, \quad e_2 = 34, \quad e_3 = 70, \quad e_4 = 142, \quad \ldots$$

Deux propriétés simples :

- **(F1)** à partir de $e_1$, ils sont tous pairs, puisque $2e_t + 2$ est pair ;
- **(F2)** ils ont tous pour reste $1$ dans la division par $3$ : c'est vrai pour $7 = 3 \times 2 + 1$,
  et si $e_t = 3s + 1$, alors $e_{t+1} = 6s + 4 = 3(2s + 1) + 1$.

**La propriété à démontrer.** Pour un entier $N \geqslant 3$, appelons $\mathcal{P}(N)$ la propriété :

> $N$ est dans $A$, ou bien $N = 7$, ou bien $N$ est l'un des nombres $e_1, e_2, \ldots$ et il est dans $M$.

Si $\mathcal{P}(N)$ est vraie pour tout $N \geqslant 3$, on a gagné : tout entier $N \geqslant 3$
autre que $7$ est dans $A$ ou dans $M$, donc atteignable, et $1$ et $2 = 1 \times 2$ le sont aussi.

**Les petites valeurs.** $3$ et $4$ sont dans $A$ (R1). $5 = 2 + 3$ et $6 = 3 + 3$ sont dans $A$,
par (R2), puisque $2$ et $3$ sont dans $M$. Et pour $N = 7$, la propriété est vraie par définition.

**Le cas général.** Supposons que $\mathcal{P}$ soit fausse pour au moins un entier, et prenons le
**plus petit** entier $N$ pour lequel elle est fausse. On vient de voir que $N \geqslant 8$, et
$\mathcal{P}(x)$ est vraie pour tous les $x$ de $3$ à $N - 1$. Dans ce qui suit, on utilise souvent
la conséquence suivante : si $3 \leqslant x < N$ et si $x$ n'est aucun des nombres $e_t$, alors $x$
est dans $A$.

*Si $N$ est pair*, posons $x = \dfrac{N - 2}{2}$. Comme $N \geqslant 8$, on a $3 \leqslant x < N$, et
$N = 2x + 2$.

- Si $x$ est dans $A$, alors $2x = N - 2$ est dans $M$ (R3), puis $N = (N - 2) + 2$ est dans $A$
  (R2). Donc $\mathcal{P}(N)$ est vraie.
- Sinon, comme $\mathcal{P}(x)$ est vraie, $x$ est l'un des $e_t$, et alors $N = 2e_t + 2 = e_{t+1}$.
  Posons $y = x + 1$. Ce nombre n'est aucun des $e_s$ : si $x = 7$, alors $y = 8$, et sinon $x$ est
  pair d'après (F1), donc $y$ est impair et plus grand que $7$. Comme $3 \leqslant y < N$, $y$ est
  dans $A$, donc $N = 2y$ est dans $M$ (R3). Ainsi $N$ est l'un des $e_1, e_2, \ldots$ et il est dans
  $M$ : $\mathcal{P}(N)$ est vraie.

*Si $N$ est impair*, alors $N \geqslant 9$. Posons $x = \dfrac{N - 3}{2}$, de sorte que
$3 \leqslant x < N$ et $N = 2x + 3$.

- Si $x$ est dans $A$, alors $2x = N - 3$ est dans $M$ (R3), puis $N = (N - 3) + 3$ est dans $A$
  (R2).
- Sinon, $x$ est l'un des $e_t$. D'après (F2), $x = 3s + 1$ pour un entier $s$, donc
  $N - 2 = 2x + 1 = 3(2s + 1)$. Posons $z = 2s + 1 = \dfrac{N - 2}{3}$. C'est un nombre impair, et
  $z \geqslant 5$ puisque $x \geqslant 7$. Il n'est aucun des $e_s$ : il est impair, donc ce n'est
  pas $e_1, e_2, \ldots$, et $z = 7$ donnerait $2x + 1 = 21$, soit $x = 10$, qui n'est pas un $e_t$.
  Comme $3 \leqslant z < N$, $z$ est dans $A$. Donc $3z = N - 2$ est dans $M$ (R3), puis
  $N = (N - 2) + 2$ est dans $A$ (R2).

Dans tous les cas $\mathcal{P}(N)$ est vraie, ce qui contredit le choix de $N$. La propriété est donc
vraie pour tout entier $N \geqslant 3$.

**Conclusion.** Pour $n = 3$, tous les entiers $N \geqslant 1$ sont atteignables, sauf $7$. Les
nombres $16$, $34$, $70$, $\ldots$ sont atteignables, mais seulement par une chaîne qui se termine
par une multiplication : par exemple $16 = 8 \times 2$, avec $8 = 6 + 2$ et $6 = 3 \times 2$.

## Going further

Pour $n = 5$ ou $n = 7$, aucun des deux arguments de la question 1 ne s'applique tel quel, et
pourtant un calcul par ordinateur montre qu'il y a encore beaucoup de nombres non atteignables.
Pour $n = 5$, les premiers sont $9$, $23$, $29$, $51$, $63$.

Pour $9$, c'est le même raisonnement que pour $7$ quand $n = 3$. Le nombre $9$ n'est ni pair ni
multiple de $5$, donc la dernière opération serait une addition, à partir de $9 - 2 = 7$ ou de
$9 - 5 = 4$. Mais $7$ ne s'obtient pas par une multiplication, et $4 = 2 \times 2$ non plus, car $2$
ne s'obtient pas par une addition.
