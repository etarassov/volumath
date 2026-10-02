---
id: "13429"
title: "Des ensembles super-réguliers"
grade: 9
theme: algebra
difficulty: 4
duration_min: 40
tags: [progression arithmetique, inverse, fractions, raisonnement par l absurde, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 7 (et épreuve lycée, exercice 13) ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf. Dans la construction, le corrigé écrit « en prenant a = −1 » pour obtenir {−3, −1, 1, 3} : c'est a = −3, avec r = 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

On considère des ensembles de nombres réels **non nuls et tous différents**.

Un tel ensemble est dit **régulier** si, quand on écrit ses éléments dans l'ordre croissant, la différence entre deux nombres voisins est toujours la même. Par exemple, l'ensemble $\{4, 18, -3, 11\}$ est régulier : dans l'ordre croissant, ses éléments sont $-3, 4, 11, 18$, et l'on a bien $4 - (-3) = 11 - 4 = 18 - 11 = 7$.

Un ensemble est dit **super-régulier** s'il est régulier et si l'ensemble formé par les inverses de ses éléments est lui aussi régulier.

Quel est le plus grand nombre d'éléments que peut avoir un ensemble super-régulier ?

## Hints

1. Cherche un ensemble super-régulier de trois nombres strictement positifs. Pourquoi n'y arrives-tu pas ?
2. Si $0 < a < b < c$, dans quel ordre sont rangés $\frac{1}{a}$, $\frac{1}{b}$ et $\frac{1}{c}$ ? Écris $b = a + r$, $c = a + 2r$, et traduis la condition sur les inverses.
3. Dans un ensemble super-régulier, combien peut-il y avoir de nombres positifs, au plus ? Regarde les trois plus grands, s'ils sont positifs. Et combien de nombres négatifs ?
4. Pour trouver un exemple, essaie un ensemble symétrique de la forme $\{-3x, -x, x, 3x\}$.

## Solution

On va montrer que **la réponse est $4$** : aucun ensemble super-régulier n'a $5$ éléments ou plus, et il en existe un de $4$ éléments.

Deux remarques sur l'ordre des inverses, qu'on utilisera souvent.

- Si $0 < x < y$, alors $\frac{1}{y} < \frac{1}{x}$, et ces deux inverses sont positifs. Par exemple $\frac{1}{3} < \frac{1}{2}$.
- Si $x < y < 0$, alors aussi $\frac{1}{y} < \frac{1}{x}$, et ces deux inverses sont négatifs. Par exemple $-2 < -1$ et $-1 < -\frac{1}{2}$.

### Étape 1 : trois nombres de même signe ne conviennent jamais

**Trois nombres positifs.** Supposons que $0 < a < b < c$ forment un ensemble super-régulier. Notons $r = b - a > 0$ : alors $b = a + r$ et $c = a + 2r$. D'après la remarque, les inverses dans l'ordre croissant sont $\frac{1}{c} < \frac{1}{b} < \frac{1}{a}$. Comme ils forment un ensemble régulier,

$$\frac{1}{a} - \frac{1}{a + r} = \frac{1}{a + r} - \frac{1}{a + 2r}.$$

En réduisant chaque membre au même dénominateur, cela s'écrit

$$\frac{r}{a(a + r)} = \frac{r}{(a + r)(a + 2r)}.$$

Les deux fractions ont le même numérateur $r$, qui n'est pas nul. Elles ne peuvent donc être égales que si leurs dénominateurs sont égaux : $a(a + r) = (a + r)(a + 2r)$. En divisant par $a + r$, qui n'est pas nul, on obtient $a = a + 2r$, donc $r = 0$. C'est impossible, car les nombres sont différents.

**Trois nombres négatifs.** Si $a < b < c < 0$ formaient un ensemble super-régulier, alors leurs opposés $-c < -b < -a$ seraient trois nombres positifs. Ils formeraient aussi un ensemble régulier, avec les mêmes différences. Leurs inverses $-\frac{1}{c}$, $-\frac{1}{b}$, $-\frac{1}{a}$ sont les opposés des inverses de $a$, $b$, $c$, et ils formeraient aussi un ensemble régulier. On aurait donc trois nombres positifs formant un ensemble super-régulier, ce qui est impossible d'après ce qui précède.

### Étape 2 : un ensemble super-régulier a au plus $4$ éléments

Prenons un ensemble super-régulier, et écrivons ses éléments dans l'ordre croissant :

$$x_1 < x_2 < \ldots < x_p < 0 < x_{p+1} < \ldots < x_n.$$

Il y a $p$ nombres négatifs et $n - p$ nombres positifs. D'après les remarques sur l'ordre des inverses, les inverses, dans l'ordre croissant, sont

$$\frac{1}{x_p} < \ldots < \frac{1}{x_2} < \frac{1}{x_1} < 0 < \frac{1}{x_n} < \ldots < \frac{1}{x_{p+1}}.$$

**Au plus deux nombres positifs.** Supposons qu'il y ait au moins trois nombres positifs, et prenons les trois plus grands : $x_{n-2} < x_{n-1} < x_n$. Ce sont trois voisins dans l'ensemble, qui est régulier, donc $x_{n-1} - x_{n-2} = x_n - x_{n-1}$. Leurs inverses $\frac{1}{x_n} < \frac{1}{x_{n-1}} < \frac{1}{x_{n-2}}$ sont aussi trois voisins dans la liste des inverses, qui est régulière, donc leurs deux différences sont égales. L'ensemble $\{x_{n-2}, x_{n-1}, x_n\}$ serait donc super-régulier, avec trois nombres positifs. C'est impossible d'après l'étape 1. Donc $n - p \leqslant 2$.

**Au plus deux nombres négatifs.** De même, s'il y avait au moins trois nombres négatifs, les trois plus petits $x_1 < x_2 < x_3$ seraient voisins, et leurs inverses $\frac{1}{x_3} < \frac{1}{x_2} < \frac{1}{x_1}$ aussi. L'ensemble $\{x_1, x_2, x_3\}$ serait super-régulier avec trois nombres négatifs, ce qui est impossible. Donc $p \leqslant 2$.

Au total, l'ensemble a $n = p + (n - p) \leqslant 2 + 2 = 4$ éléments.

### Étape 3 : un ensemble super-régulier de $4$ éléments

Prenons l'ensemble $\{-3, -1, 1, 3\}$.

- Dans l'ordre croissant, $-3, -1, 1, 3$ : les différences valent toutes $2$. Il est régulier.
- Ses inverses sont $-\frac{1}{3}, -1, 1, \frac{1}{3}$. Dans l'ordre croissant : $-1, -\frac{1}{3}, \frac{1}{3}, 1$, et les différences valent toutes $\frac{2}{3}$. L'ensemble des inverses est régulier.

L'ensemble $\{-3, -1, 1, 3\}$ est donc super-régulier.

**Conclusion.** Le plus grand nombre d'éléments d'un ensemble super-régulier est $4$.

## Going further

Montrer que les ensembles super-réguliers de $4$ éléments sont exactement les ensembles $\{-3x, -x, x, 3x\}$, où $x$ est un réel strictement positif.
