---
id: "7146"
title: "Des rois sur l'échiquier"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [echiquier, decoupage-en-blocs, majoration, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Avancés : pavages et coloriages », samedi après-midi (Matthieu Piquerez), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

Aux échecs, un roi placé sur une case contrôle les huit cases qui la touchent, par un côté ou
par un coin. Deux rois se mettent donc mutuellement en échec dès que leurs cases se touchent,
même seulement par un coin.

Combien de rois peut-on placer au maximum sur un échiquier $8 \times 8$ sans qu'aucun ne soit
en échec ?

## Hints

1. Une réponse complète comporte deux parties : un placement qui marche, et une preuve qu'on
   ne peut pas faire mieux. Ne néglige aucune des deux.
2. Pour le placement, essaie de poser les rois régulièrement, en laissant une ligne et une
   colonne vides entre deux rois voisins.
3. Pour la majoration, découpe l'échiquier en morceaux et montre que chaque morceau ne peut
   contenir qu'un seul roi. Quelle taille de morceau choisir ?
4. Deux cases d'un même carré $2 \times 2$ se touchent-elles toujours ?

## Solution

**On ne peut pas dépasser $16$ rois.**

Découpons l'échiquier $8 \times 8$ en $16$ carrés $2 \times 2$, en coupant entre les colonnes
$2$ et $3$, $4$ et $5$, $6$ et $7$, et de même entre les lignes. Ces $16$ blocs recouvrent
l'échiquier sans se chevaucher.

Dans un carré $2 \times 2$, deux cases quelconques se touchent toujours : soit par un côté,
soit par un coin. Deux rois placés dans le même bloc se mettraient donc mutuellement en
échec. **Chaque bloc contient donc au plus un roi.**

Comme il y a $16$ blocs, il y a au plus $16$ rois.

**Seize rois, c'est possible.**

Numérotons les lignes et les colonnes de $1$ à $8$, et plaçons un roi sur chaque case dont le
numéro de ligne et le numéro de colonne sont tous les deux **impairs**, c'est-à-dire aux
intersections des lignes $1, 3, 5, 7$ et des colonnes $1, 3, 5, 7$.

Cela fait $4 \times 4 = 16$ rois.

Prenons deux de ces rois, en des cases distinctes. Leurs numéros de ligne sont tous les deux
impairs, donc leur différence est paire : elle vaut $0$ ou au moins $2$. Même chose pour les
colonnes. Et les deux différences ne peuvent pas être nulles en même temps, sinon il
s'agirait du même roi. L'une des deux vaut donc au moins $2$, et les deux cases ne se
touchent pas, pas même par un coin.

**Conclusion.** Le nombre maximal de rois est $\boxed{16}$.

## Going further

Le raisonnement ne dépend pas de la taille $8$. Sur un échiquier $2n \times 2n$, le même
découpage en carrés $2 \times 2$ donne au plus $n^2$ rois, et le placement sur les cases à
double numéro impair en donne exactement $n^2$.

Pour un échiquier $m \times n$ quelconque, la réponse est
$\left\lceil \frac{m}{2} \right\rceil \times \left\lceil \frac{n}{2} \right\rceil$, avec le
même argument : on découpe en blocs $2 \times 2$, éventuellement tronqués sur les bords.

Retiens la méthode, car elle sert souvent : pour majorer un nombre d'objets qui « se
gênent », on découpe le terrain en zones telles que chaque zone ne puisse en accueillir
qu'un. Pour montrer que la majoration est atteinte, on construit un exemple, et le découpage
lui-même suggère lequel.
