---
id: "3008"
title: "17a + 6b = 13 : la plus petite valeur de a − b"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [equation-diophantienne, bezout, pgcd, entiers-relatifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic I and Divisibility Rules"
  reference: "Handout-3277-2873.pdf, exercice 7 (réponse dans Handout-3324-2873.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3277-2873.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers relatifs vérifiant

$$17a + 6b = 13.$$

Quelle est la plus petite valeur strictement positive que peut prendre $a - b$ ?

## Hints

1. Commence par trouver une solution particulière, par tâtonnement ou avec l'algorithme d'Euclide. Essaie de petites valeurs de $a$.
2. Une fois une solution $(a_0, b_0)$ trouvée, écris toutes les autres : soustrais les deux équations et utilise le fait que $17$ et $6$ sont premiers entre eux.
3. Les solutions forment une famille dépendant d'un entier $k$. Exprime $a - b$ en fonction de $k$.
4. Tu obtiens une suite arithmétique. Cherche son plus petit terme strictement positif.

## Solution

**Une solution particulière.**

$17$ et $6$ sont premiers entre eux, donc l'équation a des solutions. Cherchons-en une :
$17 \times 5 = 85$ et $85 - 13 = 72 = 6 \times 12$, donc

$$17 \times 5 + 6 \times (-12) = 85 - 72 = 13.$$

Le couple $(a_0, b_0) = (5, -12)$ convient.

**Toutes les solutions.**

Soit $(a, b)$ une autre solution. En soustrayant les deux égalités :

$$17(a - 5) + 6(b + 12) = 0, \qquad \text{donc} \qquad 17(a-5) = -6(b+12).$$

Ainsi $6$ divise $17(a-5)$. Comme $\mathrm{PGCD}(6, 17) = 1$, le lemme de Gauss donne
$6 \mid a - 5$ : il existe un entier $k$ tel que $a = 5 + 6k$. En reportant :

$$17 \times 6k = -6(b+12), \qquad \text{donc} \qquad b = -12 - 17k.$$

Réciproquement, tous ces couples conviennent :
$17(5+6k) + 6(-12-17k) = 85 + 102k - 72 - 102k = 13$.

**La quantité demandée.**

$$a - b = (5 + 6k) - (-12 - 17k) = 17 + 23k.$$

On cherche la plus petite valeur strictement positive de $17 + 23k$ avec $k$ entier
relatif. Pour $k = 0$ on obtient $17$ ; pour $k = -1$ on obtient $-6$, qui est négatif ;
pour $k = 1$ on obtient $40$, qui est plus grand.

**Conclusion.**

La plus petite valeur strictement positive de $a - b$ est

$$\boxed{17}$$

atteinte pour $a = 5$ et $b = -12$.
