---
id: "8673"
title: "Compter les triangles"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, coefficients-binomiaux, alignement, soustraction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 5 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par calcul."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Sur les côtés d'un triangle $ABC$, on place des points supplémentaires :

- $3$ points sur le côté $[AB]$ ;
- $4$ points sur le côté $[BC]$ ;
- $5$ points sur le côté $[CA]$.

Aucun de ces points ne coïncide avec un autre, ni avec un sommet du triangle.

On dispose donc en tout de $15$ points : les $3$ sommets et les $12$ points ajoutés. Combien de triangles **non aplatis** peut-on former en choisissant trois de ces $15$ points ?

*Deux triangles sont considérés comme identiques lorsqu'ils ont les mêmes trois sommets.*

## Hints

1. Commence par compter **toutes** les façons de choisir trois points parmi les $15$, sans te soucier des triangles aplatis.
2. Un choix de trois points ne donne pas de triangle exactement quand les trois points sont alignés. Où peuvent-ils être alignés ?
3. Trois points sont alignés seulement s'ils sont tous les trois sur un même côté du triangle. Combien de points y a-t-il sur chaque côté, sommets compris ?
4. Attention : le côté $[AB]$ porte les $3$ points ajoutés **plus** les sommets $A$ et $B$.
5. Soustrais, côté par côté.

## Solution

### Tous les choix de trois points

Il y a $15$ points en tout, et choisir trois points parmi $15$ se fait de

$$\binom{15}{3} = \frac{15 \times 14 \times 13}{3 \times 2 \times 1} = 455$$

façons.

### Les choix qui ne donnent pas de triangle

Trois points ne forment pas de triangle exactement quand ils sont alignés. Ici, trois de nos points sont alignés si et seulement s'ils appartiennent tous au même côté du triangle. *(Deux points d'un côté et un point d'un autre côté ne sont jamais alignés, car les deux premiers déterminent la droite du côté, et le troisième n'est pas dessus.)*

Comptons donc les points de chaque côté, **sommets compris** :

| côté | points ajoutés | sommets | total |
|---|---|---|---|
| $[AB]$ | $3$ | $A$, $B$ | $5$ |
| $[BC]$ | $4$ | $B$, $C$ | $6$ |
| $[CA]$ | $5$ | $C$, $A$ | $7$ |

Le nombre de triplets alignés vaut donc

$$\binom{5}{3} + \binom{6}{3} + \binom{7}{3} = 10 + 20 + 35 = 65 .$$

### On soustrait

$$455 - 65 = 390 .$$

$$\boxed{\text{Il y a } 390 \text{ triangles non aplatis.}}$$

## Going further

La méthode « **compter tout, puis retirer ce qui ne convient pas** » est souvent bien plus rapide qu'un comptage direct. Ici, compter directement les triangles obligerait à distinguer selon le nombre de sommets pris sur chaque côté, ce qui fait beaucoup de cas.

Remarque un piège discret : chaque sommet du triangle appartient à **deux** côtés. Il est donc compté deux fois dans le tableau des côtés — et c'est correct, puisqu'on compte des triplets alignés, pas des points. En revanche, il ne faudrait surtout pas l'ajouter deux fois dans le total de $15$ points.

Pour t'entraîner : même question, mais on ajoute cette fois $n$ points sur chaque côté. Exprime le résultat en fonction de $n$.
