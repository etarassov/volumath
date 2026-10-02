---
id: "7745"
title: "Deux disques suffisent à tout recouvrir"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [distance, disjonction-de-cas, recouvrement, disque]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 après-midi (Margaret Bilu), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On se donne $2014$ points du plan. On suppose que, **parmi trois points quelconques, il y en a toujours deux dont la distance est inférieure ou égale à $1$**.

Montrer qu'on peut recouvrir tous ces points par deux disques fermés de rayon $1$.

*Un disque fermé de rayon $1$ et de centre $O$ est l'ensemble des points $M$ tels que $OM \leqslant 1$.*

## Hints

1. Sépare en deux cas selon que toutes les distances entre les points sont $\leqslant 1$, ou qu'il en existe une $> 1$.
2. Si toutes les distances sont $\leqslant 1$, un seul disque suffit. Où placer son centre ?
3. Sinon, prends deux points $A$ et $B$ avec $AB > 1$, et applique l'hypothèse au trio formé par $A$, $B$ et n'importe quel troisième point.
4. Quels disques choisir alors ?

## Solution

**Premier cas : toutes les distances sont inférieures ou égales à $1$.**

Choisissons n'importe lequel des points, appelons-le $A$. Tout autre point $M$ vérifie $AM \leqslant 1$, donc appartient au disque fermé de centre $A$ et de rayon $1$. Le point $A$ lui-même y est aussi, puisque $AA = 0$.

Un seul disque suffit donc, et on peut placer le second n'importe où.

**Second cas : deux points sont à distance strictement plus grande que $1$.**

Notons $A$ et $B$ deux points tels que $AB > 1$, et notons

- $\mathcal{D}_A$ le disque fermé de centre $A$ et de rayon $1$ ;
- $\mathcal{D}_B$ le disque fermé de centre $B$ et de rayon $1$.

Montrons que chacun des $2014$ points est dans $\mathcal{D}_A$ ou dans $\mathcal{D}_B$.

- Le point $A$ est dans $\mathcal{D}_A$, et le point $B$ est dans $\mathcal{D}_B$.
- Soit $C$ l'un des autres points. Appliquons l'hypothèse au trio $\{A, B, C\}$ : deux de ces trois points sont à distance $\leqslant 1$. Ce ne sont pas $A$ et $B$, puisque $AB > 1$. Donc

$$AC \leqslant 1 \qquad \text{ou} \qquad BC \leqslant 1 ,$$

c'est-à-dire que $C$ appartient à $\mathcal{D}_A$ ou à $\mathcal{D}_B$.

**Conclusion : dans les deux cas, deux disques fermés de rayon $1$ suffisent à recouvrir les $2014$ points.**

## Going further

Le nombre $2014$ ne sert à rien : la démonstration vaut pour n'importe quel nombre de points, et même pour une infinité, du moment que la condition sur les trios est vérifiée.

En revanche, **trois** disques ne suffiraient pas toujours si l'on remplaçait la condition par « parmi quatre points quelconques, deux sont à distance $\leqslant 1$ ». Ce genre de généralisation demande un tout autre travail, et c'est un thème classique de la géométrie combinatoire.
