---
id: "12424"
title: "Deux sommets rouges dans chaque petit carré"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [coloriage, quadrillage, denombrement, puissances, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2018"
  reference: "2018-08_pofm-2017-2018-test-mai.pdf, exercice commun aux groupes A et B, exercice 4 ; corrigé 2018-08_pofm-2017-2018-test-mai-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/08/pofm-2017-2018-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-08_pofm-2017-2018-test-mai.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Un grand carré de côté $n$ est découpé en $n^2$ petits carrés de
côté $1$. On veut colorier chacun des $(n + 1)^2$ sommets des petits carrés en rouge ou en bleu, de
telle sorte que **chaque petit carré ait exactement $2$ sommets rouges**.

Combien y a-t-il de coloriages possibles ?

## Hints

1. Fais d'abord le cas $n = 1$, puis le cas $n = 2$. Pour $n = 2$, commence par colorier la rangée
   du bas.
2. Colorie les sommets rangée par rangée, de bas en haut. Une fois une rangée coloriée, combien de
   choix reste-t-il pour la rangée suivante ?
3. Si la rangée du bas contient deux sommets voisins de la même couleur, regarde le petit carré
   juste au-dessus d'eux. Que sont forcés d'être les deux sommets du haut ?
4. Distingue deux sortes de rangées : celles où les couleurs alternent (rouge, bleu, rouge, bleu,
   ...) et les autres.

## Solution

Les sommets sont rangés en $n + 1$ rangées horizontales de $n + 1$ sommets chacune. On colorie
la rangée du bas, puis on remonte rangée par rangée. Une rangée est dite **alternée** si ses
couleurs alternent : rouge, bleu, rouge, bleu, ... ou bleu, rouge, bleu, rouge, ... Il y a
exactement $2$ rangées alternées.

Le **complément** d'une rangée est la rangée obtenue en changeant toutes les couleurs.

### Étape 1 : le complément convient toujours

Si une rangée est surmontée de son complément, chaque petit carré entre les deux a, en bas, deux
sommets, et en haut, les deux mêmes sommets avec les couleurs changées. Sur ces quatre sommets, il
y a donc autant de rouges que de bleus, soit exactement $2$ rouges. **Au-dessus de n'importe quelle
rangée, on peut toujours mettre son complément.**

### Étape 2 : au-dessus d'une rangée non alternée, seul le complément convient

Supposons que la rangée du dessous contienne deux sommets voisins de la même couleur, par exemple
deux rouges. Le petit carré au-dessus d'eux a déjà ses $2$ sommets rouges : ses deux sommets du haut
sont forcément bleus, c'est-à-dire de la couleur contraire. De même avec deux bleus voisins : les
deux sommets du haut sont forcés d'être rouges.

Ensuite, cela se propage de proche en proche. Supposons qu'un sommet du haut soit de la couleur
contraire de celui qui est juste en dessous. Regardons le petit carré voisin, qui contient ces deux
sommets. Ces deux sommets comptent pour exactement $1$ rouge. Les deux autres sommets de ce carré
doivent donc compter, eux aussi, pour exactement $1$ rouge : celui du haut est de la couleur
contraire de celui du bas.

En partant de la paire de voisins de même couleur et en allant vers la droite puis vers la
gauche, on obtient que **toute la rangée du dessus est le complément de celle du dessous**. Il n'y a
qu'un seul choix.

Remarquons que le complément d'une rangée non alternée n'est pas non plus alterné : les deux voisins
de même couleur restent de même couleur.

### Étape 3 : au-dessus d'une rangée alternée, il y a deux choix

Si la rangée du dessous est alternée, chaque petit carré a déjà exactement $1$ sommet rouge en bas.
Il faut donc exactement $1$ sommet rouge parmi ses deux sommets du haut : deux sommets voisins de la
rangée du haut doivent être de couleurs différentes. La rangée du haut est donc alternée, et
réciproquement, chacune des deux rangées alternées convient. **Il y a exactement $2$ choix**, et la
nouvelle rangée est encore alternée.

### Étape 4 : le décompte

La rangée du bas a $n + 1$ sommets, donc $2^{n+1}$ coloriages possibles.

- **Si la rangée du bas n'est pas alternée** ($2^{n+1} - 2$ possibilités), chaque rangée suivante est
  le complément de la précédente, sans aucun choix (étape 2). Cela donne $2^{n+1} - 2$ coloriages.
- **Si la rangée du bas est alternée** ($2$ possibilités), chacune des $n$ rangées suivantes est
  alternée et se choisit de $2$ façons (étape 3). Cela donne $2 \times 2^n = 2^{n+1}$ coloriages.

Au total, il y a
$$\left(2^{n+1} - 2\right) + 2^{n+1} = 2^{n+2} - 2$$
coloriages.

Vérification pour $n = 1$ : on choisit les $2$ sommets rouges parmi les $4$ sommets du carré, ce qui
fait $6$ façons, et $2^3 - 2 = 6$.

**Il y a $2^{n+2} - 2$ coloriages possibles.**
