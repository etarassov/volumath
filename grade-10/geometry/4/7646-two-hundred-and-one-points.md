---
id: "7646"
title: "Deux cent un points dans un carré"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, aire, triangle, decoupage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On place $201$ points dans un carré de $10$ cm de côté.

Démontrer qu'il existe trois de ces points qui forment un triangle d'aire au plus $\text{0,5}$ cm$^2$.

*Un « triangle » aplati, c'est-à-dire dont les trois sommets sont alignés, est accepté : son aire vaut $0$.*

## Hints

1. Découpez le carré en petits carrés de $1$ cm de côté. Combien y en a-t-il ?
2. Comparez ce nombre au nombre de points, et appliquez le principe des tiroirs. Combien de points peut-on garantir dans un même petit carré ?
3. Il restera à démontrer un fait géométrique : un triangle contenu dans un carré de côté $1$ a une aire au plus $\text{0,5}$.
4. Pour cela, tracez la droite horizontale passant par celui des trois sommets qui est « au milieu » en hauteur. Elle coupe le triangle en deux.

## Solution

**Étape 1 : le principe des tiroirs.**

Découpons le carré de $10$ cm de côté en $10 \times 10 = 100$ petits carrés de $1$ cm de côté.

Nous avons $201$ points à répartir dans $100$ petits carrés. Si chaque petit carré contenait au plus $2$ points, le total ne dépasserait pas $2 \times 100 = 200$ points, ce qui est moins que $201$.

Donc **au moins un petit carré contient au moins $3$ points**. (Les points situés sur une frontière sont attribués à l'un des carrés qui la bordent, peu importe lequel.)

**Étape 2 : un triangle dans un carré de côté $1$ a une aire au plus $\text{0,5}$.**

Soit $ABC$ un triangle dont les trois sommets sont dans un carré de côté $1$.

Si les trois points sont alignés, l'aire vaut $0$ et il n'y a rien à démontrer. Sinon, classons les trois sommets par hauteur et appelons $B$ celui qui est au milieu (si deux sommets sont à la même hauteur, peu importe lequel on choisit).

Traçons la droite horizontale $\Delta$ passant par $B$. Comme $A$ est au-dessus (au sens large) et $C$ en dessous, la droite $\Delta$ coupe le côté $[AC]$ en un point $D$. Le segment $[BD]$ partage le triangle $ABC$ en deux triangles, $ABD$ et $CBD$, qui ont $[BD]$ comme base commune.

- La base $BD$ est un segment horizontal contenu dans le carré, donc $BD \leqslant 1$.
- Notons $h_1$ la hauteur de $A$ au-dessus de $\Delta$, et $h_2$ la hauteur de $C$ en dessous. Ces deux hauteurs sont mesurées à l'intérieur du carré, de part et d'autre de $\Delta$, donc $h_1 + h_2 \leqslant 1$.

L'aire du triangle vaut donc

$$\mathcal{A} = \frac{BD \times h_1}{2} + \frac{BD \times h_2}{2} = \frac{BD \times (h_1 + h_2)}{2} \leqslant \frac{1 \times 1}{2} = \text{0,5} .$$

**Conclusion.**

Un petit carré contient trois des $201$ points. Ces trois points forment un triangle d'aire au plus $\text{0,5}$ cm$^2$.

## Going further

Le nombre $201$ est optimal pour ce raisonnement, mais pas pour l'énoncé : avec $200$ points seulement, on peut placer exactement deux points par petit carré, et l'argument ci-dessus ne dit plus rien. Cela ne prouve pas pour autant qu'avec $200$ points on puisse éviter les petits triangles — c'est une autre question, bien plus difficile.

**La borne $\text{0,5}$ est atteinte :** trois sommets d'un carré de côté $1$ forment un triangle d'aire exactement $\text{0,5}$. On ne peut donc pas faire mieux avec cette découpe.

Une variante pour s'entraîner : combien de points faut-il placer dans un carré de $10$ cm de côté pour être sûr d'en trouver deux distants d'au plus $2$ cm ?
