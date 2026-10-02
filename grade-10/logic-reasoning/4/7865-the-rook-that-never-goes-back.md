---
id: "7865"
title: "La tour qui ne revient jamais sur ses pas"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie, parite, appariement, echiquier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 88 (résolu par Nathanaël Boutillon, Pablo Destic et indépendamment Julien Vanel)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Hyacinthe et Hippolyte jouent sur un échiquier rectangulaire de $m$ lignes et $n$ colonnes. Au
départ, une tour est posée sur une case $c$ de l'échiquier.

À tour de rôle, chacun déplace la tour : comme aux échecs, elle avance d'autant de cases qu'on veut,
le long de sa ligne ou le long de sa colonne. Toutes les cases où la tour s'est arrêtée, y compris
la case de départ $c$, sont considérées comme **brûlées**. On perd dès qu'on est obligé de poser la
tour sur une case brûlée.

Hyacinthe commence. Lequel des deux joueurs peut être sûr de gagner ?

## Hints

1. Remarque d'abord que la tour peut sauter aussi loin qu'elle veut. Deux cases quelconques d'une
   même ligne sont donc à un seul coup l'une de l'autre, et de même pour deux cases d'une même
   colonne.
2. La partie ne peut pas durer éternellement : à chaque coup une case de plus est brûlée, et il n'y
   en a que $m \times n$. Il y a donc forcément un perdant.
3. Essaie un tout petit plateau, $2 \times 2$, puis $1 \times 3$, puis $3 \times 3$. Qui gagne ?
   Compare avec la parité de $m \times n$.
4. La bonne idée est de **regrouper les cases deux par deux**, chaque paire étant formée de deux
   cases d'une même ligne ou d'une même colonne. Un joueur répond alors toujours en allant sur la
   case jumelle de celle où se trouve la tour.
5. Si $m \times n$ est pair, on peut apparier **toutes** les cases. Si $m \times n$ est impair, il
   reste forcément une case seule : arrange-toi pour que ce soit exactement la case de départ $c$.

## Solution

Appelons $J_1$ le joueur qui commence (Hyacinthe) et $J_2$ l'autre (Hippolyte).

**La réponse :** $J_1$ gagne si $m \times n$ est pair, et $J_2$ gagne si $m \times n$ est impair.

### L'outil : apparier les cases

Un point essentiel : la tour se déplace d'un nombre quelconque de cases. Donc **deux cases d'une
même ligne sont toujours à un coup l'une de l'autre**, quelle que soit leur distance, et de même
pour deux cases d'une même colonne.

Supposons qu'on ait réussi à regrouper des cases deux par deux, chaque paire étant formée de deux
cases partageant une ligne ou une colonne. On dira que les deux cases d'une paire sont *jumelles*.
La stratégie du jumeau consiste, pour un joueur, à **toujours déplacer la tour vers la case jumelle
de celle où elle se trouve**.

Pourquoi cette stratégie protège-t-elle celui qui l'emploie ? Parce qu'elle maintient la propriété
suivante :

> après chacun de ses coups, les cases brûlées forment exactement une réunion de paires complètes.

En effet, il brûle toujours la jumelle d'une case qui vient d'être brûlée. Et alors l'adversaire ne
peut jamais le piéger : quand l'adversaire pose la tour sur une case $u$, cette case n'était pas
brûlée, donc sa jumelle ne l'était pas non plus (les deux sont toujours brûlées ensemble). Le coup
de réponse est donc toujours disponible.

Comme la partie est finie — il y a $m \times n$ cases et une de plus est brûlée à chaque coup — le
joueur qui applique la stratégie du jumeau ne perd jamais, donc c'est l'autre qui perd.

### Cas 1 : $m \times n$ est pair

Alors $m$ est pair, ou $n$ est pair. Supposons par exemple que $n$, le nombre de colonnes, soit
pair (si c'est $m$ qui est pair, on échange les rôles des lignes et des colonnes).

Chaque ligne contient alors $n$ cases, en nombre pair : on les regroupe deux par deux à l'intérieur
de cette ligne. En faisant cela dans chaque ligne, **toutes** les cases de l'échiquier sont
appariées, et deux jumelles sont toujours sur une même ligne.

$J_1$ joue la stratégie du jumeau. Son premier coup consiste à envoyer la tour de $c$ vers la
jumelle de $c$, ce qui est bien un coup légal. Il ne perdra jamais, donc $J_2$ perd.

**Si $m \times n$ est pair, Hyacinthe gagne.**

### Cas 2 : $m \times n$ est impair

Alors $m$ et $n$ sont tous les deux impairs. Cette fois le nombre de cases est impair, donc on ne
peut pas toutes les apparier. Mais on peut apparier toutes les cases **sauf la case de départ $c$**,
ce qui est exactement ce qu'il faut. Notons $L$ la ligne où se trouve $c$.

- **Les lignes autres que $L$.** Il y en a $m - 1$, c'est-à-dire un nombre pair : on les regroupe
  deux par deux, par exemple la première avec la deuxième, la troisième avec la quatrième, et ainsi
  de suite. Puis, pour deux lignes regroupées, on apparie les cases **colonne par colonne** : la
  case de la colonne $k$ de l'une avec la case de la colonne $k$ de l'autre. Deux jumelles sont
  alors sur une même colonne.
- **La ligne $L$, privée de $c$.** Il y reste $n - 1$ cases, c'est-à-dire un nombre pair : on les
  apparie entre elles, dans l'ordre. Deux jumelles sont ici sur une même ligne.

Toutes les cases sauf $c$ sont donc appariées. C'est maintenant $J_2$ qui applique la stratégie du
jumeau. $J_1$ commence et pose la tour sur une case $u$ différente de $c$, donc appariée ; $J_2$
répond par la jumelle de $u$, et ainsi de suite. La case $c$, qui n'a pas de jumelle, est brûlée dès
le départ et ne gêne jamais $J_2$.

**Si $m \times n$ est impair, Hippolyte gagne.**

### Conclusion

Hyacinthe, qui commence, gagne exactement lorsque $m \times n$ est pair. Dans le cas contraire,
c'est-à-dire lorsque $m$ et $n$ sont tous les deux impairs, c'est Hippolyte qui gagne. Remarquons
que la position de la case de départ $c$ n'a aucune influence sur le résultat.

## Going further

L'appariement est l'une des deux ou trois idées qui reviennent sans cesse dans les jeux à deux
joueurs. Le principe est toujours le même : on découpe à l'avance le terrain en paires, et l'un des
joueurs se contente de répondre dans la paire de son adversaire. Il ne réfléchit alors plus du tout
pendant la partie, et il gagne quand même.

Sur un échiquier classique $8 \times 8$, le produit $8 \times 8 = 64$ est pair : Hyacinthe gagne.
Sur un plateau $5 \times 5$, le produit vaut $25$, impair : Hippolyte gagne.

Que se passe-t-il si l'on remplace la tour par un roi, qui ne se déplace que d'une case à la fois, y
compris en diagonale ? L'idée de l'appariement fonctionne encore, mais il faut cette fois que les
deux cases d'une paire soient **voisines**, ce qui rend l'appariement plus difficile à construire.
C'est un joli exercice de prolongement.
