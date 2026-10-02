---
id: "8427"
title: "Une puissance de 2 face à un nombre toujours impair"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [parite, puissances-de-deux, equation-en-entiers, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(x, y)$ tels que

$$2^x = y^2 + y + 1.$$

## Hints

1. Commence par essayer les petites valeurs de $y$ : $y = 0, 1, 2, 3, 4$. Le membre de droite est-il parfois une puissance de $2$ ?
2. Regarde la **parité** du membre de droite. Que peux-tu dire de $y^2 + y$ ?
3. Écris $y^2 + y = y(y+1)$. Ces deux facteurs sont des entiers consécutifs : que peut-on toujours dire de leur produit ?
4. Si le membre de droite est toujours impair, à quelles valeurs de $x$ le membre de gauche peut-il être impair ?

## Solution

**Étape 1. Le membre de droite est toujours impair.**

Factorisons :

$$y^2 + y = y\,(y+1).$$

Les entiers $y$ et $y+1$ sont consécutifs, donc l'un des deux est pair. Leur produit est donc pair.

Par conséquent, $y^2 + y + 1$ est un nombre pair augmenté de $1$ : **il est impair**, et ceci pour toute valeur de $y$.

**Étape 2. Le membre de gauche est presque toujours pair.**

Si $x \geqslant 1$, alors $2^x = 2 \times 2^{x-1}$ est pair. Il ne peut donc pas être égal à un nombre impair.

La seule possibilité restante est $x = 0$.

**Étape 3. Le cas $x = 0$.**

L'équation devient

$$1 = y^2 + y + 1, \qquad \text{c'est-à-dire} \qquad y\,(y+1) = 0.$$

Donc $y = 0$ ou $y = -1$. Comme $y$ est un entier naturel, il reste $y = 0$.

**Étape 4. Vérification.**

Pour $(x, y) = (0, 0)$ : à gauche $2^0 = 1$, à droite $0 + 0 + 1 = 1$. L'égalité est vérifiée.

**Réponse :** l'unique couple solution est $\boxed{(x, y) = (0, 0)}$.

## Going further

Retenons le réflexe : devant une équation en nombres entiers, la première chose à essayer est la **parité**. Elle coûte deux lignes et elle tranche souvent tout de suite.

Le fait que le produit de deux entiers consécutifs soit toujours pair est l'un des outils les plus utilisés de l'arithmétique élémentaire. On en déduit par exemple que $y^2 + y$ est toujours pair, que $y^2$ et $y$ ont toujours la même parité, ou encore que $\frac{y(y+1)}{2}$ est toujours un entier.
