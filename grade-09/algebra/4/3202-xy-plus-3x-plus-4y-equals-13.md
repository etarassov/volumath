---
id: "3202"
title: "Six couples d'entiers pour xy + 3x + 4y = 13"
grade: 9
theme: algebra
difficulty: 4
duration_min: 25
tags: [equation, entiers, factorisation, diviseurs, developpement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2, dernière identité, deuxième question (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

1. Trouver tous les couples d'entiers relatifs $(x, y)$ tels que
   $$xy + x + y = 9.$$
2. Même question pour
   $$xy + 3x + 4y = 13.$$

## Hints

1. Développe $(x+1)(y+1)$. Que manque-t-il à $xy + x + y$ pour lui ressembler ?
2. Pour la question 2, cherche deux nombres $a$ et $b$ tels que $(x+a)(y+b)$ redonne $xy + 3x + 4y$ plus une constante. Regarde les coefficients de $x$ et de $y$.
3. Tu arrives à une égalité de la forme $(x+4)(y+3) = 25$. Les deux facteurs sont des entiers dont le produit vaut $25$.
4. Ne t'arrête pas aux diviseurs positifs. $25$ s'écrit aussi $(-1) \times (-25)$ et $(-5) \times (-5)$.

## Solution

### 1. L'équation $xy + x + y = 9$

Le membre de gauche ressemble à un produit développé :

$$(x+1)(y+1) = xy + x + y + 1.$$

Il suffit donc d'ajouter $1$ aux deux membres :

$$xy + x + y + 1 = 10, \qquad \text{c'est-à-dire} \qquad (x+1)(y+1) = 10.$$

Maintenant $x+1$ et $y+1$ sont deux entiers dont le produit vaut $10$. On liste **toutes** les façons d'écrire $10$ comme produit de deux entiers relatifs :

$$1 \times 10, \quad 2 \times 5, \quad 5 \times 2, \quad 10 \times 1,$$
$$(-1) \times (-10), \quad (-2) \times (-5), \quad (-5) \times (-2), \quad (-10) \times (-1).$$

En retranchant $1$ à chaque facteur on obtient les couples $(x, y)$ :

$$(0, 9), \quad (1, 4), \quad (4, 1), \quad (9, 0),$$
$$(-2, -11), \quad (-3, -6), \quad (-6, -3), \quad (-11, -2).$$

### 2. L'équation $xy + 3x + 4y = 13$

**Trouver la bonne factorisation.** On cherche $a$ et $b$ tels que $(x+a)(y+b)$ commence par $xy + 3x + 4y$. En développant,

$$(x+a)(y+b) = xy + bx + ay + ab.$$

Pour retrouver $3x$ il faut $b = 3$, et pour retrouver $4y$ il faut $a = 4$. Donc

$$(x+4)(y+3) = xy + 3x + 4y + 12.$$

**On ajoute $12$ aux deux membres** de l'équation de départ :

$$xy + 3x + 4y + 12 = 13 + 12 = 25,$$

donc

$$(x+4)(y+3) = 25.$$

**On énumère.** Posons $u = x+4$ et $v = y+3$ : ce sont deux entiers relatifs de produit $25$. Les couples $(u, v)$ possibles sont

$$(1, 25), \quad (5, 5), \quad (25, 1), \quad (-1, -25), \quad (-5, -5), \quad (-25, -1).$$

Il ne faut surtout pas oublier les trois derniers : un produit de deux nombres négatifs est positif lui aussi.

On revient à $x = u - 4$ et $y = v - 3$ :

| $u$ | $v$ | $x$ | $y$ |
|---|---|---|---|
| $1$ | $25$ | $-3$ | $22$ |
| $5$ | $5$ | $1$ | $2$ |
| $25$ | $1$ | $21$ | $-2$ |
| $-1$ | $-25$ | $-5$ | $-28$ |
| $-5$ | $-5$ | $-9$ | $-8$ |
| $-25$ | $-1$ | $-29$ | $-4$ |

**Vérification sur deux d'entre eux.**

- $(1, 2)$ : $1 \times 2 + 3 \times 1 + 4 \times 2 = 2 + 3 + 8 = 13$. Correct.
- $(-9, -8)$ : $(-9)(-8) + 3 \times (-9) + 4 \times (-8) = 72 - 27 - 32 = 13$. Correct.

**Conclusion.** L'équation $xy + 3x + 4y = 13$ a exactement **six** solutions entières :

$$(-29, -4), \quad (-9, -8), \quad (-5, -28), \quad (-3, 22), \quad (1, 2), \quad (21, -2).$$

## Going further

1. Combien de couples d'**entiers naturels** $(x, y)$ vérifient $xy + 3x + 4y = 13$ ?
2. Résoudre $xy - 2x + 5y = 7$ en entiers relatifs.
3. Pourquoi l'équation $xy + 3x + 4y = 12$ se traite-t-elle exactement de la même façon, mais avec beaucoup plus de solutions ?
