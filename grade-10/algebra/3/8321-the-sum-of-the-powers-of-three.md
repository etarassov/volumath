---
id: "8321"
title: "La somme des puissances de 3"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [suite-geometrique, factorisation, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Calculer

$$S = 1 + 3 + 3^2 + 3^3 + \cdots + 3^{2020} .$$

On donnera une expression close, c'est-à-dire sans points de suspension.

## Hints

1. Commence par des petits cas : combien valent $1+3$, puis $1+3+9$, puis $1+3+9+27$ ? Compare chaque résultat à la puissance de $3$ qui suit.
2. Tu devrais trouver $4$, $13$, $40$, à comparer à $9$, $27$, $81$. Le double de chaque somme vaut une puissance de $3$ moins $1$.
3. Pour démontrer la formule, il y a une astuce très courte : multiplie $S$ par $3$ et soustrais.
4. Autre chemin, plus général : connais-tu la factorisation de $a^n - b^n$ ?

## Solution

**Méthode 1 : on multiplie par 3 et on soustrait.**

Écrivons

$$S = 1 + 3 + 3^2 + \cdots + 3^{2020} ,$$
$$3S = 3 + 3^2 + 3^3 + \cdots + 3^{2021} .$$

Dans la seconde ligne, tous les termes sauf le dernier apparaissent aussi dans la première ligne.
En soustrayant, tout se simplifie au milieu :

$$3S - S = 3^{2021} - 1 .$$

Donc $2S = 3^{2021} - 1$, c'est-à-dire

$$\boxed{S = \frac{3^{2021} - 1}{2}} .$$

**Méthode 2 : par la factorisation de $a^n - b^n$.**

On connaît l'identité, valable pour tout entier $n \geqslant 1$ :

$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + \cdots + ab^{n-2} + b^{n-1}\right) .$$

Appliquons-la avec $a = 3$, $b = 1$ et $n = 2021$. Comme toutes les puissances de $1$ valent $1$,
la grande parenthèse devient exactement $S$ :

$$3^{2021} - 1^{2021} = (3 - 1)\left(1 + 3 + 3^2 + \cdots + 3^{2020}\right) = 2S ,$$

d'où le même résultat.

**Vérification sur un petit cas.** Pour la somme $1 + 3 + 9 = 13$, la formule correspondante
donne $\dfrac{3^3 - 1}{2} = \dfrac{26}{2} = 13$. C'est bien cela.

## Going further

Le même calcul marche pour n'importe quelle raison $q \neq 1$ :

$$1 + q + q^2 + \cdots + q^{n} = \frac{q^{n+1} - 1}{q - 1} .$$

C'est la formule de la somme des termes d'une **suite géométrique**. Elle sert partout : en
arithmétique pour compter les diviseurs, en analyse pour les séries, en probabilités pour les
temps d'attente.

Cas amusant : pour $q = 2$, la formule donne $1 + 2 + 4 + \cdots + 2^n = 2^{n+1} - 1$. C'est ce
qui explique qu'en écriture binaire, un nombre fait uniquement de $1$ vaut toujours une puissance
de $2$ moins $1$.
