---
id: "8153"
title: "La tour sur l'échiquier qui noircit ses cases"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie, appariement, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 43 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil. L'énoncé d'origine demande seulement sur quelle case Savinien doit jouer pour gagner, en supposant donc qu'il gagne toujours ; c'est faux quand $n$ est impair, où c'est Martin qui a une stratégie gagnante. L'énoncé a été corrigé en conséquence."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Savinien et Martin jouent sur un plateau carré de $n \times n$ cases. Toutes les cases sont blanches, sauf celle du coin en bas à gauche, qui est noire et sur laquelle se trouve une tour.

Chacun à son tour, en commençant par Savinien, déplace la tour sur une case **blanche** située sur la même ligne ou sur la même colonne qu'elle (la tour a le droit de survoler les cases déjà noircies), puis noircit la case d'arrivée.

Le joueur qui ne peut plus jouer a perdu.

Pour quelles valeurs de $n$ Savinien a-t-il une stratégie gagnante ? Quel premier coup doit-il jouer ?

## Hints

1. Essaie d'abord sur un tout petit plateau, $2 \times 2$ puis $3 \times 3$. Qui gagne ?
2. Dans ce genre de jeu, une bonne idée est de découper le plateau en **paires de cases**, chaque paire étant formée de deux cases sur une même ligne ou sur une même colonne. À quoi cela peut-il servir ?
3. Si le joueur amène la tour sur une case, et que son adversaire répond toujours en l'amenant sur la case jumelle, qui se retrouve bloqué ?
4. Pour que cette stratégie marche, il faut que la case jumelle soit toujours encore blanche. Pourquoi est-ce automatique ?
5. Quand $n$ est pair, on peut apparier **toutes** les cases. Quand $n$ est impair, il y a un nombre impair de cases : on peut apparier toutes les cases **sauf une**, et il faut choisir laquelle.

## Solution

Appelons $(i, j)$ la case de la ligne $i$ et de la colonne $j$, la tour partant de $(1,1)$.

L'idée est la même dans les deux cas : **découper les cases en paires**, chaque paire étant formée de deux cases situées sur une même ligne ou sur une même colonne. Passer d'une case à sa jumelle est alors toujours un déplacement de tour autorisé.

**Pourquoi un appariement donne une stratégie.**

Supposons qu'un joueur applique la règle : « je réponds toujours en amenant la tour sur la case jumelle de celle où l'adversaire vient de la poser ». Ce joueur peut toujours jouer. En effet, juste avant que l'adversaire ne joue, les cases noires forment exactement une réunion de paires complètes. Donc quand l'adversaire noircit une case $c$, la jumelle de $c$ est encore blanche : sinon $c$ aurait déjà été noircie en même temps qu'elle. Le joueur qui suit l'appariement a donc toujours un coup, et c'est donc l'autre qui finira par être bloqué.

**Cas $n$ pair : Savinien gagne.**

Le nombre de colonnes est pair, donc on peut, dans chaque ligne, apparier les cases deux par deux de gauche à droite :

$$(i,1) \text{ avec } (i,2), \qquad (i,3) \text{ avec } (i,4), \qquad \ldots, \qquad (i,n-1) \text{ avec } (i,n).$$

Toutes les cases du plateau sont ainsi appariées, y compris la case de départ $(1,1)$, dont la jumelle est $(1,2)$.

Savinien joue son premier coup sur $(1,2)$, c'est-à-dire **sur la case immédiatement à droite du coin de départ**. Après ce coup, les cases noires sont exactement la paire $\{(1,1), (1,2)\}$. Ensuite il applique la stratégie des jumelles. D'après ce qui précède, il a toujours un coup à jouer, donc c'est Martin qui est bloqué le premier : Savinien gagne.

**Cas $n$ impair : c'est Martin qui gagne.**

Cette fois le plateau a $n^2$ cases, un nombre impair : on ne peut pas tout apparier. On va apparier toutes les cases **sauf la case de départ** $(1,1)$.

- Dans la ligne $1$, il reste $n-1$ cases, un nombre pair : on les apparie deux par deux,
  $$(1,2) \text{ avec } (1,3), \qquad (1,4) \text{ avec } (1,5), \qquad \ldots, \qquad (1,n-1) \text{ avec } (1,n).$$
- Dans chaque ligne $i \geqslant 2$, on apparie de la même façon les cases des colonnes $2$ à $n$ :
  $$(i,2) \text{ avec } (i,3), \qquad \ldots, \qquad (i,n-1) \text{ avec } (i,n).$$
  Il reste alors une case non appariée par ligne, la case $(i,1)$.
- Ces cases restantes sont $(2,1), (3,1), \ldots, (n,1)$ : elles sont toutes dans la colonne $1$, et il y en a $n-1$, un nombre pair. On les apparie deux par deux dans cette colonne :
  $$(2,1) \text{ avec } (3,1), \qquad (4,1) \text{ avec } (5,1), \qquad \ldots, \qquad (n-1,1) \text{ avec } (n,1).$$

Toutes les cases sauf $(1,1)$ sont appariées, et chaque paire est bien formée de deux cases d'une même ligne ou d'une même colonne.

Maintenant c'est **Martin** qui applique la stratégie des jumelles. Au moment où Martin doit jouer, la seule case noire hors des paires complètes est $(1,1)$, où la tour ne se trouve plus. Le raisonnement ci-dessus s'applique : Martin a toujours un coup, donc Savinien est bloqué le premier. Martin gagne.

**Conclusion.**

$$\boxed{\ \text{Savinien gagne exactement quand } n \text{ est pair, en jouant d'abord sur la case } (1,2).\ }$$

Quand $n$ est impair, c'est Martin qui gagne, quel que soit le premier coup de Savinien.

## Going further

Le premier coup gagnant n'est pas unique : n'importe quel appariement de toutes les cases par lignes ou par colonnes fournit une stratégie, et donc un premier coup. Par exemple, pour $n$ pair, on peut aussi apparier les cases deux par deux dans chaque **colonne**, et Savinien joue alors sur $(2,1)$.
