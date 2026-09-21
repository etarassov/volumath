---
id: "7078"
title: "Assez de segments pour forcer un triangle"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [graphe, recurrence, triangle, principe extremal]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mardi : combinatoire, récurrence, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $n \geq 2$. On place $2n$ points dans le plan et on trace $n^2 + 1$ segments joignant
certains de ces points deux à deux (jamais deux segments entre les deux mêmes points).

Montrer qu'il existe alors trois points reliés deux à deux : autrement dit, la figure
contient un **triangle**.

## Hints

1. Ce n'est pas un problème de géométrie : seules comptent les paires de points reliées ou
   non. Les positions des points n'interviennent jamais.
2. Traite d'abord le plus petit cas, $n = 2$ : $4$ points et $5$ segments. Combien de
   segments peut-on tracer au maximum entre $4$ points ?
3. Pour la récurrence, prends un segment $[AB]$ et suppose qu'il n'y a pas de triangle. Que
   peux-tu dire des points reliés à $A$ et de ceux reliés à $B$ ?
4. Aucun point ne peut être relié à la fois à $A$ et à $B$. Combien de segments partent donc
   de $A$ ou de $B$, au maximum ?
5. Enlève $A$ et $B$. Combien de points et combien de segments reste-t-il ?

## Solution

Rappelons le vocabulaire : le **degré** d'un point est le nombre de segments qui en partent.

Raisonnons par récurrence sur $n \geq 2$.

**Cas de base : $n = 2$.**

On a $4$ points et $2^2 + 1 = 5$ segments. Entre $4$ points, on peut tracer au plus
$\dfrac{4 \times 3}{2} = 6$ segments. Il en manque donc exactement un.

Notons $A$, $B$, $C$, $D$ les quatre points et supposons que le segment manquant soit
$[CD]$. Alors les segments $[AB]$, $[AC]$ et $[BC]$ sont tous tracés : $A$, $B$, $C$ forment
un triangle. $\checkmark$

**Hérédité.**

Supposons le résultat vrai au rang $n$, et donnons-nous $2(n+1)$ points avec
$(n+1)^2 + 1$ segments. Raisonnons par l'absurde : supposons qu'il n'y ait **aucun**
triangle.

*Choisir un segment.* Comme $(n+1)^2 + 1 \geq 1$, il existe au moins un segment ; appelons
$[AB]$ l'un d'entre eux.

*Aucun voisin commun.* Si un point $X$ était relié à la fois à $A$ et à $B$, alors $A$, $B$,
$X$ formeraient un triangle. Il n'y en a donc aucun : les points reliés à $A$ et les points
reliés à $B$ forment deux ensembles **disjoints**.

Ces deux ensembles sont contenus dans l'ensemble des $2n+2$ points, donc
$$\deg(A) + \deg(B) \leq 2n + 2 .$$

*Compter les segments qui touchent $A$ ou $B$.* Il y en a exactement
$$\deg(A) + \deg(B) - 1 ,$$
le $-1$ venant du segment $[AB]$, compté deux fois. Ce nombre est donc au plus
$$2n + 2 - 1 = 2n + 1 .$$

*Effacer $A$ et $B$.* Supprimons ces deux points et tous les segments qui les touchent. Il
reste
$$2(n+1) - 2 = 2n \text{ points}$$
et au moins
$$(n+1)^2 + 1 - (2n+1) = n^2 + 2n + 1 + 1 - 2n - 1 = n^2 + 1 \text{ segments} .$$

*Appliquer l'hypothèse de récurrence.* On a $2n$ points et au moins $n^2 + 1$ segments : par
hypothèse de récurrence, il existe un triangle parmi eux.

Mais ce triangle est aussi un triangle de la figure de départ, ce qui contredit l'hypothèse
d'absurde.

**Conclusion.** Il existe donc bien un triangle, ce qui achève la récurrence. $\blacksquare$

## Going further

Le résultat est **optimal** : avec seulement $n^2$ segments, on peut éviter tout triangle.

Voici comment. Partage les $2n$ points en deux paquets de $n$ points, un paquet « gauche » et
un paquet « droit ». Trace tous les segments allant d'un point de gauche à un point de droite,
et aucun autre. Cela fait exactement
$$n \times n = n^2 \text{ segments} .$$

Et il n'y a pas de triangle : un triangle aurait trois sommets, donc deux dans le même paquet,
or deux points d'un même paquet ne sont jamais reliés.

C'est le **théorème de Mantel** (1907), premier cas du théorème de Turán : parmi $m$ points,
on peut tracer au plus $\left\lfloor \dfrac{m^2}{4} \right\rfloor$ segments sans former de
triangle. Ici $m = 2n$, et $\dfrac{m^2}{4} = n^2$.
