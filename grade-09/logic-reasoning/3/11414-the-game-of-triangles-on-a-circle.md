---
id: "11414"
title: "Le jeu des triangles sur un cercle"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 6 (le même texte est l'exercice 13 des Seniors) ; corrigé 2021-03_Corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. On place $n$ points sur un cercle. Noémie et Paul jouent chacun à
leur tour, et Noémie commence.

À son tour, un joueur trace un triangle dont les trois sommets sont parmi les $n$ points, en
respectant deux règles :

- aucun sommet du nouveau triangle n'est déjà le sommet d'un triangle tracé ;
- les côtés du nouveau triangle ne coupent pas les côtés des triangles déjà tracés.

Le premier joueur qui ne peut plus jouer a perdu. Lequel des deux joueurs peut être sûr de gagner,
et comment doit-il jouer ?

## Hints

1. Joue quelques parties avec $n = 6$, $n = 7$ et $n = 8$. Qui gagne ?
2. Après le premier triangle, les points libres sont répartis sur trois arcs du cercle. Peut-on
   tracer ensuite un triangle qui a des sommets sur deux arcs différents ?
3. Noémie peut-elle tracer son premier triangle de façon que les deux grands arcs restants
   contiennent le même nombre de points ? Elle pourra ensuite imiter Paul.

## Solution

**C'est Noémie qui gagne, quel que soit $n$.** Voici sa stratégie.

**Les points libres sont rangés sur des arcs.** Après qu'un triangle $ABC$ a été tracé, ses trois
sommets coupent le cercle en trois arcs : l'arc entre $A$ et $B$, l'arc entre $B$ et $C$ et l'arc
entre $C$ et $A$. Les points encore libres sont sur ces arcs.

Prenons un point libre $P$ sur l'arc entre $A$ et $B$, et un point libre $Q$ sur un autre arc. En
parcourant le cercle, on rencontre $A$, puis $P$, puis $B$, puis $Q$ : le segment $[PQ]$ a une
extrémité de chaque côté de la corde $[AB]$, donc il coupe le côté $[AB]$. Un triangle tracé plus
tard ne peut donc pas avoir deux sommets sur deux arcs différents : **ses trois sommets sont sur un
même arc**.

De plus, deux triangles tracés sur deux arcs différents ne se gênent jamais. Chaque arc forme donc
une petite partie indépendante, et ce qui compte sur un arc, c'est seulement l'ordre de ses points.

**Le premier coup de Noémie.** Les $n - 3$ points qui restent après le premier triangle s'écrivent
$n - 3 = 2k + r$ avec $r = 0$ si $n - 3$ est pair et $r = 1$ s'il est impair. Noémie trace son
premier triangle de sorte que :

- l'arc entre $A$ et $B$ contienne $k$ points ;
- l'arc entre $B$ et $C$ contienne $r$ point (donc $0$ ou $1$) ;
- l'arc entre $C$ et $A$ contienne $k$ points.

C'est possible : en numérotant les points $0, 1, \ldots, n-1$ dans l'ordre, elle prend $A = 0$,
$B = k + 1$ et $C = k + 2 + r$.

L'arc entre $B$ et $C$ a au plus un point, on ne pourra jamais y tracer de triangle. Le jeu se passe
donc sur les deux arcs de $k$ points, qui sont pareils.

**La stratégie d'imitation.** Sur l'arc entre $A$ et $B$, numérotons les points $1, 2, \ldots, k$
en partant de $A$. Sur l'arc entre $A$ et $C$, numérotons-les aussi $1, 2, \ldots, k$ en partant de
$A$. À chaque fois que Paul trace un triangle sur un des deux arcs, Noémie trace le triangle qui a
les mêmes numéros sur l'autre arc.

Pourquoi ce coup est-il toujours permis ? Juste avant le coup de Paul, les deux arcs sont dans le
même état : mêmes numéros utilisés, mêmes triangles. Le coup de Paul était permis sur son arc. Le
coup copié utilise des points libres sur l'autre arc, et il ne coupe rien, car savoir si deux
segments se coupent ne dépend que de l'ordre de leurs extrémités sur l'arc, et cet ordre est le même.
Après la réponse de Noémie, les deux arcs sont de nouveau dans le même état.

**Fin de la partie.** Chaque coup utilise trois points, donc la partie s'arrête forcément. Noémie a
toujours une réponse aux coups de Paul. C'est donc Paul qui, le premier, ne peut plus jouer.

Le cas $n = 3$ entre dans ce raisonnement avec $k = 0$ : Noémie trace le seul triangle possible et
Paul ne peut pas jouer.

**Conclusion.** Noémie, qui commence, gagne toujours : elle partage les points restants en deux
arcs de même taille avec son premier triangle, puis elle copie chaque coup de Paul sur l'autre arc.
