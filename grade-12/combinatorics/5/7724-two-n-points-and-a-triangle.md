---
id: "7724"
title: "Assez de segments pour forcer un triangle"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [recurrence, graphe, triangle, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 après-midi (Cécile Gachet), exercice 6 (numérotation des solutions décalée d'un rang dans le document)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On place $2n$ points, et on trace $n^2 + 1$ segments joignant certains de ces points. Deux points sont joints par au plus un segment, et un segment joint toujours deux points distincts.

Montrer qu'on a forcément formé un **triangle**, c'est-à-dire trois points reliés deux à deux par des segments tracés.

*La position des points ne joue aucun rôle : seul compte qui est relié à qui.*

## Hints

1. Vérifie d'abord le cas $n = 2$ : $4$ points et $5$ segments. Combien de segments pourrait-on tracer au maximum entre $4$ points ?
2. Pour passer de $2n$ à $2n+2$ points, il faut savoir enlever deux points sans perdre trop de segments. Lesquels enlever ?
3. Choisis un segment $[AB]$ déjà tracé et suppose qu'il n'y a aucun triangle. Que peux-tu dire, pour chaque autre point $C$, des deux segments $[AC]$ et $[BC]$ ?
4. Compte alors combien de segments au maximum touchent $A$ ou $B$. Puis efface $A$ et $B$ et compte ce qui reste.

## Solution

**On raisonne par récurrence sur $n$.**

Pour $n \geqslant 2$, notons $P_n$ la propriété : « dès que l'on trace $n^2+1$ segments entre $2n$ points, il apparaît un triangle ».

**Initialisation : $n = 2$.**

On a $4$ points et $2^2 + 1 = 5$ segments. Entre $4$ points, le nombre total de segments possibles est

$$\frac{4 \times 3}{2} = 6 .$$

Comme on en a tracé $5$, il en manque exactement un : appelons $[AB]$ la paire non reliée, et $C$, $D$ les deux autres points. Alors les trois segments $[AC]$, $[AD]$ et $[CD]$ sont tous tracés, puisque la seule paire manquante est $\{A,B\}$. Les points $A$, $C$, $D$ forment donc un triangle, et $P_2$ est vraie.

**Hérédité : de $n$ à $n+1$.**

Supposons $P_n$ vraie pour un certain $n \geqslant 2$. Plaçons $2n + 2$ points et traçons $(n+1)^2 + 1$ segments. Supposons, en vue d'une contradiction, qu'il n'y a **aucun** triangle.

*On choisit un segment.* Il y a au moins un segment tracé (il y en a même beaucoup). Appelons $A$ et $B$ ses deux extrémités.

*Aucun point ne peut être relié aux deux.* Soit $C$ l'un des $2n$ autres points. Si les deux segments $[AC]$ et $[BC]$ étaient tracés, alors $A$, $B$, $C$ formeraient un triangle, ce qui est exclu. Donc **au plus un** des deux segments $[AC]$ et $[BC]$ est tracé.

*On compte les segments qui touchent $A$ ou $B$.* Ils sont de deux sortes :

- le segment $[AB]$ lui-même : cela fait $1$ ;
- les segments qui joignent $A$ ou $B$ à l'un des $2n$ autres points : d'après le point précédent, chacun de ces $2n$ points en fournit au plus $1$, donc au plus $2n$ en tout.

Au total, au plus $2n + 1$ segments touchent $A$ ou $B$.

*On efface $A$ et $B$.* Il reste $2n$ points, et le nombre de segments restants est au moins

$$(n+1)^2 + 1 - (2n+1) = n^2 + 2n + 1 + 1 - 2n - 1 = n^2 + 1 .$$

*On applique l'hypothèse de récurrence.* Nous avons donc $2n$ points portant au moins $n^2+1$ segments. D'après $P_n$, il y a un triangle parmi eux. Mais ce triangle est aussi un triangle de la figure de départ, ce qui contredit notre supposition.

La supposition « aucun triangle » est donc fausse : il y a bien un triangle, et $P_{n+1}$ est vraie.

**Conclusion.** Par principe de récurrence, $P_n$ est vraie pour tout $n \geqslant 2$ : avec $2n$ points et $n^2+1$ segments, un triangle apparaît toujours.

## Going further

Le nombre $n^2 + 1$ est le plus petit qui marche : avec $n^2$ segments, on peut éviter tout triangle. Il suffit de séparer les $2n$ points en deux camps de $n$ points, et de ne tracer que les segments joignant un point d'un camp à un point de l'autre. Cela fait exactement $n \times n = n^2$ segments, et il n'y a aucun triangle : un triangle aurait forcément deux de ses sommets dans le même camp, or ces deux-là ne sont jamais reliés.

C'est un cas particulier d'un résultat célèbre, le théorème de Turán, qui donne le nombre maximal de segments sans triangle pour un nombre quelconque de points.
