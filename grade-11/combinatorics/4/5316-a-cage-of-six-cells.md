---
id: "5316"
title: "Une cage de six cases peut-elle toucher quatre lignes et quatre colonnes ?"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [quadrillage, connexite, comptage, polyomino, kenken]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), KenKen, par Tom Davis"
  reference: "kenken.pdf, section 7, remarque finale de l'exercice 10 : « it is impossible to make a six-square cage that lies on four rows and four columns », affirmée sans démonstration"
  url: "https://mathcircles.org/activity/kenken/"
  original_language: "en"
  local_copy: "sources/originals/namc/kenken.pdf"
---

## Statement

Dans une grille quadrillée, on appelle **cage** un ensemble de cases qui se tient d'un seul morceau : on doit pouvoir aller de n'importe quelle case de la cage à n'importe quelle autre en passant de case en case, deux cases successives ayant toujours un côté commun.

Une cage « touche » une ligne si elle contient au moins une case de cette ligne, et de même pour une colonne.

1. Une cage de $6$ cases peut-elle toucher $4$ lignes différentes **et** $4$ colonnes différentes ?
2. Démontrer le résultat général : si une cage de $n$ cases touche $\ell$ lignes et $c$ colonnes, alors
$$n \geqslant \ell + c - 1 .$$
3. Montrer que cette inégalité ne peut pas être améliorée : pour tout $\ell$ et tout $c$, construire une cage de $\ell + c - 1$ cases qui touche $\ell$ lignes et $c$ colonnes.

*Cette question vient du jeu de KenKen, où les cages sont les paquets de cases portant un objectif. Elle sert à écarter d'emblée certains groupes de nombres : un groupe contenant quatre fois le même nombre exigerait quatre lignes et quatre colonnes distinctes.*

## Hints

1. Faire des dessins. Essayer de fabriquer une cage de $6$ cases touchant $4$ lignes et $4$ colonnes, et regarder ce qui coince.
2. Montrer d'abord que les lignes touchées par une cage se suivent : il n'y a pas de ligne « sautée ». Même chose pour les colonnes.
3. Pour chaque ligne touchée, noter l'ensemble des colonnes occupées par les cases de la cage situées dans cette ligne. Que peut-on dire de deux lignes voisines ?
4. Deux lignes voisines partagent forcément une colonne : sinon la cage serait coupée en deux morceaux. En déduire que l'ensemble des colonnes touchées a au plus $n - \ell + 1$ éléments.

## Solution

### Réponse à la question 1

**Non.** C'est une conséquence immédiate de l'inégalité de la question 2 : avec $\ell = c = 4$, une telle cage aurait besoin d'au moins $4 + 4 - 1 = 7$ cases.

### Question 2 : la démonstration

**Préliminaire : les lignes touchées se suivent.**

Prenons deux cases de la cage, l'une sur la ligne la plus haute touchée, l'autre sur la ligne la plus basse. Il existe un chemin de cases de la cage reliant l'une à l'autre. À chaque pas du chemin, le numéro de ligne change de $1$ ou ne change pas. Un numéro de ligne ne peut donc pas être sauté : toutes les lignes situées entre la plus haute et la plus basse sont touchées.

Notons donc $L_1, L_2, \ldots, L_\ell$ les lignes touchées, dans l'ordre, deux lignes consécutives de cette liste étant voisines dans la grille.

**Les ensembles de colonnes.**

Pour chaque $i$, notons $C_i$ l'ensemble des colonnes occupées par les cases de la cage situées sur la ligne $L_i$, et $n_i$ le nombre de ces cases. Comme la ligne $L_i$ est touchée, $n_i \geqslant 1$, et bien sûr
$$|C_i| = n_i \qquad \text{et} \qquad n_1 + n_2 + \cdots + n_\ell = n .$$

**Deux lignes voisines partagent une colonne.**

Montrons que $C_i \cap C_{i+1} \neq \varnothing$ pour tout $i$.

Coupons la cage en deux paquets : le paquet $A$ des cases situées sur les lignes $L_1, \ldots, L_i$, et le paquet $B$ des cases situées sur $L_{i+1}, \ldots, L_\ell$. Les deux paquets sont non vides. Comme la cage est d'un seul morceau, il existe un chemin allant d'une case de $A$ à une case de $B$ ; ce chemin passe forcément, à un moment, d'une case de la ligne $L_i$ à une case de la ligne $L_{i+1}$. Ces deux cases ont un côté commun, donc elles sont dans la **même colonne**. Cette colonne appartient à la fois à $C_i$ et à $C_{i+1}$.

**Le comptage.**

L'ensemble des colonnes touchées par la cage est $C_1 \cup C_2 \cup \cdots \cup C_\ell$, qui compte $c$ éléments. Ajoutons les ensembles un par un : quand on ajoute $C_{i+1}$, au moins un de ses éléments est déjà présent, puisqu'il appartient aussi à $C_i$. Chaque nouvel ensemble apporte donc au plus $|C_{i+1}| - 1$ colonnes nouvelles :

$$c = |C_1 \cup \cdots \cup C_\ell| \leqslant |C_1| + (|C_2| - 1) + \cdots + (|C_\ell| - 1) = n - (\ell - 1) .$$

D'où
$$c \leqslant n - \ell + 1, \qquad \text{c'est-à-dire} \qquad n \geqslant \ell + c - 1 .$$

### Question 3 : l'inégalité est optimale

L'escalier convient. Partons de la case en haut à gauche, descendons de $\ell - 1$ cases en restant dans la même colonne, puis avançons de $c - 1$ cases vers la droite en restant sur la dernière ligne. Cette cage est d'un seul morceau, elle touche exactement $\ell$ lignes et $c$ colonnes, et elle compte
$$\ell + (c - 1) = \ell + c - 1$$
cases.

Par exemple, pour $\ell = c = 4$, la cage en forme de « L » composée de $4$ cases dans une colonne puis de $3$ cases vers la droite en compte $7$ : c'est le minimum, et $6$ ne suffit pas.

### Pourquoi cela intéresse le joueur de KenKen

Dans une grille $12 \times 12$, une cage de $6$ cases d'objectif $6480\times$ pourrait a priori contenir le groupe $\{1, 5, 6, 6, 6, 6\}$, dont le produit vaut bien $6480$. Mais les quatre $6$ devraient occuper quatre lignes différentes et quatre colonnes différentes, puisque deux nombres égaux ne peuvent être ni sur la même ligne ni sur la même colonne. Il faudrait donc au moins $7$ cases : **ce groupe est impossible**, et l'on n'a même pas besoin de regarder la forme exacte de la cage. Le même argument élimine $\{3, 3, 3, 3, 8, 10\}$.

## Going further

1. Combien de cages différentes de $4$ cases existe-t-il, à déplacement près ? (Ce sont les tétrominos du jeu de Tetris ; attention à décider si l'on distingue une forme de son image dans un miroir.)
2. Si une cage de $n$ cases touche $\ell$ lignes et $c$ colonnes, peut-on aussi majorer $n$ ?
3. Dans une grille $6 \times 6$, quelle est la plus grande somme qu'une cage de quatre cases puisse atteindre ? Et la plus grande pour une cage de trois cases en « L » ?
