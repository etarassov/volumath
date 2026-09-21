---
id: "8644"
title: "Noircir des cases de proche en proche"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [strategie gagnante, pavage en dominos, appariement, parite]
adapted_from: null
see_also: ["7044"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Jeux » (Théo & Augustin), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Sur un tableau $n \times n$ entièrement blanc, Louise et Matthieu jouent au jeu suivant.

Louise commence par noircir la case en haut à gauche. Ensuite, chacun à son tour, ils noircissent une case encore blanche qui est **voisine par un côté** de la dernière case noircie.

Le premier joueur qui ne peut plus jouer a perdu.

1. Qui a une stratégie gagnante pour $n = 2023$ ?
2. Même question pour un tableau $n \times n$ quelconque.

## Hints

1. Les cases noircies forment un chemin qui s'allonge d'une case à chaque coup, et qui ne repasse jamais sur lui-même. Le jeu se termine donc forcément.
2. Pense à découper le tableau en **dominos** (des paires de cases voisines). Comment cela peut-il fournir une stratégie à l'un des deux joueurs ?
3. Si tu réponds toujours en complétant le domino que ton adversaire vient d'entamer, pourras-tu toujours jouer ? Justifie que la case que tu veux prendre est bien libre.
4. Pour $n$ pair, le tableau se découpe entièrement en dominos. Pour $n$ impair, il y a une case en trop : laquelle vaut-il mieux laisser de côté ?

## Solution

**Le jeu se termine.** Les cases noircies forment un chemin qui gagne une case à chaque coup et ne repasse jamais par une case déjà noire. Comme il n'y a que $n^2$ cases, la partie s'arrête au bout d'au plus $n^2$ coups. Il y a donc toujours un gagnant et un perdant.

### L'idée : un pavage en dominos

Supposons qu'un joueur ait choisi d'avance un découpage d'une partie du tableau en **dominos**, c'est-à-dire en paires de cases voisines par un côté, sans chevauchement. Sa stratégie sera :

> **Chaque fois que l'adversaire noircit une case, noircir l'autre case du domino qui la contient.**

*Pourquoi ce coup est-il toujours possible ?* D'abord, les deux cases d'un domino sont voisines, donc le coup respecte la règle. Ensuite, il faut que la case visée soit encore blanche. Or, après chacun des coups de notre joueur, les cases noires sont exactement des dominos entiers : un domino est soit entièrement noir, soit entièrement blanc. Quand l'adversaire noircit une case $c$, le domino de $c$ était donc entièrement blanc, et l'autre case de ce domino est libre.

Notre joueur peut donc **toujours** jouer. C'est donc l'adversaire qui finira par être bloqué.

### 1. Le cas $n$ pair : Matthieu gagne

Si $n$ est pair, le tableau $n \times n$ se découpe entièrement en dominos : il suffit par exemple de poser, sur chaque ligne, $\dfrac{n}{2}$ dominos horizontaux côte à côte.

Matthieu utilise ce découpage. Louise noircit d'abord la case en haut à gauche ; Matthieu répond par l'autre case de son domino, et ainsi de suite. Il peut toujours jouer, donc **Matthieu gagne**.

### 2. Le cas $n$ impair : Louise gagne

Si $n$ est impair, le tableau a $n^2$ cases, un nombre impair : il ne peut pas se découper entièrement en dominos. Mais Louise, elle, joue **en premier**, et son premier coup est imposé : la case en haut à gauche. Il lui suffit donc de découper en dominos **tout le tableau sauf cette case-là**, puis d'appliquer la stratégie ci-dessus.

Un tel découpage existe. Voici comment le construire :

- la ligne du haut, privée de la case du coin, compte $n-1$ cases, un nombre pair : on la couvre avec $\dfrac{n-1}{2}$ dominos horizontaux ;
- la colonne de gauche, privée elle aussi de la case du coin, compte $n-1$ cases : on la couvre avec $\dfrac{n-1}{2}$ dominos verticaux ;
- il reste un carré de $(n-1) \times (n-1)$ cases, avec $n-1$ pair : on le couvre avec des dominos horizontaux comme dans le cas pair.

Louise noircit la case du coin, puis répond à chaque coup de Matthieu en complétant son domino. Elle peut toujours jouer, donc **Louise gagne**.

### Conclusion

Le second joueur, Matthieu, gagne quand $n$ est pair ; la première joueuse, Louise, gagne quand $n$ est impair. En particulier, pour $n = 2023$, qui est impair, **c'est Louise qui a une stratégie gagnante**.

## Going further

Remarque que la stratégie ne dit jamais quel chemin sera effectivement parcouru : elle garantit seulement qu'on ne sera jamais bloqué. C'est souvent tout ce dont on a besoin dans un jeu où le perdant est celui qui ne peut plus jouer.

Cette idée d'appariement est l'une des plus rentables de toute la théorie des jeux combinatoires. On la retrouve sous le nom de « stratégie du couplage » : si le graphe des positions possède un couplage parfait, le second joueur gagne ; s'il en possède un qui couvre tout sauf le point de départ, c'est le premier.
