---
id: "7922"
title: "Le trapèze aux diagonales égales"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [inegalite-triangulaire, trapeze, diagonales, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 4 (énoncé p. 28, solution p. 30)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Dans le plan, on considère un trapèze $ABCD$ dont les deux diagonales ont la même longueur.

Prouver que, pour tout point $M$ du plan, la somme des distances de $M$ à trois sommets quelconques du trapèze est toujours **strictement** plus grande que la distance de $M$ au quatrième sommet.

## Hints

1. Traite d'abord le cas du sommet $A$ : il faut montrer $MA < MB + MC + MD$.
2. L'inégalité triangulaire dans le triangle $MCA$ donne $MA \le MC + CA$. Or $CA$ vaut aussi $BD$ : pourquoi est-ce utile ?
3. Applique de nouveau l'inégalité triangulaire, cette fois à $BD$, en passant par $M$.
4. Il reste le mot « strictement ». Écris précisément les deux cas d'égalité et montre qu'ils ne peuvent pas être vrais en même temps.

## Solution

**Ce qu'il faut montrer.** Par exemple pour le sommet $A$ :

$$MA < MB + MC + MD .$$

Les trois autres cas s'obtiendront de la même façon.

**Étape 1 : deux inégalités triangulaires.**

Pour trois points quelconques $P$, $Q$, $R$ du plan, on a $PR \le PQ + QR$, avec égalité si et seulement si $Q$ appartient au segment $[PR]$.

Appliquons cela deux fois.

- Dans le « triangle » $M$, $C$, $A$ :
  $$MA \le MC + CA , \qquad \text{égalité si et seulement si } C \in [MA] .$$
- Les diagonales ont la même longueur, donc $CA = BD$. Dans le « triangle » $B$, $M$, $D$ :
  $$BD \le BM + MD , \qquad \text{égalité si et seulement si } M \in [BD] .$$

En combinant :

$$MA \le MC + CA = MC + BD \le MC + MB + MD .$$

**Étape 2 : l'inégalité est stricte.**

L'inégalité obtenue serait une égalité seulement si les deux inégalités intermédiaires étaient des égalités, c'est-à-dire si l'on avait **à la fois**

$$C \in [MA] \qquad \text{et} \qquad M \in [BD] .$$

Supposons-le et notons $P$ le point d'intersection des diagonales $[AC]$ et $[BD]$ ; il existe, car un trapèze est un quadrilatère convexe, et il est strictement à l'intérieur des deux segments.

- La condition $C \in [MA]$ place $M$ sur la droite $(AC)$ (le point $C$ est entre $M$ et $A$).
- La condition $M \in [BD]$ place $M$ sur la droite $(BD)$.

Les deux droites $(AC)$ et $(BD)$ sont distinctes et sécantes : leur seul point commun est $P$. Donc $M = P$.

Mais $P$ est strictement à l'intérieur du segment $[AC]$ : $P$ est entre $A$ et $C$. Il est alors impossible que $C$ soit entre $M = P$ et $A$. Les deux conditions ne peuvent donc pas être vraies ensemble.

Conclusion : l'inégalité est stricte,

$$MA < MB + MC + MD .$$

**Étape 3 : les trois autres sommets.**

Le raisonnement se recopie en changeant les noms, toujours en utilisant $AC = BD$ :

- $MB \le MD + DB = MD + AC \le MD + MA + MC$, avec égalité seulement si $D \in [MB]$ et $M \in [AC]$ ;
- $MC \le MA + AC = MA + BD \le MA + MB + MD$ ;
- $MD \le MB + BD = MB + AC \le MB + MA + MC$.

Dans chaque cas, le même argument qu'à l'étape 2 montre que les deux égalités sont incompatibles. Les quatre inégalités sont donc strictes.

**Conclusion.** Pour tout point $M$ du plan, la distance de $M$ à n'importe lequel des quatre sommets est strictement inférieure à la somme des distances aux trois autres.

## Going further

Remarque qu'on n'a jamais utilisé le parallélisme : la démonstration ne se sert que de deux choses, l'égalité des diagonales et le fait que le quadrilatère soit convexe (pour que les diagonales se coupent à l'intérieur). Le résultat vaut donc pour tout quadrilatère convexe à diagonales égales, par exemple un rectangle.
