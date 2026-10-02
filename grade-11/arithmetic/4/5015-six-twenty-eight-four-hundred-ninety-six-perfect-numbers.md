---
id: "5015"
title: "6, 28, 496 : les nombres parfaits"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, somme-geometrique, nombres-premiers, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 2, problème 12"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

Un entier $N \geqslant 2$ est dit **parfait** lorsque la somme de ses diviseurs stricts (tous
ses diviseurs positifs sauf $N$ lui-même) est égale à $N$. Par exemple

$$6 = 1 + 2 + 3 .$$

Les trois plus petits nombres parfaits sont $6$, $28$ et $496$.

1. Vérifier que $28$ et $496$ sont parfaits.
2. Décomposer $6$, $28$ et $496$ en produits de facteurs premiers. Quelle forme commune
   apparaît ?
3. Deviner le nombre parfait suivant, puis le vérifier.
4. Démontrer le résultat général que suggèrent les questions précédentes : si $p$ est un entier
   tel que $2^p - 1$ soit **premier**, alors

   $$N = 2^{p-1}\,(2^p - 1)$$

   est un nombre parfait.

## Hints

1. Pour la question 2, cherche à écrire chaque nombre sous la forme « une puissance de $2$
   multipliée par un nombre impair ». Regarde ensuite si ce nombre impair te rappelle quelque
   chose.
2. $6 = 2 \times 3$, et $3 = 2^2 - 1$. Continue avec $28$ et $496$.
3. Pour la question 3, la suite des exposants utilisés est $2$, $3$, $5$. Quel est le suivant,
   et $2^p - 1$ est-il encore premier pour cette valeur ?
4. Pour la question 4, pose $q = 2^p - 1$ et commence par lister **tous** les diviseurs de
   $N = 2^{p-1} q$. Sers-toi du fait que $q$ est premier et impair.
5. La somme des diviseurs se factorise en un produit de deux sommes. Reconnais une somme
   géométrique.
6. Il est plus facile de calculer la somme de **tous** les diviseurs, $N$ compris, et de
   retrancher $N$ à la fin. Montre que cette somme totale vaut exactement $2N$.

## Solution

### 1. Vérification

Les diviseurs stricts de $28$ sont $1$, $2$, $4$, $7$, $14$, et

$$1 + 2 + 4 + 7 + 14 = 28 .$$

Les diviseurs stricts de $496$ sont $1$, $2$, $4$, $8$, $16$, $31$, $62$, $124$, $248$, et

$$1 + 2 + 4 + 8 + 16 + 31 + 62 + 124 + 248 = 31 + 465 = 496 .$$

(En détail : $1+2+4+8+16 = 31$ et $31+62+124+248 = 465$.)

### 2. La forme commune

$$6 = 2 \times 3, \qquad 28 = 2^2 \times 7, \qquad 496 = 2^4 \times 31 .$$

Le facteur impair est à chaque fois un nombre premier, et ce n'est pas n'importe lequel :

$$3 = 2^2 - 1, \qquad 7 = 2^3 - 1, \qquad 31 = 2^5 - 1 .$$

En rapprochant les deux colonnes :

$$6 = 2^{1}(2^{2}-1), \qquad 28 = 2^{2}(2^{3}-1), \qquad 496 = 2^{4}(2^{5}-1) .$$

La forme commune est donc

$$N = 2^{p-1}(2^p - 1), \qquad \text{avec } p = 2,\ 3,\ 5 .$$

Les exposants $2$, $3$, $5$ sont les premiers nombres premiers, et à chaque fois $2^p - 1$ est
lui-même premier.

### 3. Le suivant

Le nombre premier suivant est $p = 7$. Alors $2^7 - 1 = 127$, qui est bien premier (il n'est
divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$, ni par $11$, et $11^2 = 121 < 127 < 169$).

La formule donne

$$N = 2^{6} \times 127 = 64 \times 127 = 8128 .$$

*Vérification.* Les diviseurs de $8128$ sont $1, 2, 4, 8, 16, 32, 64$ d'une part, et
$127, 254, 508, 1016, 2032, 4064, 8128$ d'autre part. La somme des diviseurs stricts vaut

$$(1+2+4+8+16+32+64) + (127+254+508+1016+2032+4064) = 127 + 8001 = 8128 .$$

Donc $8128$ est parfait.

*Pourquoi ne pas prendre $p = 4$ ?* Parce que $2^4 - 1 = 15 = 3 \times 5$ n'est pas premier, et
la formule ne marche plus : $2^3 \times 15 = 120$, dont la somme des diviseurs stricts vaut
$240$, pas $120$.

### 4. La démonstration

Posons $q = 2^p - 1$ et supposons $q$ premier. Comme $q = 2^p - 1$ est impair et que
$q \geqslant 3$, le nombre $q$ n'est pas une puissance de $2$. Soit

$$N = 2^{p-1} q .$$

**Les diviseurs de $N$.** Un diviseur de $N$ s'écrit $2^i q^j$ avec $0 \leqslant i \leqslant p-1$
et $j \in \{0, 1\}$, puisque la décomposition en facteurs premiers de $N$ est $2^{p-1} \times q$
et que $q$ est premier et différent de $2$. Les diviseurs de $N$ sont donc exactement

$$1,\ 2,\ 4,\ \ldots,\ 2^{p-1} \qquad \text{et} \qquad q,\ 2q,\ 4q,\ \ldots,\ 2^{p-1} q .$$

**La somme de tous les diviseurs.** Notons $\sigma$ cette somme. En regroupant les deux lignes :

$$\sigma = (1 + 2 + \cdots + 2^{p-1}) + q\,(1 + 2 + \cdots + 2^{p-1}) = (1 + q)\,(1 + 2 + \cdots + 2^{p-1}) .$$

La somme géométrique vaut

$$1 + 2 + 4 + \cdots + 2^{p-1} = \frac{2^p - 1}{2 - 1} = 2^p - 1 = q ,$$

et $1 + q = 1 + (2^p - 1) = 2^p$. Donc

$$\sigma = 2^p \times q .$$

**On conclut.** La somme des diviseurs **stricts** s'obtient en retirant $N$ :

$$\sigma - N = 2^p q - 2^{p-1} q = 2^{p-1} q\,(2 - 1) = 2^{p-1} q = N .$$

La somme des diviseurs stricts de $N$ vaut donc $N$ : **$N$ est parfait**, ce qu'il fallait
démontrer.

## Going further

Ce résultat est dans les *Éléments* d'Euclide, livre IX, proposition 36, il a donc plus de deux
mille trois cents ans. Deux millénaires plus tard, Euler a démontré la réciproque : **tout**
nombre parfait pair est de cette forme. Chercher les nombres parfaits pairs revient donc
exactement à chercher les nombres premiers de la forme $2^p - 1$, ce qui explique l'acharnement
mis à les traquer.

Et les nombres parfaits **impairs** ? Personne n'en a jamais trouvé, et personne n'a jamais
démontré qu'il n'en existe pas. On sait seulement qu'un tel nombre, s'il existe, dépasse
$10^{1500}$ et possède au moins dix facteurs premiers distincts. C'est probablement la plus
vieille question ouverte des mathématiques.
