---
id: "7717"
title: "Cinquante et un points dans un carré de côté 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, decoupage, diagonales, cercle-circonscrit]
adapted_from: null
see_also: ["7042"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On place $51$ points, n'importe comment, dans un carré de côté $1$.

Montrer qu'on peut toujours trouver un cercle de rayon $\tfrac{1}{7}$ qui contient au moins $3$ de ces points. Ce cercle a le droit de dépasser du carré.

## Hints

1. Le principe des tiroirs donne « au moins $3$ objets dans un tiroir » quand on range plus de $2 \times (\text{nombre de tiroirs})$ objets. Combien de tiroirs peux-tu donc t'autoriser ?
2. Découper un carré en $25$ cercles est impossible ; découper un carré en $25$ carrés est facile. Fais cela d'abord et range les points.
3. Tu obtiens $3$ points dans un même petit carré. Il reste à enfermer ce petit carré tout entier dans un cercle de rayon $\tfrac{1}{7}$ : quel est le plus petit cercle contenant un carré ?
4. Le rayon de ce cercle est la moitié de la diagonale du petit carré. Compare-le à $\tfrac{1}{7}$ en élevant les deux nombres au carré.

## Solution

**L'idée : découper le carré en $25$ petits carrés, puis enfermer un petit carré dans un cercle.**

**Étape 1 : le découpage.** Découpons le grand carré en $25$ petits carrés identiques, en le partageant en $5$ bandes horizontales et $5$ bandes verticales. Chaque petit carré a pour côté

$$\frac{1}{5} .$$

Chacun des $51$ points se trouve dans l'un de ces petits carrés. (Un point situé exactement sur un bord appartient à deux petits carrés : on décide une fois pour toutes de l'attribuer à l'un des deux, peu importe lequel.)

**Étape 2 : le principe des tiroirs.** On range $51$ points dans $25$ tiroirs. Si chaque tiroir contenait au plus $2$ points, il y aurait en tout au plus

$$2 \times 25 = 50 \text{ points} ,$$

ce qui est trop peu. Donc **au moins un petit carré contient au moins $3$ points**.

**Étape 3 : du petit carré au cercle.** Soit $c$ un petit carré contenant au moins $3$ points. Le plus petit cercle qui contient $c$ tout entier est son cercle circonscrit : il a pour centre le centre de $c$ et pour rayon la moitié de la diagonale de $c$.

La diagonale d'un carré de côté $\tfrac15$ vaut, d'après le théorème de Pythagore,

$$\sqrt{\left(\frac{1}{5}\right)^2 + \left(\frac{1}{5}\right)^2} = \sqrt{\frac{2}{25}} = \frac{\sqrt{2}}{5} .$$

Le rayon du cercle circonscrit à $c$ vaut donc

$$r = \frac{1}{2} \times \frac{\sqrt{2}}{5} = \frac{\sqrt{2}}{10} .$$

**Étape 4 : ce rayon est plus petit que $\tfrac17$.** Comparons $r = \dfrac{\sqrt 2}{10}$ et $\dfrac17$. Les deux nombres sont positifs, donc on peut comparer leurs carrés :

$$r^2 = \frac{2}{100} = \frac{1}{50} \qquad \text{et} \qquad \left(\frac{1}{7}\right)^2 = \frac{1}{49} .$$

Comme $50 > 49$, on a $\dfrac{1}{50} < \dfrac{1}{49}$, donc

$$r < \frac{1}{7} .$$

**Conclusion.** Le cercle de même centre que $c$ et de rayon $\tfrac17$ contient le cercle circonscrit à $c$, donc contient $c$ tout entier, donc contient les $3$ points au moins qui sont dans $c$. On a bien trouvé un cercle de rayon $\tfrac17$ contenant au moins $3$ des $51$ points.

## Going further

La marge est mince : $\dfrac{\sqrt2}{10} \approx \text{0,1414}$ et $\dfrac{1}{7} \approx \text{0,1429}$. Avec un rayon de $\dfrac{1}{8}$, ce découpage ne marcherait plus, puisque $\dfrac18 = \text{0,125}$ est plus petit que $\text{0,1414}$.

C'est typique de ce genre d'énoncé : le nombre $\tfrac17$ n'a rien de magique, il a simplement été choisi par l'auteur pour être juste au-dessus de ce que le découpage en $5 \times 5$ permet d'atteindre.
