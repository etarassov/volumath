---
id: "22016"
title: "Une surjection au-dessus d'une injection"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [injectivite, surjectivite, entiers-naturels, plus-petit-contre-exemple, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On note $\mathbb{N} = \{0, 1, 2, 3, \ldots\}$ l'ensemble des entiers naturels. Soient $f$ et $g$ deux fonctions de $\mathbb{N}$ dans $\mathbb{N}$ telles que :

- $f$ est *surjective* : tout entier naturel $k$ est une valeur de $f$, c'est-à-dire qu'il existe $n$ tel que $f(n) = k$ ;
- $g$ est *injective* : deux entiers différents ont toujours des images différentes par $g$ ;
- pour tout entier naturel $n$, $f(n) \geq g(n)$.

Montrer que $f(n) = g(n)$ pour tout entier naturel $n$.

## Hints

1. Raisonnez par l'absurde : supposez qu'il existe des entiers $n$ avec $g(n) < f(n)$. Parmi eux, choisissez-en un pour lequel $f(n)$ est le plus petit possible.
2. Appelez ce nombre $x$, et posez $j = g(x)$. On a $j < f(x)$. Comme $f$ est surjective, il existe $y$ tel que $f(y) = j$. Que vaut $g(y)$ ?
3. Comparez $g(x)$ et $g(y)$, puis utilisez que $g$ est injective.

## Solution

On raisonne par l'absurde. Supposons qu'il existe au moins un entier $n$ tel que $g(n) < f(n)$. Appelons un tel entier un *contre-exemple*.

**Étape 1 : un contre-exemple bien choisi.** Les valeurs $f(n)$ prises aux contre-exemples sont des entiers naturels. Parmi elles, il y en a une plus petite que toutes les autres. Choisissons un contre-exemple $x$ pour lequel $k = f(x)$ est cette plus petite valeur. Posons $j = g(x)$. Comme $x$ est un contre-exemple, $j < k$.

**Étape 2 : on utilise que $f$ est surjective.** Il existe un entier $y$ tel que $f(y) = j$. On sait que $g(y) \leq f(y) = j$.

- Si on avait $g(y) < f(y)$, alors $y$ serait un contre-exemple, avec $f(y) = j < k$. Cela contredit le choix de $x$, pour lequel $f(x) = k$ est la plus petite valeur possible.
- Donc $g(y) = f(y) = j$.

**Étape 3 : on utilise que $g$ est injective.** On a $g(y) = j = g(x)$. Comme $g$ est injective, $y = x$. Mais alors $f(y) = f(x)$, c'est-à-dire $j = k$, alors que $j < k$. C'est une contradiction.

**Conclusion.** Il n'y a aucun contre-exemple : $g(n) \geq f(n)$ pour tout $n$. Avec l'hypothèse $f(n) \geq g(n)$, on obtient $f(n) = g(n)$ pour tout entier naturel $n$.

## Going further

1. Le corrigé de la source procède par récurrence : il montre, pour $k = 0$, puis $1$, puis $2$, et ainsi de suite, que $f(n) = k$ équivaut à $g(n) = k$. Comparez les deux rédactions.
2. Le résultat reste-t-il vrai pour des fonctions de $\mathbb{Z}$ dans $\mathbb{Z}$ ? Cherchez un contre-exemple. (Essayez $f(n) = n$ et $g(n) = n - 1$.)
