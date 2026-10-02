---
id: "5309"
title: "Neuf cartes, une somme de 15"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, carre-magique, morpion, strategie-gagnante, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 12 ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Neuf cartes numérotées de $1$ à $9$ sont posées sur la table, faces visibles.

Alice et Bob prennent chacun à leur tour une carte, qu'ils gardent devant eux. Alice commence.

Le premier joueur qui possède **trois cartes dont la somme vaut $15$** a gagné. Si, quand les neuf cartes sont prises, aucun des deux n'a trois cartes de somme $15$, la partie est nulle.

1. L'un des deux joueurs possède-t-il une stratégie gagnante ?
2. Chacun peut-il au moins être sûr de ne pas perdre ?

## Hints

1. Commencer par dresser la liste complète des triplets de cartes différentes dont la somme vaut $15$. Les écrire dans l'ordre croissant pour n'en oublier aucun.
2. Il y en a exactement $8$. Compter maintenant, pour chaque carte, dans combien de ces triplets elle apparaît.
3. La carte $5$ apparaît dans $4$ triplets, les cartes $2$, $4$, $6$, $8$ dans $3$, les cartes $1$, $3$, $7$, $9$ dans $2$. Ces nombres $4$, $3$, $2$ ne rappellent-ils pas une grille de morpion, avec son centre, ses coins et ses bords ?
4. Essayer de ranger les neuf cartes dans une grille $3 \times 3$ de façon que les $8$ triplets de somme $15$ soient exactement les $3$ lignes, les $3$ colonnes et les $2$ diagonales.

## Solution

**Réponse : ce jeu est exactement le morpion. Aucun des deux joueurs n'a de stratégie gagnante, et chacun peut être sûr de ne pas perdre : bien joué, le jeu est nul.**

### Étape 1 : les triplets de somme 15

Cherchons tous les triplets de cartes distinctes dont la somme vaut $15$, en les rangeant par leur plus petit élément :

$$\{1,5,9\}, \quad \{1,6,8\}, \quad \{2,4,9\}, \quad \{2,5,8\}, \quad \{2,6,7\}, \quad \{3,4,8\}, \quad \{3,5,7\}, \quad \{4,5,6\}.$$

