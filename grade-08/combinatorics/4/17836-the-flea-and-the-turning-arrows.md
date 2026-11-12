---
id: "17836"
title: "La puce et les flèches qui tournent"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, raisonnement-par-l-absurde, quadrillage, processus]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, jeudi matin, « Le principe des tiroirs » (Margaret Bilu), exercice 9, p.71 ; solution p.73-74"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Chaque case d'un quadrillage de $100 \times 100$ cases contient une flèche, qui pointe vers le haut, vers le bas, vers la gauche ou vers la droite.

Le quadrillage est entouré de murs que l'on ne peut pas traverser, sauf à un seul endroit : il y a une ouverture sur le côté droit de la case du coin en haut à droite.

Une puce est posée sur une case du quadrillage. À chaque étape :

- la puce avance d'une case dans la direction de la flèche de la case où elle se trouve, si c'est possible ; si un mur l'en empêche, elle reste sur place ;
- puis la flèche de la case qu'elle vient de quitter (ou de la case où elle est restée) tourne d'un quart de tour dans le sens des aiguilles d'une montre.

La puce peut-elle rester pour toujours dans le quadrillage ?

## Hints

1. Supposez que la puce ne sorte jamais. Elle fait alors une infinité d'étapes, sur un nombre fini de cases. Que peut-on dire d'au moins une case ?
2. Si la puce est passée par une case un très grand nombre de fois, vers où la flèche de cette case l'a-t-elle envoyée ?
3. Une case visitée une infinité de fois « transmet » cette propriété à ses voisines. Jusqu'où cela va-t-il ?

## Solution

**La réponse est non : la puce finit toujours par sortir.**

Raisonnons par l'absurde et supposons que la puce ne sorte jamais du quadrillage. Elle fait alors une infinité d'étapes.

**Étape 1 : une case visitée une infinité de fois.** À chaque étape, la puce se trouve sur l'une des $100 \times 100 = 10\,000$ cases. Il y a une infinité d'étapes et seulement $10\,000$ cases. Si chaque case n'était occupée qu'un nombre fini de fois, il n'y aurait qu'un nombre fini d'étapes en tout. Donc au moins une case $C$ est occupée par la puce à une infinité d'étapes. (C'est le principe des tiroirs, dans sa version infinie.)

**Étape 2 : ses voisines aussi.** À chaque étape où la puce est sur $C$, la flèche de $C$ tourne d'un quart de tour, et elle ne tourne à aucun autre moment. Donc, sur quatre étapes passées sur $C$, la flèche de $C$ a pointé dans les quatre directions, une fois chacune.

Soit $V$ une case voisine de $C$, sans mur entre les deux. Chaque fois que la puce est sur $C$ et que la flèche de $C$ pointe vers $V$, la puce passe sur $V$. Comme cela arrive au moins une fois sur quatre passages sur $C$, et qu'il y a une infinité de passages sur $C$, la puce va sur $V$ une infinité de fois.

Ainsi : **si une case est visitée une infinité de fois, chacune de ses voisines l'est aussi.**

**Étape 3 : toutes les cases.** On peut aller de $C$ à n'importe quelle case du quadrillage en passant de case voisine en case voisine. En appliquant l'étape 2 tout le long de ce chemin, on obtient que **toutes** les cases sont visitées une infinité de fois. C'est vrai en particulier pour la case $S$ du coin en haut à droite.

**Étape 4 : la contradiction.** Comme à l'étape 2, sur quatre passages de la puce sur $S$, la flèche de $S$ pointe une fois vers la droite. À ce moment-là, la puce avance vers la droite et passe par l'ouverture : elle sort du quadrillage. C'est contraire à notre hypothèse.

**Conclusion :** il est impossible que la puce reste pour toujours dans le quadrillage. Quelles que soient les flèches au départ et la case de départ, elle finit par sortir.

## Going further

Le nombre $100$ ne joue aucun rôle : le raisonnement marche pour un quadrillage de n'importe quelle taille, et même pour n'importe quel ensemble fini de cases où l'on peut aller de toute case à toute autre de voisine en voisine.

En revanche, ce raisonnement ne dit rien sur le **temps** que met la puce à sortir : il montre seulement que ce temps est fini.
