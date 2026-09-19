---
id: "0409"
title: "Quatre entiers consécutifs"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [identites remarquables, carre parfait, calcul litteral, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 14, задача 11"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Montrer que le produit de quatre entiers naturels consécutifs, augmenté de $1$, est toujours le carré d'un entier.

Par exemple :
$$3 \times 4 \times 5 \times 6 + 1 = 361 = 19^2.$$

## Hints

1. Faites d'abord quelques essais : $1 \times 2 \times 3 \times 4 + 1$, puis $2 \times 3 \times 4 \times 5 + 1$, puis $3 \times 4 \times 5 \times 6 + 1$. Prenez à chaque fois la racine carrée. Vous obtenez $5$, $11$, $19$ : ces nombres ont-ils un lien avec les entiers de départ ?
2. Appelez $n$ le plus petit des quatre entiers. Les quatre nombres sont alors $n$, $n+1$, $n+2$, $n+3$. Surtout, ne développez pas tout d'un seul coup.
3. Multipliez d'abord les deux nombres des extrémités entre eux, puis les deux nombres du milieu entre eux. Comparez les deux résultats : de combien diffèrent-ils ?
4. Posez $u = n^2 + 3n$. Le produit des quatre nombres s'écrit alors $u(u+2)$. Ajoutez $1$ et reconnaissez une identité remarquable.

## Solution

**L'idée : regrouper les facteurs deux par deux, et ne pas tout développer.**

Appelons $n$ le plus petit des quatre entiers. Le produit à étudier est
$$P = n(n+1)(n+2)(n+3) + 1.$$

Multiplions d'abord les deux nombres des extrémités, puis les deux du milieu :
$$n(n+3) = n^2 + 3n,$$
$$(n+1)(n+2) = n^2 + 2n + n + 2 = n^2 + 3n + 2.$$

Les deux résultats sont presque identiques : ils contiennent tous deux $n^2 + 3n$ et diffèrent de $2$. C'est là tout l'intérêt de ce regroupement.

**On donne un nom à la partie commune.**

Posons
$$u = n^2 + 3n.$$

Alors
$$P = u \times (u+2) + 1 = u^2 + 2u + 1.$$

On reconnaît l'identité remarquable $a^2 + 2ab + b^2 = (a+b)^2$ avec $a = u$ et $b = 1$ :
$$P = (u+1)^2.$$

**On revient à $n$.**

Comme $u + 1 = n^2 + 3n + 1$, on obtient
$$n(n+1)(n+2)(n+3) + 1 = \left(n^2 + 3n + 1\right)^2.$$

Le nombre $n^2 + 3n + 1$ est un entier naturel dès que $n$ en est un. Le produit de quatre entiers naturels consécutifs augmenté de $1$ est donc bien un carré parfait, et on connaît même sa racine carrée.

**Vérification sur l'exemple.** Pour $n = 3$ : $n^2 + 3n + 1 = 9 + 9 + 1 = 19$, et l'on retrouve $3 \times 4 \times 5 \times 6 + 1 = 19^2 = 361$.

**Ce qu'il faut retenir.** Devant un produit de plusieurs facteurs, il vaut souvent mieux chercher un regroupement malin que de tout développer : ici, apparier les extrémités fait apparaître deux fois la même quantité $n^2+3n$.

## Going further

1. Regardez de nouveau la racine carrée trouvée. Montrez que $n^2 + 3n + 1$ est égal au produit des deux nombres du milieu diminué de $1$. Retrouvez ainsi $19 = 4 \times 5 - 1$.
2. Déduisez de la formule que le produit de quatre entiers naturels consécutifs non nuls n'est jamais, lui, un carré parfait. (Indication : ce produit vaut $(u+1)^2 - 1$ ; encadrez-le entre deux carrés qui se suivent.)
