---
id: "8829"
title: "Huit sommes dans un tableau 3 × 3"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe des tiroirs, sommes, tableau, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 4, p. 110"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans chaque case d'un tableau $3 \times 3$, on écrit $-1$, $0$ ou $1$ (comme on veut, les valeurs peuvent se répéter).

On calcule ensuite $8$ sommes : celles des $3$ lignes, celles des $3$ colonnes, et celles des $2$ grandes diagonales.

Montrer que, quel que soit le remplissage, deux de ces huit sommes sont toujours égales.

## Hints

1. Compte d'abord combien il y a de sommes. Ce sera le nombre de chaussettes.
2. Chaque somme est une somme de trois nombres valant chacun $-1$, $0$ ou $1$. Entre quelles valeurs est-elle comprise ? Combien de valeurs peut-elle prendre ? Ce sera le nombre de tiroirs.
3. Compare les deux nombres.

## Solution

### On compte les sommes

Il y a $3$ lignes, $3$ colonnes et $2$ grandes diagonales, donc
$$3 + 3 + 2 = 8 \quad \text{sommes.}$$

Ce sont nos **chaussettes**.

### On compte les valeurs possibles

Chaque somme additionne trois nombres appartenant à $\{-1, 0, 1\}$. La plus petite valeur possible est
$$(-1) + (-1) + (-1) = -3 ,$$
et la plus grande est
$$1 + 1 + 1 = 3 .$$

De plus chaque somme est un entier. Les valeurs possibles sont donc
$$-3, \; -2, \; -1, \; 0, \; 1, \; 2, \; 3 ,$$
c'est-à-dire $7$ valeurs en tout.

Ce sont nos **tiroirs**.

### Le principe des tiroirs

On a $8$ sommes à ranger dans $7$ valeurs possibles. Comme $8 > 7$, deux sommes au moins tombent dans le même tiroir, c'est-à-dire sont égales.

**Conclusion.** Quel que soit le remplissage du tableau, deux des huit sommes sont égales.

### Une remarque sur la méthode

Le choix « chaussettes = sommes, tiroirs = valeurs » n'est pas le réflexe naturel : on a plutôt envie de prendre les cases comme chaussettes. La bonne règle est de partir de la **conclusion** : on veut deux sommes égales, donc ce sont les sommes qu'il faut ranger, et les tiroirs doivent être les valeurs qu'elles peuvent prendre.

## Going further

1. Le même énoncé avec un tableau $4 \times 4$ rempli de $-1$, $0$, $1$ (donc $4+4+2 = 10$ sommes) : la conclusion tient-elle encore ?
2. Et si l'on n'autorise que les valeurs $-1$ et $1$ dans les cases du tableau $3 \times 3$ ? Combien de valeurs les sommes peuvent-elles prendre, et la conclusion tient-elle toujours ?
