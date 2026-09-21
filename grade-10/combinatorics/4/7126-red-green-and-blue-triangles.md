---
id: "7126"
title: "Triangles rouges, verts et bleus"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [triangulation, double comptage, polygone convexe, somme des angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : un peu de géométrie combinatoire », mercredi après-midi (Pierre Bornsztein), exercice 5 (Olympiade balkanique junior 2004)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $P$ un polygone convexe à $n$ sommets. On le découpe entièrement en triangles, en
traçant certaines de ses diagonales qui ne se coupent pas entre elles. Un tel découpage
s'appelle une **triangulation**.

On colorie ensuite chaque triangle du découpage :

- en **rouge** s'il a deux côtés qui sont aussi des côtés de $P$ ;
- en **vert** s'il a exactement un côté commun avec $P$ ;
- en **bleu** s'il n'a aucun côté commun avec $P$.

Montrer que, quelle que soit la triangulation choisie, il y a toujours exactement **deux
triangles rouges de plus que de triangles bleus**.

## Hints

1. Commence par dessiner un hexagone et deux triangulations différentes. Compte les triangles
   rouges, verts et bleus dans chacune. Le résultat annoncé se vérifie-t-il ?
2. Première question à régler : combien y a-t-il de triangles en tout ? Additionne tous les
   angles de tous les petits triangles.
3. Deuxième comptage : compte les côtés de $P$. Chaque côté de $P$ appartient à combien de
   triangles du découpage ?
4. Un triangle rouge utilise combien de côtés de $P$ ? Un vert ? Un bleu ?

## Solution

Notons $r$, $v$ et $b$ les nombres de triangles rouges, verts et bleus.

**Premier comptage : le nombre total de triangles.**

Additionnons les angles de tous les petits triangles. Si la triangulation comporte $k$
triangles, cette somme vaut $k \times 180^\circ$.

Mais on peut aussi la calculer autrement. Chaque angle de chaque petit triangle a son sommet
en un sommet de $P$, puisqu'on n'a tracé que des diagonales. Et autour d'un sommet donné de
$P$, les angles des petits triangles qui s'y rejoignent se recollent exactement pour former
l'angle intérieur de $P$ en ce sommet. La somme de tous les angles des petits triangles est
donc égale à la somme des angles intérieurs de $P$, c'est-à-dire $(n-2) \times 180^\circ$.

En égalant :

$$k \times 180^\circ = (n-2) \times 180^\circ, \qquad \text{donc} \qquad k = n - 2 .$$

Toute triangulation comporte donc $n-2$ triangles, et en particulier

$$r + v + b = n - 2 . \qquad (1)$$

**Deuxième comptage : les côtés de $P$.**

Chaque côté de $P$ appartient à exactement un triangle du découpage : celui qui est de
l'autre côté, à l'intérieur de $P$.

Réciproquement, comptons les côtés de $P$ en passant par les triangles : un triangle rouge
en utilise $2$, un vert en utilise $1$, un bleu n'en utilise aucun. Donc

$$2r + v = n . \qquad (2)$$

**On combine.** De $(1)$ on tire $v = n - 2 - r - b$. En reportant dans $(2)$ :

$$2r + (n - 2 - r - b) = n ,$$

c'est-à-dire

$$r - b - 2 = 0, \qquad \text{donc} \qquad r = b + 2 .$$

**Conclusion.** Quelle que soit la triangulation, il y a exactement deux triangles rouges de
plus que de triangles bleus.

## Going further

Une conséquence immédiate : puisque $b \geqslant 0$, on a $r \geqslant 2$. **Toute**
triangulation d'un polygone convexe contient donc au moins deux triangles rouges, c'est-à-dire
au moins deux triangles qui ont deux côtés du polygone. On appelle ces triangles des
« oreilles » du polygone, et ce résultat s'appelle le **théorème des deux oreilles**.

Il sert beaucoup en informatique graphique : pour découper un polygone en triangles, on lui
coupe une oreille, ce qui laisse un polygone à un sommet de moins, et on recommence. Le
théorème garantit qu'il y a toujours une oreille à couper, donc que l'algorithme ne se bloque
jamais.
