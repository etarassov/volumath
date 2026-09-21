---
id: "8844"
title: "Treize parts de gâteau"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [minimum, decoupage, recurrence, regions du plan]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 17, p. 117 (la conclusion imprimée, « la valeur maximale est 2^{n-1} », est un copier-coller de l'exercice voisin ; la réponse est 5)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Un gâteau rond est posé sur la table, avec de la crème sur le dessus. On veut le partager en $13$ parts, pas forcément égales, mais chaque part doit avoir de la crème dessus.

Un coup de couteau est une coupe droite, verticale, qui traverse le gâteau de part en part. On ne déplace jamais les morceaux entre deux coups.

Combien faut-il de coups de couteau au minimum ?

## Hints

1. Regarde le gâteau d'en haut : c'est un disque, et chaque coup de couteau est une droite. Il s'agit donc de découper un disque en $13$ régions avec le moins de droites possible.
2. Avec $1$ coup on obtient $2$ parts, avec $2$ coups au plus $4$, avec $3$ coups au plus… Fais un dessin et devine la règle.
3. Quand on ajoute une nouvelle droite, en combien de morceaux les droites précédentes la découpent-elles à l'intérieur du disque ? Chaque morceau coupe une région en deux.
4. Une fois la borne obtenue, n'oublie pas de montrer qu'on peut vraiment atteindre exactement $13$ parts.

## Solution

Vu de dessus, le gâteau est un disque et chaque coup de couteau est une droite qui le traverse.

### Combien de parts au maximum avec $k$ coups ?

Notons $P_k$ le nombre maximal de régions obtenues avec $k$ droites.

Au départ, sans aucune coupe, il y a $1$ région : $P_0 = 1$.

**Ce qu'ajoute une nouvelle droite.** Ajoutons la $k$-ième droite. À l'intérieur du disque, elle rencontre chacune des $k-1$ droites déjà tracées en au plus un point : elle est donc découpée en au plus $k$ morceaux. Chacun de ces morceaux traverse une région et la coupe en deux, ajoutant ainsi une région. La nouvelle droite ajoute donc **au plus $k$ régions**.

D'où
$$P_k \; \leqslant \; P_{k-1} + k ,$$
et en enchaînant depuis $P_0 = 1$,
$$P_k \; \leqslant \; 1 + 1 + 2 + 3 + \cdots + k = 1 + \frac{k(k+1)}{2} .$$

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| parts au plus | $1$ | $2$ | $4$ | $7$ | $11$ | $16$ |

### Quatre coups ne suffisent pas

Avec $4$ coups, on obtient au plus $11$ parts, et $11 < 13$. Il faut donc au moins $5$ coups.

### Cinq coups suffisent

Avec $5$ coups on peut monter jusqu'à $16$ parts, mais on veut exactement $13$, ni plus ni moins. Il faut donc choisir la disposition avec soin.

Reprenons le compte : si la $i$-ième droite coupe $c_i$ des droites précédentes **à l'intérieur du disque**, elle ajoute exactement $c_i + 1$ régions. Le nombre total de parts vaut donc
$$1 + \sum_{i=1}^{5} (c_i + 1) = 6 + \sum_{i=1}^{5} c_i .$$

Pour obtenir $13$ parts, il faut $\sum c_i = 7$. C'est réalisable, par exemple avec
$$c_1 = 0, \quad c_2 = 1, \quad c_3 = 2, \quad c_4 = 2, \quad c_5 = 2 .$$

Concrètement : on trace deux droites qui se croisent (cela fait $4$ parts), puis trois droites successives dont chacune coupe exactement deux des droites déjà présentes à l'intérieur du disque, les autres intersections étant rejetées à l'extérieur du gâteau. Chacune de ces trois droites ajoute $3$ parts, et
$$4 + 3 + 3 + 3 = 13 .$$

### Conclusion

$$\boxed{\text{Il faut } 5 \text{ coups de couteau.}}$$

## Going further

1. Combien de coups faut-il au minimum pour obtenir $100$ parts ?
2. Avec $k$ coups de couteau, quels nombres de parts peut-on obtenir exactement ? (Trouver le plus petit et le plus grand, et montrer que toutes les valeurs intermédiaires sont atteintes.)
