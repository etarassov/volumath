---
id: "3212"
title: "Quand x² − ax + 2a a deux racines entières"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [trinome, racines, somme-et-produit, entiers, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 11, d'après AMC 12A 2015, problème 18 (réponse dans Handout-4805-4981.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

On cherche les réels $a$ pour lesquels les racines du trinôme

$$f(x) = x^2 - a x + 2a$$

sont **toutes les deux des entiers relatifs** (la racine double compte pour deux racines égales).

1. Trouver toutes les valeurs possibles de $a$.
2. Quelle est leur somme ?

## Hints

1. Si $m$ et $n$ sont les racines, on a $x^2 - ax + 2a = (x-m)(x-n)$. Développe et identifie les coefficients.
2. Tu obtiens $m + n = a$ et $mn = 2a$. Élimine $a$ entre ces deux relations.
3. Il reste $mn = 2(m+n)$, une équation en nombres entiers. Passe tout du même côté.
4. $mn - 2m - 2n = 0$. Ajoute $4$ aux deux membres pour faire apparaître un produit.
5. $(m-2)(n-2) = 4$. Énumère **tous** les couples d'entiers relatifs de produit $4$, sans oublier les négatifs.

## Solution

**Traduire « les racines sont entières ».**

Soient $m$ et $n$ les deux racines. Alors

$$x^2 - ax + 2a = (x - m)(x - n) = x^2 - (m+n)x + mn .$$

En identifiant les coefficients :

$$m + n = a \qquad \text{et} \qquad mn = 2a .$$

En particulier $a = m+n$ est automatiquement un entier.

**Éliminer $a$.**

En remplaçant $a$ par $m+n$ dans la deuxième relation :

$$mn = 2(m+n), \qquad \text{soit} \qquad mn - 2m - 2n = 0 .$$

**Faire apparaître un produit.**

On remarque que $(m-2)(n-2) = mn - 2m - 2n + 4$. En ajoutant $4$ aux deux membres :

$$(m - 2)(n - 2) = 4 .$$

**Énumérer.**

Posons $u = m-2$ et $v = n-2$ : deux entiers relatifs de produit $4$. Les couples possibles sont

$$(1,4),\ (2,2),\ (4,1),\ (-1,-4),\ (-2,-2),\ (-4,-1).$$

On en déduit $(m, n) = (u+2,\ v+2)$, puis $a = m+n$ :

| $(u,v)$ | $(m,n)$ | $a = m+n$ |
|---|---|---|
| $(1,4)$ | $(3,6)$ | $9$ |
| $(2,2)$ | $(4,4)$ | $8$ |
| $(4,1)$ | $(6,3)$ | $9$ |
| $(-1,-4)$ | $(1,-2)$ | $-1$ |
| $(-2,-2)$ | $(0,0)$ | $0$ |
| $(-4,-1)$ | $(-2,1)$ | $-1$ |

Les couples $(3,6)$ et $(6,3)$ donnent le même trinôme, de même pour $(1,-2)$ et $(-2,1)$. Les valeurs **distinctes** de $a$ sont donc

$$a = -1, \quad a = 0, \quad a = 8, \quad a = 9 .$$

**Vérification.**

- $a = -1$ : $x^2 + x - 2 = (x-1)(x+2)$, racines $1$ et $-2$. Entières.
- $a = 0$ : $x^2$, racine double $0$. Entière.
- $a = 8$ : $x^2 - 8x + 16 = (x-4)^2$, racine double $4$. Entière.
- $a = 9$ : $x^2 - 9x + 18 = (x-3)(x-6)$, racines $3$ et $6$. Entières.

**Conclusion.** Les valeurs possibles sont $-1$, $0$, $8$ et $9$, et leur somme vaut

$$-1 + 0 + 8 + 9 = 16 .$$

## Going further

1. Reprendre la même question pour $x^2 - ax + 3a$.
2. Pour quelles valeurs de $a$ le trinôme $x^2 - ax + 2a$ a-t-il une racine **double** ? Retrouver les deux cas $a=0$ et $a=8$ par le discriminant.
3. Pour quelles valeurs réelles de $a$ le trinôme $x^2 - ax + 2a$ n'a-t-il aucune racine réelle ? Vérifier qu'aucune des quatre valeurs trouvées ne se trouve dans cet intervalle.
