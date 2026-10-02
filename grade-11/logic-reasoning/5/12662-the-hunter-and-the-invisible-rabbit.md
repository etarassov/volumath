---
id: "12662"
title: "Le chasseur et le lapin invisible"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeux, strategie-gagnante, coloriage, restes, infini]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 18 mai 2022"
  reference: "2022-07_Enonce-Web-Test-5.pdf, exercice 6 (senior) ; corrigé 2022-06_Corrige-Web-Test-5.pdf. Le corrigé donne 8 × 3ⁿ pour l'écart entre 3 × (−3)ⁿ et 3 × (−3)ⁿ⁺², qui vaut en fait 24 × 3ⁿ = 8 × 3ⁿ⁺¹ ; la conclusion n'en dépend pas. Dans la solution alternative, « la grille de gauche » apparaît deux fois, la seconde fois pour la grille de droite."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-5.pdf"
---

## Statement

Un chasseur et un lapin invisible jouent sur une grille infinie de cases carrées : chaque case a quatre voisines, à gauche, à droite, en haut et en bas.

D'abord, le chasseur colorie chaque case de la grille, en utilisant seulement un nombre fini de couleurs. Le lapin choisit ensuite une case, qui sera son point de départ. Puis il se met à bouger : chaque minute, il annonce au chasseur la couleur de la case où il se trouve, puis il saute sur l'une des quatre cases voisines. Comme le lapin est invisible, le chasseur ne connaît que les couleurs annoncées chaque minute.

Le chasseur gagne si, au bout d'un temps fini,

- il peut identifier avec certitude la case de départ du lapin, ou bien
- le lapin revient sur une case où il s'était déjà trouvé.

Le chasseur a-t-il une stratégie gagnante ?

## Hints

1. Commence par un jeu plus simple, sur une droite : les cases sont numérotées par les entiers relatifs, et chaque minute le lapin avance de $1$, recule de $1$ ou reste sur place. Comment colorier avec trois couleurs pour que le chasseur sache, à chaque minute, comment le lapin a bougé ?
2. Le chasseur connaît alors tous les déplacements, il ne lui manque que le point de départ. Ajoute une quatrième couleur sur quelques cases de repère, de plus en plus espacées, des deux côtés de $0$. Il faut que l'écart entre deux repères voisins suffise à savoir de quels repères il s'agit.
3. Sur la grille, une case $(x, y)$ donne trois nombres : $x$, $y$ et $x + y$. Que deviennent ces trois nombres quand le lapin saute sur une case voisine ? Combien d'entre eux suffisent pour retrouver la case ?
4. Si le lapin ne revient jamais sur une case déjà visitée, il visite une infinité de cases. Montre qu'alors au moins deux des trois nombres prennent une infinité de valeurs.

## Solution

On va montrer que **le chasseur a une stratégie gagnante.**

**Étape 1 : le jeu sur une droite.** Prenons d'abord un marcheur sur la droite des entiers relatifs. On note $u_t$ sa position à la minute $t$, et à chaque minute il avance de $1$, recule de $1$ ou reste sur place : $u_{t+1} - u_t$ vaut $-1$, $0$ ou $1$. On colorie les entiers avec quatre couleurs.

- On note $E$ l'ensemble des **repères** $3 \times (-3)^k$ pour $k \geqslant 0$ :
$$E = \{3, \; -9, \; 27, \; -81, \; 243, \; -729, \; \ldots\}.$$
Ce sont tous des multiples de $3$. Ils reçoivent la couleur « étoile ».
- Un entier qui n'est pas un repère reçoit comme couleur son reste dans la division par $3$ : $0$, $1$ ou $2$.

On va montrer : **si le marcheur prend une infinité de valeurs, alors, au bout d'un temps fini, les couleurs vues suffisent à connaître sa position de départ $u_0$.**

