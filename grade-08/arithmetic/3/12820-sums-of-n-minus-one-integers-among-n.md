---
id: "12820"
title: "Les sommes de n − 1 entiers parmi n"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [divisibilite, multiples, somme, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection d'avril 2023"
  reference: "2023-09_Enonce-Test-4.pdf, test junior, exercice 1 ; corrigé 2023-09_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-4.pdf"
---

## Statement

Soit $n \geq 2$ un entier. Anna a écrit au tableau $n$ entiers $a_1, a_2, \ldots, a_n$, tous différents. Elle remarque que, quelle que soit la façon de choisir $n - 1$ de ces entiers, leur somme est divisible par $n$.

Démontrer que la somme des $n$ entiers est elle aussi divisible par $n$.

## Hints

1. Essayez avec $n = 3$ : trouvez trois entiers dont les sommes deux à deux sont toutes des multiples de $3$. Leur somme est-elle un multiple de $3$ ?
2. Notez $s$ la somme des $n$ entiers. Choisir $n - 1$ entiers, c'est en laisser un seul de côté. Que vaut la somme des entiers choisis quand on laisse $a_1$ de côté ?
3. Additionnez les $n$ sommes possibles. Que trouvez-vous, en fonction de $s$ ?

## Solution

Notons $s = a_1 + a_2 + \cdots + a_n$ la somme des $n$ entiers.

Choisir $n - 1$ entiers parmi les $n$, c'est laisser de côté un seul d'entre eux. Si l'on laisse de côté $a_i$, la somme des entiers choisis vaut $s - a_i$. L'observation d'Anna dit donc que les $n$ nombres

$$s - a_1, \quad s - a_2, \quad \ldots, \quad s - a_n$$

sont tous des multiples de $n$.

Additionnons-les. Une somme de multiples de $n$ est un multiple de $n$, et

$$(s - a_1) + (s - a_2) + \cdots + (s - a_n) = n \times s - (a_1 + a_2 + \cdots + a_n) = ns - s = (n - 1)s.$$

Donc $(n - 1)s$ est un multiple de $n$. Or

$$s = ns - (n - 1)s.$$

Le nombre $ns$ est un multiple de $n$, et $(n - 1)s$ aussi. La différence de deux multiples de $n$ est un multiple de $n$.

**Donc $s$ est divisible par $n$.**

*Attention à un raisonnement faux.* On pourrait vouloir dire : « $(n-1)s$ est un multiple de $n$, et $n - 1$ n'est pas un multiple de $n$, donc $s$ est un multiple de $n$. » Ce raisonnement ne vaut rien en général : $4 \times 3 = 12$ est un multiple de $6$, alors que ni $4$ ni $3$ n'en sont. L'astuce $s = ns - (n-1)s$ évite ce piège.

## Going further

1. Montrez que les $n$ entiers d'Anna ont tous le même reste dans la division par $n$. (Indice : comparez $s - a_1$ et $s - a_2$.)
2. Pour $n = 4$, trouvez quatre entiers différents qui conviennent.
