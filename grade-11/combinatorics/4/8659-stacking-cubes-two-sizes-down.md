---
id: "8659"
title: "Empiler des cubes sans descendre de plus de 2"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [recurrence, denombrement, bijection, empilement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 4 (entraînement de mi-parcours, Valbonne 2019, groupe B). Le corrigé imprimé énonce l'hypothèse de récurrence avec 3^(n−2) × 2 mais conclut 3^(n−1) × 2 ; le bon compte est 2 × 3^(n−2), vérifié par énumération jusqu'à n = 8."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On dispose de $n$ cubes, de côtés $1, 2, \ldots, n$. On veut les empiler tous, l'un sur l'autre, en une seule pile.

La règle est la suivante : **un cube de côté $k$ ne peut être posé que sur un cube de côté $\ell$ avec $\ell \geqslant k - 2$.** Autrement dit, on a le droit de poser un cube sur un cube un peu plus petit, mais pas sur un cube plus petit de $3$ ou davantage.

Combien y a-t-il d'empilements possibles ?

## Hints

1. Compte à la main pour $n = 1$, $n = 2$, $n = 3$. Tu devrais trouver $1$, $2$, $6$. Essaie ensuite de deviner la suite.
2. Pour passer de $n$ à $n+1$, regarde le plus gros cube, celui de côté $n+1$. Où peut-il se trouver dans la pile ?
3. Le cube $n+1$ ne peut être posé que sur un cube de côté au moins $n - 1$. Combien de cubes vérifient cela ? Et n'oublie pas qu'il peut aussi être tout en bas.
4. Réciproquement, si tu enlèves le cube $n+1$ d'une pile valide, la pile obtenue est-elle encore valide ? Vérifie ce qui arrive au cube qui était juste au-dessus.
5. Attention au démarrage : la récurrence ne part pas de $n = 1$. Compte soigneusement les positions disponibles quand on ajoute le cube $2$.

## Solution

**Les petits cas.** Pour $n = 1$, il n'y a qu'une pile. Pour $n = 2$, les deux piles $(1$ en bas, $2$ en haut$)$ et $(2$ en bas, $1$ en haut$)$ sont toutes deux valides, car la condition $\ell \geqslant k-2$ est très large pour de si petits nombres. Il y en a donc $2$.

**L'idée : ajouter le plus gros cube.** Montrons par récurrence, pour $n \geqslant 2$, la propriété

> $P(n)$ : « il y a exactement $2 \times 3^{\,n-2}$ empilements valides avec les cubes $1, 2, \ldots, n$ ».

**Initialisation.** Pour $n = 2$ : $2 \times 3^{0} = 2$, ce qui est bien le compte trouvé ci-dessus.

**Hérédité.** Soit $n \geqslant 2$, et supposons $P(n)$ vraie. Considérons les empilements valides des cubes $1, \ldots, n+1$.

*Où peut se trouver le cube $n+1$ ?* S'il est posé sur un cube de côté $\ell$, la règle impose $\ell \geqslant (n+1) - 2 = n - 1$. Les seuls cubes assez grands sont donc ceux de côté $n-1$ et $n$. Il peut aussi être tout en bas de la pile, auquel cas il n'est posé sur rien. Cela fait **au plus $3$ positions**.

*Enlever le cube $n+1$ donne une pile valide.* Partons d'un empilement valide des $n+1$ cubes et retirons le cube $n+1$ ; les cubes qui étaient au-dessus descendent d'un cran. La seule paire de voisins qui change est celle du cube qui était juste au-dessus de $n+1$, s'il existe. Appelons $m$ son côté ; il se retrouve posé sur le cube de côté $\ell$ qui portait $n+1$ (ou bien à même le sol). Or $\ell \geqslant n-1$ et $m \leqslant n$, donc

$$m - 2 \leqslant n - 2 \leqslant n - 1 \leqslant \ell ,$$

et la condition $\ell \geqslant m-2$ est respectée. La pile obtenue est donc valide, et c'est une pile des cubes $1, \ldots, n$.

*Ajouter le cube $n+1$ donne toujours une pile valide.* Réciproquement, partons d'une pile valide des cubes $1, \ldots, n$ et insérons le cube $n+1$ à l'une des trois positions décrites. La règle est respectée sous le cube $n+1$ par construction. Et au-dessus de lui ? Le cube qui s'y retrouve, de côté $m \leqslant n$, est posé sur $n+1$, et $n + 1 \geqslant m - 2$ est évidemment vrai. Tout est valide.

*Les trois positions sont bien distinctes*, puisqu'elles décrivent trois voisins du dessous différents (le cube $n$, le cube $n-1$, ou le sol). Comme $n \geqslant 2$, les cubes de côtés $n-1$ et $n$ existent tous les deux et sont différents.

On a donc établi une correspondance exacte : chaque empilement des $n+1$ cubes correspond à un empilement des $n$ cubes accompagné d'un choix entre $3$ positions. D'où

$$\big(\text{nombre pour } n+1\big) = 3 \times \big(\text{nombre pour } n\big) = 3 \times 2 \times 3^{\,n-2} = 2 \times 3^{\,(n+1)-2} .$$

$P(n+1)$ est vraie.

**Conclusion.**

$$\boxed{\text{Il y a } 2 \times 3^{\,n-2} \text{ empilements pour } n \geqslant 2, \text{ et } 1 \text{ seul empilement pour } n = 1 .}$$

*Vérification :* $n=2 \to 2$, $n=3 \to 6$, $n=4 \to 18$, $n=5 \to 54$, ce qu'on peut confirmer à la main pour $n=3$.

## Going further

Le point délicat de cet exercice n'est pas le calcul, c'est le **démarrage**. Pourquoi la récurrence ne part-elle pas de $n = 1$ ?

Parce que le raisonnement « il y a $3$ positions » utilise l'existence des deux cubes $n-1$ et $n$. Pour passer de $n = 1$ à $n = 2$, le cube $n-1$ serait le cube de côté $0$, qui n'existe pas : il ne reste que $2$ positions, et on trouve bien $2$ et non $3$. La formule $2 \times 3^{n-2}$ ne vaut donc qu'à partir de $n = 2$, et le cas $n = 1$ se traite à part.

C'est un piège classique : une hérédité peut être parfaitement correcte **à partir d'un certain rang seulement**. Il faut toujours vérifier à quel rang le raisonnement commence réellement à tenir.
