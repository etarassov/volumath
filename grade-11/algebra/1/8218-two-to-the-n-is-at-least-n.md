---
id: "8218"
title: "2ⁿ est toujours au moins égal à n"
grade: 11
theme: algebra
difficulty: 1
duration_min: 15
tags: [recurrence, inegalites, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de mi-parcours, exercice 1 ; le même énoncé revient au chapitre IV « Groupe B », TD d'algèbre, exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n \ge 1$ un entier. Montrer que

$$2^{\,n} \ \ge\ n .$$

## Hints

1. Une propriété qui doit être vraie pour tous les entiers $n \ge 1$, et où passer de $n$ à $n+1$ revient à multiplier par $2$ : c'est une récurrence.
2. L'initialisation se fait au rang $1$. Vérifie-la.
3. Pour l'hérédité, pars de $2^{n+1} = 2 \times 2^{n}$ et utilise l'hypothèse de récurrence.
4. Tu obtiens $2^{n+1} \ge 2n$. Il te reste à comparer $2n$ et $n+1$ : écris $2n = n + n$ et souviens-toi que $n \ge 1$.

## Solution

Montrons par récurrence la propriété

$$P_n : \quad 2^{\,n} \ge n .$$

**Initialisation ($n = 1$).**

$$2^{1} = 2 \ \ge\ 1 .$$

Donc $P_1$ est vraie.

**Hérédité.**

Soit $n \ge 1$ un entier tel que $P_n$ soit vraie, c'est-à-dire $2^{n} \ge n$. Montrons $P_{n+1}$.

$$2^{\,n+1} = 2 \times 2^{\,n} \ \ge\ 2 \times n = 2n ,$$

où l'on a utilisé l'hypothèse de récurrence, en multipliant par $2$ qui est positif.

Il reste à comparer $2n$ et $n+1$. Écrivons $2n = n + n$. Comme $n \ge 1$, on a

$$2n = n + n \ \ge\ n + 1 .$$

En mettant bout à bout,

$$2^{\,n+1} \ \ge\ 2n \ \ge\ n+1 ,$$

donc $P_{n+1}$ est vraie.

**Conclusion.**

Par le principe de récurrence, $P_n$ est vraie pour tout entier $n \ge 1$ :

$$\boxed{2^{\,n} \ge n \quad \text{pour tout entier } n \ge 1 .}$$

**Remarque.** La démonstration donne en réalité un peu mieux que l'énoncé : l'inégalité $2n \ge n+1$ est stricte dès que $n \ge 2$, et l'initialisation $2 \ge 1$ est stricte elle aussi. Il n'y a donc jamais égalité : on a toujours $2^{\,n} > n$. Et l'écart se creuse très vite, $2^{5} = 32$ contre $5$, $2^{10} = 1024$ contre $10$.

## Going further

Montrer, toujours par récurrence, que $2^{\,n} \ge n^2$ pour tout entier $n \ge 4$. Pourquoi faut-il ici initialiser à $4$ et non à $1$ ?
