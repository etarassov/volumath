---
id: "6101"
title: "La base moins quatre"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [bases-de-numeration, ecriture-des-nombres, entiers-relatifs, division-euclidienne]
adapted_from: null
see_also: ["6102"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter 2012, rubrique « Problem Circle »"
  reference: "MTCircularWinter2012.pdf, « Problem Circle: Number Bases », par Joshua Zucker d'après Harold Reiter, questions a) et b). Le magazine ne publie aucune solution."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWinter2012.pdf"
---

## Statement

En base dix, dans l'écriture $3205$, les chiffres valent, de droite à gauche, $1$, puis $10$, puis $100$, puis $1000$ : ce sont les puissances de dix.

On va maintenant écrire les nombres en **base $-4$**. De droite à gauche, les valeurs des positions sont les puissances de $-4$ :

$$1, \quad -4, \quad 16, \quad -64, \quad 256, \quad -1024, \quad \ldots$$

Les seuls chiffres autorisés sont $0$, $1$, $2$ et $3$, et on n'a **jamais** le droit d'écrire un signe moins.

Par exemple, l'écriture $132$ désigne le nombre

$$1 \times 16 + 3 \times (-4) + 2 \times 1 = 16 - 12 + 2 = 6,$$

et l'écriture $11$ désigne

$$1 \times (-4) + 1 \times 1 = -3.$$

Ainsi, dans ce système, on écrit les nombres négatifs comme les autres, sans signe.

a) Quels nombres désignent les écritures $21$, $32$ et $3021$ ?

b) Écris en base $-4$ tous les nombres de $1$ à $16$.

c) Écris en base $-4$ les nombres $100$, $-5$ et $-20$.

## Hints

1. Pour a), remplace chaque chiffre par la valeur de sa position, puis additionne.
2. Pour b), les nombres $1$, $2$ et $3$ s'écrivent comme en base dix. Pour $4$, une seule position ne suffit pas, et deux non plus : essaie trois positions, et calcule $16 - 4 \times 3$.
3. Une remarque utile : si le chiffre le plus à gauche est à une position de valeur positive ($1$, $16$, $256$, ...), le nombre est positif ; s'il est à une position de valeur négative ($-4$, $-64$, ...), le nombre est négatif.
4. Pour c), une méthode plutôt que des essais : le chiffre des unités est le **reste** de la division euclidienne du nombre par $4$ (ce reste est toujours $0$, $1$, $2$ ou $3$, même pour un nombre négatif). Une fois ce reste retiré, ce qui reste est un multiple de $-4$ : divise par $-4$, et recommence avec le quotient.

## Solution

**a) Lire une écriture.**

$$21 = 2 \times (-4) + 1 \times 1 = -8 + 1 = -7,$$

$$32 = 3 \times (-4) + 2 \times 1 = -12 + 2 = -10,$$

$$3021 = 3 \times (-64) + 0 \times 16 + 2 \times (-4) + 1 \times 1 = -192 + 0 - 8 + 1 = -199.$$

**b) Compter jusqu'à seize.**

Pour $1$, $2$ et $3$, un seul chiffre suffit. Pour $4$, rien ne marche avec un ou deux chiffres : avec deux chiffres, les nombres accessibles sont $d_1 \times (-4) + d_0$, donc au mieux $0 + 3 = 3$. Il faut trois chiffres, et $16 - 4 \times 3 + 0 = 4$, c'est-à-dire $130$. On continue en ajoutant $1$ à chaque fois :

| Nombre | Base $-4$ | Vérification |
|---|---|---|
| $1$ | $1$ | $1$ |
| $2$ | $2$ | $2$ |
| $3$ | $3$ | $3$ |
| $4$ | $130$ | $16 - 12 + 0$ |
| $5$ | $131$ | $16 - 12 + 1$ |
| $6$ | $132$ | $16 - 12 + 2$ |
| $7$ | $133$ | $16 - 12 + 3$ |
| $8$ | $120$ | $16 - 8 + 0$ |
| $9$ | $121$ | $16 - 8 + 1$ |
| $10$ | $122$ | $16 - 8 + 2$ |
| $11$ | $123$ | $16 - 8 + 3$ |
| $12$ | $110$ | $16 - 4 + 0$ |
| $13$ | $111$ | $16 - 4 + 1$ |
| $14$ | $112$ | $16 - 4 + 2$ |
| $15$ | $113$ | $16 - 4 + 3$ |
| $16$ | $100$ | $16 + 0 + 0$ |

