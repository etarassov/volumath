---
id: "22010"
title: "La moyenne quadratique dépasse la moyenne arithmétique"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, moyenne, somme-de-carres, racine-carree, cas-d-egalite]
adapted_from: null
see_also: ["13606"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Inégalités » (Gaspard D.), exercice 12 (le corrigé utilise l'inégalité de Cauchy-Schwarz ; la solution ci-dessous n'utilise qu'une somme de carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $n \geq 1$ un entier et $a_1, a_2, \ldots, a_n$ des nombres réels positifs ou nuls. On appelle *moyenne quadratique* de ces nombres le nombre

$$q = \sqrt{\frac{a_1^2 + a_2^2 + \cdots + a_n^2}{n}}.$$

Montrer que $q$ est toujours supérieure ou égale à la moyenne arithmétique $m = \frac{a_1 + a_2 + \cdots + a_n}{n}$, et trouver les cas d'égalité.

## Hints

1. Il suffit de montrer que $\frac{a_1^2 + \cdots + a_n^2}{n} \geq m^2$.
2. Une somme de carrés est toujours positive ou nulle. Lesquels ?
3. Développez $(a_1 - m)^2 + (a_2 - m)^2 + \cdots + (a_n - m)^2$.

## Solution

**Étape 1 : une somme de carrés.** Notons $S = a_1 + a_2 + \cdots + a_n$, de sorte que $S = nm$, et $C = a_1^2 + a_2^2 + \cdots + a_n^2$. Chaque nombre $(a_i - m)^2$ est un carré, donc
$$(a_1 - m)^2 + (a_2 - m)^2 + \cdots + (a_n - m)^2 \geq 0.$$

**Étape 2 : on développe.** Chaque terme vaut $(a_i - m)^2 = a_i^2 - 2m\,a_i + m^2$. En additionnant les $n$ termes :
$$C - 2m\,S + n\,m^2 = C - 2m \times nm + n\,m^2 = C - n\,m^2.$$
Donc $C - n\,m^2 \geq 0$, c'est-à-dire
$$\frac{a_1^2 + \cdots + a_n^2}{n} \geq m^2.$$

**Étape 3 : la racine carrée.** Les deux membres sont positifs, et la racine carrée conserve l'ordre entre nombres positifs. Comme $m \geq 0$, on a $\sqrt{m^2} = m$, donc
$$q = \sqrt{\frac{a_1^2 + \cdots + a_n^2}{n}} \geq m.$$

**Cas d'égalité.** Il y a égalité seulement si la somme de carrés de l'étape 1 est nulle, donc si chaque carré est nul : $a_1 = a_2 = \cdots = a_n = m$. Réciproquement, si tous les nombres valent $a$, alors $q = \sqrt{\frac{n a^2}{n}} = a = m$.

**Conclusion.** La moyenne quadratique est toujours supérieure ou égale à la moyenne arithmétique, avec égalité seulement quand tous les nombres sont égaux.

## Going further

1. L'inégalité reste-t-elle vraie si certains $a_i$ sont négatifs ? Et le cas d'égalité ?
2. Les notes d'un élève sont $8$, $12$ et $16$. Calculez leur moyenne arithmétique et leur moyenne quadratique.
