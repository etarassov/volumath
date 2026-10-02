---
id: "8853"
title: "La limace traverse le quadrillage"
grade: 9
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, damier, parite, chemins, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 16, p. 125"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Une limace se trouve sur la case en bas à gauche d'un quadrillage rectangulaire de $m$ lignes et $n$ colonnes.

Elle se déplace de case en case, en passant toujours d'une case à une case voisine par un côté. Elle veut terminer sur la case en haut à droite **en étant passée par toutes les cases exactement une fois**.

Pour quelles valeurs de $m$ et $n$ y parvient-elle ?

## Hints

1. Essaie à la main sur de petits quadrillages : $2 \times 2$, $2 \times 3$, $3 \times 3$, $4 \times 4$. Un cas semble toujours échouer.
2. Colorie le quadrillage comme un damier. Que se passe-t-il à chaque pas de la limace ?
3. Combien de pas fait-elle en tout ? En déduire la couleur de la case d'arrivée en fonction de celle de la case de départ.
4. Compare cette couleur à la couleur réelle de la case en haut à droite, qui dépend de la parité de $m$ et de $n$.
5. Pour les cas qui restent, construis un chemin. Le serpent (aller-retour le long des lignes, ou le long des colonnes) est ton ami.

## Solution

Repérons les cases par un couple $(i, j)$ : $i$ est le numéro de la ligne en partant du bas ($1 \leqslant i \leqslant m$) et $j$ le numéro de la colonne en partant de la gauche ($1 \leqslant j \leqslant n$). La limace part de $(1,1)$ et veut finir en $(m, n)$.

### Le coloriage

Colorions la case $(i,j)$ en **noir** si $i+j$ est pair, en **blanc** sinon : c'est un coloriage de damier, deux cases voisines ayant toujours des couleurs différentes.

À chaque pas, la limace passe à une case voisine, donc **change de couleur**.

### Le comptage

La limace visite les $mn$ cases une fois chacune, donc elle fait exactement
$$mn - 1 \quad \text{pas.}$$

Comme elle change de couleur à chaque pas :

- si $mn-1$ est **pair**, la case d'arrivée a la même couleur que la case de départ ;
- si $mn-1$ est **impair**, elle a la couleur opposée.

La case de départ $(1,1)$ a $i+j = 2$, elle est donc **noire**. La case d'arrivée $(m,n)$ est noire si $m+n$ est pair, blanche sinon.

### Le cas impossible

Supposons $m$ et $n$ tous les deux **pairs**. Alors $mn$ est pair, donc $mn-1$ est impair : l'arrivée doit être de la couleur opposée au départ, c'est-à-dire **blanche**. Mais $m+n$ est pair, donc la case $(m,n)$ est **noire**. Contradiction.

**Si $m$ et $n$ sont tous les deux pairs, la limace n'y arrive pas.**

### Les cas possibles

Supposons maintenant que $m$ ou $n$ soit impair. Construisons un chemin en serpent.

**Si $n$ est impair** (nombre impair de colonnes), la limace serpente le long des colonnes : elle monte toute la colonne $1$, passe à la colonne $2$, la descend entièrement, passe à la colonne $3$, la monte, et ainsi de suite. Elle monte les colonnes de numéro impair et descend celles de numéro pair. Comme $n$ est impair, la dernière colonne est montée, donc elle la termine tout en haut : elle finit bien en $(m, n)$.

**Si $n$ est pair et $m$ impair**, la limace serpente le long des lignes : elle parcourt la ligne $1$ vers la droite, monte d'une case, parcourt la ligne $2$ vers la gauche, monte, parcourt la ligne $3$ vers la droite, etc. Elle parcourt vers la droite les lignes de numéro impair. Comme $m$ est impair, la dernière ligne est parcourue vers la droite, donc elle la termine tout à droite : elle finit bien en $(m, n)$.

Dans les deux cas, chaque case est visitée exactement une fois.

### Conclusion

$$\boxed{\text{La limace y parvient si et seulement si } m \text{ ou } n \text{ est impair.}}$$

Autrement dit, le seul cas impossible est celui où $m$ et $n$ sont tous les deux pairs.

## Going further

1. Même question si la limace doit finir en **bas à droite** au lieu de en haut à droite.
2. Même question si elle doit revenir à sa case de départ (un circuit qui passe une fois par chaque case).
