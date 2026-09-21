---
id: "8668"
title: "Trop de segments forcent un triangle"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [recurrence, graphe, triangle, comptage des aretes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 13. Le résultat est le théorème de Mantel."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On place $2n$ points dans l'espace, et on trace $n^2 + 1$ segments entre ces points (au plus un segment entre deux points donnés).

Montrer qu'on a forcément tracé un **triangle**, c'est-à-dire trois points reliés deux à deux.

## Hints

1. Commence par le plus petit cas, $n = 2$ : il y a $4$ points et $5$ segments. Combien de segments pourrait-on tracer en tout entre $4$ points ?
2. Pour l'hérédité, on veut passer de $2n$ points à $2n+2$ points. L'idée est de **supprimer deux points** bien choisis et de se ramener au cas précédent.
3. Choisis un segment $[AB]$ déjà tracé, et regarde les $2n$ autres points un par un.
4. Si un point $C$ est relié à la fois à $A$ et à $B$, tu as gagné tout de suite. Sinon, que peux-tu dire du nombre de segments partant de $A$ ou de $B$ ?
5. Compte combien de segments disparaissent quand on efface $A$, $B$ et tout ce qui les touche. Compare avec ce qu'il faut pour appliquer l'hypothèse de récurrence.

## Solution

Montrons par récurrence sur $n \geqslant 2$ la propriété

> $P(n)$ : « parmi $2n$ points reliés par $n^2 + 1$ segments, il y a toujours un triangle ».

### Initialisation ($n = 2$)

On a $4$ points, appelons-les $A$, $B$, $C$, $D$, et $2^2 + 1 = 5$ segments tracés.

Entre $4$ points, il y a en tout $6$ paires possibles, donc au plus $6$ segments. Comme $5$ sont tracés, il en manque exactement un. Appelons $[AB]$ le segment manquant, quitte à renommer les points.

Alors les segments $[AC]$, $[AD]$ et $[CD]$ sont tous tracés : le triangle $ACD$ est bien là.

$P(2)$ est vraie.

### Hérédité

Soit $n \geqslant 2$, et supposons $P(n)$ vraie. Donnons-nous $2n + 2$ points reliés par $(n+1)^2 + 1$ segments.

**On choisit un segment.** Il y a au moins un segment tracé ; appelons-le $[AB]$. Les $2n$ autres points seront notés $C_1, \ldots, C_{2n}$.

**Premier cas : la chance.** S'il existe un indice $i$ tel que $[AC_i]$ **et** $[BC_i]$ soient tous les deux tracés, alors le triangle $ABC_i$ est complet et c'est terminé.

**Second cas : on efface $A$ et $B$.** Sinon, pour chaque indice $i$, **au plus un** des deux segments $[AC_i]$, $[BC_i]$ est tracé. Les segments qui touchent $A$ ou $B$ sont donc :

- au plus un par indice $i$, soit au plus $2n$ segments ;
- plus le segment $[AB]$ lui-même.

Cela fait **au plus $2n + 1$ segments** touchant $A$ ou $B$.

Effaçons maintenant les points $A$ et $B$, et avec eux tous les segments qui les touchent. Il reste

$$2n + 2 - 2 = 2n \quad \text{points}$$

et au moins

$$\left[(n+1)^2 + 1\right] - (2n+1) = n^2 + 2n + 1 + 1 - 2n - 1 = n^2 + 1 \quad \text{segments} .$$

*(S'il en reste davantage, c'est encore mieux : on peut toujours en effacer pour se ramener à exactement $n^2 + 1$.)*

L'hypothèse de récurrence $P(n)$ s'applique à cette configuration : elle contient un triangle. Ce triangle ne touche ni $A$ ni $B$, donc il était déjà présent dans la configuration de départ.

$P(n+1)$ est vraie.

### Conclusion

$$\boxed{\text{Avec } 2n \text{ points et } n^2+1 \text{ segments, il y a toujours un triangle.}}$$

## Going further

**Le résultat est optimal.** Avec seulement $n^2$ segments, on peut éviter tout triangle. Voici comment : partage les $2n$ points en deux camps de $n$ points chacun, et relie chaque point du premier camp à chaque point du second, sans jamais relier deux points d'un même camp. Cela fait exactement $n \times n = n^2$ segments.

Un triangle aurait trois sommets, donc deux d'entre eux seraient dans le même camp — mais deux points d'un même camp ne sont jamais reliés. Il n'y a donc aucun triangle. Le nombre $n^2 + 1$ de l'énoncé est bien le premier qui force un triangle.

Ce résultat s'appelle le **théorème de Mantel** (1907). Il a été généralisé par Turán : pour forcer quatre points tous reliés deux à deux, il faut partager les points en trois camps au lieu de deux, et le seuil change en conséquence.
