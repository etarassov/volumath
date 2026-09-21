---
id: "8804"
title: "Deux parallèles aux bissectrices"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [bissectrice, cercle inscrit, angles alternes internes, triangle isocele]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 5 (collégiens), p. 23"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

$ABC$ est un triangle et $I$ est le centre de son cercle inscrit, c'est-à-dire le point où se coupent les trois bissectrices du triangle.

- La parallèle à $(BI)$ passant par $C$ coupe la droite $(AB)$ en un point $P$.
- La parallèle à $(CI)$ passant par $B$ coupe la droite $(AC)$ en un point $Q$.

On trace ensuite deux cercles :

- le cercle de centre $P$ qui passe par $B$ ; il coupe le segment $[PQ]$ en un point $X$ ;
- le cercle de centre $Q$ qui passe par $C$ ; il coupe le segment $[PQ]$ en un point $Y$.

![Le triangle ABC, le point I, les points P et Q sur les droites (AB) et (AC), et les points X et Y du segment [PQ]](8804-figure-1.svg)

Montrer que $PY = QX$.

## Hints

1. Les deux cercles ne servent qu'à fabriquer deux longueurs : $PX$ est un rayon du premier, $QY$ est un rayon du second. Écris ces deux égalités de longueurs tout de suite.
2. Le problème revient donc à comparer $PB$ et $QC$. Essaie de montrer que ces deux longueurs sont égales.
3. Pour $PB$ : dans le triangle $BPC$, compare l'angle en $P$ et l'angle en $C$. Le parallélisme $(BI) \parallel (CP)$ donne deux égalités d'angles, et la bissectrice en donne une troisième.
4. Une fois $PX = QY$ obtenu, il ne reste qu'un petit calcul de longueurs sur le segment $[PQ]$, sans aucune géométrie.

## Solution

**Le plan.** On va montrer que $PB = BC = QC$. Comme $PX = PB$ et $QY = QC$ (ce sont des rayons), on aura $PX = QY$, et un calcul de longueurs sur $[PQ]$ terminera.

### Étape 1 : le triangle $BPC$ est isocèle en $B$

Le point $I$ est le centre du cercle inscrit, donc la droite $(BI)$ est la bissectrice de l'angle $\widehat{ABC}$ :
$$\widehat{ABI} = \widehat{IBC}.$$

Maintenant on utilise le parallélisme $(BI) \parallel (CP)$ deux fois.

- Avec la sécante $(BC)$ : les angles $\widehat{IBC}$ et $\widehat{BCP}$ sont alternes-internes, donc $\widehat{BCP} = \widehat{IBC}$.
- Avec la sécante $(AB)$, sur laquelle se trouve $P$ : les angles $\widehat{ABI}$ et $\widehat{BPC}$ sont correspondants, donc $\widehat{BPC} = \widehat{ABI}$.

En mettant bout à bout,
$$\widehat{BCP} = \widehat{IBC} = \widehat{ABI} = \widehat{BPC}.$$

Le triangle $BPC$ a donc deux angles égaux, celui en $C$ et celui en $P$. Il est isocèle, et les côtés égaux sont ceux qui leur font face :
$$BP = BC .$$

### Étape 2 : le triangle $BQC$ est isocèle en $C$

Le raisonnement est exactement le même, en échangeant les rôles de $B$ et $C$. La droite $(CI)$ est la bissectrice de $\widehat{ACB}$, et $(CI) \parallel (BQ)$ donne
$$\widehat{CBQ} = \widehat{ICB} = \widehat{ACI} = \widehat{CQB},$$
donc le triangle $BQC$ est isocèle et
$$CQ = BC .$$

En rassemblant les deux étapes :
$$BP = BC = CQ .$$

### Étape 3 : les deux rayons

Par construction, $X$ est sur le cercle de centre $P$ passant par $B$, donc $PX$ et $PB$ sont deux rayons du même cercle :
$$PX = PB .$$
De même $Y$ est sur le cercle de centre $Q$ passant par $C$, donc
$$QY = QC .$$

Avec l'étape 2, cela donne
$$PX = PB = BC = QC = QY, \qquad \text{donc} \qquad PX = QY .$$

### Étape 4 : le calcul final sur le segment

Les quatre points $P$, $X$, $Y$, $Q$ sont tous sur le segment $[PQ]$. On peut donc écrire la longueur $PQ$ de deux façons :
$$PQ = PX + XQ \qquad \text{et} \qquad PQ = PY + YQ .$$

D'où
$$PY = PQ - YQ = PQ - PX = QX .$$

**Conclusion.** On a bien $PY = QX$.

Remarque : la longueur commune $PX = QY$ vaut $BC$. Selon la forme du triangle, $X$ peut se trouver avant ou après $Y$ sur le segment $[PQ]$ ; le calcul de l'étape 4 ne dépend pas de cet ordre. Attention aussi à une erreur fréquente : les droites $(PQ)$ et $(BC)$ ne sont **pas** parallèles en général.

## Going further

Que devient la figure lorsque le triangle $ABC$ est isocèle en $A$ ? Et lorsqu'il est équilatéral ?
