---
id: "12888"
title: "Deux entiers dont le produit plus un est un carré"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [principe-des-tiroirs, carres-parfaits, restes, construction, optimisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test junior, exercice 2 ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (même solution, avec des restes au lieu des congruences ; dans le corrigé, les paires (4k, 4k + 2) pour 0 ⩽ k ⩽ 505 contiennent 0 et oublient 2024, il faut lire (4k + 2, 4k + 4))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

Déterminer le plus petit entier $k \geq 1$ qui a la propriété suivante : quel que soit l'ensemble $S$ de $k$ entiers choisis parmi $1, 2, \ldots, 2024$, on peut trouver deux entiers distincts $a$ et $b$ dans $S$ tels que $ab + 1$ est un carré parfait.

## Hints

1. Calculez $n(n + 2) + 1$.
2. Rangez les entiers de $1$ à $2024$ en paires de la forme $\{n, n + 2\}$. Combien de paires obtenez-vous ?
3. Pour trouver un grand ensemble qui ne convient pas, regardez les restes des carrés dans la division par $4$, puis par $8$. Essayez les entiers dont le reste dans la division par $4$ vaut $1$ ou $2$.

## Solution

La réponse : **$k = 1013$.**

Il faut montrer deux choses : tout ensemble de $1013$ entiers contient deux entiers qui conviennent, et il existe un ensemble de $1012$ entiers qui n'en contient pas.

### Une identité

Pour tout entier $n$,

$$n(n + 2) + 1 = n^2 + 2n + 1 = (n + 1)^2.$$

Donc si $S$ contient deux entiers $n$ et $n + 2$, le nombre $n(n + 2) + 1$ est un carré parfait.

### Tout ensemble de 1013 entiers convient

On range les entiers de $1$ à $2024$ en paires. Pour chaque groupe de quatre entiers consécutifs $4j + 1$, $4j + 2$, $4j + 3$, $4j + 4$, avec $j = 0, 1, \ldots, 505$, on forme les deux paires

$$\{4j + 1,\; 4j + 3\} \qquad \text{et} \qquad \{4j + 2,\; 4j + 4\}.$$

Par exemple $\{1, 3\}$, $\{2, 4\}$, $\{5, 7\}$, $\{6, 8\}$, ..., $\{2021, 2023\}$, $\{2022, 2024\}$. Comme $2024 = 4 \times 506$, on obtient $2 \times 506 = 1012$ paires, et chaque entier de $1$ à $2024$ est dans exactement une paire. Les deux entiers d'une même paire diffèrent de $2$.

Soit $S$ un ensemble de $1013$ entiers. Il y a plus d'entiers dans $S$ que de paires, donc deux entiers de $S$ sont dans la même paire (principe des tiroirs). Ces deux entiers s'écrivent $n$ et $n + 2$, et d'après l'identité, $n(n + 2) + 1$ est un carré parfait.

### Les restes des carrés

- Un carré pair s'écrit $(2t)^2 = 4t^2$. Son reste dans la division par $4$ est $0$. Son reste dans la division par $8$ est $0$ si $t$ est pair et $4$ si $t$ est impair.
- Un carré impair s'écrit $(2t + 1)^2 = 4t(t + 1) + 1$. L'un des deux entiers consécutifs $t$ et $t + 1$ est pair, donc $4t(t + 1)$ est un multiple de $8$. Le reste dans la division par $4$ et dans la division par $8$ est $1$.

Ainsi **le reste d'un carré dans la division par $4$ vaut $0$ ou $1$, et dans la division par $8$ il vaut $0$, $1$ ou $4$.**

### Un ensemble de 1012 entiers qui ne convient pas

Soit $S$ l'ensemble des entiers de $1$ à $2024$ dont le reste dans la division par $4$ vaut $1$ ou $2$ :

$$S = \{1, 2, 5, 6, 9, 10, \ldots, 2021, 2022\}.$$

Il contient deux entiers dans chacun des $506$ groupes de quatre, donc $1012$ entiers. Soit $a$ et $b$ deux entiers distincts de $S$. Il y a trois cas.

- **$a = 4x + 1$ et $b = 4y + 1$.** Alors $ab + 1 = 16xy + 4x + 4y + 2 = 4(4xy + x + y) + 2$ a pour reste $2$ dans la division par $4$.
- **$a = 4x + 1$ et $b = 4y + 2$** (ou l'inverse). Alors $ab + 1 = 16xy + 8x + 4y + 3 = 4(4xy + 2x + y) + 3$ a pour reste $3$ dans la division par $4$.
- **$a = 4x + 2$ et $b = 4y + 2$.** Alors $ab + 1 = 16xy + 8x + 8y + 5 = 8(2xy + x + y) + 5$ a pour reste $5$ dans la division par $8$.

Dans les trois cas, $ab + 1$ n'est pas un carré parfait. L'ensemble $S$ ne contient donc pas deux entiers qui conviennent.

### Conclusion

Si $k \leq 1012$, on choisit $k$ entiers parmi ceux de l'ensemble $S$ précédent : ce choix ne contient pas deux entiers qui conviennent, donc $k$ n'a pas la propriété. L'entier $1013$, lui, a la propriété.

**Le plus petit entier qui convient est $k = 1013$.**

## Going further

1. Le nombre $ab + 1$ peut être un carré sans que $a$ et $b$ diffèrent de $2$ : par exemple $3 \times 8 + 1 = 25$. Trouvez d'autres exemples, et vérifiez que l'ensemble $S$ de la solution les évite tous.
2. Quelle est la réponse si l'on remplace $2024$ par $2026$ ?
