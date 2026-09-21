---
id: "7948"
title: "Cent un points dans un carré"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, aire, decoupage, triangle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 16, niveau 1 (énoncé p. 281 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On considère $101$ points placés à l'intérieur d'un carré de côté $10$.

Montrer qu'il existe trois de ces points qui forment un triangle d'aire inférieure ou égale à $1$.

*On conviendra qu'un « triangle » dont les trois sommets sont alignés a une aire nulle, ce qui convient aussi.*

## Hints

1. Le principe des tiroirs : si l'on range $101$ objets dans $50$ tiroirs, l'un des tiroirs contient au moins trois objets. Vérifie ce compte.
2. Comment découper le carré de côté $10$ en $50$ morceaux de même forme ?
3. Quelle est l'aire de chacun de ces morceaux ?
4. Il reste à montrer qu'un triangle dont les trois sommets sont dans un rectangle a une aire au plus égale à la moitié de celle du rectangle.

## Solution

**Étape 1 : on découpe le carré.**

Découpons le carré de côté $10$ en rectangles de dimensions $1 \times 2$ : cinq colonnes de largeur $2$, chacune coupée en dix bandes de hauteur $1$, cela fait

$$5 \times 10 = 50 \ \text{rectangles} ,$$

chacun d'aire $1 \times 2 = 2$.

**Étape 2 : le principe des tiroirs.**

Chacun des $101$ points se trouve dans l'un de ces $50$ rectangles (si un point tombe sur une frontière, on décide arbitrairement dans lequel des deux on le range).

Si chaque rectangle contenait au plus $2$ points, il y aurait au plus $50 \times 2 = 100$ points en tout. Comme il y en a $101$, **au moins un rectangle contient au moins $3$ points.**

Appelons $P$, $Q$, $R$ trois points situés dans un même rectangle $\mathcal{R}$.

**Étape 3 : un triangle dans un rectangle.**

> **Lemme.** Si les trois sommets d'un triangle sont dans un rectangle, l'aire du triangle vaut au plus la moitié de l'aire du rectangle.

Démontrons-le. Soit un rectangle de largeur $L$ et de hauteur $H$, et soient $P$, $Q$, $R$ trois points à l'intérieur ou sur le bord. Quitte à renommer, supposons que $Q$ est celui dont la hauteur est **entre** celles des deux autres. Traçons la droite horizontale passant par $Q$ : elle coupe le segment $[PR]$ en un point $S$ (c'est possible justement parce que $Q$ est au milieu en hauteur).

Le segment $[QS]$ est horizontal et partage le triangle $PQR$ en deux triangles, $PQS$ et $RQS$, ayant tous deux $[QS]$ pour base. Notons $\ell = QS$ ; comme $Q$ et $S$ sont dans le rectangle, $\ell \le L$.

Notons $h_1$ et $h_2$ les distances verticales de $P$ et de $R$ à la droite $(QS)$. Comme $P$ est au-dessus et $R$ au-dessous (ou l'inverse), on a $h_1 + h_2 \le H$. Donc

$$\text{aire}(PQR) = \frac{\ell \, h_1}{2} + \frac{\ell \, h_2}{2} = \frac{\ell\,(h_1+h_2)}{2} \le \frac{L \times H}{2} .$$

Le lemme est démontré.

**Étape 4 : conclusion.**

Le rectangle $\mathcal{R}$ a pour aire $2$. D'après le lemme, le triangle $PQR$ a une aire au plus égale à

$$\frac{2}{2} = 1 .$$

Il existe donc bien trois des $101$ points formant un triangle d'aire inférieure ou égale à $1$.

## Going further

Le découpage en $1 \times 2$ n'est pas le seul possible : on pourrait couper le carré en $50$ rectangles $10 \times \frac15$, ou en $50$ morceaux de n'importe quelle forme d'aire $2$ — à condition de savoir majorer l'aire d'un triangle inscrit dans ce morceau, ce qui est facile pour un rectangle et beaucoup moins pour une forme quelconque.
