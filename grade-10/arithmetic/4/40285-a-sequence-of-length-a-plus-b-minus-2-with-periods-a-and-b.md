---
id: "40285"
title: "Une suite de 0 et de 1 de longueur a + b − 2, de périodes a et b, non constante"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [periodicite, suites, restes, division-euclidienne, nombres-premiers-entre-eux, palindrome, symetrie]
adapted_from: null
see_also: ["40284"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2009, mathématiques, série S"
  reference: "cg-2009-s-sujet.pdf, exercice III « Arithmétique », questions 3 a) et 3 b). Le résultat de la question 1 a) et la règle de passage de r_k à r_(k+1), établie dans la solution de la question 1 b), sont admis dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2009.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2009-s-sujet.pdf"
---

## Statement

On considère une suite finie de $n$ nombres $V = (v_1, v_2, \ldots, v_n)$. On dit qu'un entier $p \geq 1$ est une *période* de $V$ si $v_i = v_{i+p}$ pour tout entier $i$ tel que $1 \leq i \leq n - p$.

On sait que si $a$ et $b$ sont deux entiers premiers entre eux (leur seul diviseur commun positif est $1$) et sont des périodes d'une suite de longueur $n \geq a + b - 1$, alors cette suite est constante. On montre ici que la longueur $a + b - 1$ ne peut pas être abaissée.

Dans tout l'exercice, $a$ et $b$ sont deux entiers strictement supérieurs à $1$ et premiers entre eux. Pour tout entier $k \geq 1$, on note $r_k$ le reste de la division euclidienne de $ka$ par $a + b$. On admet les deux résultats suivants.

- **(R1)** Quand $k$ prend les valeurs $1, 2, \ldots, a + b - 1$, le reste $r_k$ prend chacune des valeurs $1, 2, \ldots, a + b - 1$ exactement une fois.
- **(R2)** $r_1 = a$ et $r_{a+b-1} = b$. Pour $1 \leq k \leq a + b - 2$, on a $r_k \neq b$, et
  $$r_{k+1} = r_k + a \quad \text{si } r_k < b, \qquad r_{k+1} = r_k - b \quad \text{si } r_k > b.$$

1. Montrer qu'on peut partager l'ensemble des entiers $1, 2, \ldots, a + b - 2$ en deux ensembles non vides $A$ et $B$, de sorte que la suite $V = (v_1, \ldots, v_{a+b-2})$ définie par $v_i = 1$ si $i$ est dans $A$ et $v_i = 0$ si $i$ est dans $B$ ait les périodes $a$ et $b$.
2. a) Le partage obtenu à la question 1 est-il unique ?

   b) Montrer que, pour tout $x$ de $A$, l'entier $a + b - 1 - x$ est aussi dans $A$. Quelle propriété de la suite $V$ traduit-on ainsi ?

## Hints

1. **Question 1.** Commencer par $a = 3$, $b = 5$ : les restes $r_1, \ldots, r_7$ valent $3, 6, 1, 4, 7, 2, 5$. Quelles égalités entre les $v_i$ les périodes $3$ et $5$ imposent-elles, pour une suite de longueur $6$ ?
2. **Question 1.** Avec une suite de longueur $a + b - 1$, les périodes forcent $v_{r_1} = v_{r_2} = \cdots = v_{r_{a+b-1}}$. Ici l'indice $a + b - 1$ n'existe plus : la chaîne d'égalités se coupe en deux morceaux.
3. **Question 1.** Soit $j$ l'entier tel que $r_j = a + b - 1$. Essayer $A = \{r_1, \ldots, r_{j-1}\}$ et $B = \{r_{j+1}, \ldots, r_{a+b-1}\}$. Pourquoi ces deux ensembles sont-ils non vides ?
4. **Question 1.** Pour vérifier la période $a$ : si $i \leq b - 2$, écrire $i = r_k$. Que vaut $r_{k+1}$ ? Les indices $k$ et $k + 1$ sont-ils du même côté de $j$ ?
5. **Question 2.** a) Pour n'importe quel partage qui convient, les périodes imposent encore les égalités de la chaîne coupée.
6. **Question 2.** b) Montrer que $a + b - 1 - r_k$ et $(j - k)a$ ont le même reste dans la division par $a + b$, en utilisant $r_j = a + b - 1$.

## Solution

Ici la suite a pour longueur $n = a + b - 2$. Dire que $a$ est une période de $V$, c'est dire que $v_i = v_{i+a}$ pour $1 \leq i \leq b - 2$. Dire que $b$ est une période, c'est dire que $v_i = v_{i+b}$ pour $1 \leq i \leq a - 2$.

**1.** D'après (R1), il existe un unique entier $j$ entre $1$ et $a + b - 1$ tel que $r_j = a + b - 1$. On a $j \neq 1$, car $r_1 = a \neq a + b - 1$ puisque $b \geq 2$, et $j \neq a + b - 1$, car $r_{a+b-1} = b \neq a + b - 1$ puisque $a \geq 2$. On pose
$$A = \{r_1, r_2, \ldots, r_{j-1}\}, \qquad B = \{r_{j+1}, r_{j+2}, \ldots, r_{a+b-1}\}.$$
Ces deux ensembles sont non vides, puisque $2 \leq j \leq a + b - 2$. D'après (R1), ils n'ont aucun élément commun, et ensemble ils contiennent tous les entiers de $1$ à $a + b - 1$ sauf $r_j = a + b - 1$, c'est-à-dire exactement les entiers de $1$ à $a + b - 2$.

