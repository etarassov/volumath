---
id: "22012"
title: "f(f(x + 1) + y − 1) = f(x) + y"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation-fonctionnelle, substitution, injectivite]
adapted_from: null
see_also: ["22025"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f(f(x + 1) + y - 1) = f(x) + y.$$

## Hints

1. Remplacez $x$ par $0$. Le nombre $f(1)$ est alors une constante.
2. Choisissez $y$ pour que ce qui est à l'intérieur du premier $f$ soit un nombre $u$ quelconque : $y = u + 1 - f(1)$.
3. Vous devez trouver $f(u) = u + c$ pour une constante $c$. Calculez $c$ en regardant $u = 0$ et $u = 1$.

## Solution

**Étape 1 : $x = 0$.** Pour tout réel $y$,

$$f(f(1) + y - 1) = f(0) + y.$$

**Étape 2 : on choisit $y$.** Soit $u$ un réel quelconque. Prenons $y = u + 1 - f(1)$. Alors $f(1) + y - 1 = u$, et l'égalité de l'étape 1 devient

$$f(u) = f(0) + u + 1 - f(1).$$

Notons $c = f(0) + 1 - f(1)$. C'est une constante, et $f(u) = u + c$ pour tout réel $u$.

**Étape 3 : la constante.** Avec cette forme, $f(0) = c$ et $f(1) = 1 + c$. Donc

$$c = f(0) + 1 - f(1) = c + 1 - (1 + c) = 0.$$

Ainsi $f(u) = u$ pour tout réel $u$.

**Vérification.** Si $f(x) = x$ pour tout $x$, le membre de gauche vaut $f(x + 1 + y - 1) = x + y$ et celui de droite vaut $x + y$. Cela convient.

**Conclusion.** La seule solution est la fonction $x \mapsto x$.

## Going further

1. Le corrigé de la source passe par un autre chemin : il montre d'abord que $f$ est injective (si $f(a) = f(b)$, alors $a = b$), puis il pose $y = 0$. Refaites ce chemin.
2. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que $f(f(x) + y) = f(x) + y + 1$ pour tous réels $x$ et $y$.
