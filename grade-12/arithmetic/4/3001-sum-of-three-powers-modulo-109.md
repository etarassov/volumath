---
id: "3001"
title: "Trois puissances 107 modulo 109"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 20
tags: [congruences, petit-theoreme-de-fermat, nombres-premiers, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 12 (réponse dans Handout-3328-2885.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Le nombre $109$ est premier.

Quel est le reste de la division euclidienne de

$$2^{107} + 3^{107} + 6^{107}$$

par $109$ ?

## Hints

1. Remarque que $107 = 109 - 2$. Le petit théorème de Fermat parle, lui, de l'exposant $108$.
2. Pose $A = 2^{107} + 3^{107} + 6^{107}$. Que se passe-t-il si tu multiplies $A$ par $6$ ?
3. $6 \times 2^{107} = 3 \times 2^{108}$, et $6 \times 3^{107} = 2 \times 3^{108}$. Chacun des trois morceaux fait alors apparaître une puissance $108$.
4. Une fois que tu sais combien vaut $6A$ modulo $109$, il reste à « diviser par $6$ ». C'est permis ici : $109$ est premier et ne divise pas $6$.

## Solution

**Le petit théorème de Fermat.**

Comme $109$ est premier, pour tout entier $a$ non divisible par $109$ on a

$$a^{108} \equiv 1 \pmod{109}.$$

C'est vrai pour $a = 2$, pour $a = 3$ et pour $a = 6$, puisque aucun de ces trois nombres
n'est divisible par $109$.

**L'astuce : multiplier par 6.**

Posons $A = 2^{107} + 3^{107} + 6^{107}$ et calculons $6A$ :

$$6A = 6 \times 2^{107} + 6 \times 3^{107} + 6 \times 6^{107}
    = 3 \times 2^{108} + 2 \times 3^{108} + 6^{108}.$$

En effet $6 \times 2^{107} = 3 \times 2 \times 2^{107} = 3 \times 2^{108}$, et de même
$6 \times 3^{107} = 2 \times 3^{108}$.

Chacune des trois puissances est maintenant à l'exposant $108$, donc chacune vaut $1$ modulo $109$ :

$$6A \equiv 3 \times 1 + 2 \times 1 + 1 = 6 \pmod{109}.$$

**Conclusion.**

On a donc $109 \mid 6A - 6 = 6(A-1)$. Comme $109$ est premier et ne divise pas $6$, le lemme
de Gauss donne $109 \mid A - 1$, c'est-à-dire

$$A \equiv 1 \pmod{109}.$$

Le reste de la division de $2^{107} + 3^{107} + 6^{107}$ par $109$ est $1$.

## Going further

La vraie raison est plus jolie encore : modulo $109$, $a^{107}$ est l'inverse de $a$, car
$a^{107} \times a = a^{108} \equiv 1$. La somme cherchée est donc

$$\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = 1$$

calculée modulo $109$. Le calcul en fractions donne directement la réponse, et la
multiplication par $6$ ci-dessus n'est que la mise au même dénominateur.
