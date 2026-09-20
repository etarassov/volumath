---
id: "5005"
title: "Les poupées et les trains électriques"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-a-deux-inconnues, entiers, multiples, systeme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Introduction to Diophantine Equations », Tom Davis, 2006"
  reference: "diophantine.pdf, section 1 « Whole Numbers »"
  url: "https://mathcircles.org/activity/introduction-to-diophantine-equations/"
  original_language: "en"
  local_copy: "sources/originals/namc/diophantine.pdf"
---

## Statement

Dans un magasin de jouets, une poupée coûte $7$ euros et un train électrique coûte
$18$ euros.

1. Un samedi, le magasin vend $25$ jouets en tout, uniquement des poupées et des trains, et
   encaisse $208$ euros. Combien a-t-il vendu de poupées et combien de trains ?

2. Le samedi suivant, le magasin encaisse de nouveau $208$ euros en ne vendant que des
   poupées et des trains, mais cette fois **on ne sait plus** combien de jouets ont été
   vendus en tout. Trouver toutes les ventes possibles.

## Hints

1. Pour la question 1, appelle $x$ le nombre de poupées et $y$ le nombre de trains, et écris
   les deux informations sous forme de deux équations. Tu sais résoudre ce système.
2. Pour la question 2, il ne reste qu'une seule équation, $7x + 18y = 208$, avec deux
   inconnues. En classe on dirait qu'il manque une équation. Mais il reste une information
   cachée : $x$ et $y$ sont des nombres **entiers positifs ou nuls**.
3. Combien de trains au maximum peut-on avoir vendus ? Utilise $18y \leqslant 208$.
4. Pour chaque valeur possible de $y$, calcule $208 - 18y$ et demande-toi si c'est un
   multiple de $7$.
5. Tu n'as que douze valeurs de $y$ à tester. Dresse un tableau.

## Solution

### 1. Avec le nombre total de jouets

Notons $x$ le nombre de poupées et $y$ le nombre de trains. On a

$$x + y = 25 \qquad \text{et} \qquad 7x + 18y = 208 .$$

De la première égalité, $x = 25 - y$. En remplaçant dans la seconde :

$$7(25 - y) + 18y = 208$$
$$175 - 7y + 18y = 208$$
$$11y = 33$$
$$y = 3 .$$

Donc $x = 25 - 3 = 22$.

**Le magasin a vendu $22$ poupées et $3$ trains.** Vérification :
$22 + 3 = 25$ jouets et $22 \times 7 + 3 \times 18 = 154 + 54 = 208$ euros.

### 2. Sans le nombre total de jouets

Il ne reste qu'une équation :

$$7x + 18y = 208 .$$

À première vue c'est insoluble : une équation, deux inconnues. Mais $x$ et $y$ ne sont pas
n'importe quels nombres, ce sont des **entiers positifs ou nuls** : on ne vend pas 2,7
poupées ni $-1$ train. C'est cette information qui remplace la deuxième équation.

**On borne le nombre de trains.** Comme $7x \geqslant 0$, on a $18y \leqslant 208$, donc

$$y \leqslant \frac{208}{18} < 12 .$$

Le nombre de trains est donc compris entre $0$ et $11$.

**On teste les douze cas.** Pour chaque valeur de $y$, on calcule $7x = 208 - 18y$ et on
regarde si c'est un multiple de $7$.

| $y$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $208 - 18y$ | $208$ | $190$ | $172$ | $154$ | $136$ | $118$ | $100$ | $82$ | $64$ | $46$ | $28$ | $10$ |
| multiple de $7$ ? | non | non | non | **oui** | non | non | non | non | non | non | **oui** | non |

Deux valeurs passent :

- $y = 3$ : $7x = 154$, donc $x = 22$ ;
- $y = 10$ : $7x = 28$, donc $x = 4$.

**Conclusion.** Il y a exactement deux ventes possibles :

$$\boxed{22 \text{ poupées et } 3 \text{ trains}} \qquad \text{ou} \qquad \boxed{4 \text{ poupées et } 10 \text{ trains}} .$$

Vérification de la seconde : $4 \times 7 + 10 \times 18 = 28 + 180 = 208$ euros.

## Going further

On peut éviter le tableau. Les restes dans la division par $7$ suffisent : $208 = 7 \times 29 + 5$
et $18 = 7 \times 2 + 4$. Pour que $208 - 18y$ soit un multiple de $7$, il faut que $4y$ et $5$
aient le même reste modulo $7$. En essayant $y = 0, 1, \ldots, 6$ on trouve le seul reste qui
marche, $y = 3$, et ensuite les solutions se suivent de $7$ en $7$ : $y = 3$, puis $y = 10$,
puis $y = 17$ (trop grand).

Plus généralement, dès qu'on connaît une solution $(x_0, y_0)$ de $7x + 18y = 208$, toutes les
autres s'obtiennent en retirant $18$ à $x$ tout en ajoutant $7$ à $y$, ou l'inverse : le membre
de gauche change alors de $-7 \times 18 + 18 \times 7 = 0$, donc il ne change pas. En partant de
$(22, 3)$ on retrouve bien $(4, 10)$, puis $(-14, 17)$, qui n'a plus de sens pour un magasin.
