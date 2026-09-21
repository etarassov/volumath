---
id: "8571"
title: "Colorier les entiers de 2 à 31"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [coloriage, minimum, multiples, construction]
adapted_from: null
see_also: ["8843"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe du maximum et optimisation » (Hannah) du Groupe A, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Alice veut colorier les entiers de $2$ à $31$ (inclus) en utilisant $k$ couleurs. Elle veut
que, chaque fois que $m$ et $n$ sont deux entiers entre $2$ et $31$ avec $m$ multiple de $n$
et $m \neq n$, les nombres $m$ et $n$ soient de couleurs différentes.

Déterminer le plus petit entier $k$ pour lequel Alice peut y arriver.

## Hints

1. Comme tout problème de minimum, celui-ci a deux moitiés : montrer que $k$ couleurs ne suffisent pas en dessous d'un certain seuil, et donner un coloriage qui marche à ce seuil.
2. Pour la première moitié, cherche une chaîne de nombres où chacun divise le suivant. Tous doivent être de couleurs différentes.
3. Les puissances de $2$ forment une telle chaîne. Combien y en a-t-il entre $2$ et $31$ ?
4. Pour la construction, remarque que si $n$ divise $m$ et $m \neq n$, alors $m \geqslant 2n$. Colorie donc selon la « taille » du nombre, par tranches qui doublent.

## Solution

**La réponse est $k = 4$.**

### Il faut au moins 4 couleurs

Considérons les quatre nombres

$$2, \quad 4, \quad 8, \quad 16 ,$$

qui sont tous entre $2$ et $31$. Chacun divise tous les suivants :

- $2$ divise $4$, $8$ et $16$ ;
- $4$ divise $8$ et $16$ ;
- $8$ divise $16$.

Deux de ces quatre nombres sont donc toujours dans la situation interdite : ils doivent
porter des couleurs différentes. Les quatre doivent donc avoir quatre couleurs deux à deux
différentes, et il faut au moins $4$ couleurs.

### Quatre couleurs suffisent

Colorions par tranches, chaque tranche allant du double du début de la précédente :

| Couleur | Nombres |
|---|---|
| rouge | $2$, $3$ |
| bleu | $4$, $5$, $6$, $7$ |
| vert | $8$, $9$, $\ldots$, $15$ |
| jaune | $16$, $17$, $\ldots$, $31$ |

Chaque entier de $2$ à $31$ reçoit bien une couleur et une seule.

**Pourquoi ce coloriage convient.** Soient $n$ et $m$ deux entiers entre $2$ et $31$ tels que
$n$ divise $m$ et $m \neq n$. Alors $m = qn$ avec $q \geqslant 2$, donc

$$m \geqslant 2n .$$

Or chaque tranche est de la forme « de $2^i$ à $2^{i+1} - 1$ » : si $n$ est dans la tranche
de $2^i$, alors $n < 2^{i+1}$, donc $m \geqslant 2n$ n'est pas dans cette tranche (il y
faudrait $m < 2^{i+1}$, or $m \geqslant 2n \geqslant 2 \times 2^i = 2^{i+1}$). Les deux
nombres sont donc de couleurs différentes.

### Conclusion

Le plus petit nombre de couleurs est $k = 4$.
