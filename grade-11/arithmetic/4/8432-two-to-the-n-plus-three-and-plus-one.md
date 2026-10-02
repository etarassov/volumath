---
id: "8432"
title: "Quand 2ⁿ + 3 et 2ⁿ + 1 sont-ils des carrés ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre-parfait, puissances-de-deux, congruences, factorisation]
adapted_from: null
see_also: []
same_as: ["7034"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

1. Trouver tous les entiers naturels $n$ pour lesquels $2^n + 3$ est un carré parfait.
2. Trouver tous les entiers naturels $n$ pour lesquels $2^n + 1$ est un carré parfait.

## Hints

1. Dans les deux questions, commence par calculer les premières valeurs. Une seule réponse apparaît à chaque fois : reste à montrer qu'il n'y en a pas d'autre.
2. Pour la question 1, regarde les restes modulo $4$. Quels restes un carré peut-il laisser ? Et $2^n + 3$ quand $n$ est grand ?
3. Pour la question 2, les congruences ne suffisent plus : modulo $4$, le nombre $2^n+1$ laisse le reste $1$, ce qui est autorisé. Il faut factoriser.
4. Si $2^n + 1 = x^2$, alors $2^n = x^2 - 1 = (x-1)(x+1)$. Que peut-on dire des diviseurs positifs d'une puissance de $2$ ?
5. Deux puissances de $2$ dont la différence vaut $2$ : combien y en a-t-il ?

## Solution

### Question 1 : $2^n + 3$

**Le petit cas.** Pour $n = 0$ : $2^0 + 3 = 4 = 2^2$. C'est un carré.

Pour $n = 1$ : $2 + 3 = 5$, qui n'est pas un carré.

**Le cas général $n \geqslant 2$.** Alors $2^n$ est un multiple de $4$, donc

$$2^n + 3 \equiv 3 \pmod 4.$$

Or un carré est toujours congru à $0$ ou à $1$ modulo $4$. En effet, si $x = 2m$ alors $x^2 = 4m^2 \equiv 0$, et si $x = 2m+1$ alors $x^2 = 4m(m+1) + 1 \equiv 1$.

Donc $2^n + 3$ n'est pas un carré pour $n \geqslant 2$.

**Réponse :** la seule valeur est $n = 0$, et $2^0 + 3 = 4 = 2^2$.

### Question 2 : $2^n + 1$

**Les petits cas.** $n=0$ donne $2$, $n=1$ donne $3$, $n=2$ donne $5$, $n=3$ donne $9 = 3^2$. Voilà une solution.

**Le cas général.** Supposons $2^n + 1 = x^2$ avec $x$ entier, que l'on peut prendre positif. Alors

$$2^n = x^2 - 1 = (x-1)(x+1).$$

Comme $2^n \geqslant 1$, on a $x^2 \geqslant 2$, donc $x \geqslant 2$ et les deux facteurs $x-1$ et $x+1$ sont des entiers strictement positifs.

**Les deux facteurs sont des puissances de $2$.** Le nombre $x-1$ divise $2^n$. Or les diviseurs positifs de $2^n$ sont exactement $1, 2, 4, \ldots, 2^n$, c'est-à-dire les puissances de $2$. Donc

$$x - 1 = 2^{\alpha} \qquad \text{et} \qquad x + 1 = 2^{\beta},$$

avec $\alpha < \beta$ (car $x-1 < x+1$).

**Deux puissances de $2$ qui diffèrent de $2$.** En soustrayant,

$$2^{\beta} - 2^{\alpha} = 2, \qquad \text{c'est-à-dire} \qquad 2^{\alpha}\big(2^{\beta - \alpha} - 1\big) = 2.$$

Le facteur $2^{\beta-\alpha} - 1$ est impair (une puissance de $2$ d'exposant $\geqslant 1$ moins $1$), et le produit vaut $2$. Le seul découpage possible de $2$ en un facteur pair de la forme $2^\alpha$ et un facteur impair est $2 = 2 \times 1$. Donc

$$2^{\alpha} = 2 \quad \text{et} \quad 2^{\beta-\alpha} - 1 = 1,$$

soit $\alpha = 1$ et $\beta - \alpha = 1$, donc $\beta = 2$.

**On conclut.** $x - 1 = 2$ donne $x = 3$, et $2^n = (x-1)(x+1) = 2 \times 4 = 8$, donc $n = 3$.

**Réponse :** la seule valeur est $n = 3$, et $2^3 + 1 = 9 = 3^2$.

## Going further

Ce problème figure aussi dans la base sous le n° 7431, importé indépendamment du polycopié de Grésillon 2010 : les polycopiés de la POFM se reprennent d'une année sur l'autre.


Les deux questions se ressemblent, mais elles ne se traitent pas de la même façon, et c'est tout l'intérêt de les poser ensemble.

Pour $2^n + 3$, une congruence suffit : les carrés évitent le reste $3$ modulo $4$, et c'est exactement là que tombe $2^n+3$.

Pour $2^n + 1$, aucune congruence ne peut marcher, car $9 = 2^3+1$ est bien un carré : une contradiction modulo quelque chose interdirait aussi cette solution-là. Il faut donc un argument de nature différente, ici la factorisation $x^2 - 1 = (x-1)(x+1)$.

**Règle à retenir :** une congruence ne sert qu'à éliminer, jamais à trouver. Dès qu'une solution existe, il faut un autre outil.
