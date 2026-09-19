---
id: "3201"
title: "Quand |x² − 9| est un nombre premier"
grade: 9
theme: algebra
difficulty: 4
duration_min: 20
tags: [nombres premiers, identites remarquables, difference de carres, valeur absolue]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 2 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Trouver tous les entiers relatifs $x$ pour lesquels le nombre

$$\left| x^2 - 9 \right|$$

est un nombre premier.

Une fois la liste complète obtenue, calculer le produit de tous ces entiers.

## Hints

1. Le nombre $x^2 - 9$ se factorise. Sous quelle forme ?
2. La valeur absolue d'un produit est le produit des valeurs absolues : $|ab| = |a| \times |b|$.
3. Un nombre premier $p$ ne s'écrit comme produit de deux entiers positifs que d'une seule façon : $p = 1 \times p$. Que cela impose-t-il à l'un des deux facteurs ?
4. Il y a donc deux cas : $|x-3| = 1$ ou $|x+3| = 1$. Résous chacun, puis **vérifie** que l'autre facteur est bien premier.

## Solution

**La factorisation.**

On reconnaît une différence de deux carrés :

$$x^2 - 9 = x^2 - 3^2 = (x-3)(x+3).$$

Comme la valeur absolue d'un produit est le produit des valeurs absolues,

$$\left| x^2 - 9 \right| = |x-3| \times |x+3|.$$

**L'idée : un nombre premier se coupe en deux d'une seule façon.**

Les deux nombres $|x-3|$ et $|x+3|$ sont des entiers positifs ou nuls. Leur produit doit être un nombre premier $p$.

Le cas où l'un des deux vaut $0$ est exclu : le produit vaudrait $0$, qui n'est pas premier.

Il reste donc deux entiers strictement positifs dont le produit est premier. Or les seuls diviseurs positifs de $p$ sont $1$ et $p$. Donc **l'un des deux facteurs vaut $1$**.

**Premier cas : $|x-3| = 1$.**

Alors $x - 3 = 1$ ou $x - 3 = -1$, c'est-à-dire $x = 4$ ou $x = 2$.

- $x = 4$ : $\left| 16 - 9 \right| = 7$, qui est premier. **Convient.**
- $x = 2$ : $\left| 4 - 9 \right| = 5$, qui est premier. **Convient.**

**Deuxième cas : $|x+3| = 1$.**

Alors $x + 3 = 1$ ou $x + 3 = -1$, c'est-à-dire $x = -2$ ou $x = -4$.

- $x = -2$ : $\left| 4 - 9 \right| = 5$, premier. **Convient.**
- $x = -4$ : $\left| 16 - 9 \right| = 7$, premier. **Convient.**

Les quatre valeurs conviennent. Ce n'était pas garanti d'avance : obtenir $1$ pour un facteur ne dit rien sur l'autre, il fallait bien vérifier à chaque fois.

**Conclusion.**

Les entiers cherchés sont

$$x = -4, \quad x = -2, \quad x = 2, \quad x = 4,$$

et leur produit vaut

$$(-4) \times (-2) \times 2 \times 4 = 64.$$

## Going further

1. Pour quels entiers $x$ le nombre $\left| x^2 - 1 \right|$ est-il premier ?
2. Pour quels entiers $x$ le nombre $\left| x^2 - 25 \right|$ est-il premier ? La méthode est la même, mais cette fois la vérification finale élimine deux des quatre candidats.
3. Montrer que si $n \ge 2$, le nombre $n^4 + 4$ n'est jamais premier. (Indication : $n^4 + 4 = (n^2+2)^2 - (2n)^2$.)
