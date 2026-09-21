---
id: "7041"
title: "Cinquante et un points dans un carré"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [principe des tiroirs, geometrie, decoupage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Stratégies de base », principe des tiroirs, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On place $51$ points, n'importe où, dans un carré de côté $1$.

Montrer qu'on peut toujours en trouver **trois** qui tiennent à l'intérieur d'un même disque
de rayon $\dfrac17$.

*(Le disque a le droit de dépasser des bords du carré.)*

## Hints

1. Le principe des tiroirs dit : si on range $51$ objets dans $25$ tiroirs, un tiroir contient
   au moins trois objets. Vérifie ce compte.
2. Il faut donc découper le carré en $25$ morceaux. Lesquels sont les plus simples ?
3. Découpe le carré en $25$ petits carrés de côté $\dfrac15$.
4. Un petit carré tient-il dans un disque de rayon $\dfrac17$ ? Compare sa diagonale au
   diamètre du disque.

## Solution

**Combien de tiroirs faut-il ?**

Le principe des tiroirs, version renforcée : si on range plus de $2n$ objets dans $n$ tiroirs,
alors un tiroir au moins contient au moins $3$ objets. En effet, si chaque tiroir en
contenait au plus $2$, le total serait au plus $2n$.

Ici on a $51$ points et on veut $3$ points ensemble. Il faut donc au plus $25$ tiroirs, car
$51 > 2 \times 25 = 50$.

**Le découpage.**

Découpons le carré en $25$ petits carrés de côté $\dfrac15$, en le coupant en $5$ bandes
horizontales et $5$ bandes verticales.

Chacun des $51$ points tombe dans l'un de ces $25$ petits carrés (un point situé sur une
frontière, on décide arbitrairement à quel petit carré il appartient). Par le principe des
tiroirs, **l'un des petits carrés contient au moins $3$ points.**

**Ce petit carré tient dans un disque de rayon $\frac17$.**

Un carré est contenu dans le disque qui a sa diagonale pour diamètre. Le petit carré a pour
diagonale
$$\frac{\sqrt2}{5} = \sqrt{\frac{2}{25}} .$$

Il tient donc dans un disque de rayon $\dfrac{\sqrt2}{10}$. Reste à vérifier que ce rayon ne
dépasse pas $\dfrac17$ :
$$\frac{\sqrt 2}{10} \leq \frac17
\iff 7\sqrt2 \leq 10
\iff 49 \times 2 \leq 100
\iff 98 \leq 100 ,$$
ce qui est vrai.

**Conclusion.**

Le petit carré contenant trois points tient à l'intérieur d'un disque de rayon $\dfrac17$.
Ces trois points sont donc, eux aussi, à l'intérieur de ce disque. $\blacksquare$

## Going further

La marge est mince : $98$ contre $100$. Avec un rayon de $\dfrac{1}{\text{7,1}}$ au lieu de
$\dfrac17$ l'argument tomberait, car $\text{7,1} \times \sqrt2 > 10$.

Cela veut dire que l'énoncé a été calibré exactement sur ce découpage. Quand tu rencontres un
nombre aussi bizarre que $\dfrac17$ dans un énoncé, c'est souvent le signe qu'il vient d'un
calcul comme celui-là, et cela te renseigne sur la méthode attendue.