On remarque la mécanique : le chiffre des unités monte de $0$ à $3$, puis le chiffre du milieu **descend** de $3$ vers $0$, parce que sa position vaut $-4$.

**c) Une méthode qui marche à tous les coups.**

Le chiffre des unités d'un nombre $n$ est forcément le reste de la division euclidienne de $n$ par $4$ : en effet, toutes les autres positions ($-4$, $16$, $-64$, ...) sont des multiples de $4$. Une fois ce chiffre $r$ retiré, il reste $n - r$, qui est un multiple de $-4$ ; on le divise par $-4$ et on recommence avec le quotient. Les chiffres sortent dans l'ordre inverse de leur écriture.

**Pour $100$ :**

- $100 = 4 \times 25 + 0$, donc chiffre $0$ ; et $100 = (-4) \times (-25) + 0$, on continue avec $-25$.
- $-25 = 4 \times (-7) + 3$, donc chiffre $3$ ; et $-25 = (-4) \times 7 + 3$, on continue avec $7$.
- $7 = 4 \times 1 + 3$, donc chiffre $3$ ; et $7 = (-4) \times (-1) + 3$, on continue avec $-1$.
- $-1 = 4 \times (-1) + 3$, donc chiffre $3$ ; et $-1 = (-4) \times 1 + 3$, on continue avec $1$.
- $1 = 4 \times 0 + 1$, donc chiffre $1$ ; on continue avec $0$, c'est fini.

En lisant les chiffres du dernier trouvé au premier : $100$ s'écrit $\boxed{13330}$.

Vérification : $1 \times 256 + 3 \times (-64) + 3 \times 16 + 3 \times (-4) + 0 = 256 - 192 + 48 - 12 = 100$.

**Pour $-5$ :**

- $-5 = 4 \times (-2) + 3$, chiffre $3$ ; et $-5 = (-4) \times 2 + 3$, on continue avec $2$.
- $2 = 4 \times 0 + 2$, chiffre $2$ ; on continue avec $0$, c'est fini.

Donc $-5$ s'écrit $\boxed{23}$. Vérification : $2 \times (-4) + 3 = -5$.

**Pour $-20$ :**

- $-20 = 4 \times (-5) + 0$, chiffre $0$ ; et $-20 = (-4) \times 5 + 0$, on continue avec $5$.
- $5 = 4 \times 1 + 1$, chiffre $1$ ; et $5 = (-4) \times (-1) + 1$, on continue avec $-1$.
- $-1 = 4 \times (-1) + 3$, chiffre $3$ ; on continue avec $1$.
- $1 = 4 \times 0 + 1$, chiffre $1$ ; on continue avec $0$, c'est fini.

Donc $-20$ s'écrit $\boxed{1310}$. Vérification : $1 \times (-64) + 3 \times 16 + 1 \times (-4) + 0 = -64 + 48 - 4 = -20$.

## Going further

Cette base a une propriété que la base dix n'a pas : **aucun signe moins n'est jamais nécessaire**, et pourtant tous les entiers relatifs sont atteints. On peut montrer que chaque entier, positif, négatif ou nul, a une écriture en base $-4$ et une seule.

Essaie aussi de poser une addition en base $-4$, par exemple $132 + 133$ (c'est-à-dire $6 + 7 = 13$, donc le résultat doit être $111$). La retenue se comporte de façon inhabituelle : quand une colonne dépasse $3$, on lui retire $4$, mais il faut alors *retirer* $1$ à la colonne suivante, ce qui revient à lui ajouter $3$ et à ajouter $1$ à celle d'encore après.
