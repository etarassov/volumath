---
id: "7212"
title: "Cinquante et un points dans un carré de côté 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tiroirs, decoupage, distance, disque]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 matin (Cindy Hua), principe des tiroirs, exercice 13 (le même exercice figure dans Poly_final_CJ18.pdf, mercredi 24 après-midi, Colin Davalo, exercice 3)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On place $51$ points dans un carré de côté $1$.

Montrer qu'il existe un disque de rayon $\dfrac{1}{7}$ qui contient au moins trois de ces points.
(Le disque a le droit de déborder du carré.)

## Hints

1. Pour obtenir **trois** points dans une même région, combien de régions faut-il au maximum, avec
   $51$ points ?
2. Découper un carré en disques est impossible. Découpe-le plutôt en petits carrés, et cherche
   ensuite un disque qui contient un petit carré.
3. Quel est le plus petit disque qui contient un carré de côté $c$ ? Quel est son rayon ?
4. Compare $\dfrac{\sqrt{2}}{10}$ et $\dfrac{1}{7}$.

## Solution

**Combien de régions ?**

On veut trois points dans une même région. Si on découpe le carré en $n$ régions et qu'aucune ne
contient trois points, alors chaque région en contient au plus deux, donc il y a au plus $2n$
points. Avec $51$ points, il faut donc $2n < 51$, c'est-à-dire $n \leqslant 25$.

Essayons avec exactement $25$ régions : $51 > 2 \times 25 = 50$, donc l'une des régions contient
au moins trois points.

**Le découpage.**

Découpons le carré de côté $1$ en $25$ petits carrés de côté $\dfrac{1}{5}$, en le coupant en $5$
colonnes et $5$ rangées.

D'après ce qui précède, l'un de ces $25$ petits carrés contient au moins trois des $51$ points.

**Du petit carré au disque.**

Un carré est contenu dans le disque qui a pour centre son centre et pour rayon la moitié de sa
diagonale. Pour un carré de côté $\dfrac{1}{5}$, la diagonale mesure $\dfrac{\sqrt{2}}{5}$, donc
ce disque a pour rayon
$$r = \frac{\sqrt{2}}{10} .$$

Comparons $r$ à $\dfrac{1}{7}$. Comme les deux nombres sont positifs, il suffit de comparer leurs
carrés :
$$r^2 = \frac{2}{100} = \frac{1}{50} \qquad \text{et} \qquad \left(\frac{1}{7}\right)^2
= \frac{1}{49} .$$
Or $\dfrac{1}{50} < \dfrac{1}{49}$, donc $r < \dfrac{1}{7}$.

**Conclusion.**

Le disque de centre le centre du petit carré et de rayon $\dfrac{1}{7}$ contient donc le petit
carré tout entier, et en particulier les trois points qui s'y trouvent.

**Il existe bien un disque de rayon $\dfrac{1}{7}$ contenant au moins trois des $51$ points.**

## Going further

Le rayon $\dfrac{1}{7}$ n'a rien de magique : le raisonnement fournit en réalité le rayon plus
petit $\dfrac{\sqrt{2}}{10} \approx \text{0,1414}$, alors que $\dfrac{1}{7} \approx \text{0,1429}$.
L'énoncé demande le moins bon des deux résultats, sans doute pour éviter les racines carrées.
