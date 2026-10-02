---
id: "8570"
title: "Paver un carré avec des bandes de longueur k"
grade: 11
theme: coloring
difficulty: 5
duration_min: 50
tags: [coloriage, pavage, divisibilite, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Coloriages et pavages » du Groupe B, exercice sur le pavage d'un carré par des rectangles 1×k"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $n$ et $k$ deux entiers strictement positifs.

On veut recouvrir exactement un carré $n \times n$ de carreaux avec des pièces $1 \times k$
(chaque pièce couvre $k$ carreaux alignés, horizontalement ou verticalement ; les pièces ne
se chevauchent pas et ne dépassent pas du carré).

Démontrer que c'est possible **si et seulement si** $k$ divise $n$.

## Hints

1. Un sens est facile : si $k$ divise $n$, construis directement un pavage.
2. Pour l'autre sens, colorie les carreaux avec $k$ couleurs. Si le carreau est en ligne $i$ et en colonne $j$, donne-lui la couleur correspondant au reste de $i - j$ dans la division par $k$.
3. Vérifie qu'une pièce $1 \times k$, horizontale ou verticale, couvre exactement un carreau de chaque couleur. Que peut-on en déduire sur le nombre de carreaux de chaque couleur dans le carré ?
4. Écris $n = qk + r$ avec $0 \leqslant r < k$, et enlève les lignes $k$ par $k$, puis les colonnes $k$ par $k$. Que reste-t-il, et combien y a-t-il de carreaux de chaque couleur dans ce reste ?

## Solution

### Si $k$ divise $n$, le pavage existe

Écrivons $n = qk$. Dans chaque ligne du carré, posons $q$ pièces horizontales bout à bout :
elles couvrent exactement les $n = qk$ carreaux de la ligne. En faisant cela pour les $n$
lignes, on recouvre exactement le carré.

### Si le pavage existe, alors $k$ divise $n$

**Le coloriage.** Numérotons les lignes et les colonnes de $0$ à $n-1$. Donnons au carreau
situé en ligne $i$ et en colonne $j$ la couleur

$$c(i, j) = \text{reste de } (i - j) \text{ dans la division par } k .$$

Il y a donc $k$ couleurs, numérotées $0, 1, \ldots, k-1$.

**Chaque pièce voit toutes les couleurs.** Une pièce horizontale occupe la ligne $i$ et les
colonnes $j, j+1, \ldots, j+k-1$. Ses couleurs sont les restes de

$$i - j, \quad i - j - 1, \quad \ldots, \quad i - j - k + 1 ,$$

c'est-à-dire $k$ entiers consécutifs : leurs restes modulo $k$ sont donc tous différents, et
il y en a $k$. La pièce couvre donc **exactement un carreau de chaque couleur**.

Une pièce verticale occupe la colonne $j$ et les lignes $i, i+1, \ldots, i+k-1$ : ses couleurs
sont les restes de $i - j, i - j + 1, \ldots, i - j + k - 1$, encore $k$ entiers consécutifs.
Même conclusion.

**Conséquence.** Si le carré est pavé par $P$ pièces, alors chaque couleur apparaît
exactement $P$ fois dans le carré. Donc **les $k$ couleurs apparaissent le même nombre de
fois**.

**On enlève les lignes par paquets de $k$.** Prenons $k$ lignes consécutives
$i, i+1, \ldots, i+k-1$, sur toute la largeur du carré. Pour une colonne $j$ fixée, les
couleurs rencontrées dans ces $k$ lignes sont les restes de
$i - j, i - j + 1, \ldots, i - j + k - 1$ : chaque couleur exactement une fois. En sommant sur
les $n$ colonnes, chaque couleur apparaît exactement $n$ fois dans ce paquet de $k$ lignes :
**toutes les couleurs y apparaissent autant de fois**.

Écrivons $n = qk + r$ avec $0 \leqslant r < k$. Enlevons $q$ paquets de $k$ lignes : il reste
un rectangle de $r$ lignes et $n$ colonnes, et les couleurs y apparaissent encore toutes
autant de fois (puisque c'était déjà vrai dans le carré entier et dans chaque paquet retiré).

**On enlève les colonnes par paquets de $k$.** Le même raisonnement, en échangeant lignes et
colonnes, montre qu'un paquet de $k$ colonnes consécutives d'un rectangle à $r$ lignes
contient chaque couleur exactement $r$ fois. En enlevant $q$ tels paquets, il reste un carré
$r \times r$, dans lequel toutes les couleurs apparaissent encore autant de fois.

**Le petit carré.** Supposons $r \geqslant 1$ et comptons dans ce carré $r \times r$ (lignes
et colonnes numérotées de $0$ à $r-1$). Pour deux carreaux du petit carré, la différence
$i - j$ est comprise entre $-(r-1)$ et $r-1$. Comme $r \leqslant k - 1$, on a
$|i - j| \leqslant k - 2 < k$.

Deux valeurs de $i - j$ de même reste modulo $k$ différeraient d'au moins $k$ : dans cet
intervalle, la couleur est donc simplement déterminée par la valeur de $i - j$ elle-même.

- La couleur $0$ correspond à $i - j = 0$ : c'est la diagonale, soit $r$ carreaux.
- La couleur $1$ correspond à $i - j = 1$ : c'est la diagonale juste en dessous, soit $r - 1$
  carreaux.

Ces deux nombres sont différents, ce qui contredit le fait que toutes les couleurs
apparaissent autant de fois.

**Conclusion.** L'hypothèse $r \geqslant 1$ est absurde, donc $r = 0$, c'est-à-dire que $k$
divise $n$.

### Conclusion générale

Le carré $n \times n$ se pave par des pièces $1 \times k$ si et seulement si $k$ divise $n$.
