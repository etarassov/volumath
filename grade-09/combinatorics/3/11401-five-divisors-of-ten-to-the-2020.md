---
id: "11401"
title: "Cinq diviseurs de 10²⁰²⁰"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, diviseurs, parite, carres, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Juniors, exercice 4 (repris mot pour mot en Exercices Seniors, exercice 10) ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

On choisit cinq diviseurs positifs différents du nombre $10^{2020}$.

Montrer que, parmi ces cinq diviseurs, on peut toujours en trouver deux dont le produit est un
carré parfait, c'est-à-dire le carré d'un nombre entier.

## Hints

1. Écris $10^{2020}$ comme produit de puissances de nombres premiers. À quoi ressemble alors
   un diviseur de $10^{2020}$ ?
2. Quand le produit $2^a \times 5^b$ est-il sûrement un carré ?
3. Ne regarde que la parité des deux exposants de chaque diviseur. Combien de « profils »
   différents un diviseur peut-il avoir ?
4. Cinq diviseurs, et combien de profils ?

## Solution

**La forme des diviseurs.**

On a $10 = 2 \times 5$, donc $10^{2020} = 2^{2020} \times 5^{2020}$. Un diviseur de ce nombre ne
peut contenir que les facteurs premiers $2$ et $5$, chacun au plus $2020$ fois. Tout diviseur
s'écrit donc
$$2^a \times 5^b \quad \text{avec } a \text{ et } b \text{ entiers entre } 0 \text{ et } 2020 .$$
Par exemple $20 = 2^2 \times 5^1$ est un diviseur, avec $a = 2$ et $b = 1$.

**Quand le produit de deux diviseurs est-il un carré ?**

Prenons deux diviseurs $2^a \times 5^b$ et $2^c \times 5^d$. Leur produit vaut
$$2^{a+c} \times 5^{b+d} .$$
Si les deux exposants $a + c$ et $b + d$ sont **pairs**, on peut écrire $a + c = 2m$ et
$b + d = 2k$, et alors
$$2^{a+c} \times 5^{b+d} = 2^{2m} \times 5^{2k} = \left(2^m \times 5^k\right)^2 ,$$
qui est bien un carré.

Il suffit donc de trouver deux diviseurs tels que $a + c$ soit pair et $b + d$ soit pair.

**Le profil d'un diviseur.**

À chaque diviseur $2^a \times 5^b$ on associe son *profil* : la parité de $a$ et la parité de $b$.
Il n'y a que quatre profils possibles :

- $a$ pair et $b$ pair ;
- $a$ pair et $b$ impair ;
- $a$ impair et $b$ pair ;
- $a$ impair et $b$ impair.

**Le principe des tiroirs.**

On a cinq diviseurs et seulement quatre profils. Si chaque profil était porté par au plus un
diviseur, il y aurait au plus quatre diviseurs. Deux des cinq diviseurs ont donc le même
profil. C'est le **principe des tiroirs** : cinq objets dans quatre tiroirs, un tiroir en
contient au moins deux.

**Conclusion.**

Soient $2^a \times 5^b$ et $2^c \times 5^d$ deux diviseurs de même profil. Alors $a$ et $c$ ont
la même parité, donc $a + c$ est pair (pair plus pair, ou impair plus impair). De même $b + d$
est pair. D'après ce qui précède, leur produit est un carré.

**Parmi cinq diviseurs de $10^{2020}$, il y en a toujours deux dont le produit est un carré.**

## Going further

Avec seulement quatre diviseurs, ce n'est plus vrai : $1$, $2$, $5$ et $10$ ont les quatre
profils différents, et aucun des six produits $2, 5, 10, 10, 20, 50$ n'est un carré.

Et si l'on prend les diviseurs de $30^{2020} = 2^{2020} \times 3^{2020} \times 5^{2020}$,
combien faut-il en choisir pour être sûr d'en avoir deux dont le produit est un carré ?
