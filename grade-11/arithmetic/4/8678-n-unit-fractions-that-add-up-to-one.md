---
id: "8678"
title: "n fractions de numérateur 1 dont la somme vaut 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [fractions-egyptiennes, recurrence, construction, telescopage]
adapted_from: null
see_also: ["11202"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 32 (niveau 1, une étoile). L'énoncé imprimé dit « pour tout n » ; c'est faux pour n = 2, cas traité explicitement ici. La Muraille ne publie pas de corrigés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Montrer qu'il n'existe **pas** deux entiers strictement positifs distincts $x_1$ et $x_2$ tels que $\dfrac{1}{x_1} + \dfrac{1}{x_2} = 1$.

2. Montrer qu'en revanche, pour tout entier $n \geqslant 3$, il existe $n$ entiers strictement positifs **deux à deux distincts** $x_1, \ldots, x_n$ tels que

$$\frac{1}{x_1} + \frac{1}{x_2} + \cdots + \frac{1}{x_n} = 1 .$$

## Hints

1. Pour la question 1, suppose $x_1 < x_2$ et regarde ce que vaut $\frac{1}{x_1}$ selon que $x_1 = 1$, $x_1 = 2$ ou $x_1 \geqslant 3$.
2. Pour la question 2, trouve d'abord un exemple avec $n = 3$. Essaie avec $2$, $3$ et un troisième nombre.
3. Une fois l'exemple $n=3$ trouvé, cherche un moyen de passer de $n$ à $n+1$ : il faut remplacer une fraction par **deux** fractions dont la somme lui est égale.
4. Calcule $\dfrac{1}{k+1} + \dfrac{1}{k(k+1)}$. Que trouves-tu ?
5. Attention, il faut aussi vérifier que les nouveaux dénominateurs sont différents de tous les anciens. Choisis bien laquelle des fractions tu coupes en deux.

## Solution

### 1. Deux fractions, c'est impossible

Supposons $\frac{1}{x_1} + \frac{1}{x_2} = 1$ avec $x_1 < x_2$ entiers strictement positifs.

- Si $x_1 = 1$, alors $\frac{1}{x_2} = 0$, ce qui est impossible.
- Si $x_1 \geqslant 2$, alors $x_2 > x_1 \geqslant 2$, donc $x_2 \geqslant 3$, et

$$\frac{1}{x_1} + \frac{1}{x_2} \leqslant \frac{1}{2} + \frac{1}{3} = \frac{5}{6} < 1 .$$

Aucun cas ne convient : **il n'existe pas de telle paire.**

*(Avec $x_1 = x_2 = 2$ on aurait bien $\frac12 + \frac12 = 1$, mais les deux nombres ne seraient pas distincts.)*

### 2. Trois fractions, puis toutes les autres

**Le cas $n = 3$.** On vérifie directement

$$\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = \frac{3}{6} + \frac{2}{6} + \frac{1}{6} = 1 .$$

**L'outil : couper une fraction en deux.** Pour tout entier $k \geqslant 1$,

$$\frac{1}{k+1} + \frac{1}{k(k+1)} = \frac{k}{k(k+1)} + \frac{1}{k(k+1)} = \frac{k+1}{k(k+1)} = \frac{1}{k} .$$

Autrement dit, on peut toujours remplacer $\dfrac1k$ par la somme de deux fractions de numérateur $1$, de dénominateurs $k+1$ et $k(k+1)$.

**La récurrence.** Montrons par récurrence sur $n \geqslant 3$ la propriété

> $P(n)$ : « il existe $n$ entiers strictement positifs deux à deux distincts dont les inverses ont pour somme $1$ ».

*Initialisation.* $P(3)$ est vraie avec $\{2, 3, 6\}$.

*Hérédité.* Supposons $P(n)$ vraie, et soient $x_1 < x_2 < \cdots < x_n$ des entiers distincts avec $\sum \frac{1}{x_i} = 1$. Prenons le **plus grand** d'entre eux, $k = x_n$, et remplaçons $\frac1k$ par $\frac{1}{k+1} + \frac{1}{k(k+1)}$. La somme ne change pas, et il y a maintenant $n+1$ fractions.

Reste à vérifier que les $n+1$ dénominateurs sont deux à deux distincts. Les anciens $x_1, \ldots, x_{n-1}$ sont tous **strictement plus petits** que $k$, tandis que les deux nouveaux valent $k+1$ et $k(k+1)$, tous deux strictement plus grands que $k$. Enfin $k+1 < k(k+1)$ puisque $k \geqslant 2$. Les $n+1$ nombres sont donc bien distincts, et $P(n+1)$ est vraie.

**Conclusion.**

$$\boxed{\text{C'est possible pour } n = 1 \text{ et pour tout } n \geqslant 3, \text{ mais pas pour } n = 2 .}$$

*(Pour $n=1$, il suffit de prendre $x_1 = 1$.)*

**Les premiers exemples produits par la méthode :**

$$n=3 : \ \{2, 3, 6\}, \qquad n=4 : \ \{2, 3, 7, 42\}, \qquad n=5 : \ \{2, 3, 7, 43, 1806\} .$$

## Going further

Une somme de fractions de numérateur $1$ s'appelle une **fraction égyptienne**, parce que c'est ainsi que les scribes de l'Égypte ancienne écrivaient leurs fractions : ils ne connaissaient que $\frac12, \frac13, \frac14, \ldots$ et écrivaient par exemple $\frac{3}{4}$ sous la forme $\frac12 + \frac14$.

La coupure $\frac1k = \frac{1}{k+1} + \frac{1}{k(k+1)}$ est l'outil de base de tout ce domaine. Elle montre aussi que tout nombre rationnel entre $0$ et $1$ s'écrit comme somme de fractions égyptiennes distinctes, et de bien des façons.

Deux questions pour continuer :

- Combien de façons y a-t-il d'écrire $1$ comme somme de **trois** fractions de numérateur $1$, distinctes ou non ?
- La méthode ci-dessus fait grossir très vite les dénominateurs. Sauras-tu trouver, pour $n = 4$, une solution plus « économe » que $\{2,3,7,42\}$ ?
