---
id: "12852"
title: "Un bel ensemble d'entiers entre 1 et 100"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-des-chiffres, divisibilite, construction, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test EGMO, exercice 9 ; corrigé 2025-01_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $S(n)$ la somme des chiffres de $n$. Par exemple, $S(83) = 8 + 3 = 11$.

On dit qu'un ensemble $A$ d'entiers est **beau** si, pour tous les éléments $a$ et $b$ de $A$ :

$$a \text{ divise } b \quad \text{si et seulement si} \quad S(a) \text{ divise } S(b).$$

Quel est le plus grand nombre d'éléments que peut avoir un bel ensemble formé d'entiers compris entre $1$ et $100$ ?

## Hints

1. Montrez que deux éléments différents d'un bel ensemble ne peuvent pas avoir la même somme des chiffres.
2. Quelles valeurs peut prendre $S(n)$ pour $1 \leq n \leq 100$ ? Déduisez-en une première majoration.
3. Supposez que cette majoration est atteinte. Quel est l'élément dont la somme des chiffres vaut $18$ ? Puis celui dont la somme vaut $2$, puis $10$, puis $5$ ? Regardez enfin la somme $15$.
4. Pour la construction, renoncez à la somme $15$. Pour les sommes paires, prenez des multiples de $11$.

## Solution

La réponse est $17$.

### Étape 1 : au plus 18 éléments

Soit $A$ un bel ensemble formé d'entiers entre $1$ et $100$.

Si $a$ et $b$ sont deux éléments de $A$ tels que $S(a) = S(b)$, alors $S(a)$ divise $S(b)$ et $S(b)$ divise $S(a)$. Comme $A$ est beau, $a$ divise $b$ et $b$ divise $a$, donc $a = b$. **Deux éléments différents de $A$ ont des sommes des chiffres différentes.**

Pour $1 \leq n \leq 99$, le nombre $n$ a au plus deux chiffres, chacun au plus égal à $9$, donc $1 \leq S(n) \leq 18$. Et $S(100) = 1$. Les sommes des chiffres des éléments de $A$ sont donc des entiers différents entre $1$ et $18$ : **$A$ a au plus $18$ éléments.**

### Étape 2 : 18 éléments, c'est impossible

Supposons que $A$ ait $18$ éléments. Alors, pour chaque entier $s$ de $1$ à $18$, il y a exactement un élément de $A$ dont la somme des chiffres vaut $s$. Notons-le $a_s$.

- **$a_{18} = 99$**, car c'est le seul entier entre $1$ et $100$ dont la somme des chiffres vaut $18$.
- **$a_2 = 11$.** Les entiers de somme $2$ sont $2$, $11$ et $20$. Comme $2$ divise $18$, le nombre $a_2$ doit diviser $a_{18} = 99$. Seul $11$ convient.
- **$a_{10} = 55$.** Comme $2$ divise $10$, le nombre $a_{10}$ est un multiple de $a_2 = 11$. Les multiples de $11$ jusqu'à $100$ sont $11, 22, \ldots, 99$, de sommes des chiffres $2, 4, \ldots, 18$. Seul $55$ a pour somme $10$.
- **$a_5 = 5$.** Comme $5$ divise $10$, le nombre $a_5$ divise $a_{10} = 55$. Les diviseurs de $55$ sont $1$, $5$, $11$ et $55$, et seul $5$ a pour somme $5$.
- **Contradiction.** Comme $5$ divise $15$, le nombre $a_{15}$ doit être un multiple de $a_5 = 5$. Or les entiers de somme des chiffres $15$ entre $1$ et $100$ sont $69$, $78$, $87$ et $96$, et aucun n'est un multiple de $5$.

Donc **un bel ensemble a au plus $17$ éléments.**

### Étape 3 : un bel ensemble de 17 éléments

Voici l'ensemble $A$, avec la somme des chiffres de chaque élément.

| $n$ | $1$ | $3$ | $5$ | $7$ | $9$ | $11$ | $22$ | $33$ | $44$ | $55$ | $66$ | $77$ | $88$ | $99$ | $83$ | $67$ | $89$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $S(n)$ | $1$ | $3$ | $5$ | $7$ | $9$ | $2$ | $4$ | $6$ | $8$ | $10$ | $12$ | $14$ | $16$ | $18$ | $11$ | $13$ | $17$ |

Il est formé de trois familles :

- les nombres $1, 3, 5, 7, 9$, égaux à leur somme des chiffres ;
- les nombres $11k$ pour $k = 1, \ldots, 9$, dont la somme des chiffres vaut $2k$ ;
- les nombres premiers $83$, $67$ et $89$, de sommes $11$, $13$ et $17$.

Vérifions que $A$ est beau. Soit $a \neq b$ deux éléments de $A$ (pour $a = b$, il n'y a rien à vérifier).

**Si l'un des deux est $83$, $67$ ou $89$.** Notons $x$ cet élément, $s = S(x) \in \{11, 13, 17\}$ sa somme des chiffres, et $y$ l'autre élément. Le nombre $s$ est premier et $2s > 18$ ; le nombre $x$ est premier et $2x > 100$.

- Le nombre $x$ ne divise pas $y$, car le premier multiple de $x$ après $x$ est $2x > 100$. Et $s$ ne divise pas $S(y)$, car $S(y) \leq 18 < 2s$ et $S(y) \neq s$ (les éléments de $A$ ont des sommes des chiffres différentes).
- Le nombre $y$ divise $x$ si et seulement si $y = 1$, car $x$ est premier. Le nombre $S(y)$ divise $s$ si et seulement si $S(y) = 1$, car $s$ est premier et $S(y) \neq s$ ; dans $A$, cela n'arrive que pour $y = 1$.

Dans les deux sens, les deux propriétés sont vraies ou fausses en même temps.

**Si $a$ et $b$ sont dans la première famille**, alors $a = S(a)$ et $b = S(b)$, et il n'y a rien à vérifier.

**Si $a = 11k$ et $b = 11k'$ sont dans la deuxième famille**, alors $11k$ divise $11k'$ si et seulement si $k$ divise $k'$, si et seulement si $2k$ divise $2k'$, c'est-à-dire $S(a)$ divise $S(b)$.

**Si l'un est dans la première famille et l'autre dans la deuxième.** Notons $c \in \{1, 3, 5, 7, 9\}$ le premier et $11k$ le second, de somme $2k$.

- Le nombre $11k \geq 11$ ne divise pas $c \leq 9$, et le nombre pair $2k$ ne divise pas le nombre impair $c$.
- Le nombre $c$ n'a aucun facteur premier commun avec $2$ ni avec $11$. Donc $c$ divise $11k$ si et seulement si $c$ divise $k$, si et seulement si $c$ divise $2k$.

Dans tous les cas, $a$ divise $b$ si et seulement si $S(a)$ divise $S(b)$ : **l'ensemble $A$ est beau.**

### Conclusion

Un bel ensemble d'entiers entre $1$ et $100$ a au plus $17$ éléments, et il en existe un qui en a $17$. **Le nombre maximal cherché est $17$.**

## Going further

1. Dans la construction, peut-on remplacer $83$ par un autre entier de somme des chiffres $11$ ? Lesquels conviennent ?
2. L'étape 2 montre qu'un bel ensemble ne peut pas contenir à la fois des éléments de somme $2$, $5$, $10$, $15$ et $18$. Trouvez un bel ensemble de $17$ éléments qui contient un élément de somme des chiffres $15$.
