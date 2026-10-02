---
id: "8650"
title: "Le chiffre des unités d'une tour de puissances"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [chiffre des unites, congruences, cycles, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Quel est le chiffre des unités de $3^{1789}$ ?
2. Quel est le chiffre des unités de $1777^{1777^{1777}}$ ?

*(Dans la question 2, la tour se lit du haut vers le bas : il s'agit de $1777$ élevé à la puissance $1777^{1777}$.)*

## Hints

1. Le chiffre des unités d'un produit ne dépend que des chiffres des unités des facteurs. Calcule donc les premières puissances de $3$ et note seulement leur dernier chiffre.
2. Tu devrais voir revenir les mêmes chiffres. Au bout de combien d'étapes le cycle recommence-t-il ?
3. Si le cycle est de longueur $4$, tout ce qui compte dans l'exposant est son reste dans la division par $4$.
4. Pour la question 2, le chiffre des unités de $1777$ est $7$. Fais le même travail avec $7$.
5. Il te reste à trouver le reste de $1777^{1777}$ dans la division par $4$. Commence par le reste de $1777$ modulo $4$ : c'est facile, regarde ses deux derniers chiffres.

## Solution

Le chiffre des unités d'un nombre est son reste dans la division par $10$. Et dans un produit, le reste modulo $10$ ne dépend que des restes des facteurs : on peut donc travailler modulo $10$ du début à la fin.

### 1. Les unités de $3^{1789}$

Calculons les premières puissances de $3$ modulo $10$ :

$$3^1 \equiv 3, \quad 3^2 \equiv 9, \quad 3^3 \equiv 27 \equiv 7, \quad 3^4 \equiv 21 \equiv 1 \pmod{10}.$$

Comme $3^4 \equiv 1$, les puissances de $3$ repartent au début toutes les $4$ étapes : le chiffre des unités ne dépend que du **reste de l'exposant modulo $4$**.

Or $1789 = 4 \times 447 + 1$, donc $1789 \equiv 1 \pmod 4$. En écrivant $1789 = 4 \times 447 + 1$ :

$$3^{1789} = \left(3^{4}\right)^{447} \times 3^{1} \equiv 1^{447} \times 3 \equiv 3 \pmod{10}.$$

**Le chiffre des unités de $3^{1789}$ est $\boxed{3}$.**

### 2. Les unités de $1777^{1777^{1777}}$

Modulo $10$, $1777 \equiv 7$. Le problème revient donc à trouver les unités de $7^{N}$, où $N = 1777^{1777}$.

Les puissances de $7$ modulo $10$ :

$$7^1 \equiv 7, \quad 7^2 \equiv 49 \equiv 9, \quad 7^3 \equiv 63 \equiv 3, \quad 7^4 \equiv 21 \equiv 1 \pmod{10}.$$

Encore un cycle de longueur $4$. Il nous faut donc le reste de $N = 1777^{1777}$ dans la division par $4$.

Modulo $4$, un nombre ne dépend que de ses deux derniers chiffres : $1777$ se termine par $77$, et $77 = 4 \times 19 + 1$, donc

$$1777 \equiv 1 \pmod 4 .$$

Une puissance de quelque chose qui vaut $1$ vaut encore $1$ :

$$N = 1777^{1777} \equiv 1^{1777} \equiv 1 \pmod 4 .$$

Donc $N = 4q + 1$ pour un certain entier $q$, et

$$7^{N} = \left(7^{4}\right)^{q} \times 7^{1} \equiv 1^{q} \times 7 \equiv 7 \pmod{10}.$$

**Le chiffre des unités de $1777^{1777^{1777}}$ est $\boxed{7}$.**

## Going further

Le point important est qu'on a utilisé **deux modules différents** : $10$ pour le chiffre cherché, puis $4$ pour l'exposant, parce que le cycle des puissances est de longueur $4$. C'est ce va-et-vient qui permet de traiter un nombre qu'on ne pourrait jamais écrire : $1777^{1777}$ a déjà plus de cinq mille chiffres.

Essaie maintenant : quel est le chiffre des unités de $2^{2^{2^{2}}}$ ? Attention, ici le cycle des puissances de $2$ modulo $10$ ne commence qu'à $2^1$, il ne contient pas $2^0$.