Il y en a exactement **huit**. (Pour être sûr de ne rien oublier : si le plus petit élément est $1$, les deux autres ont pour somme $14$ et sont plus grands que $1$, ce qui ne laisse que $5+9$ et $6+8$ ; si c'est $2$, les deux autres font $13$, d'où $4+9$, $5+8$, $6+7$ ; si c'est $3$, les deux autres font $12$, d'où $4+8$ et $5+7$ ; si c'est $4$, les deux autres font $11$ avec les deux plus grands que $4$, d'où $5+6$ ; si c'est $5$ ou plus, la somme dépasserait $5+6+7 = 18$.)

### Étape 2 : compter les apparitions

Comptons dans combien de triplets chaque carte apparaît :

- la carte $5$ : dans $4$ triplets ;
- les cartes $2$, $4$, $6$, $8$ : dans $3$ triplets chacune ;
- les cartes $1$, $3$, $7$, $9$ : dans $2$ triplets chacune.

Ces nombres sont exactement ceux d'une grille de morpion : la case du centre appartient à $4$ alignements (une ligne, une colonne, deux diagonales), chaque coin à $3$, chaque bord à $2$. Et il y a $8$ alignements en tout, comme il y a $8$ triplets.

### Étape 3 : le carré magique

Plaçons donc le $5$ au centre. Deux coins opposés sont alignés avec le centre : les triplets contenant $5$ et deux autres cartes « fortes » sont $\{2,5,8\}$ et $\{4,5,6\}$, donc $2$ est en face de $8$, et $4$ en face de $6$. On obtient la grille

$$8 \qquad 1 \qquad 6$$
$$3 \qquad 5 \qquad 7$$
$$4 \qquad 9 \qquad 2$$

où les bords se déduisent des sommes : la première ligne doit faire $15$, donc entre $8$ et $6$ il y a $1$ ; la première colonne donne $3$ entre $8$ et $4$ ; et ainsi de suite.

C'est le fameux **carré magique** d'ordre $3$. Vérifions que ses $8$ alignements sont bien nos $8$ triplets :

- lignes : $8+1+6$, $3+5+7$, $4+9+2$ ;
- colonnes : $8+3+4$, $1+5+9$, $6+7+2$ ;
- diagonales : $8+5+2$, $6+5+4$.

Ce sont exactement les huit triplets de l'étape 1, et il n'y en a pas d'autres.

### Étape 4 : le jeu des cartes est le morpion

Prendre une carte, c'est donc marquer une case de cette grille. Posséder trois cartes de somme $15$, c'est posséder trois cases alignées. **Le jeu d'Alice et Bob est donc, mot pour mot, une partie de morpion sur le carré magique.**

Et là, tout le monde sait ce qui se passe : une partie de morpion entre deux joueurs attentifs se termine par un match nul.

### Étape 5 : personne ne peut forcer la victoire

**Bob n'a pas de stratégie gagnante.** Voici un argument qui ne demande aucun calcul. Supposons que Bob, le second joueur, ait une stratégie gagnante. Alors Alice pourrait la lui **voler** : elle prend d'abord une carte au hasard, puis elle fait comme si elle était le second joueur et applique la stratégie de Bob, en oubliant sa carte supplémentaire. Si cette stratégie lui demande de prendre une carte qu'elle possède déjà, elle en prend une autre au hasard et continue. Posséder une carte de plus ne peut jamais nuire dans ce jeu : si un ensemble de cartes contient un triplet de somme $15$, tout ensemble plus grand le contient aussi. Alice gagnerait donc elle aussi. Or les deux joueurs ne peuvent pas gagner tous les deux. La supposition était absurde : **Bob ne peut pas forcer la victoire.**

**Alice n'a pas de stratégie gagnante non plus.** Il faut ici décrire comment Bob se défend :

- si Alice prend le $5$ (le centre), Bob prend un coin, par exemple le $2$ ;
- si Alice prend une autre carte, Bob prend le $5$ ;
- ensuite, à chaque tour : s'il peut compléter un triplet, il le complète et gagne ; sinon, si Alice menace de compléter un triplet au coup suivant, il prend la carte qui manque à Alice.

Le seul vrai danger pour Bob est la **double menace** : qu'Alice se retrouve avec deux triplets à compléter en même temps, car il ne pourrait en bloquer qu'un. Il lui suffit donc, quand Alice ne menace rien, de repérer la carte qui offrirait à Alice deux menaces d'un coup et de la prendre lui-même ; et s'il y a deux cartes de ce genre, de menacer lui-même pour forcer Alice à répondre.

Voici le piège classique, celui qu'il faut avoir vu une fois. Alice prend $8$, Bob prend le centre $5$, Alice prend $2$ : elle tient les deux coins opposés $8$ et $2$. Si Bob prend maintenant un coin, par exemple $4$, Alice prend $6$ et possède $\{8, 2, 6\}$ : elle menace à la fois $1$ (pour $\{1,6,8\}$) et $7$ (pour $\{2,6,7\}$), deux menaces d'un coup, Bob est perdu. Bob doit donc répondre autrement : il prend un **bord**, par exemple $1$, ce qui lui donne $\{5, 1\}$ et menace le $9$. Alice est obligée de prendre $9$ ; mais alors elle menace $4$ (pour $\{2,4,9\}$), Bob prend $4$ et menace $6$ (pour $\{4,5,6\}$), Alice prend $6$ et menace $7$, Bob prend $7$, Alice prend la dernière carte $3$ et personne n'a gagné.

En examinant de la même façon les quelques départs possibles, on vérifie qu'Alice ne peut jamais créer de double menace contre un Bob qui joue ainsi. C'est une vérification finie et sans difficulté, exactement celle qu'on fait sans y penser quand on joue au morpion.

**Conclusion. Aucun des deux joueurs n'a de stratégie gagnante ; chacun a une stratégie qui lui garantit de ne pas perdre ; entre deux joueurs attentifs, la partie est toujours nulle.**

## Going further

1. On change le but : le premier qui possède trois cartes de somme $15$ a **perdu**. Qui gagne alors ?
2. Chercher tous les carrés magiques $3 \times 3$ formés des nombres $1$ à $9$. Combien y en a-t-il, si l'on compte comme différents ceux qui se déduisent l'un de l'autre par une rotation ou un retournement ?
3. Le même déguisement existe avec des mots : trouver neuf mots tels que le jeu « le premier qui possède trois mots ayant une lettre commune » soit encore une partie de morpion.
