---
id: "5315"
title: "La cage du KenKen qui vaut 120"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [produit, decomposition, diviseurs, recherche-exhaustive, kenken]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), KenKen, par Tom Davis"
  reference: "kenken.pdf, section 6 « Enumeration Exercises », exercice 8, corrigé section 7. Le corrigé annonce « the four cases » puis n'en énumère que trois : il y en a bien trois"
  url: "https://mathcircles.org/activity/kenken/"
  original_language: "en"
  local_copy: "sources/originals/namc/kenken.pdf"
---

## Statement

Le KenKen est une grille de nombres. Dans une grille $6 \times 6$, on doit écrire un nombre de $1$ à $6$ dans chaque case, de façon que **chaque ligne et chaque colonne contienne les six nombres $1$, $2$, $3$, $4$, $5$, $6$, une fois chacun**. Deux cases d'une même ligne portent donc toujours des nombres différents, et de même pour deux cases d'une même colonne.

La grille est en plus découpée en petits paquets de cases appelés **cages**. Chaque cage porte un objectif, par exemple « $120\times$ », qui signifie que le **produit** des nombres écrits dans les cases de cette cage doit valoir $120$.

1. Une cage est formée de **quatre cases alignées sur une même ligne**, et son objectif est $120\times$. Quels groupes de quatre nombres peut-elle contenir ?
2. Même question pour une cage formée de **quatre cases en carré** : deux cases côte à côte, et les deux cases situées juste en dessous.

## Hints

1. Décomposer $120$ en produit de facteurs premiers.
2. Le facteur $5$ doit bien venir de quelque part. Quels nombres de $1$ à $6$ sont divisibles par $5$ ? Peut-il y en avoir deux dans la cage ?
3. Une fois le $5$ placé, il reste trois nombres pris entre $1$ et $6$, dont le produit vaut $24$. Les chercher tous, en les rangeant du plus petit au plus grand pour n'en oublier aucun.
4. Pour la question 1, deux cases de la même ligne ne peuvent pas porter le même nombre. Pour la question 2, où faudrait-il placer deux nombres égaux dans un carré de quatre cases ?

## Solution

### Étape 1 : la décomposition de 120

$$120 = 2^3 \times 3 \times 5 .$$

### Étape 2 : la cage contient exactement un 5

Le produit des quatre nombres est divisible par $5$. Parmi les nombres de $1$ à $6$, le seul multiple de $5$ est $5$ lui-même : la cage contient donc au moins un $5$.

Elle n'en contient pas deux : le produit serait alors divisible par $25$, ce qui n'est pas le cas de $120$.

**Il y a donc exactement un $5$ dans la cage**, et les trois autres nombres, pris parmi $1$, $2$, $3$, $4$ et $6$, ont pour produit
$$\frac{120}{5} = 24 .$$

### Étape 3 : les triplets de produit 24

Cherchons tous les triplets de nombres pris entre $1$ et $6$ (le $5$ étant exclu) dont le produit vaut $24$, en les rangeant dans l'ordre croissant et en raisonnant sur le plus petit.

- **Plus petit égal à $1$** : les deux autres ont pour produit $24$, tous deux au plus égaux à $6$. Seul $4 \times 6$ convient ($2 \times 12$ et $3 \times 8$ sortent de l'intervalle). D'où $\{1, 4, 6\}$.
- **Plus petit égal à $2$** : les deux autres ont pour produit $12$, tous deux au moins égaux à $2$ et au plus à $6$ : $2 \times 6$ et $3 \times 4$. D'où $\{2, 2, 6\}$ et $\{2, 3, 4\}$.
- **Plus petit égal à $3$** : les deux autres ont pour produit $8$ et sont au moins égaux à $3$, or $3 \times 3 = 9 > 8$. Impossible.
- **Plus petit égal à $4$ ou plus** : le produit vaudrait au moins $4^3 = 64 > 24$. Impossible.

Les groupes de quatre nombres possibles sont donc
$$\{1, 4, 5, 6\}, \qquad \{2, 2, 5, 6\}, \qquad \{2, 3, 4, 5\}.$$

Vérifions : $1 \times 4 \times 5 \times 6 = 120$, $2 \times 2 \times 5 \times 6 = 120$, $2 \times 3 \times 4 \times 5 = 120$.

### Étape 4 : selon la forme de la cage

**Question 1, quatre cases sur une même ligne.** Ces quatre cases sont dans la même ligne, donc les quatre nombres sont deux à deux différents. Le groupe $\{2, 2, 5, 6\}$ est donc exclu. Il reste

$$\{1, 4, 5, 6\} \qquad \text{et} \qquad \{2, 3, 4, 5\} .$$

**Question 2, quatre cases en carré.** Le carré occupe deux lignes et deux colonnes. Deux nombres égaux ne peuvent être ni sur la même ligne, ni sur la même colonne : ils doivent donc occuper les deux cases **en diagonale**, ce qui est possible. Le groupe $\{2, 2, 5, 6\}$ redevient donc autorisé, avec les deux $2$ en diagonale et le $5$ et le $6$ sur l'autre diagonale. Les trois groupes conviennent :

$$\{1, 4, 5, 6\}, \qquad \{2, 2, 5, 6\}, \qquad \{2, 3, 4, 5\} .$$

**La forme de la cage fait donc partie du problème** : un même objectif $120\times$ laisse deux possibilités dans une ligne droite et trois dans un carré.

## Going further

1. Même question dans une grille $8 \times 8$ (où l'on écrit les nombres de $1$ à $8$) pour une cage de quatre cases d'objectif $192\times$. Combien de groupes trouve-t-on, et combien en reste-t-il si la cage est une ligne droite ?
2. Dans une grille $6 \times 6$, une cage de trois cases en ligne a pour objectif $6+$. Quelles sont les possibilités ? Et pour l'objectif $7+$ ?
3. Dans une grille $6 \times 6$, quel est le plus grand objectif « somme » possible pour une cage de trois cases en forme de « L » ?
