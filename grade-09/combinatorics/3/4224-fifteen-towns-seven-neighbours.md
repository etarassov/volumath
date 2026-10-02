---
id: "4224"
title: "Quinze villes, sept voisines chacune"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, graphe, connexite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Graphs and Geometry"
  reference: "Handout-2065-1860.pdf, exercice 2 (corrigé dans Handout-2066-1860.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2065-1860.pdf"
---

## Statement

Un pays compte $15$ villes. Chaque route relie deux villes, et chaque ville est reliée
directement par une route à au moins $7$ autres villes.

Démontrer qu'on peut aller en voiture de n'importe quelle ville à n'importe quelle autre en
empruntant les routes.

## Hints

1. Prends deux villes quelconques $A$ et $B$. Il n'y a que deux situations : ou bien une route
   les relie directement, ou bien non.
2. Dans le second cas, compte combien de villes sont reliées à $A$, et combien sont reliées à
   $B$. Ces villes sont à chercher parmi combien de villes au total ?
3. Si deux groupes de $7$ villes sont pris dans un ensemble de $13$ villes, peuvent-ils être
   complètement séparés ?

## Solution

Soient $A$ et $B$ deux villes quelconques du pays. Montrons qu'on peut aller de $A$ à $B$.

**Premier cas : une route relie directement $A$ et $B$.**

Il n'y a rien à faire, on emprunte cette route.

**Second cas : aucune route ne relie directement $A$ et $B$.**

Mettons de côté les villes $A$ et $B$. Il reste
$$15 - 2 = 13 \text{ villes}.$$

La ville $A$ est reliée à au moins $7$ villes. Comme elle n'est pas reliée à $B$, ces villes font
toutes partie des $13$ villes restantes. Appelons $\mathcal{A}$ cet ensemble d'au moins $7$ villes.

De la même façon, la ville $B$ est reliée à au moins $7$ villes, toutes prises parmi les mêmes
$13$. Appelons $\mathcal{B}$ cet ensemble d'au moins $7$ villes.

Si $\mathcal{A}$ et $\mathcal{B}$ n'avaient aucune ville en commun, alors en les réunissant on
obtiendrait au moins
$$7 + 7 = 14$$
villes différentes, toutes choisies parmi $13$. C'est impossible.

Il existe donc au moins une ville $C$ qui appartient à la fois à $\mathcal{A}$ et à $\mathcal{B}$ :
une ville reliée à $A$ **et** reliée à $B$. On va alors de $A$ à $B$ en passant par $C$.

**Conclusion.** Dans tous les cas, on peut aller de $A$ à $B$, et même en au plus deux routes.
Comme $A$ et $B$ étaient deux villes quelconques, tout le pays est accessible depuis n'importe
quelle ville.

**Remarque.** Le nombre $7$ n'est pas choisi au hasard : $7 + 7 = 14 > 13$. Avec seulement $6$
routes garanties par ville, la conclusion tomberait. On peut en effet séparer $15$ villes en deux
groupes de $7$ et $8$ villes, relier complètement chaque groupe de son côté et ne tracer aucune
route entre les deux : chaque ville du premier groupe a $6$ voisines, chaque ville du second en a
$7$, et pourtant on ne peut pas passer d'un groupe à l'autre.

## Going further

Un pays compte $n$ villes et chaque ville est reliée à au moins $k$ autres. Quelle condition sur
$k$ le raisonnement ci-dessus demande-t-il pour fonctionner ?
(Réponse : $2k > n - 2$, c'est-à-dire $k > \dfrac{n-2}{2}$.)
