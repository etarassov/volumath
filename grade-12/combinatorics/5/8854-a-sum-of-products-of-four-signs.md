---
id: "8854"
title: "Une somme de produits de quatre signes"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [invariant, produit, parite, suite-circulaire, signe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 7, p. 123"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soient $a_1, a_2, \dots, a_n$ des nombres valant chacun $1$ ou $-1$. On prolonge la liste en tournant en rond :
$$a_{n+1} = a_1, \qquad a_{n+2} = a_2, \qquad a_{n+3} = a_3 .$$

On pose
$$S = a_1a_2a_3a_4 \; + \; a_2a_3a_4a_5 \; + \; \cdots \; + \; a_na_{n+1}a_{n+2}a_{n+3} ,$$
la somme des $n$ produits de quatre termes consécutifs.

Montrer que si $S = 0$, alors $n$ est divisible par $4$.

## Hints

1. Chaque terme de $S$ vaut $1$ ou $-1$. Si $S = 0$, que peut-on dire du nombre de termes valant $1$ et de celui des termes valant $-1$ ?
2. Une somme de $n$ nombres impairs est de la même parité que $n$. Commence donc par montrer que $n$ est pair, disons $n = 2k$.
3. Il reste à montrer que $k$ est pair. Essaie de calculer le **produit** de tous les termes de la somme.
4. Dans ce produit, combien de fois apparaît chaque $a_i$ ?

## Solution

### Étape 1 : $n$ est pair

Chaque terme $a_i a_{i+1} a_{i+2} a_{i+3}$ est un produit de nombres valant $\pm 1$, donc vaut $1$ ou $-1$.

Notons $p$ le nombre de termes valant $1$ et $q$ le nombre de termes valant $-1$, de sorte que $p + q = n$ et
$$S = p - q .$$

Si $S = 0$, alors $p = q$, donc $n = p + q = 2p$ est pair. Posons $n = 2k$, et donc $p = q = k$.

### Étape 2 : le produit de tous les termes

Calculons
$$P = \prod_{i=1}^{n} a_i a_{i+1} a_{i+2} a_{i+3}$$
de deux façons.

**Première façon : par les valeurs.** Il y a $k$ termes valant $1$ et $k$ termes valant $-1$, donc
$$P = 1^{\,k} \times (-1)^{\,k} = (-1)^{\,k} .$$

**Deuxième façon : par les facteurs.** Dans ce produit, chaque indice $i$ apparaît dans exactement **quatre** termes : ceux d'indices $i-3$, $i-2$, $i-1$ et $i$ (les indices étant pris en tournant autour du cercle). Chaque $a_i$ apparaît donc exactement quatre fois, et
$$P = \prod_{i=1}^{n} a_i^{\,4} = \left(\prod_{i=1}^n a_i\right)^{4} = 1 ,$$
puisque toute quantité non nulle élevée à la puissance $4$ est positive, et qu'ici tout vaut $\pm 1$.

### Étape 3 : on conclut

En rapprochant les deux calculs :
$$(-1)^{\,k} = 1 ,$$
donc $k$ est pair. Écrivons $k = 2\ell$. Alors
$$n = 2k = 4\ell ,$$
c'est-à-dire que $n$ est divisible par $4$.

**Conclusion.** Si $S = 0$, alors $4$ divise $n$.

### Une autre preuve, par invariance

Voici la preuve qui donne son nom au chapitre. Partons de la configuration où tous les $a_i$ valent $1$ : alors chaque terme vaut $1$ et $S = n$.

Changeons maintenant le signe d'un seul $a_i$. Cela change le signe des quatre termes qui contiennent $a_i$. Si $T$ désigne la somme de ces quatre termes avant le changement, la somme $S$ varie de $-2T$. Or $T$ est une somme de quatre nombres valant $\pm 1$, donc $T$ est **pair**, donc $2T$ est divisible par $4$.

Ainsi **$S$ reste toujours congrue à $n$ modulo $4$**, quelle que soit la configuration. Comme toute configuration s'obtient depuis « tous les $a_i$ valent $1$ » en changeant un à un les signes voulus, on a toujours
$$S \equiv n \pmod 4 .$$
Si $S = 0$, alors $n \equiv 0 \pmod 4$.

## Going further

La réciproque est-elle vraie ? Autrement dit, si $4$ divise $n$, existe-t-il toujours un choix de signes donnant $S = 0$ ?

1. Montrer que pour $n = 4$ c'est impossible. (Indication : que valent les quatre termes de la somme ?)
2. Trouver un choix de signes donnant $S = 0$ pour $n = 8$.
