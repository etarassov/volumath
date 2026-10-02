---
id: "10833"
title: "Une suite qui repart de 2n, et des écarts premiers"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [pgcd, suites, nombres-premiers, recurrence, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Soit $k \geqslant 3$ un entier. On définit une suite $(a_n)_{n \geqslant k}$ par $a_k = 2k$ et, pour tout $n \geqslant k + 1$ :

- $a_n = a_{n-1} + 1$ si $\mathrm{PGCD}(a_{n-1}, n) = 1$ ;
- $a_n = 2n$ sinon.

Montrer qu'une infinité des différences $a_{n+1} - a_n$, pour $n \geqslant k$, sont des nombres premiers.

## Hints

1. Calcule les premiers termes pour $k = 3$, et les différences $a_{n+1} - a_n$. Que remarques-tu juste avant chaque « saut » à $2n$ ?
2. Suppose que $a_m = 2m$. Tant que la suite avance de $1$ en $1$, on a $a_{m+i} = 2m + i$. Montre que $\mathrm{PGCD}(2m + i, m + i + 1) = \mathrm{PGCD}(m - 1, i + 2)$.
3. Appelle $p$ le plus petit nombre premier qui divise $m - 1$. Montre que la suite avance de $1$ en $1$ jusqu'à l'indice $m + p - 2$, puis saute à $2(m + p - 1)$. Que vaut alors la différence ?

## Solution

### Un exemple

Pour $k = 3$, on trouve :

| $n$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $a_n$ | $6$ | $8$ | $9$ | $12$ | $13$ | $14$ | $15$ | $20$ | $21$ | $24$ |

Les différences valent $2, 1, 3, 1, 1, 1, 5, 1, 3$. La suite avance de $1$ en $1$, puis « saute » à $2n$, et la différence au moment du saut est un nombre premier. Montrons que c'est toujours le cas.

### Un outil sur le $\mathrm{PGCD}$

Pour tous entiers $u$ et $v$, les diviseurs communs de $u$ et $v$ sont les mêmes que ceux de $u - v$ et $v$. En effet, si $d$ divise $u$ et $v$, il divise $u - v$ ; et si $d$ divise $u - v$ et $v$, il divise $(u - v) + v = u$. En particulier,
$$\mathrm{PGCD}(u, v) = \mathrm{PGCD}(u - v, v) .$$

### Étape 1 : ce qui se passe après un saut

Appelons *saut* un indice $m \geqslant k$ tel que $a_m = 2m$. Par exemple, $m = k$ est un saut. Soit $m$ un saut. Comme $m - 1 \geqslant 2$, on peut appeler $p$ le **plus petit nombre premier qui divise $m - 1$**.

**Affirmation.** On a $a_{m+i} = 2m + i$ pour $i = 0, 1, \ldots, p - 2$, puis $a_{m+p-1} = 2(m + p - 1)$.

*Preuve.* Pour $i = 0$, c'est vrai puisque $a_m = 2m$. Supposons que $a_{m+i} = 2m + i$ pour un certain $i$ entre $0$ et $p - 2$, et regardons le terme suivant, d'indice $m + i + 1$. En appliquant deux fois l'outil :
$$\mathrm{PGCD}(2m + i,\; m + i + 1) = \mathrm{PGCD}(m - 1,\; m + i + 1) = \mathrm{PGCD}(m - 1,\; i + 2) .$$
En effet, $(2m + i) - (m + i + 1) = m - 1$, puis $(m + i + 1) - (m - 1) = i + 2$.

- *Si $i \leqslant p - 3$*, alors $2 \leqslant i + 2 < p$. Un diviseur commun $d > 1$ de $m - 1$ et $i + 2$ aurait un facteur premier, qui diviserait $m - 1$ et serait au plus $i + 2 < p$. C'est impossible, par définition de $p$. Donc le $\mathrm{PGCD}$ vaut $1$, et $a_{m+i+1} = a_{m+i} + 1 = 2m + i + 1$.
- *Si $i = p - 2$*, alors $i + 2 = p$, et $\mathrm{PGCD}(m - 1, p) = p \neq 1$, puisque $p$ divise $m - 1$. Donc $a_{m+p-1} = 2(m + p - 1)$.

Par récurrence, l'affirmation est démontrée. (Si $p = 2$, il n'y a que le cas $i = 0 = p - 2$, et le saut a lieu tout de suite.)

### Étape 2 : la différence au moment du saut est $p$

D'après l'étape 1,
$$a_{m+p-1} - a_{m+p-2} = 2(m + p - 1) - (2m + p - 2) = 2m + 2p - 2 - 2m - p + 2 = p .$$
**C'est un nombre premier.**

### Étape 3 : il y a une infinité de sauts

D'après l'étape 1, si $m$ est un saut, alors $m' = m + p - 1$ est encore un saut, et $m' > m$ puisque $p \geqslant 2$. En partant du saut $m_0 = k$, on obtient ainsi une suite infinie de sauts $m_0 < m_1 < m_2 < \cdots$.

Pour chaque $j \geqslant 1$, l'étape 2 montre que la différence $a_{m_j} - a_{m_j - 1}$ est un nombre premier. Les indices $m_j - 1$ sont tous différents. **Il y a donc une infinité de différences $a_{n+1} - a_n$ qui sont des nombres premiers.**

## Going further

1. Pour $k = 3$, on a vu les sauts $3, 4, 6, 10, 12$. Quel est le saut suivant, et que vaut la différence correspondante ?
2. Pour $k = 3$, la première différence égale à $7$ apparaît au saut d'indice $210$. Quel est le saut précédent ? Vérifie ta réponse avec l'étape 1.
