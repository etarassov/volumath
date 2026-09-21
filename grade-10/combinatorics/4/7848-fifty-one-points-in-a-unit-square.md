---
id: "7848"
title: "51 points dans un carré de côté 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, decoupage, cercle, diagonale]
adapted_from: null
see_also: ["7212", "7717"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mercredi 19 matin (Clara Ding), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On place $51$ points, de manière quelconque, dans un carré de côté $1$.

Montrer qu'il existe toujours un disque de rayon $\dfrac{1}{7}$ contenant au moins trois de ces
points. (Le disque a le droit de déborder du carré.)

## Hints

1. Encore les tiroirs, mais cette fois on veut **trois** objets dans le même tiroir, pas deux.
   Avec $t$ tiroirs et $51$ objets, quelle condition sur $t$ garantit qu'un tiroir en contient
   au moins trois ?
2. Les tiroirs seront des morceaux du carré. Découpe le carré en petits carrés tous égaux.
   Combien peux-tu en prendre au maximum ?
3. Avec $25$ petits carrés, chacun a pour côté $\frac15$. Il reste à vérifier qu'un petit carré
   tient dans un disque de rayon $\frac17$.
4. Un carré tient dans le disque ayant sa diagonale pour diamètre. Compare la demi-diagonale du
   petit carré avec $\frac17$. Un petit calcul de racine carrée suffit.

## Solution

**Étape 1 : combien de tiroirs au maximum ?**

Si l'on répartit $51$ points dans $t$ tiroirs et qu'aucun tiroir ne contenait trois points,
chacun en contiendrait au plus $2$, donc on aurait $51 \leq 2t$, soit $t \geq 25{,}5$, donc
$t \geq 26$.

Autrement dit : **avec au plus $25$ tiroirs, l'un d'eux contient au moins trois points.**

**Étape 2 : on découpe le carré.**

Découpons le carré de côté $1$ en $5 \times 5 = 25$ petits carrés de côté $\dfrac15$.

Pour que ce découpage soit une vraie répartition, il faut décider à quel petit carré appartient
chaque bord commun à deux d'entre eux : on convient par exemple que chaque petit carré contient
son bord gauche et son bord inférieur, mais pas son bord droit ni son bord supérieur (les bords
extérieurs du grand carré étant attribués au petit carré voisin). Ainsi chaque point du grand
carré appartient à exactement un petit carré.

D'après l'étape 1, l'un de ces $25$ petits carrés contient au moins trois des $51$ points.
Appelons-le $c$.

**Étape 3 : un petit carré tient dans un disque de rayon $\frac17$.**

Le petit carré $c$ a pour côté $\dfrac15$. Sa diagonale vaut donc
$$\frac{1}{5}\sqrt2 ,$$
et le disque de même centre que $c$ et de rayon égal à la moitié de cette diagonale contient
tout le carré $c$. Ce rayon vaut
$$r = \frac{\sqrt2}{10} .$$

Comparons $r$ à $\dfrac17$. Les deux nombres sont positifs, on peut comparer leurs carrés :
$$r^2 = \frac{2}{100} = \frac{1}{50}, \qquad \left(\frac17\right)^2 = \frac{1}{49}.$$

Comme $50 > 49$, on a $\dfrac{1}{50} < \dfrac{1}{49}$, donc
$$r < \frac17 .$$

*Numériquement :* $r \approx 0{,}1414$ et $\frac17 \approx 0{,}1429$. C'est serré, mais c'est
vrai.

**Étape 4 : on conclut.**

Le disque de centre le centre de $c$ et de rayon $\dfrac17$ contient le disque de rayon $r$,
donc contient tout le petit carré $c$, donc contient les trois points qui s'y trouvent.

**Conclusion.** Il existe toujours un disque de rayon $\dfrac17$ contenant au moins trois des
$51$ points.
