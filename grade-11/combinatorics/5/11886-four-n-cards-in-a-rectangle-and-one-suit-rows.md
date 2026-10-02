---
id: "11886"
title: "4n cartes en rectangle et des lignes d'une seule couleur"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [cartes, grille, disjonction-de-cas, parite, denombrement, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 18 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. La dernière phrase du corrigé dit « lorsque n est pair » au lieu de « impair ». La solution ici réorganise les cas du corrigé autour d'une remarque : les coupures entre couleurs traversent toute la grille. Réponse vérifiée par ordinateur pour n de 1 à 6."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Un jeu contient $4n$ cartes. Chaque carte a une couleur (trèfle, carreau, cœur ou pique) et une valeur (un entier de $1$ à $n$), et pour chaque couleur et chaque valeur il y a exactement une carte.

On dispose toutes les cartes en un rectangle de $4$ lignes et $n$ colonnes, de sorte que deux cartes voisines (qui ont un côté commun) aient toujours la même valeur ou la même couleur.

Trouver tous les entiers $n \geqslant 1$ pour lesquels, dans **toute** disposition de ce type, les cartes d'une même ligne ont forcément toutes la même couleur.

## Hints

1. Deux cartes de même couleur ont des valeurs différentes. Donc deux cartes voisines de couleurs différentes ont la même valeur.
2. Dans un carré de $2 \times 2$ cartes, si deux cartes en diagonale ont la même couleur, que dire des deux autres ?
3. Toujours dans un carré $2 \times 2$ : si les deux cartes du haut ont la même couleur, montrer que les deux cartes du bas aussi.
4. En déduire que la grille est découpée en rectangles d'une seule couleur par des coupures qui la traversent de part en part.
5. Pour $n$ pair, chercher un exemple formé de quatre rectangles de $2 \times \frac{n}{2}$ cartes. Pour $n$ impair, compter les cartes de chaque couleur.

## Solution

**Réponse : les entiers $n$ impairs.**

On utilisera sans cesse ceci : chaque carte est unique, donc deux cartes de même couleur ont des valeurs différentes, et deux cartes de même valeur ont des couleurs différentes. En particulier, **deux cartes voisines de couleurs différentes ont la même valeur**.

On note $\clubsuit$, $\diamondsuit$, $\heartsuit$, $\spadesuit$ les quatre couleurs.

### Quand $n$ est pair, il existe une disposition qui ne convient pas

On pose $m = n/2$. On coupe le rectangle en quatre rectangles de $2$ lignes et $m$ colonnes, et on remplit chacun avec une seule couleur. Voici la disposition pour $n = 6$ :

| | | | | | |
|---|---|---|---|---|---|
| $4\diamondsuit$ | $5\diamondsuit$ | $6\diamondsuit$ | $6\clubsuit$ | $5\clubsuit$ | $4\clubsuit$ |
| $1\diamondsuit$ | $2\diamondsuit$ | $3\diamondsuit$ | $3\clubsuit$ | $2\clubsuit$ | $1\clubsuit$ |
| $1\heartsuit$ | $2\heartsuit$ | $3\heartsuit$ | $3\spadesuit$ | $2\spadesuit$ | $1\spadesuit$ |
| $4\heartsuit$ | $5\heartsuit$ | $6\heartsuit$ | $6\spadesuit$ | $5\spadesuit$ | $4\spadesuit$ |

En général : dans le rectangle en haut à gauche, la ligne $1$ contient les carreaux $m + 1, \ldots, 2m$ et la ligne $2$ les carreaux $1, \ldots, m$, de gauche à droite. Les trois autres rectangles s'obtiennent par symétrie : le rectangle en haut à droite est le reflet du premier dans un miroir vertical, avec des trèfles, et la moitié du bas est le reflet de la moitié du haut dans un miroir horizontal, avec des cœurs à gauche et des piques à droite.

Chaque couleur reçoit bien les valeurs $1$ à $n$ une fois chacune. Deux cartes voisines dans un même petit rectangle ont la même couleur. Deux cartes voisines de part et d'autre d'un miroir sont reflets l'une de l'autre, donc ont la même valeur. La disposition convient, et la ligne $1$ contient des carreaux et des trèfles.

### Quand $n$ est impair, les lignes sont toujours d'une seule couleur

On fixe une disposition qui respecte la règle.

**Étape 1 : deux lemmes sur les carrés $2 \times 2$.** On regarde quatre cartes qui forment un carré : $A$ en haut à gauche, $B$ en haut à droite, $C$ en bas à gauche, $D$ en bas à droite.

*Lemme 1. Si deux cartes en diagonale ont la même couleur, les quatre cartes ont cette couleur.* Supposons que $A$ et $D$ aient la même couleur. La carte $B$ est voisine de $A$ et de $D$. Si elle n'avait pas leur couleur, elle aurait la même valeur que $A$ et que $D$. Alors $A$ et $D$ auraient la même couleur et la même valeur, ce serait la même carte. Donc $B$ a la couleur de $A$, et de même pour $C$.

*Lemme 2. Les cartes $A$ et $B$ ont la même couleur si et seulement si $C$ et $D$ ont la même couleur. De même, $A$ et $C$ ont la même couleur si et seulement si $B$ et $D$ ont la même couleur.* Supposons que $A$ et $B$ aient la même couleur. Si $C$ ou $D$ a aussi cette couleur, le lemme 1 s'applique (car $C$ est en diagonale avec $B$, et $D$ avec $A$), et les quatre cartes ont la même couleur. Sinon, $C$ n'a pas la couleur de sa voisine $A$, donc a la même valeur que $A$. De même, $D$ a la même valeur que $B$. Or $A$ et $B$ ont la même couleur, donc des valeurs différentes. Les cartes $C$ et $D$ ont donc des valeurs différentes, et comme elles sont voisines, elles ont la même couleur. La réciproque s'obtient en retournant le carré, et la deuxième phrase en le faisant tourner d'un quart de tour.

**Étape 2 : des coupures qui traversent toute la grille.** On dit que deux cartes voisines sont *séparées* quand elles n'ont pas la même couleur.

Prenons deux colonnes consécutives. Le lemme 2, appliqué aux carrés formés par ces deux colonnes et deux lignes consécutives, dit que les deux cartes de la ligne $1$ sont séparées si et seulement si celles de la ligne $2$ le sont, puis de même pour les lignes $2$ et $3$, puis $3$ et $4$. Donc, entre deux colonnes consécutives, soit les cartes sont séparées sur les quatre lignes, soit sur aucune. Dans le premier cas, on dit qu'il y a une **coupure verticale** entre ces colonnes. De même, entre deux lignes consécutives, soit les cartes sont séparées dans les $n$ colonnes, soit dans aucune. Dans le premier cas, c'est une **coupure horizontale**.

Les coupures verticales découpent les $n$ colonnes en $b$ **tranches** de colonnes consécutives, et les coupures horizontales découpent les $4$ lignes en $a$ **étages** de lignes consécutives. Un **bloc** est la partie commune à une tranche et un étage : c'est un rectangle.

- Dans un bloc, deux cartes voisines ne sont jamais séparées. Toutes les cartes d'un bloc ont donc la même couleur.
- Deux blocs qui ont un côté commun ont des couleurs différentes.
- Là où une coupure verticale croise une coupure horizontale, les quatre blocs autour du point de croisement ont **quatre couleurs différentes**. En effet, dans le carré $2 \times 2$ autour de ce point, les cartes voisines sont toutes séparées. Si deux cartes en diagonale avaient la même couleur, par le lemme 1 les quatre l'auraient, ce qui est faux. Les quatre cartes de ce carré, une dans chacun des quatre blocs, ont donc quatre couleurs différentes.

**Étape 3 : sans coupure verticale, c'est gagné.** Si $b = 1$, chaque étage est une bande qui va d'un bord à l'autre, d'une seule couleur. Un étage de hauteur $h$ contient $h \times n$ cartes de la même couleur. Une couleur n'a que $n$ cartes, donc $h = 1$. Il y a donc quatre étages d'une ligne chacun : chaque ligne est d'une seule couleur.

**Étape 4 : une coupure verticale est impossible.** Supposons $b \geqslant 2$. On note $W_{\text{imp}}$ la somme des largeurs des tranches de rang impair (la $1^\text{re}$, la $3^\text{e}$, etc.) et $W_{\text{pair}}$ celle des tranches de rang pair, de sorte que $W_{\text{imp}} + W_{\text{pair}} = n$. On sépare les cas selon le nombre $a$ d'étages.

- **$a = 4$** (trois coupures horizontales). Dans chaque colonne, deux cartes l'une au-dessus de l'autre sont séparées, donc ont la même valeur : les quatre cartes d'une colonne ont la même valeur, ce sont les quatre cartes de cette valeur. Prenons une coupure verticale, entre les colonnes $j$ et $j + 1$. Les cartes de la ligne $1$ dans ces deux colonnes sont séparées, donc ont la même valeur $v$. Alors la colonne $j + 1$ contient elle aussi les quatre cartes de valeur $v$, déjà toutes dans la colonne $j$. C'est absurde.

- **$a = 1$** (aucune coupure horizontale). Chaque tranche est un rectangle de toute la hauteur, d'une seule couleur. Une couleur a donc $4$ fois la largeur totale de ses tranches comme nombre de cartes, un multiple de $4$. Mais ce nombre est $n$, qui est impair. C'est absurde.

- **$a = 2$.** Dans la tranche numéro $\beta$, on note $x_\beta$ la couleur du bloc du haut et $y_\beta$ celle du bloc du bas. Au croisement entre les tranches $\beta$ et $\beta + 1$, les couleurs $x_\beta$, $y_\beta$, $x_{\beta+1}$, $y_{\beta+1}$ sont les quatre couleurs. Donc la tranche $\beta + 1$ utilise exactement les deux couleurs que la tranche $\beta$ n'utilise pas. Les tranches de rang impair utilisent donc les deux couleurs $x_1$ et $y_1$, et les tranches de rang pair les deux autres. Les cartes de couleur $x_1$ ou $y_1$ remplissent exactement les tranches impaires : il y en a $4\,W_{\text{imp}}$. Mais deux couleurs font $2n$ cartes. Donc $4\,W_{\text{imp}} = 2n$, et $n = 2\,W_{\text{imp}}$ est pair. C'est absurde.

- **$a = 3$.** Dans la tranche $\beta$, on note $x_\beta$, $y_\beta$, $z_\beta$ les couleurs des blocs, de haut en bas. Aux deux croisements entre les tranches $\beta$ et $\beta + 1$, les couleurs $x_\beta$, $y_\beta$, $x_{\beta+1}$, $y_{\beta+1}$ sont les quatre couleurs, et de même pour $y_\beta$, $z_\beta$, $y_{\beta+1}$, $z_{\beta+1}$.

  - *Si $x_1 = z_1$*, la tranche $1$ n'utilise que les deux couleurs $x_1$ et $y_1$. Alors $\{x_2, y_2\}$ et $\{y_2, z_2\}$ sont tous les deux formés des deux autres couleurs, donc $z_2 = x_2$ et la tranche $2$ n'utilise que les deux autres couleurs. En continuant ainsi, les tranches impaires utilisent les couleurs $x_1$ et $y_1$, et les tranches paires les deux autres. On conclut comme pour $a = 2$ : $4\,W_{\text{imp}} = 2n$, donc $n$ est pair, c'est absurde.
  - *Si $x_1 \neq z_1$*, la tranche $1$ a trois couleurs différentes, disons $(x, y, z)$ de haut en bas, et on note $w$ la quatrième. Le premier croisement donne $\{x_2, y_2\} = \{z, w\}$, le second $\{y_2, z_2\} = \{x, w\}$. La seule couleur commune est $w$, donc $y_2 = w$, puis $x_2 = z$ et $z_2 = x$ : la tranche $2$ est $(z, w, x)$. Le même raisonnement à partir de la tranche $2$, à qui il manque $y$, donne la tranche $3$ égale à $(x, y, z)$, et ainsi de suite : les tranches sont alternativement $(x, y, z)$ et $(z, w, x)$. La couleur $y$ n'apparaît que dans l'étage du milieu des tranches impaires, et $w$ que dans l'étage du milieu des tranches paires. Si $h$ est la hauteur de l'étage du milieu, il y a $h\,W_{\text{imp}}$ cartes de couleur $y$ et $h\,W_{\text{pair}}$ cartes de couleur $w$. Les deux nombres valent $n$, donc $W_{\text{imp}} = W_{\text{pair}}$ et $n = 2\,W_{\text{imp}}$ est pair. C'est absurde.

Dans tous les cas, $b \geqslant 2$ est impossible. Donc $b = 1$, et par l'étape 3 chaque ligne est d'une seule couleur.

**Conclusion.** Pour $n$ impair, dans toute disposition, chaque ligne est d'une seule couleur. Pour $n$ pair, la disposition en quatre rectangles montre que ce n'est pas toujours le cas. Les entiers cherchés sont **les entiers impairs**.
