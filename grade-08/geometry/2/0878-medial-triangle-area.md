---
id: "0878"
title: "L'aire du triangle des milieux"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [milieux, droite des milieux, aire, triangle]
adapted_from: null
see_also: ["0830"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 22, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$ABC$ est un triangle. On note $E$, $F$ et $G$ les milieux respectifs des segments $[AB]$, $[AC]$ et $[BC]$.

Montrer que l'aire du triangle $ABC$ vaut $4$ fois l'aire du triangle $EFG$.

![Le triangle ABC, les milieux E, F, G de ses côtés et le triangle EFG](0878-figure-1.svg)

*Rappel (théorème de la droite des milieux) : dans un triangle, le segment qui joint les milieux de deux côtés est parallèle au troisième côté et mesure la moitié de sa longueur.*

## Hints

1. Trace les trois segments $[EF]$, $[FG]$ et $[GE]$. En combien de morceaux découpent-ils le triangle $ABC$ ?
2. Le théorème de la droite des milieux donne la longueur de chacun de ces trois segments. Écris-les toutes les trois.
3. Écris maintenant les trois côtés de chacun des quatre petits triangles. Que remarques-tu ?
4. Deux triangles qui ont leurs trois côtés deux à deux de même longueur sont superposables, donc ils ont la même aire.

## Solution

**L'idée : les trois droites des milieux découpent $ABC$ en quatre triangles tous identiques.**

**Étape 1. Les longueurs.** Appliquons trois fois le théorème de la droite des milieux dans le triangle $ABC$.

- $E$ et $F$ sont les milieux de $[AB]$ et $[AC]$, donc $EF = \dfrac{BC}{2}$.
- $E$ et $G$ sont les milieux de $[AB]$ et $[BC]$, donc $EG = \dfrac{AC}{2}$.
- $F$ et $G$ sont les milieux de $[AC]$ et $[BC]$, donc $FG = \dfrac{AB}{2}$.

Par ailleurs, comme $E$, $F$ et $G$ sont des milieux,
$$AE = EB = \frac{AB}{2}, \qquad AF = FC = \frac{AC}{2}, \qquad BG = GC = \frac{BC}{2}.$$

**Étape 2. Les quatre petits triangles.** Les segments $[EF]$, $[FG]$ et $[GE]$ découpent $ABC$ en quatre triangles qui ne se chevauchent pas et qui le recouvrent entièrement : les trois triangles des coins, $AEF$, $BGE$ et $CFG$, et celui du milieu, $EFG$. Écrivons leurs côtés.

| triangle | premier côté | deuxième côté | troisième côté |
|---|---|---|---|
| $AEF$ | $AE = \dfrac{AB}{2}$ | $AF = \dfrac{AC}{2}$ | $EF = \dfrac{BC}{2}$ |
| $BGE$ | $BE = \dfrac{AB}{2}$ | $BG = \dfrac{BC}{2}$ | $EG = \dfrac{AC}{2}$ |
| $CFG$ | $CF = \dfrac{AC}{2}$ | $CG = \dfrac{BC}{2}$ | $FG = \dfrac{AB}{2}$ |
| $EFG$ | $FG = \dfrac{AB}{2}$ | $EG = \dfrac{AC}{2}$ | $EF = \dfrac{BC}{2}$ |

Les quatre triangles ont donc exactement les mêmes trois longueurs de côtés : $\dfrac{AB}{2}$, $\dfrac{AC}{2}$ et $\dfrac{BC}{2}$. Ils sont superposables, et en particulier **ils ont tous la même aire**, appelons-la $s$.

**Étape 3. On conclut.** Les quatre triangles recouvrent $ABC$ sans se chevaucher, donc

$$\text{aire}(ABC) = 4s = 4 \times \text{aire}(EFG).$$

**Conclusion : l'aire du triangle $ABC$ vaut bien $4$ fois celle du triangle $EFG$.**

## Going further

Une autre façon de voir la même chose : le triangle $EFG$ a ses trois côtés égaux à la moitié de ceux de $ABC$, c'est donc une **réduction** de $ABC$ de rapport $\frac{1}{2}$. Or dans une réduction de rapport $k$, les longueurs sont multipliées par $k$ et les aires par $k^2$. Ici $k = \frac{1}{2}$ et $k^2 = \frac{1}{4}$ : l'aire de $EFG$ est le quart de celle de $ABC$.
