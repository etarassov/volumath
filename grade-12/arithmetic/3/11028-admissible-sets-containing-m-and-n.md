---
id: "11028"
title: "Les ensembles admissibles contenant m et n"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [maths-expertes, bezout, pgcd, ensembles, nombres-premiers-entre-eux]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 8 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Un ensemble $A$ d'entiers relatifs est dit **admissible** s'il a la propriété suivante : pour tous
$x, y \in A$ (pas forcément distincts) et pour tout entier relatif $k$, le nombre

$$x^2 + kxy + y^2$$

appartient encore à $A$.

Déterminer tous les couples $(m, n)$ d'entiers relatifs non nuls tels que le seul ensemble admissible qui
contient à la fois $m$ et $n$ soit $\mathbb{Z}$ tout entier.

## Hints

1. Si $m$ et $n$ ont un diviseur commun $d \geqslant 2$, cherche un ensemble admissible plus petit que $\mathbb{Z}$ qui contient $m$ et $n$.
2. Si $x \in A$, essaie $y = x$ dans la définition. Quels nombres obtiens-tu, quand $k$ varie ?
3. Si $m$ et $n$ sont premiers entre eux, le théorème de Bézout donne des entiers $u, v$ avec $um^2 + vn^2 = 1$. Que donne la définition avec $x = um^2$, $y = vn^2$ et $k = 2$ ?

## Solution

Remarquons d'abord que $\mathbb{Z}$ lui-même est admissible. La question est donc : pour quels couples
$(m, n)$ tout ensemble admissible contenant $m$ et $n$ est-il égal à $\mathbb{Z}$ ?

**Si $\mathrm{PGCD}(m, n) = d \geqslant 2$, ça ne marche pas.** L'ensemble $d\mathbb{Z}$ des multiples de
$d$ contient $m$ et $n$. Il est admissible : si $x = dx'$ et $y = dy'$, alors

$$x^2 + kxy + y^2 = d^2 \left( x'^2 + k x' y' + y'^2 \right)$$

est encore un multiple de $d$. Et $d\mathbb{Z} \neq \mathbb{Z}$, puisque $1$ n'est pas un multiple de
$d$.

**Si $\mathrm{PGCD}(m, n) = 1$, ça marche.** Soit $A$ un ensemble admissible contenant $m$ et $n$.

*Étape 1 : avec un élément, on a tous les multiples de son carré.* Si $x \in A$, on applique la
définition avec $y = x$ :

$$x^2 + k x^2 + x^2 = (k + 2) \, x^2 \in A \quad \text{pour tout } k \in \mathbb{Z} .$$

Quand $k$ parcourt $\mathbb{Z}$, $k + 2$ parcourt aussi $\mathbb{Z}$ : tous les multiples de $x^2$ sont dans
$A$.

*Étape 2 : Bézout.* Les nombres $m^2$ et $n^2$ ont les mêmes facteurs premiers que $m$ et $n$, donc
ils sont premiers entre eux. D'après le théorème de Bézout, il existe des entiers $u$ et $v$ tels que

$$u m^2 + v n^2 = 1 .$$

*Étape 3 : on fabrique $1$.* D'après l'étape 1, $x = um^2$ et $y = vn^2$ sont dans $A$. La définition avec
$k = 2$ donne

$$x^2 + 2xy + y^2 = (x + y)^2 = \left( um^2 + vn^2 \right)^2 = 1^2 = 1 \in A .$$

*Étape 4 : on a tout.* D'après l'étape 1 appliquée à $x = 1$, tous les multiples de $1$, c'est-à-dire
tous les entiers, sont dans $A$. Donc $A = \mathbb{Z}$.

**Conclusion.** Les couples cherchés sont exactement les couples $(m, n)$ d'entiers non nuls premiers
entre eux.
