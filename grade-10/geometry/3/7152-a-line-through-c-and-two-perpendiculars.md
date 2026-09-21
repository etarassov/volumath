---
id: "7152"
title: "Une droite par C et deux perpendiculaires"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [milieux, trapeze, mediatrice, projections]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : géométrie », jeudi après-midi (David Zmiaikou), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $ABC$ un triangle et soit $M$ le milieu de $[AB]$.

On trace une droite $d$ quelconque passant par le sommet $C$, et on appelle $P$ et $Q$ les
pieds des perpendiculaires à $d$ issues de $A$ et de $B$ respectivement.

Montrer que $MP = MQ$.

## Hints

1. Fais plusieurs figures, en faisant tourner la droite $d$ autour de $C$. Essaie aussi une
   position où $d$ coupe le segment $[AB]$.
2. Appelle $N$ le pied de la perpendiculaire à $d$ issue de $M$. Les trois droites $(AP)$,
   $(MN)$ et $(BQ)$ sont parallèles : pourquoi ?
3. Que peux-tu dire de $N$ par rapport à $P$ et $Q$ ?
4. Une fois $N$ identifié, quelle est la nature de la droite $(MN)$ vis-à-vis du segment
   $[PQ]$ ?

## Solution

**Un point de plus.** Notons $N$ le pied de la perpendiculaire à $d$ issue de $M$.

Les trois droites $(AP)$, $(MN)$ et $(BQ)$ sont toutes perpendiculaires à $d$, donc elles
sont parallèles entre elles.

**$N$ est le milieu de $[PQ]$.** Ces trois parallèles coupent la droite $(AB)$ en $A$, $M$,
$B$ et la droite $d$ en $P$, $N$, $Q$. D'après le théorème de Thalès appliqué à ce faisceau
de parallèles,

$$\frac{PN}{NQ} = \frac{AM}{MB} .$$

Comme $M$ est le milieu de $[AB]$, on a $AM = MB$, donc $PN = NQ$ : **$N$ est le milieu de
$[PQ]$.**

**On conclut.** La droite $(MN)$ passe par le milieu de $[PQ]$ et lui est perpendiculaire :
c'est la **médiatrice** de $[PQ]$.

Or tout point de la médiatrice d'un segment est à égale distance de ses extrémités. Comme
$M$ est sur $(MN)$,

$$MP = MQ .$$

## Going further

Le résultat est vrai **quelle que soit** la droite $d$ passant par $C$, y compris quand elle
traverse le segment $[AB]$, auquel cas $A$ et $B$ sont de part et d'autre de $d$ : le
théorème de Thalès s'applique encore, et $N$ reste le milieu de $[PQ]$.

Et le sommet $C$ dans tout cela ? Il n'a servi à rien ! La démonstration n'utilise à aucun
moment que $d$ passe par $C$. Le résultat vaut donc pour n'importe quelle droite $d$ du plan :
les projetés de $A$ et de $B$ sur $d$ sont toujours à égale distance du projeté de $M$, et $M$
est toujours à égale distance de ces deux projetés.

C'est une remarque utile à faire en général : quand une démonstration n'utilise pas toutes
les hypothèses, c'est que l'énoncé démontre en fait un résultat plus fort.
