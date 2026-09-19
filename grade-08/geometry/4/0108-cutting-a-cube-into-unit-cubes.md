---
id: "0108"
title: "Découper un cube en petits cubes"
grade: 8
theme: geometry
difficulty: 4
duration_min: 30
tags: [cube, espace, decoupage, minimum, construction]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 3, задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

On dispose d'un cube de $3$ sur $3$ sur $3$, en bois tendre. On veut le découper en $27$ petits cubes de $1$ sur $1$ sur $1$.

Un **coup de couteau** est un coup droit : la lame est parfaitement plate et traverse d'un seul geste tout ce qui se trouve sur son passage. Entre deux coups, on a le droit de déplacer les morceaux obtenus et de les reposer comme on veut.

1. Quel est le nombre minimal de coups de couteau nécessaires ?
2. Même question pour un cube de $4$ sur $4$ sur $4$, que l'on veut découper en $64$ petits cubes de $1$ sur $1$ sur $1$.

Dans chaque cas, il faut donner une façon de faire **et** expliquer pourquoi on ne peut pas faire mieux.

## Hints

1. Pour la question 1, trouve d'abord une façon de faire. Combien de coups faut-il dans chaque direction si l'on ne déplace jamais rien ?
2. Pour montrer qu'on ne peut pas faire mieux, intéresse-toi au petit cube situé tout au centre du grand cube. Combien a-t-il de faces ? Ces faces étaient-elles visibles avant le découpage ?
3. Chacune des faces du petit cube central a donc été créée par un coup de couteau. Un seul coup, qui est parfaitement plat, peut-il créer deux faces de ce petit cube à la fois ?
4. Pour la question 2, six coups suffisent encore, mais il faut déplacer les morceaux. Commence par couper le grand cube en deux, puis pose les deux moitiés côte à côte : un seul coup peut alors les traverser toutes les deux.

## Solution

### 1. Le cube $3 \times 3 \times 3$

**Une façon de faire en $6$ coups.**

Sans rien déplacer : deux coups parallèles à une face découpent le cube en trois tranches d'épaisseur $1$. On recommence dans la deuxième direction : deux coups. Puis dans la troisième : deux coups. Au total

$$2 + 2 + 2 = 6 \text{ coups}$$

et l'on obtient bien les $27$ petits cubes.

**Pourquoi on ne peut pas faire mieux : on regarde le petit cube du centre.**

Parmi les $27$ petits cubes, il y en a un qui est tout au centre : aucune de ses faces n'était visible sur la surface du grand cube au départ. Il est complètement caché à l'intérieur.

Ce petit cube a $6$ faces. Comme aucune de ces faces n'existait au départ, **chacune des $6$ a dû être créée par un coup de couteau**.

Et maintenant l'argument décisif : un coup de couteau est parfaitement plat. Les $6$ faces d'un cube sont portées par $6$ plans différents (deux faces opposées sont parallèles mais pas confondues, deux faces voisines ne sont pas dans le même plan). Un coup plat ne peut donc contenir qu'**une seule** de ces $6$ faces.

Chaque coup de couteau crée donc au plus une face du petit cube central. Comme il faut créer $6$ faces, il faut au moins $6$ coups.

**Réponse : $6$ coups, et pas moins.**

### 2. Le cube $4 \times 4 \times 4$

**Pourquoi il en faut au moins $6$.**

Exactement le même raisonnement. Dans un cube $4 \times 4 \times 4$, il y a des petits cubes entièrement cachés à l'intérieur (il y en a même $8$). Prenons-en un : ses $6$ faces ont toutes été créées par des coups, et chaque coup en crée au plus une. Il faut donc au moins $6$ coups.

**Six coups suffisent, à condition de déplacer les morceaux.**

Attention : sans déplacer les morceaux, il faudrait $3$ coups par direction, soit $9$ coups. C'est ici que le droit de déplacer les morceaux sert.

Travaillons d'abord une seule direction, disons la hauteur. Il faut obtenir $4$ tranches d'épaisseur $1$.

- **Premier coup.** On coupe le cube en deux à mi-hauteur. On obtient deux blocs de $4 \times 4 \times 2$.
- **Deuxième coup.** On pose les deux blocs l'un à côté de l'autre, de façon à former un seul bloc de $8 \times 4 \times 2$, l'épaisseur $2$ étant toujours dans le sens de la hauteur. Un seul coup à mi-hauteur traverse les deux blocs en même temps, et donne quatre blocs de $4 \times 4 \times 1$.

En $2$ coups, on a donc obtenu les $4$ tranches d'épaisseur $1$ dans cette direction.

On remet ensuite les morceaux ensemble pour reformer le cube de départ, et on recommence la même manœuvre dans la deuxième direction ($2$ coups), puis dans la troisième ($2$ coups).

$$2 + 2 + 2 = 6 \text{ coups}$$

**Réponse : $6$ coups, et pas moins.**

**Conclusion.** Il faut $6$ coups de couteau dans les deux cas. Pour le cube $3 \times 3 \times 3$ on n'a pas besoin de déplacer les morceaux ; pour le cube $4 \times 4 \times 4$, c'est indispensable.

## Going further

1. Combien de coups te suffisent pour découper un cube $5 \times 5 \times 5$ en $125$ petits cubes ? Essaie de descendre le plus bas possible.
2. Montrer qu'avec $k$ coups de couteau on ne peut jamais obtenir plus de $2^k$ morceaux. Quelle information cela donne-t-il sur le cube $4 \times 4 \times 4$ ?
3. Version plate. Un carré de papier de $3$ sur $3$ doit être découpé en $9$ petits carrés, avec des coups de ciseaux droits, en ayant le droit de superposer les morceaux entre deux coups. Combien de coups au minimum ?