*(1a) Le chasseur connaît chaque déplacement.* La couleur donne toujours le reste de la position dans la division par $3$, puisqu'une étoile signifie le reste $0$. Quand le marcheur avance de $1$, le reste augmente de $1$ (ou passe de $2$ à $0$). Quand il recule de $1$, le reste diminue de $1$ (ou passe de $0$ à $2$). Quand il reste sur place, le reste ne change pas. Ces trois cas se distinguent, donc le chasseur connaît chaque déplacement, et donc, à chaque minute $t$, le nombre $D_t = u_t - u_0$, qui est la somme des déplacements depuis le départ.

*(1b) Le marcheur passe par une infinité de repères.* Comme il avance d'au plus $1$ à chaque minute, le marcheur ne saute aucun entier : s'il passe par $a$ puis par $b$, il passe par tous les entiers compris entre $a$ et $b$. S'il prend une infinité de valeurs, ses valeurs ne restent pas entre deux bornes fixes. Il finit donc par monter au-dessus de n'importe quel entier, ou bien par descendre au-dessous de n'importe quel entier. Dans le premier cas, il passe par tous les repères positifs plus grands que $u_0$, parmi $3$, $27$, $243$, … ; dans le second, par tous les repères négatifs plus petits que $u_0$, parmi $-9$, $-81$, $-729$, …

*(1c) Le premier changement de repère.* Soit $\tau$ la première minute où le marcheur est sur un repère $e$. Soit $\tau'$ la première minute après $\tau$ où il est sur un repère $e'$ **différent** de $e$. Le chasseur repère ces deux minutes : il voit les étoiles, et il sait si $D_{\tau'} \neq D_\tau$. Il connaît aussi l'écart
$$d = e' - e = D_{\tau'} - D_\tau.$$
Entre les minutes $\tau$ et $\tau'$, le marcheur passe par tous les entiers compris entre $e$ et $e'$. S'il y avait un repère strictement entre $e$ et $e'$, le marcheur s'y serait donc trouvé avant la minute $\tau'$, sur un repère différent de $e$, ce qui contredit le choix de $\tau'$. Ainsi $e$ et $e'$ sont deux repères **voisins** dans l'ordre de la droite. Rangés dans l'ordre, les repères sont
$$\cdots < -729 < -81 < -9 < 3 < 27 < 243 < \cdots$$
Les paires de repères voisins sont donc $\{-9, 3\}$, et les paires $\{3 \times (-3)^k, \; 3 \times (-3)^{k+2}\}$ pour $k \geqslant 0$, comme $\{3, 27\}$, $\{-9, -81\}$, $\{27, 243\}$. Voici les écarts possibles :

- de $3$ à $-9$, l'écart vaut $-12$ ; de $-9$ à $3$, il vaut $12$ ;
- de $3 \times (-3)^k$ à $3 \times (-3)^{k+2}$, l'écart vaut $3 \times (-3)^k \times (9 - 1) = 24 \times (-3)^k$, et dans l'autre sens il vaut $-24 \times (-3)^k$.

Les valeurs absolues de ces écarts sont $12$, puis $24 \times 3^k$, c'est-à-dire $24$, $72$, $216$, … : elles sont toutes différentes. Pour une même valeur absolue, les deux sens de parcours donnent deux écarts de signes contraires. **L'écart $d$ suffit donc à savoir de quel repère $e$ le marcheur est parti et sur quel repère $e'$ il est arrivé.** Le chasseur en déduit $u_{\tau'} = e'$, puis la position de départ
$$u_0 = e' - D_{\tau'}.$$
Par exemple, si l'écart vaut $-72 = 24 \times (-3)$, c'est que $k = 1$, et que le marcheur est allé de $-9$ à $-81$.

D'après (1b), les minutes $\tau$ et $\tau'$ existent dès que le marcheur prend une infinité de valeurs. Le résultat annoncé est démontré.

**Étape 2 : trois marcheurs dans la grille.** On repère les cases de la grille par deux coordonnées entières $(x, y)$ : la case de droite de $(x, y)$ est $(x + 1, y)$, celle du haut est $(x, y + 1)$. À une case, on associe les trois nombres
$$x, \qquad y, \qquad w = x + y.$$

