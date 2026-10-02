---
id: "1211"
title: "Les chemins de Barbara"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [denombrement, chemins, bijection, repere, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.8 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Barbara sort d'un rendez-vous au point $(0\,;0)$ d'un quadrillage. Elle habite au point $(5\,;3)$, mais elle ne connaît pas le chemin : elle sait seulement qu'il faut aller vers l'est, sans trop monter ni descendre.

Elle avance donc par pas d'une unité, chaque pas étant :

- soit vers la **droite** (une unité vers l'est),
- soit vers le **haut**,
- soit vers le **bas**.

Elle ne va jamais vers la gauche, elle reste toujours dans la bande $0 \leqslant y \leqslant 3$, et elle ne repasse jamais par un point déjà visité. Le trajet s'arrête dès qu'elle atteint $(5\,;3)$.

Combien de chemins différents Barbara peut-elle emprunter ?

## Hints

1. Comme Barbara ne va jamais vers la gauche, son abscisse ne fait que croître, de $0$ à $5$ : elle fait donc exactement cinq pas vers la droite.
2. Ces cinq pas découpent le trajet en six morceaux verticaux, un par colonne $x = 0, 1, 2, 3, 4, 5$ (certains peuvent être vides).
3. Dans une même colonne, que se passe-t-il si Barbara monte puis redescend ?
4. Un chemin est donc entièrement décrit par la hauteur à laquelle Barbara quitte chaque colonne. Combien de hauteurs possibles ?
5. Vérifier que chaque choix de ces hauteurs donne bien un chemin valable, et un seul.

## Solution

**Découper le chemin.**

Barbara ne recule jamais : son abscisse passe de $0$ à $5$ en augmentant d'une unité à chaque pas vers la droite. Elle fait donc exactement **cinq pas vers la droite**.

Ces cinq pas découpent le trajet en six blocs de pas verticaux, un par colonne :

- dans la colonne $x = 0$, elle part de $(0\,;0)$ et monte ou descend jusqu'à une certaine hauteur $b_0$, puis fait son premier pas vers la droite ;
- dans la colonne $x = 1$, elle arrive à la hauteur $b_0$, se déplace verticalement jusqu'à une hauteur $b_1$, puis va à droite ;
- et ainsi de suite jusqu'à la colonne $x = 4$, qu'elle quitte à la hauteur $b_4$ ;
- dans la colonne $x = 5$, elle arrive à la hauteur $b_4$ et monte ou descend jusqu'à $3$, où le trajet s'arrête.

Certains de ces blocs peuvent être vides (elle enchaîne alors deux pas vers la droite).

**Chaque bloc vertical est monotone.**

Dans une colonne donnée, si Barbara montait puis redescendait, elle repasserait par un point déjà visité, ce qui est interdit. Donc à l'intérieur d'une colonne, elle ne fait que monter, ou bien que descendre.

Autrement dit : **le bloc vertical de la colonne $x = k$ est entièrement déterminé par sa hauteur de départ et sa hauteur d'arrivée.** La hauteur de départ est connue (c'est $b_{k-1}$, ou $0$ pour la première colonne) ; il n'y a donc qu'une seule inconnue par colonne, la hauteur de sortie $b_k$.

**Compter.**

Un chemin est donc entièrement décrit par la suite des cinq hauteurs de sortie

$$(b_0, b_1, b_2, b_3, b_4),$$

où $b_k$ est l'ordonnée à laquelle Barbara effectue son $(k+1)$-ième pas vers la droite. Chacune de ces hauteurs est un entier de $\{0, 1, 2, 3\}$, soit $4$ possibilités.

Réciproquement, n'importe quel choix de $(b_0, b_1, b_2, b_3, b_4)$ dans $\{0,1,2,3\}^5$ fabrique un chemin valable : dans chaque colonne on va tout droit de la hauteur d'entrée à la hauteur de sortie, donc on ne repasse par aucun point, on reste bien dans la bande, et le dernier bloc vertical (colonne $x=5$) mène de $b_4$ à $3$. Deux choix différents donnent deux chemins différents, puisqu'on lit les $b_k$ sur le chemin.

Il y a donc autant de chemins que de listes $(b_0, \dots, b_4)$ :

$$4 \times 4 \times 4 \times 4 \times 4 = 4^5 = 1024.$$

**Conclusion.** Barbara dispose de $1024$ chemins différents.

## Going further

1. Barbara habite maintenant en $(n\,;3)$ et la bande est toujours $0 \leqslant y \leqslant 3$. Combien de chemins ?
2. Et si la bande est $0 \leqslant y \leqslant h$ et la maison en $(n\,;h)$ ? La réponse ne dépend pas du fait que le point d'arrivée soit tout en haut : pourquoi ?
3. Si on autorisait aussi les pas vers la gauche (toujours sans repasser par un point visité), le nombre de chemins serait-il encore fini ?
