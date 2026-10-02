---
id: "8681"
title: "La fonction qui se comporte comme une dérivée"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [decomposition-en-facteurs-premiers, equation-fonctionnelle, valuation, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 24 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par calcul."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $f$ une fonction définie sur les entiers strictement positifs, à valeurs entières, vérifiant

- $f(1) = 0$ ;
- $f(p) = 1$ pour tout nombre premier $p$ ;
- $f(xy) = x\,f(y) + y\,f(x)$ pour tous entiers $x, y \geqslant 1$.

Déterminer le plus petit entier $n \geqslant 2015$ tel que $f(n) = n$.

## Hints

1. La règle $f(xy) = xf(y) + yf(x)$ ressemble beaucoup à la dérivée d'un produit. Cela suggère de diviser par $xy$.
2. Pose $g(n) = \dfrac{f(n)}{n}$. Que devient la règle du produit ?
3. Tu devrais trouver $g(xy) = g(x) + g(y)$. Calcule alors $g(n)$ pour $n = p_1^{\,a_1} \cdots p_k^{\,a_k}$.
4. La condition $f(n) = n$ devient $g(n) = 1$, c'est-à-dire $\dfrac{a_1}{p_1} + \cdots + \dfrac{a_k}{p_k} = 1$.
5. Multiplie cette égalité par le produit $p_1 p_2 \cdots p_k$ et regarde-la modulo $p_i$. Que peux-tu en déduire sur $a_i$ ?
6. Si chaque $a_i$ est un multiple de $p_i$, que vaut au minimum chaque terme $a_i/p_i$ ? Combien de termes peut-il y avoir ?

## Solution

### La bonne quantité à regarder

Pour $n \geqslant 1$, posons

$$g(n) = \frac{f(n)}{n} .$$

En divisant la relation $f(xy) = x f(y) + y f(x)$ par $xy$, on obtient

$$g(xy) = \frac{f(xy)}{xy} = \frac{f(y)}{y} + \frac{f(x)}{x} = g(x) + g(y) .$$

La fonction $g$ transforme donc les produits en sommes. En particulier, pour tout nombre premier $p$, $g(p) = \frac{f(p)}{p} = \frac{1}{p}$.

### La formule générale

Soit $n = p_1^{\,a_1} p_2^{\,a_2} \cdots p_k^{\,a_k}$ la décomposition de $n$ en facteurs premiers, les $p_i$ étant deux à deux distincts et les $a_i$ strictement positifs. En appliquant $g(xy) = g(x)+g(y)$ autant de fois que nécessaire, chaque facteur premier apporte sa contribution :

$$g(n) = a_1 \, g(p_1) + a_2\, g(p_2) + \cdots + a_k\, g(p_k) = \frac{a_1}{p_1} + \frac{a_2}{p_2} + \cdots + \frac{a_k}{p_k} .$$

La condition $f(n) = n$ équivaut donc à $g(n) = 1$, c'est-à-dire

$$(\star) \qquad \frac{a_1}{p_1} + \frac{a_2}{p_2} + \cdots + \frac{a_k}{p_k} = 1 .$$

### Chaque exposant est un multiple de son premier

Posons $N = p_1 p_2 \cdots p_k$ et multiplions $(\star)$ par $N$ :

$$a_1 \frac{N}{p_1} + a_2 \frac{N}{p_2} + \cdots + a_k \frac{N}{p_k} = N .$$

Fixons un indice $i$ et regardons cette égalité modulo $p_i$.

- Le membre de droite $N$ est un multiple de $p_i$.
- Pour $j \ne i$, le nombre $\frac{N}{p_j}$ contient encore le facteur $p_i$, donc le terme $a_j \frac{N}{p_j}$ est un multiple de $p_i$.

Il reste donc que $a_i \frac{N}{p_i}$ est un multiple de $p_i$. Or $\frac{N}{p_i}$ est un produit de nombres premiers tous différents de $p_i$ : il est premier avec $p_i$. Par le lemme de Gauss,

$$p_i \mid a_i .$$

### Il n'y a qu'un seul facteur premier

Comme $a_i$ est un multiple strictement positif de $p_i$, on a $a_i \geqslant p_i$, donc

$$\frac{a_i}{p_i} \geqslant 1 \qquad \text{pour chaque } i .$$

La somme $(\star)$ vaut $1$ et comporte $k$ termes tous $\geqslant 1$ : nécessairement $k = 1$, et alors $\frac{a_1}{p_1} = 1$, c'est-à-dire $a_1 = p_1$.

**Les solutions de $f(n) = n$ sont donc exactement les nombres de la forme $n = p^{\,p}$, avec $p$ premier.**

### On cherche la plus petite $\geqslant 2015$

$$2^2 = 4, \qquad 3^3 = 27, \qquad 5^5 = 3125, \qquad 7^7 = 823\,543, \ \ldots$$

Le premier qui atteint $2015$ est $5^5 = 3125$.

$$\boxed{n = 3125 .}$$

**Vérification.** $3125 = 5^5$, donc $g(3125) = \frac{5}{5} = 1$ et $f(3125) = 3125$. 

## Going further

La fonction $f$ porte un nom : c'est la **dérivée arithmétique**. La règle $f(xy) = xf(y)+yf(x)$ est exactement la formule de dérivation d'un produit, et le passage à $g = f/n$ correspond à la « dérivée logarithmique » $\frac{(uv)'}{uv} = \frac{u'}{u} + \frac{v'}{v}$.

Le point technique de la démonstration mérite d'être isolé : **pour extraire de l'information d'une égalité entre fractions, on chasse les dénominateurs puis on regarde modulo chaque premier**. C'est une manœuvre qui revient constamment.

Deux prolongements :

- Quels sont les entiers $n$ tels que $f(n) = 0$ ? *(Indication : $g(n) = 0$ avec des termes positifs.)*
- Montre que $f(n)$ est toujours un entier, ce que l'énoncé affirme mais qu'on n'a pas eu besoin de vérifier. *(Indication : $f(p^{\,a}) = a\,p^{\,a-1}$.)*