- *Chacun bouge comme le marcheur de l'étape 1.* Un saut à droite ajoute $1$ à $x$ et à $w$, et ne change pas $y$. Un saut à gauche retire $1$ à $x$ et à $w$. Un saut vers le haut ajoute $1$ à $y$ et à $w$, et ne change pas $x$. Un saut vers le bas retire $1$ à $y$ et à $w$. À chaque minute, chacun des trois nombres change donc de $-1$, $0$ ou $1$.
- *Deux des trois nombres suffisent pour retrouver la case.* C'est clair avec $x$ et $y$. Avec $x$ et $w$, on retrouve $y = w - x$. Avec $y$ et $w$, on retrouve $x = w - y$.

On note $\kappa$ le coloriage de l'étape 1. Le chasseur peint la case $(x, y)$ avec la « couleur » formée des trois couleurs
$$(\kappa(x), \; \kappa(y), \; \kappa(x + y)).$$
Cela fait au plus $4 \times 4 \times 4 = 64$ couleurs, un nombre fini. Quand le lapin annonce la couleur de sa case, le chasseur lit les couleurs des trois marcheurs $x$, $y$ et $w$.

**Étape 3 : le chasseur gagne.** Si le lapin revient un jour sur une case déjà visitée, le chasseur a gagné. Sinon, le lapin arrive chaque minute sur une case nouvelle, et il visite une infinité de cases différentes.

Dans ce cas, au moins deux des trois nombres $x$, $y$, $w$ prennent une infinité de valeurs. En effet, si deux d'entre eux ne prenaient qu'un nombre fini de valeurs, toutes les cases visitées seraient déterminées par ces deux nombres, d'après l'étape 2, et il n'y aurait qu'un nombre fini de cases visitées.

Le chasseur applique l'étape 1 aux trois nombres à la fois. Pour chacun des deux nombres qui prennent une infinité de valeurs, il connaît sa valeur de départ au bout d'un temps fini. Dès qu'il connaît les valeurs de départ de deux des trois nombres, il connaît la case de départ du lapin, d'après l'étape 2. Il n'a pas besoin de savoir à l'avance quels nombres vont prendre une infinité de valeurs : il attend simplement que deux d'entre eux soient identifiés.

**Conclusion.** Avec ce coloriage à $64$ couleurs, soit le lapin revient sur une case déjà visitée, soit le chasseur identifie sa case de départ au bout d'un temps fini. **Le chasseur a une stratégie gagnante.**

## Going further

- *Pourquoi trois directions ?* Avec seulement les couleurs de $x$ et de $y$, le lapin peut monter tout droit pour toujours. Il ne revient jamais sur une case déjà visitée, et la coordonnée $x$ ne change jamais : le chasseur apprend $y$, mais jamais $x$. Avec trois directions, quel que soit le chemin du lapin, deux des trois nombres finissent par être connus.
- Le corrigé officiel donne une autre façon de suivre les déplacements, avec seulement $5$ couleurs : la case $(x, y)$ reçoit le reste de $x + 2y$ dans la division par $5$. Un saut à droite, à gauche, en haut ou en bas change ce reste de $+1$, $-1$, $+2$ ou $-2$ : quatre changements différents, donc le chasseur sait chaque fois où le lapin est allé. Il faut ensuite ajouter des repères dans les trois directions, de plus en plus espacés, comme à l'étape 1.
- Le commentaire des correcteurs note que beaucoup d'élèves ont voulu montrer que le lapin gagne, en disant qu'il peut toujours trouver deux chemins qui portent les mêmes couleurs sur une très grande longueur. Ce n'est pas une preuve : le moment où le chasseur conclut dépend des couleurs qu'il a vues, et deux chemins qui se ressemblent longtemps finissent ici par se distinguer. Dans un jeu, il est prudent de chercher une stratégie pour chacun des deux joueurs, avant de décider qui gagne.
