---
id: "8012"
title: "Les angles serrés d'un polygone à 2017 côtés"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [polygone, angles, somme, inegalite, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 12 (repris en éliminatoires lycéens, exercice 4)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On considère un polygone non croisé à $2017$ côtés dont tous les angles sont strictement
inférieurs à $180^\circ$.

Quel est le nombre maximal d'angles de ce polygone qui peuvent être strictement inférieurs à
$150^\circ$ ?

## Hints

1. La somme des angles d'un polygone à $n$ côtés ne dépend que de $n$. Combien vaut-elle ?
   (Découpe le polygone en triangles à partir d'un sommet.)
2. Suppose que $k$ angles sont inférieurs à $150^\circ$. Majore la somme de tous les angles :
   les $k$ petits sont inférieurs à $150^\circ$, les autres à $180^\circ$.
3. Compare cette majoration à la vraie somme. Tu obtiens une inégalité sur $k$.
4. Le plus dur reste à faire : dessiner un polygone qui atteint ce nombre. Pars d'un polygone
   régulier à $11$ côtés et casse chacun de ses côtés en une multitude de petits segments
   presque alignés.

## Solution

**La somme des angles.** Un polygone non croisé à $n$ côtés se découpe en $n - 2$ triangles
en traçant les diagonales issues d'un même sommet, et la somme de ses angles vaut donc
$(n-2) \times 180^\circ$. Ici $n = 2017$ :

$$S = 2015 \times 180^\circ = 362\,700^\circ.$$

**Une majoration.** Supposons que $k$ des angles soient strictement inférieurs à $150^\circ$.
Les $2017 - k$ autres sont strictement inférieurs à $180^\circ$ par hypothèse. Donc

$$S < 150k + 180\,(2017 - k) = 180 \times 2017 - 30k = 363\,060 - 30k.$$

**On en tire une borne sur $k$.** En combinant les deux lignes :

$$362\,700 < 363\,060 - 30k, \qquad \text{donc} \qquad 30k < 360, \qquad \text{donc} \qquad k < 12.$$

Comme $k$ est un entier, $k \leqslant 11$.

**Il reste à montrer que $11$ est atteint.** Partons d'un polygone régulier à $11$ côtés. Ses
angles valent tous

$$\frac{9 \times 180^\circ}{11} = \frac{1620^\circ}{11},$$

c'est-à-dire un peu moins de $148^\circ$ : ils sont bien inférieurs à $150^\circ$.
Mais ce polygone n'a que $11$ côtés, pas $2017$.

Ajoutons-lui des sommets. Sur chacun de ses $11$ côtés, plaçons $182$ ou $183$ nouveaux
sommets, de façon à en ajouter $2006$ en tout ; poussons-les très légèrement vers
l'extérieur, de sorte que le polygone reste convexe. On obtient un polygone à
$11 + 2006 = 2017$ côtés.

Chacun des $2006$ nouveaux angles est presque plat, donc compris entre $150^\circ$ et
$180^\circ$ : ces angles-là ne nous gênent pas. Et si l'on pousse assez peu, les $11$ angles
d'origine restent inférieurs à $150^\circ$, puisqu'ils partaient d'un peu moins de
$148^\circ$ et qu'on
peut les modifier d'aussi peu qu'on veut.

Ce polygone a donc exactement $11$ angles strictement inférieurs à $150^\circ$.

**Le nombre maximal est $11$.**

## Going further

La même méthode répond à toutes les questions de ce genre. Si l'on cherche combien d'angles
d'un polygone à $n$ côtés peuvent être inférieurs à $180^\circ - t$, la majoration donne
$tk < 360^\circ$, soit $k < 360/t$ : le nombre cherché ne dépend pas de $n$ du tout, pourvu
que $n$ soit assez grand.

Autre façon de voir la même chose : en parcourant un polygone convexe, on tourne en tout de
$360^\circ$. Un angle inférieur à $150^\circ$ correspond à un virage de plus de $30^\circ$, et
on ne peut pas faire douze virages de plus de $30^\circ$ en tournant seulement de $360^\circ$.