*Une remarque.* Deux restes consécutifs $r_k$ et $r_{k+1}$, avec $k + 1 \leq a + b - 1$, qui sont tous les deux différents de $a + b - 1$, sont tous les deux dans $A$ ou tous les deux dans $B$. En effet, $k \neq j$ et $k + 1 \neq j$, donc $k$ et $k + 1$ sont tous les deux inférieurs à $j$, ou tous les deux supérieurs à $j$.

*La période $a$.* Soit $i$ tel que $1 \leq i \leq b - 2$, et soit $k$ tel que $r_k = i$. Comme $r_{a+b-1} = b \neq i$, on a $k \leq a + b - 2$, et comme $i < b$, (R2) donne $r_{k+1} = i + a$. Or $i$ et $i + a \leq a + b - 2$ sont tous les deux différents de $a + b - 1$. D'après la remarque, $i$ et $i + a$ sont du même côté : $v_i = v_{i+a}$.

*La période $b$.* Soit $i$ tel que $1 \leq i \leq a - 2$, et soit $k$ tel que $r_k = i + b$. Comme $i + b \neq b$, on a $k \leq a + b - 2$, et comme $i + b > b$, (R2) donne $r_{k+1} = i + b - b = i$. Les entiers $i$ et $i + b \leq a + b - 2$ sont différents de $a + b - 1$, donc $v_{i+b} = v_i$.

**Conclusion :** le partage $A = \{r_1, \ldots, r_{j-1}\}$, $B = \{r_{j+1}, \ldots, r_{a+b-1}\}$ convient.

Pour $a = 3$ et $b = 5$ : les restes sont $3, 6, 1, 4, 7, 2, 5$, donc $j = 5$, $A = \{1, 3, 4, 6\}$, $B = \{2, 5\}$ et $V = (1, 0, 1, 1, 0, 1)$.

**2.** a) Soit $A'$, $B'$ un partage quelconque des entiers de $1$ à $a + b - 2$ en deux ensembles non vides, dont la suite $V'$ associée a les périodes $a$ et $b$. Soit $k$ entre $1$ et $a + b - 2$ tel que $r_k$ et $r_{k+1}$ soient tous les deux différents de $a + b - 1$. Ils sont donc tous les deux au plus $a + b - 2$.

- Si $r_k < b$, alors $r_{k+1} = r_k + a \leq a + b - 2$, donc $r_k \leq b - 2$, et la période $a$ donne $v'_{r_k} = v'_{r_k + a} = v'_{r_{k+1}}$.
- Si $r_k > b$, alors $r_{k+1} = r_k - b \leq a - 2$, et la période $b$ donne $v'_{r_{k+1}} = v'_{r_{k+1} + b} = v'_{r_k}$.

En appliquant cela pour $k = 1, \ldots, j - 2$, on obtient que $V'$ prend la même valeur en tous les éléments de $A$. En l'appliquant pour $k = j + 1, \ldots, a + b - 2$, $V'$ prend la même valeur en tous les éléments de $B$. Comme $A'$ et $B'$ sont non vides, $V'$ prend les deux valeurs $0$ et $1$ : elle vaut $1$ sur l'un des ensembles $A$, $B$ et $0$ sur l'autre.

**Conclusion :** le partage est unique, à l'échange près des rôles de $A$ et de $B$. Il y a exactement deux suites qui conviennent, $V$ et la suite obtenue en échangeant les $0$ et les $1$.

b) Soit $x$ dans $A$ : $x = r_k$ avec $1 \leq k \leq j - 1$. Posons $y = a + b - 1 - x$. On a $1 \leq y \leq a + b - 2$, car $1 \leq x \leq a + b - 2$.

Calculons la différence $y - (j - k)a = (a + b - 1 - ja) + (ka - r_k)$.

- $ka - r_k$ est un multiple de $a + b$, puisque $r_k$ est le reste de $ka$.
- $ja = q(a + b) + (a + b - 1)$ pour un certain entier $q$, puisque $r_j = a + b - 1$. Donc $a + b - 1 - ja = -q(a + b)$ est aussi un multiple de $a + b$.

Ainsi $y$ et $(j - k)a$ diffèrent d'un multiple de $a + b$. Comme $y$ est compris entre $0$ et $a + b - 1$, c'est le reste de $(j - k)a$ dans la division par $a + b$ : $y = r_{j-k}$. Enfin $1 \leq j - k \leq j - 1$, donc $y$ est dans $A$.

Si $x$ est dans $B$, alors $a + b - 1 - x$ est aussi dans $B$ : sinon il serait dans $A$, et d'après ce qui précède $a + b - 1 - (a + b - 1 - x) = x$ serait dans $A$.

**Conclusion :** pour tout $x$ entre $1$ et $a + b - 2$, $v_{a+b-1-x} = v_x$. Autrement dit, $v_1 = v_{a+b-2}$, $v_2 = v_{a+b-3}$, et ainsi de suite : la suite $V$ se lit de la même façon de gauche à droite et de droite à gauche. C'est un *palindrome*, comme $(1, 0, 1, 1, 0, 1)$.

**Bilan.** Pour $a$ et $b$ premiers entre eux et plus grands que $1$, il existe une suite non constante de longueur $a + b - 2$ qui a les périodes $a$ et $b$. Elle est unique (à l'échange des $0$ et des $1$ près), et c'est un palindrome. La longueur $a + b - 1$ du théorème « deux périodes premières entre elles rendent la suite constante » est donc la meilleure possible.

## Going further

- Construire la suite pour $a = 5$ et $b = 8$, puis pour $a = 8$ et $b = 13$. Que remarque-t-on sur les longueurs, et sur les suites elles-mêmes ? (Ces mots sont liés aux nombres de Fibonacci et sont très étudiés en informatique.)
- Montrer que l'ensemble $A$ contient $a$ et $b - 1$, et que l'ensemble $B$ contient $a - 1$ et $b$.
