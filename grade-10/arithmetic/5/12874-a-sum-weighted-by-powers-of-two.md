---
id: "12874"
title: "Une somme pondérée par les puissances de 2"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [minimum, optimisation, carres, nombres-impairs, puissances-de-deux, entiers-distincts, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test junior, exercice 4, repris comme exercice 5 du test senior ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (on suit la solution alternative n° 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

Soit $n \geq 1$ un entier. On considère des entiers $x_0$, $x_1$, ..., $x_n$, positifs ou nuls, dont la somme vaut $n$ :

$$x_0 + x_1 + \cdots + x_n = n.$$

Déterminer, en fonction de $n$, la plus petite valeur que peut prendre

$$S = 2^0 x_0^2 + 2^1 x_1^2 + 2^2 x_2^2 + \cdots + 2^n x_n^2.$$

## Hints

1. Cherchez le minimum à la main pour $n = 1$, $2$, $3$, $4$, $5$. Que remarquez-vous ?
2. Écrivez $x^2$ comme la somme des $x$ premiers nombres impairs : $x^2 = 1 + 3 + \cdots + (2x - 1)$.
3. La somme $S$ devient alors une somme de $n$ nombres, chacun de la forme $2^i \times (\text{un nombre impair})$. Montrez que ces $n$ nombres sont deux à deux distincts.
4. Quelle est la plus petite somme possible de $n$ entiers strictement positifs deux à deux distincts ?

## Solution

La réponse : **la plus petite valeur de $S$ est $1 + 2 + \cdots + n = n(n + 1)/2$.**

Par exemple, pour $n = 3$, le choix $x_0 = 2$, $x_1 = 1$, $x_2 = x_3 = 0$ donne $S = 4 + 2 = 6 = 1 + 2 + 3$.

### Deux outils

**Un carré est une somme de nombres impairs.** Pour tout entier $x \geq 1$,

$$x^2 = 1 + 3 + 5 + \cdots + (2x - 1).$$

En effet, pour $k \geq 1$, on a $k^2 - (k - 1)^2 = 2k - 1$. En ajoutant ces égalités pour $k = 1, 2, \ldots, x$, les termes du membre de gauche se simplifient deux à deux, et il reste $x^2 - 0^2$.

**Chaque entier $k \geq 1$ s'écrit d'une seule façon $k = 2^i \times a$, avec $i \geq 0$ et $a$ impair.** On l'obtient en divisant $k$ par $2$ autant de fois que possible : $i$ est le nombre de facteurs $2$ dans la décomposition de $k$ en facteurs premiers, et $a$ est le produit des autres facteurs. Si l'on avait $2^i a = 2^{i'} a'$ avec $a$ et $a'$ impairs et $i < i'$, on aurait $a = 2^{i' - i} a'$, qui serait pair : c'est impossible. Donc $i = i'$, puis $a = a'$.

### S est une somme de n nombres distincts

D'après le premier outil, pour chaque $i$,

$$2^i x_i^2 = 2^i \times 1 + 2^i \times 3 + \cdots + 2^i \times (2x_i - 1)$$

est une somme de $x_i$ nombres (aucun si $x_i = 0$). Ainsi, $S$ est la somme de tous les nombres

$$2^i \times (2j - 1), \qquad \text{pour } 0 \leq i \leq n \text{ et } 1 \leq j \leq x_i.$$

Il y en a $x_0 + x_1 + \cdots + x_n = n$. Ce sont des entiers strictement positifs, et ils sont **deux à deux distincts** : d'après le second outil, le nombre $2^i \times (2j - 1)$ permet de retrouver $i$ et le nombre impair $2j - 1$, donc $j$.

### Une minoration

Soit $y_1 < y_2 < \cdots < y_n$ des entiers strictement positifs deux à deux distincts, rangés dans l'ordre croissant. On a $y_1 \geq 1$, et $y_{k+1} \geq y_k + 1$ pour chaque $k$, donc $y_k \geq k$ pour tout $k$. Par conséquent,

$$y_1 + y_2 + \cdots + y_n \geq 1 + 2 + \cdots + n = \frac{n(n + 1)}{2}.$$

D'après la partie précédente, **on a toujours $S \geq n(n + 1)/2$.**

### La valeur est atteinte

On veut que les $n$ nombres $2^i (2j - 1)$ soient exactement $1$, $2$, ..., $n$. On choisit donc, pour chaque $i$ entre $0$ et $n$ :

> $x_i$ = le nombre d'entiers de $\{1, 2, \ldots, n\}$ qui s'écrivent $2^i \times (\text{un nombre impair})$.

Les entiers de $\{1, \ldots, n\}$ qui s'écrivent $2^i \times a$ avec $a$ impair sont $2^i \times 1$, $2^i \times 3$, ..., jusqu'au dernier qui ne dépasse pas $n$. Il y en a $x_i$ : ce sont exactement les nombres $2^i (2j - 1)$ pour $1 \leq j \leq x_i$.

- Chaque entier $k$ de $\{1, \ldots, n\}$ s'écrit d'une seule façon $2^i a$, et alors $2^i \leq k \leq n < 2^n$, donc $i \leq n$. Il est donc compté dans exactement un des $x_i$, et $x_0 + x_1 + \cdots + x_n = n$.
- La somme $S$ est la somme des nombres $2^i(2j - 1)$, c'est-à-dire de tous les entiers de $1$ à $n$ : $S = n(n + 1)/2$.

Par exemple, pour $n = 6$ : les impairs $1, 3, 5$ donnent $x_0 = 3$, les nombres $2 = 2 \times 1$ et $6 = 2 \times 3$ donnent $x_1 = 2$, et $4 = 4 \times 1$ donne $x_2 = 1$. On trouve $S = 9 + 2 \times 4 + 4 \times 1 = 21 = 1 + 2 + \cdots + 6$.

### Conclusion

**La plus petite valeur de $S$ est $n(n + 1)/2$.**

## Going further

1. Montrez que le minimum n'est atteint que pour le choix des $x_i$ donné dans la solution.
2. Montrez que le nombre d'entiers de $\{1, \ldots, n\}$ de la forme $2^i \times (\text{impair})$ est la partie entière de $(n + 2^i)/2^{i+1}$. En déduire que, pour tout entier $n \geq 1$, la somme des parties entières de $(n + 1)/2$, $(n + 2)/4$, $(n + 4)/8$, ..., $(n + 2^n)/2^{n+1}$ vaut $n$ (Olympiades internationales de 1968).
