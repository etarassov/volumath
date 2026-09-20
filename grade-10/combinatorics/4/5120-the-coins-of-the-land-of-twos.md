---
id: "5120"
title: "Les pièces du pays des Deux"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [puissances-de-deux, base-deux, denombrement, recurrence, unicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Coins in Twoland », Joshua Zucker"
  reference: "JZcoinsintwoland.pdf, questions 1 à 7"
  url: "https://mathcircles.org/activity/coins-in-twoland/"
  original_language: "en"
  local_copy: "sources/originals/namc/JZcoinsintwoland.pdf"
---

## Statement

Au pays des Deux, les seules pièces en circulation valent

$$1, \quad 2, \quad 4, \quad 8, \quad 16, \quad 32, \quad 64, \quad 128, \quad 256, \quad 512, \quad 1024, \ldots$$

c'est-à-dire toutes les puissances de $2$. La loi veut qu'on paie toujours la somme exacte : seules les banques rendent la monnaie. Deux façons de payer qui utilisent les mêmes pièces sont considérées comme identiques : l'ordre ne compte pas.

**À Uneville**, une loi supplémentaire interdit d'utiliser plus d'un exemplaire de chaque pièce.

1. Montrer que, pour toute somme, il y a exactement **une** façon de payer. Combien y a-t-il de façons de payer $1000$ ?

**À Deuxville**, on a le droit d'utiliser jusqu'à **deux** exemplaires de chaque pièce. Par exemple on peut payer $5$ de deux façons : $4 + 1$ ou $2 + 2 + 1$.

2. Combien y a-t-il de façons de payer $1023$ ?
3. Combien y a-t-il de façons de payer $1024$ ?
4. Combien y a-t-il de façons de payer $1000$ ?

## Hints

1. Pour la question 1, l'existence se règle par gourmandise : prends toujours la plus grosse pièce qui tient. Pour l'unicité, compare $1 + 2 + 4 + \cdots + 2^{k-1}$ à $2^{k}$.
2. Pour Deuxville, notons $f(n)$ le nombre de façons de payer $n$. Ne cherche pas à énumérer : cherche une relation entre $f(n)$ et des valeurs plus petites.
3. Si $n$ est **impair**, combien de pièces de $1$ doit-on utiliser, exactement ? Pense à la parité du reste.
4. Si $n$ est **pair**, le nombre de pièces de $1$ vaut $0$ ou $2$. Traite les deux cas séparément.
5. Une fois les pièces de $1$ retirées, il ne reste que des pièces $2, 4, 8, \ldots$ ; divise tout par $2$ et tu retombes sur le même problème avec un nombre plus petit.
6. Tu devrais obtenir $f(2k+1) = f(k)$ et $f(2k) = f(k) + f(k-1)$, avec $f(0) = 1$.

## Solution

### Question 1 : à Uneville, une seule façon

*Il y a au moins une façon.* Procédons par gourmandise : pour payer $n$, prenons la plus grosse pièce $2^{k}$ qui ne dépasse pas $n$, puis recommençons avec $n - 2^{k}$. Comme $2^{k+1} > n$, on a $n - 2^{k} < 2^{k}$ : la pièce suivante sera strictement plus petite, donc aucune pièce n'est utilisée deux fois. Le reste diminue strictement, donc le procédé s'arrête, et on obtient une façon de payer.

*Il n'y en a pas deux.* Le point clé est l'inégalité

$$1 + 2 + 4 + \cdots + 2^{k-1} = 2^{k} - 1 < 2^{k}$$

Autrement dit, **toutes les pièces plus petites que $2^{k}$, prises une fois chacune, ne suffisent pas à atteindre $2^{k}$.**

Supposons maintenant deux façons différentes de payer un même montant $n$, et choisissons le plus petit $n$ pour lequel cela se produit. Soit $2^{k}$ la plus grosse pièce qui ne dépasse pas $n$. Une façon de payer qui n'utiliserait pas $2^{k}$ n'emploierait que des pièces au plus $2^{k-1}$, et son total serait au plus $2^{k} - 1 < 2^{k} \leqslant n$ : impossible. Les deux façons utilisent donc toutes les deux la pièce $2^{k}$. En la retirant des deux, on obtient deux façons différentes de payer $n - 2^{k}$, qui est plus petit que $n$ : cela contredit le choix de $n$.

**Il y a donc exactement une façon de payer chaque somme.** C'est l'écriture en base deux. Pour $1000$ :

$$1000 = 512 + 256 + 128 + 64 + 32 + 8$$

et c'est la seule façon : **une seule.**

### La relation de récurrence à Deuxville

Notons $f(n)$ le nombre de façons de payer $n$ en utilisant au plus deux exemplaires de chaque pièce. On convient que $f(0) = 1$ : il y a une façon de ne rien payer, celle qui n'utilise aucune pièce.

Dans une façon de payer $n$, le nombre de pièces de valeur $1$ vaut $0$, $1$ ou $2$. Toutes les autres pièces sont paires, donc leur total est pair.

*Si $n$ est impair.* Le nombre de pièces de $1$ doit être impair, donc vaut exactement $1$. Retirons cette pièce : il reste à payer $n - 1$ avec les pièces $2, 4, 8, \ldots$, chacune au plus deux fois. En divisant toutes ces pièces par $2$, on obtient exactement une façon de payer $\tfrac{n-1}{2}$ dans le problème d'origine, et cette correspondance est une bijection. Donc, en écrivant $n = 2k+1$ :

$$f(2k+1) = f(k)$$

*Si $n$ est pair.* Le nombre de pièces de $1$ est pair, donc vaut $0$ ou $2$.

- s'il vaut $0$, le même passage à la moitié donne $f(k)$ façons, où $n = 2k$ ;
- s'il vaut $2$, il reste à payer $n - 2 = 2(k-1)$ avec les pièces paires, ce qui donne $f(k-1)$ façons.

Ces deux cas sont exclusifs l'un de l'autre, donc

$$f(2k) = f(k) + f(k-1)$$

*Vérification sur un petit cas.* $f(5) = f(2) = f(1) + f(0) = 1 + 1 = 2$, et l'on avait bien trouvé deux façons de payer $5$.

### Question 2 : payer 1023

Le nombre $1023 = 2^{10} - 1$ est impair, et tous les quotients successifs le restent :

$$f(1023) = f(511) = f(255) = f(127) = f(63) = f(31) = f(15) = f(7) = f(3) = f(1) = 1$$

**Il y a une seule façon de payer $1023$**, à savoir $512 + 256 + 128 + 64 + 32 + 16 + 8 + 4 + 2 + 1$. C'est amusant : le droit d'utiliser deux exemplaires ne sert à rien ici. La raison est claire : dédoubler une pièce $2^{k}$ en deux pièces $2^{k-1}$ créerait une troisième pièce $2^{k-1}$, puisqu'il y en a déjà une.

### Question 3 : payer 1024

$$f(1024) = f(512) + f(511) = f(512) + 1$$

Calculons la colonne des puissances de $2$ :

$$f(2) = f(1) + f(0) = 2$$
$$f(4) = f(2) + f(1) = 3, \quad f(8) = f(4) + f(3) = 4, \quad f(16) = f(8) + f(7) = 5$$

et ainsi de suite, puisque $f(2^{k}-1) = 1$ à chaque fois : chaque étage ajoute exactement $1$.

$$f(32) = 6, \quad f(64) = 7, \quad f(128) = 8, \quad f(256) = 9, \quad f(512) = 10$$

Donc

$$f(1024) = 10 + 1 = \mathbf{11}$$

Plus généralement, $f(2^{k}) = k + 1$.

### Question 4 : payer 1000

On déroule la récurrence en descendant :

| calcul | valeur |
|---|---|
| $f(6) = f(3) + f(2) = 1 + 2$ | $3$ |
| $f(14) = f(7) + f(6) = 1 + 3$ | $4$ |
| $f(30) = f(15) + f(14) = 1 + 4$ | $5$ |
| $f(61) = f(30)$ | $5$ |
| $f(62) = f(31) + f(30) = 1 + 5$ | $6$ |
| $f(124) = f(62) + f(61) = 6 + 5$ | $11$ |
| $f(125) = f(62)$ | $6$ |
| $f(249) = f(124)$ | $11$ |
| $f(250) = f(125) + f(124) = 6 + 11$ | $17$ |
| $f(499) = f(249)$ | $11$ |
| $f(500) = f(250) + f(249) = 17 + 11$ | $28$ |
| $f(1000) = f(500) + f(499) = 28 + 11$ | $\mathbf{39}$ |

**Il y a $39$ façons de payer $1000$ à Deuxville.**

## Going further

La suite $f(0), f(1), f(2), \ldots = 1, 1, 2, 1, 3, 2, 3, 1, 4, 3, 5, 2, 5, 3, 4, 1, \ldots$ est célèbre : c'est la **suite diatomique de Stern**. Elle cache une merveille : le quotient $f(n)/f(n+1)$, quand $n$ parcourt les entiers, énumère une fois et une seule chacune des fractions positives sous forme irréductible.

Les deux valeurs extrêmes rencontrées ici s'expliquent bien : $f(n) = 1$ exactement quand $n$ vaut $2^{k} - 1$, et $f(2^{k}) = k+1$. Entre les deux, la suite fait des allers-retours sans jamais se stabiliser.
