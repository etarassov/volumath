---
id: "12242"
title: "Un carré 3 × 3 d'une seule couleur"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, coloriage, puissances, majoration, grille]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de février 2016, junior"
  reference: "2017-10_ofm-2015-2016-test-fevrier-junior.pdf, test du 26 février 2016, exercice 1 ; corrigé 2017-10_ofm-2015-2016-test-fevrier-junior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-fevrier-junior.pdf"
---

## Statement

On colorie chacune des $100$ cases d'une grille de $10$ lignes et $10$ colonnes, soit en blanc, soit en noir.

Un coloriage est dit **homogène** s'il contient un carré de $3 \times 3$ cases d'une seule couleur, c'est-à-dire dont les $9$ cases sont toutes blanches ou toutes noires. Sinon, il est dit **inhomogène**.

Montrer qu'il existe plus de coloriages inhomogènes que de coloriages homogènes.

## Hints

1. Combien y a-t-il de coloriages en tout ? Écris le résultat comme une puissance de $2$.
2. Fixe un carré $3 \times 3$ de la grille. Combien y a-t-il de coloriages dans lesquels ce carré-là est d'une seule couleur ?
3. Combien y a-t-il de carrés $3 \times 3$ dans la grille ? Repère chacun par sa case en haut à gauche.
4. Un coloriage homogène peut avoir plusieurs carrés d'une seule couleur. En additionnant le nombre trouvé à l'indication 2 pour tous les carrés, on le compte plusieurs fois : on obtient donc un nombre trop grand, mais cela suffit.

## Solution

**Le nombre total de coloriages.** Chaque case a $2$ couleurs possibles, et l'on choisit les couleurs des $100$ cases indépendamment. Il y a donc
$$2 \times 2 \times \cdots \times 2 = 2^{100}$$
coloriages en tout.

**Les carrés $3 \times 3$.** On repère un carré $3 \times 3$ par sa case en haut à gauche. Cette case doit laisser deux lignes en dessous d'elle et deux colonnes à sa droite : elle est donc dans l'une des $8$ premières lignes et l'une des $8$ premières colonnes. Il y a ainsi $8 \times 8 = 64$ carrés $3 \times 3$ dans la grille.

**Un carré donné.** Fixons l'un de ces carrés, que l'on note $c$. Pour obtenir un coloriage dans lequel $c$ est d'une seule couleur, on choisit cette couleur ($2$ façons), puis la couleur de chacune des $100 - 9 = 91$ autres cases ($2^{91}$ façons). Il y a donc $2 \times 2^{91} = 2^{92}$ coloriages dans lesquels le carré $c$ est d'une seule couleur.

**Une majoration des coloriages homogènes.** Notons $H$ le nombre de coloriages homogènes. Faisons la liste des coloriages où le premier carré est d'une seule couleur, puis de ceux où le deuxième carré l'est, et ainsi de suite jusqu'au dernier, le $64$e. Cette liste a $64 \times 2^{92}$ lignes.

Tout coloriage homogène apparaît au moins une fois dans la liste, puisqu'il a au moins un carré d'une seule couleur. Certains y apparaissent plusieurs fois, s'ils ont plusieurs carrés d'une seule couleur. Donc
$$H \leqslant 64 \times 2^{92} = 2^6 \times 2^{92} = 2^{98}.$$

**Conclusion.** Le nombre de coloriages inhomogènes est
$$2^{100} - H \geqslant 2^{100} - 2^{98} = 4 \times 2^{98} - 2^{98} = 3 \times 2^{98}.$$

Il y a donc au moins $3 \times 2^{98}$ coloriages inhomogènes, et au plus $2^{98}$ coloriages homogènes. Comme $3 \times 2^{98} > 2^{98}$, il y a plus de coloriages inhomogènes que de coloriages homogènes. On a même montré qu'il y en a au moins trois fois plus.

## Going further

Que se passe-t-il avec des carrés $2 \times 2$ au lieu de $3 \times 3$ ?

1. Montre que la même méthode ne marche plus : la majoration obtenue est plus grande que le nombre total de coloriages.
2. Montre qu'au contraire, il y a alors plus de coloriages qui contiennent un carré $2 \times 2$ d'une seule couleur que de coloriages qui n'en contiennent pas. On pourra découper la grille en $25$ carrés $2 \times 2$ qui ne se chevauchent pas, compter les coloriages où aucun de ces $25$ carrés n'est d'une seule couleur, et utiliser le fait que $\left(\frac{7}{8}\right)^{10} < \frac{1}{2}$.
