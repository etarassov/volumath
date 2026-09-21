---
id: "8463"
title: "Pour quels nombres premiers l'équation a-t-elle une solution ?"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [equation diophantienne, factorisation, nombre premier, diviseurs, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, la Muraille"
  reference: "Poly-2021-Valbonne.pdf, Muraille, exercice 26 (résolu par Arthur Tézé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les nombres premiers $p$ pour lesquels il existe des entiers naturels $x$ et $y$ vérifiant

$$x\left(y^2 - p\right) + y\left(x^2 - p\right) = 5p.$$

## Hints

1. Développe le membre de gauche, puis essaie de le factoriser. Les deux termes ont beaucoup de choses en commun.
2. Tu devrais arriver à $(x+y)(xy - p) = 5p$. Le premier facteur est un entier naturel : que peut-il valoir ?
3. Comme $p$ est premier, les diviseurs de $5p$ sont peu nombreux. Liste-les, puis traite chaque cas.
4. Dans le cas $x + y = p$, calcule $(x-1)(y-1)$ : tu vas trouver un nombre très petit, indépendant de $p$.
5. Dans le cas $x + y = 5p$, montre que $xy$ est forcément beaucoup plus grand que ce que l'équation exige.

## Solution

La réponse est : $p = 2$, $p = 3$ et $p = 7$.

### Étape 1. Factoriser

Développons le membre de gauche :

$$x\left(y^2 - p\right) + y\left(x^2 - p\right) = xy^2 - px + x^2 y - py = xy(y + x) - p(x + y).$$

Donc l'équation s'écrit

$$(x + y)(xy - p) = 5p. \qquad (\star)$$

### Étape 2. Les valeurs possibles de $x + y$

Le nombre $x+y$ est un entier naturel, et $(\star)$ montre qu'il divise $5p$, qui est strictement positif. Donc $x + y$ est un **diviseur positif de $5p$**.

Comme $p$ est premier, les diviseurs positifs de $5p$ sont $1$, $5$, $p$ et $5p$ (ces quatre valeurs se confondent partiellement si $p = 5$, cas que l'on retrouvera plus bas). Examinons-les tour à tour.

### Étape 3. Le cas $x + y = 1$

Alors $\{x, y\} = \{0, 1\}$, donc $xy = 0$ et $xy - p = -p$. L'équation $(\star)$ donnerait $-p = 5p$, donc $p = 0$ : impossible.

### Étape 4. Le cas $x + y = 5$

Alors $(\star)$ donne $xy - p = p$, c'est-à-dire $xy = 2p$. Les couples d'entiers naturels de somme $5$ sont, à l'ordre près, $(0,5)$, $(1,4)$ et $(2,3)$ :

| $(x, y)$ | $xy$ | $p = xy/2$ | $p$ premier ? |
|---|---|---|---|
| $(0, 5)$ | $0$ | $0$ | non |
| $(1, 4)$ | $4$ | $2$ | **oui** |
| $(2, 3)$ | $6$ | $3$ | **oui** |

On obtient donc $p = 2$ (avec $x = 1$, $y = 4$) et $p = 3$ (avec $x = 2$, $y = 3$).

### Étape 5. Le cas $x + y = p$

Alors $(\star)$ donne $xy - p = 5$, c'est-à-dire $xy = p + 5$. Calculons

$$(x-1)(y-1) = xy - (x + y) + 1 = (p + 5) - p + 1 = 6.$$

Voilà une équation qui ne dépend plus de $p$ du tout. Supposons $x \leqslant y$. Comme $x \geqslant 0$, on a $x - 1 \geqslant -1$, et $(x-1)(y-1) = 6 > 0$ impose que $x-1$ et $y-1$ soient de même signe.

- Si les deux sont négatifs, alors $x - 1 = -1$, donc $x = 0$ et $y - 1 = -6$, soit $y = -5$ : impossible pour un entier naturel.
- S'ils sont positifs, les factorisations de $6$ avec $x - 1 \leqslant y-1$ sont $6 = 1 \times 6$ et $6 = 2 \times 3$ :

| $(x-1, y-1)$ | $(x, y)$ | $p = x + y$ | $p$ premier ? |
|---|---|---|---|
| $(1, 6)$ | $(2, 7)$ | $9$ | non |
| $(2, 3)$ | $(3, 4)$ | $7$ | **oui** |

On obtient donc $p = 7$, avec $x = 3$ et $y = 4$.

### Étape 6. Le cas $x + y = 5p$

Alors $(\star)$ donne $xy - p = 1$, c'est-à-dire $xy = p + 1$.

Si l'un des deux nombres est nul, disons $x = 0$, alors $xy = 0 = p+1$, donc $p = -1$ : impossible.

Sinon $x \geqslant 1$ et $y \geqslant 1$. Supposons $x \leqslant y$. Alors $y = 5p - x \geqslant 5p - y$, donc $y \geqslant \dfrac{5p}{2}$, et

$$xy \geqslant 1 \times y \geqslant \frac{5p}{2}.$$

L'équation demande $xy = p+1$, donc $\dfrac{5p}{2} \leqslant p + 1$, soit $5p \leqslant 2p + 2$, soit $3p \leqslant 2$ : impossible pour un nombre premier.

### Étape 7. Le cas particulier $p = 5$

Si $p = 5$, les diviseurs de $5p = 25$ sont $1$, $5$ et $25$. Le cas $x+y = 1$ est traité à l'étape 3. Le cas $x+y=5$ demanderait $xy = 2p = 10$ avec $x+y = 5$, et aucun des couples $(0,5)$, $(1,4)$, $(2,3)$ n'a pour produit $10$. Le cas $x + y = 25$ est celui de l'étape 6. Donc $p = 5$ ne convient pas.

### Conclusion

$$\boxed{p = 2, \quad p = 3, \quad p = 7.}$$

Vérifions les trois. Pour $p = 2$ avec $(x,y) = (1,4)$ : $1 \times (16 - 2) + 4 \times (1 - 2) = 14 - 4 = 10 = 5 \times 2$. Pour $p = 3$ avec $(x,y) = (2,3)$ : $2 \times (9-3) + 3 \times (4-3) = 12 + 3 = 15 = 5 \times 3$. Pour $p = 7$ avec $(x,y) = (3,4)$ : $3 \times (16-7) + 4 \times (9-7) = 27 + 8 = 35 = 5 \times 7$.

## Going further

Deux idées se répondent dans cette solution.

La première est la **factorisation** de l'étape 1, qui transforme une équation informe en un produit de deux facteurs égal à un nombre dont on connaît tous les diviseurs. C'est le réflexe numéro un devant une équation en nombres entiers : faire apparaître un produit.

La seconde est le calcul de $(x-1)(y-1)$ à l'étape 5. Quand on connaît à la fois la somme $x+y$ et le produit $xy$ de deux inconnues, la quantité $(x-1)(y-1) = xy - (x+y) + 1$ combine les deux, et il arrive, comme ici, que le paramètre disparaisse entièrement. C'est ce qu'on appelle parfois le « truc de Simon » : on ajoute la constante qui permet de factoriser.
