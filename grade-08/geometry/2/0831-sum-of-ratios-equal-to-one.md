---
id: "0831"
title: "Une somme de rapports qui fait 1"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [thales, losange, paralleles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 12"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABCD$ est un losange. Le point $E$ est sur le côté $[BC]$. On trace :

- la parallèle à $(AB)$ passant par $E$, qui coupe la diagonale $[AC]$ en $F$ ;
- la parallèle à $(AC)$ passant par $E$, qui coupe le côté $[AB]$ en $G$.

![Le losange ABCD, sa diagonale [AC], le point E sur [BC], et les deux parallèles qui donnent F et G](0831-figure-1.svg)

Démontrer que

$$\frac{CF}{CA} + \frac{BG}{AB} = 1.$$

## Hints

1. Oublie un instant le losange : les points $A$, $B$, $C$, $E$, $F$, $G$ sont tous dans le triangle $ABC$ ou sur ses côtés. C'est là que tout se passe.
2. Dans le triangle $ABC$, la droite $(EF)$ est parallèle au côté $(AB)$. Le théorème de Thalès compare alors $\dfrac{CF}{CA}$ à un rapport de longueurs portées par $[CB]$.
3. Recommence avec $(EG)$, parallèle au côté $(AC)$, pour le rapport $\dfrac{BG}{BA}$.
4. Additionne les deux rapports obtenus : le point $E$ coupe le segment $[BC]$ en deux morceaux.

## Solution

Tout se passe dans le triangle $ABC$ : le losange sert seulement à fabriquer la figure.

**Premier rapport.** Dans le triangle $ABC$, le point $E$ est sur $[CB]$, le point $F$ est sur $[CA]$, et $(EF)$ est parallèle à $(AB)$. Le théorème de Thalès donne

$$\frac{CF}{CA} = \frac{CE}{CB}.$$

**Deuxième rapport.** Toujours dans le triangle $ABC$, le point $E$ est sur $[BC]$, le point $G$ est sur $[BA]$, et $(EG)$ est parallèle à $(AC)$. Le théorème de Thalès donne cette fois

$$\frac{BG}{BA} = \frac{BE}{BC}.$$

**On additionne.** Comme $BA = AB$ et $CB = BC$,

$$\frac{CF}{CA} + \frac{BG}{AB} = \frac{CE}{BC} + \frac{BE}{BC} = \frac{CE + EB}{BC}.$$

Or le point $E$ est entre $B$ et $C$, donc $CE + EB = BC$, et la fraction vaut $1$ :

$$\frac{CF}{CA} + \frac{BG}{AB} = 1.$$

**Remarque.** Le losange n'a joué aucun rôle : la démonstration n'utilise que le triangle $ABC$. Le résultat est donc vrai dans n'importe quel triangle.

## Going further

1. Où faut-il placer $E$ sur $[BC]$ pour que $\dfrac{CF}{CA} = \dfrac{BG}{AB}$ ? Que valent alors les deux rapports ?
2. Montrer que le quadrilatère $AGEF$ est un parallélogramme.
