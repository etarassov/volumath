---
id: "7664"
title: "Quand a² + 2a est un carré parfait"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, encadrement, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'arithmétique, exercice sur a²+2a carré parfait"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les entiers $a \geqslant 0$ tels que $a^2 + 2a$ soit un carré parfait.

*Un carré parfait est le carré d'un entier : $0$, $1$, $4$, $9$, $16$, $25$, …*

## Hints

1. Essayez quelques valeurs : $a = 0$, $1$, $2$, $3$, $4$. Que constatez-vous ?
2. Le nombre $a^2 + 2a$ ressemble beaucoup à $(a+1)^2$. De combien en diffère-t-il ?
3. Vous cherchez donc deux carrés parfaits qui diffèrent de $1$. Encadrez $a^2 + 2a$ entre deux carrés consécutifs.
4. Entre $a^2$ et $(a+1)^2$, y a-t-il d'autres carrés parfaits ?

## Solution

**L'idée : comparer avec le carré voisin.**

Développons $(a+1)^2$ :

$$(a+1)^2 = a^2 + 2a + 1 .$$

Donc

$$a^2 + 2a = (a+1)^2 - 1 .$$

Notre question devient : pour quels entiers $a \geqslant 0$ le nombre $(a+1)^2 - 1$ est-il un carré parfait ?

**Un encadrement.**

Supposons $a \geqslant 1$. Alors

$$a^2 < a^2 + 2a < a^2 + 2a + 1 = (a+1)^2 .$$

*La première inégalité* vient de $2a > 0$, vrai car $a \geqslant 1$. *La seconde* est évidente.

Donc $a^2 + 2a$ est **strictement compris entre les deux carrés consécutifs $a^2$ et $(a+1)^2$**.

Or il n'existe aucun carré parfait strictement compris entre $a^2$ et $(a+1)^2$ : les carrés parfaits sont $0^2, 1^2, 2^2, \ldots$ et se suivent dans cet ordre, sans rien entre deux voisins.

Donc pour $a \geqslant 1$, le nombre $a^2 + 2a$ n'est jamais un carré parfait.

**Le cas restant.**

Il reste $a = 0$, pour lequel $a^2 + 2a = 0 = 0^2$, qui est bien un carré parfait.

**Conclusion.**

$$\boxed{a = 0 \text{ est la seule valeur convenable.}}$$

## Going further

La méthode s'appelle l'**encadrement entre deux carrés consécutifs**, et c'est l'un des outils les plus efficaces pour montrer qu'une expression n'est pas un carré. Le principe : si l'on parvient à écrire

$$k^2 < N < (k+1)^2$$

pour un entier $k$, alors $N$ n'est pas un carré parfait, parce qu'il n'y a pas de place entre deux carrés voisins.

**Une variante immédiate.** Le produit de deux entiers consécutifs $n(n+1)$ est-il jamais un carré parfait pour $n \geqslant 1$ ? On a $n^2 < n(n+1) < (n+1)^2$, donc non.

**Une variante un peu plus longue.** Le produit de quatre entiers consécutifs est-il jamais un carré parfait ? Posons $P = n(n+1)(n+2)(n+3)$. En regroupant les facteurs extrêmes et les facteurs du milieu :
$$P = \left(n^2 + 3n\right)\left(n^2 + 3n + 2\right) .$$
En posant $m = n^2 + 3n$, cela donne $P = m(m+2) = (m+1)^2 - 1$, et l'on retrouve exactement notre exercice : pour $m \geqslant 1$, ce n'est pas un carré.

**Et avec des entiers relatifs ?** Si l'on autorise $a$ négatif, il faut aussi examiner $a = -1$ (qui donne $-1$, pas un carré) et $a = -2$ (qui donne $0$, un carré). La réponse devient alors $a \in \{-2, 0\}$.
