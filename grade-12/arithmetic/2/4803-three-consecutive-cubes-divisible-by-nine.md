---
id: "4803"
title: "La somme de trois cubes consécutifs est divisible par 9"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [recurrence, divisibilite, cubes, congruences]
adapted_from: null
see_also: []
same_as: ["7754"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 4, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

Montrer que pour tout entier naturel $n$, le nombre
$$n^3 + (n+1)^3 + (n+2)^3$$
est divisible par $9$.

## Hints

1. Note $S_n = n^3 + (n+1)^3 + (n+2)^3$ et calcule $S_0$, $S_1$, $S_2$, $S_3$. Tu devrais voir apparaître des multiples de $9$.
2. Pour l'hérédité, ne développe pas tout $S_{n+1}$ : compare $S_{n+1}$ et $S_n$. Quels termes ont-ils en commun ?
3. $S_{n+1} = (n+1)^3 + (n+2)^3 + (n+3)^3$, donc $S_{n+1} - S_n = (n+3)^3 - n^3$. Développe cette différence.

## Solution

**Notation.** Pour tout entier naturel $n$, posons
$$S_n = n^3 + (n+1)^3 + (n+2)^3 .$$
On veut montrer que $9$ divise $S_n$ pour tout $n \geqslant 0$.

**Initialisation.** $S_0 = 0^3 + 1^3 + 2^3 = 0 + 1 + 8 = 9$, qui est divisible par $9$.

**Hérédité.** Supposons que $9$ divise $S_n$ pour un entier $n \geqslant 0$, c'est-à-dire $S_n = 9k$ avec $k$ entier.

Les deux sommes $S_n$ et $S_{n+1}$ partagent deux termes :
$$S_{n+1} = (n+1)^3 + (n+2)^3 + (n+3)^3 .$$
Donc
$$S_{n+1} - S_n = (n+3)^3 - n^3 .$$

Développons :
$$(n+3)^3 = n^3 + 3 \times n^2 \times 3 + 3 \times n \times 9 + 27 = n^3 + 9n^2 + 27n + 27 .$$
D'où
$$S_{n+1} - S_n = 9n^2 + 27n + 27 = 9\left(n^2 + 3n + 3\right).$$

Par conséquent
$$S_{n+1} = S_n + 9\left(n^2 + 3n + 3\right) = 9k + 9\left(n^2 + 3n + 3\right) = 9\left(k + n^2 + 3n + 3\right),$$
qui est bien divisible par $9$.

**Conclusion.** Par récurrence, $9$ divise $n^3 + (n+1)^3 + (n+2)^3$ pour tout entier naturel $n$.

**Vérification.** $S_1 = 1 + 8 + 27 = 36 = 9 \times 4$, $S_2 = 8 + 27 + 64 = 99 = 9 \times 11$, $S_3 = 27 + 64 + 125 = 216 = 9 \times 24$.

**Réponse : la somme de trois cubes consécutifs est toujours un multiple de 9.**

## Going further

1. Une démonstration sans récurrence. Développe directement :
   $$S_n = 3n^3 + 9n^2 + 15n + 9 .$$
   Il reste à voir que $3n^3 + 15n = 3\left(n^3 + 5n\right)$ est divisible par $9$, c'est-à-dire que $n^3 + 5n$ est divisible par $3$. Écris $n^3 + 5n = (n-1)n(n+1) + 6n$ et conclus : parmi trois entiers consécutifs, l'un est un multiple de $3$.
2. La somme de **quatre** cubes consécutifs est-elle toujours divisible par un nombre fixe supérieur à $1$ ? Et celle de $k$ cubes consécutifs ?
3. La somme de trois carrés consécutifs $n^2 + (n+1)^2 + (n+2)^2$ est-elle divisible par $3$ ? Par $9$ ?
