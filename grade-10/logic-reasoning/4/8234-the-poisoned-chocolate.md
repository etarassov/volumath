---
id: "8234"
title: "Le carré de chocolat empoisonné"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [jeu, strategie-gagnante, symetrie, vol-de-strategie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Stratégie des jeux » (Félix Breton, Andrei Barbu), exercices 3 et 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Alice et Bob ont devant eux une tablette de chocolat rectangulaire, quadrillée en petits carrés. Le carré du **coin en bas à gauche** est empoisonné.

Chacun à son tour, en commençant par Alice, un joueur choisit un carré encore présent et mange **tous** les carrés situés à la fois au moins aussi haut et au moins aussi à droite que celui-là (en particulier le carré choisi lui-même).

Le joueur qui est obligé de manger le carré empoisonné a perdu.

1. Sur une tablette de $2$ lignes et $n$ colonnes, quel joueur a une stratégie gagnante ? Décrire la stratégie.
2. Même question sur une tablette carrée $n \times n$, avec $n \ge 2$.
3. Sur une tablette rectangulaire quelconque (avec au moins deux carrés), montrer qu'**Alice** a toujours une stratégie gagnante, sans chercher à la décrire.

## Hints

1. Pour la question 1, commence par jouer quelques parties sur une tablette $2 \times 4$. Quelles formes peut prendre la tablette au cours de la partie ?
2. Une tablette $2 \times n$ entamée ressemble toujours à un « escalier » : une rangée du bas de longueur $b$ et une rangée du haut de longueur $t$, avec $t \le b$. Quelle relation entre $b$ et $t$ Alice a-t-elle intérêt à laisser à Bob ?
3. Pour la question 2, cherche un premier coup qui laisse à Bob une figure formée de **deux bras identiques**. Une fois cela fait, la stratégie miroir s'impose.
4. Pour la question 3, on ne demande pas la stratégie, seulement son existence. C'est le signe qu'il faut raisonner **par l'absurde**.
5. Suppose que ce soit Bob qui ait une stratégie gagnante, et regarde ce qui se passe si Alice mange seulement le carré du coin en haut à droite.
6. Remarque décisive : tout coup, quel qu'il soit, fait disparaître le carré du coin en haut à droite.

## Solution

**Question 1 : la tablette $2 \times n$. Alice gagne.**

Au cours de la partie, la tablette a toujours la forme d'un escalier à deux marches : une rangée du bas de $b$ carrés (les colonnes $1$ à $b$) et une rangée du haut de $t$ carrés (les colonnes $1$ à $t$), avec $t \le b$. Le carré empoisonné est le premier de la rangée du bas.

*Le premier coup d'Alice.* Elle mange le carré du coin en haut à droite, c'est-à-dire uniquement celui-là. La position devient $(b, t) = (n, n-1)$.

*Sa stratégie ensuite.* Elle laisse toujours à Bob une position vérifiant

$$t = b - 1 .$$

Vérifions qu'elle peut la rétablir après n'importe quel coup de Bob, à partir d'une position $(k, k-1)$.

- *Bob mange dans la rangée du haut*, en colonne $j$ (avec $1 \le j \le k-1$). Il enlève les cases du haut à partir de la colonne $j$, ce qui laisse $(k,\ j-1)$. Alice mange alors le carré du **bas** en colonne $j+1$ : la rangée du bas tombe à $j$, et la position devient $(j,\ j-1)$. ✓
- *Bob mange dans la rangée du bas*, en colonne $j$ (avec $2 \le j \le k$ ; $j = 1$ serait le carré empoisonné, il perdrait tout de suite). Manger ce carré emporte aussi tout ce qui est au-dessus et à droite, donc la position devient $(j-1,\ j-1)$. Alice mange alors le carré du **haut** en colonne $j-1$ : la position devient $(j-1,\ j-2)$. ✓

*Conclusion.* Après chaque coup d'Alice, la position est du type $(k, k-1)$ avec $k$ qui diminue strictement. On finit à $(1, 0)$ : il ne reste que le carré empoisonné, et c'est à Bob de jouer.

$$\text{Sur } 2 \times n, \textbf{ Alice gagne.}$$

**Question 2 : la tablette carrée $n \times n$. Alice gagne aussi.**

*Son premier coup.* Elle mange le carré situé juste au-dessus et juste à droite du carré empoisonné, c'est-à-dire celui de la $2^{\text{e}}$ ligne et de la $2^{\text{e}}$ colonne. Cela emporte tout le bloc carré $(n-1) \times (n-1)$ en haut à droite.

Il reste une figure en forme de **L** : la rangée du bas ($n$ carrés) et la colonne de gauche ($n$ carrés), qui se rencontrent sur le carré empoisonné. Les deux bras du L ont la même longueur : $n-1$ carrés chacun, en plus du carré empoisonné.

*Sa stratégie ensuite.* Chaque coup ultérieur ne peut entamer qu'un seul des deux bras (un carré du bras horizontal n'a rien au-dessus de lui, et réciproquement), et il le raccourcit d'un certain nombre de carrés. Alice répond en raccourcissant l'**autre** bras d'exactement autant.

Après chaque coup d'Alice, les deux bras sont donc de nouveau de même longueur. Elle n'est jamais bloquée, et c'est Bob qui finit par se retrouver devant le seul carré empoisonné.

$$\text{Sur } n \times n, \textbf{ Alice gagne.}$$

**Question 3 : n'importe quel rectangle. Alice gagne.**

On raisonne par l'absurde, avec la technique dite du **vol de stratégie**.

*Le jeu se termine, et il n'y a pas de match nul.* Chaque coup enlève au moins un carré, donc la partie a au plus autant de coups qu'il y a de carrés. Elle se termine forcément, et quand elle se termine, quelqu'un a mangé le carré empoisonné : l'un des deux joueurs perd. Il n'y a donc pas de partie nulle, et l'un des deux joueurs a forcément une stratégie gagnante.

*Supposons que ce soit Bob.* Imaginons qu'Alice commence par manger uniquement le carré du coin **en haut à droite**. Bob répond, avec sa stratégie gagnante, par un certain coup ; notons $P$ la position obtenue après ces deux coups.

*La remarque décisive.* Tout coup, quel qu'il soit, fait disparaître le carré du coin en haut à droite : c'est le carré le plus haut et le plus à droite de tous, donc il est mangé dès qu'on mange quoi que ce soit. Par conséquent, le coup de Bob, joué **directement sur la tablette entière**, aurait donné exactement la même position $P$.

*La contradiction.* Alice aurait donc pu atteindre $P$ dès son premier coup, et ensuite jouer la stratégie de Bob : elle gagnerait. Mais on a supposé que Bob gagnait toujours. C'est absurde.

Donc Bob n'a pas de stratégie gagnante, et comme l'un des deux en a une :

$$\boxed{\text{Alice a toujours une stratégie gagnante, quelle que soit la forme du rectangle.}}$$

**Remarque.** La question 3 est frustrante et c'est ce qui en fait tout l'intérêt : on démontre qu'une stratégie existe sans en connaître une seule. Pour un rectangle $3 \times 5$, par exemple, personne ne saurait la décrire de tête. Le vol de stratégie donne une information, pas une recette.

## Going further

Le même argument de vol de stratégie s'applique à d'autres jeux où « jouer un coup de plus ne peut pas nuire » : le morpion, le jeu de Hex, le Gomoku. Montrer que dans chacun de ces jeux, le second joueur ne peut pas avoir de stratégie gagnante.
