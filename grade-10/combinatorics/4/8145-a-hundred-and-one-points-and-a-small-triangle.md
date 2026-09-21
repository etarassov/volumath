---
id: "8145"
title: "Cent un points et un petit triangle"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, aire, decoupage, triangle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 16 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On place $101$ points à l'intérieur d'un carré de côté $10$.

Montrer qu'on peut en choisir trois qui forment un triangle d'aire inférieure ou égale à $1$. (Un triangle aplati, d'aire nulle, est accepté.)

## Hints

1. C'est un problème de tiroirs : il faut découper le carré en morceaux et montrer qu'un morceau contient au moins trois points.
2. Combien de morceaux au maximum peux-tu te permettre, pour être sûr qu'avec $101$ points l'un d'eux en contienne trois ?
3. Il te faut donc des morceaux dans lesquels trois points forment toujours un triangle d'aire au plus $1$. Essaie des rectangles, et démontre d'abord le résultat suivant : un triangle contenu dans un rectangle a une aire au plus égale à la moitié de celle du rectangle.
4. Un rectangle d'aire $2$ convient donc. Quelles dimensions choisir pour en avoir $50$ dans le carré ?

## Solution

### Un lemme sur les triangles dans un rectangle

**Lemme.** Si un triangle est contenu dans un rectangle, son aire est au plus la moitié de celle du rectangle.

*Démonstration.* Plaçons le rectangle avec deux côtés horizontaux, de largeur $p$ et de hauteur $q$. Soit $ABC$ un triangle contenu dedans.

Parmi les trois sommets, l'un a une hauteur (ordonnée) comprise entre celles des deux autres ; appelons-le $B$. Traçons la droite horizontale passant par $B$ : elle coupe le côté $[AC]$ en un point $D$ (puisque $A$ et $C$ sont de part et d'autre de cette droite, au sens large).

Le segment $[BD]$ est horizontal et contenu dans le rectangle, donc sa longueur $\ell$ vérifie $\ell \leq p$.

Il partage le triangle $ABC$ en deux triangles $ABD$ et $CBD$, de base commune $[BD]$. Si $h_1$ et $h_2$ désignent les hauteurs de $A$ et de $C$ au-dessus et au-dessous de la droite horizontale, l'aire totale vaut

$$\frac{\ell \, h_1}{2} + \frac{\ell \, h_2}{2} = \frac{\ell \, (h_1 + h_2)}{2}.$$

Or $h_1 + h_2$ est la différence des ordonnées de $A$ et de $C$, donc $h_1 + h_2 \leq q$. L'aire est donc au plus $\dfrac{pq}{2}$. $\square$

### Le découpage

Découpons le carré de côté $10$ en rectangles de $2$ sur $1$ : on en place $5$ par ligne (de largeur $2$) et $10$ lignes (de hauteur $1$), soit

$$5 \times 10 = 50 \text{ rectangles},$$

qui recouvrent le carré sans se chevaucher (un point sur une frontière est attribué à l'un des rectangles voisins, peu importe lequel).

### Le principe des tiroirs

On a $101$ points et $50$ rectangles. Si chaque rectangle contenait au plus $2$ points, on aurait au plus

$$50 \times 2 = 100$$

points en tout, ce qui est trop peu. Donc **au moins un rectangle contient au moins $3$ points.**

### Conclusion

Choisissons trois points dans ce rectangle. Le triangle qu'ils forment est contenu dans un rectangle d'aire $2 \times 1 = 2$, donc d'après le lemme son aire est au plus

$$\frac{2}{2} = 1.$$

**On a bien trouvé trois points formant un triangle d'aire inférieure ou égale à $1$.**

Remarque : si les trois points sont alignés, le « triangle » est aplati et son aire vaut $0$, ce qui convient aussi.
