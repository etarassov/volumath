---
id: "7047"
title: "Deux coups par tour aux échecs"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [jeu, raisonnement-par-l-absurde, vol-de-strategie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Combinatoire », TD stratégies, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Alice et Bob jouent aux échecs, avec une règle modifiée : **à chaque tour, on joue deux coups
d'affilée** au lieu d'un seul. Alice a les blancs et commence.

Montrer qu'Alice peut être sûre de **ne pas perdre**.

*(Ne pas perdre veut dire : gagner, ou faire match nul. On ne demande pas de décrire comment
elle doit jouer.)*

## Hints

1. On ne te demande pas de trouver une stratégie. On te demande de montrer que Bob n'en a pas
   de gagnante.
2. Raisonne par l'absurde : suppose que Bob ait une stratégie gagnante, c'est-à-dire une
   méthode qui le fait gagner quoi que fasse Alice.
3. Aux échecs, on peut parfois jouer un coup et le défaire. Alice a-t-elle un moyen de rendre
   la main à Bob sans avoir rien changé sur l'échiquier ?
4. Un cavalier en B1 peut aller en A3, puis revenir en B1. Cela fait exactement deux coups.
5. Après ces deux coups, la position est celle du départ, mais c'est à Bob de jouer. Que
   devient alors le rôle de chacun ?

## Solution

**Reformuler la question.**

Dire qu'Alice est sûre de ne pas perdre, c'est dire que **Bob ne possède pas de stratégie
gagnante**. Montrons cela par l'absurde.

**L'hypothèse absurde.**

Supposons que Bob, le second joueur, possède une stratégie gagnante : une méthode qui lui
assure la victoire, quelle que soit la façon dont Alice joue. Appelons-la $\mathcal S$.

**Alice vole la stratégie.**

Alice joue son premier tour ainsi : elle déplace son cavalier de **B1 en A3**, puis, dans le
même tour (c'est son deuxième coup), elle le **ramène de A3 en B1**.

Ces deux coups sont légaux au premier tour d'une partie d'échecs, et à l'issue de ce tour,
l'échiquier est **exactement dans la position de départ**.

Mais c'est maintenant à Bob de jouer. Autrement dit : la position est la position initiale, et
le joueur qui doit jouer est Bob. Du point de vue du jeu, **Bob est devenu le premier joueur,
et Alice le second.**

Alice peut donc, à partir de là, appliquer elle-même la stratégie $\mathcal S$, celle du
second joueur. Et $\mathcal S$ est gagnante : Alice gagne.

**La contradiction.**

On aboutit à une situation impossible : Bob applique une stratégie qui le fait gagner à coup
sûr, et pourtant Alice gagne. Les deux ne peuvent pas être vrais en même temps.

L'hypothèse de départ est donc fausse : **Bob n'a pas de stratégie gagnante.** Alice peut donc
toujours éviter de perdre. $\blacksquare$

## Going further

Cette façon de faire s'appelle le **vol de stratégie**. Le schéma est toujours le même :

1. On suppose que l'un des joueurs a une stratégie gagnante.
2. On montre que l'autre joueur peut se placer dans sa peau, et donc la lui voler.
3. Les deux joueurs gagneraient : contradiction.

Le vol de stratégie a une limite importante, et il faut la connaître : il prouve qu'un joueur
**n'a pas** de stratégie gagnante, ce qui n'est pas la même chose que de dire que l'autre en
a une. Ici, par exemple, on n'a pas montré qu'Alice gagne : elle pourrait seulement faire
match nul. Et surtout, on n'a **décrit aucune stratégie**. On sait qu'elle existe sans savoir
laquelle.

Dans un jeu qui se termine toujours et où le match nul est impossible, un théorème de Zermelo
garantit que l'un des deux joueurs a une stratégie gagnante. Le vol de stratégie permet alors
de dire **lequel**, sans jamais la décrire.
