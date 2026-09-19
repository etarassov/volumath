---
id: "2403"
title: "Additionner les carrés d'une ligne de Pascal"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [coefficient-binomial, triangle-de-pascal, double-comptage, identite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 8g (indication dans Handout-468-565.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que

$$\binom{n}{0}^{2} + \binom{n}{1}^{2} + \binom{n}{2}^{2} + \cdots + \binom{n}{n}^{2} = \binom{2n}{n} .$$

Autrement dit : si l'on prend une ligne du triangle de Pascal, qu'on élève chacun de ses nombres au carré et qu'on additionne le tout, on retombe sur un nombre du triangle — celui du milieu de la ligne deux fois plus bas.

*On demande une démonstration par dénombrement : trouver une même quantité que les deux membres comptent, chacun à sa façon.*

## Hints

1. Vérifie d'abord sur un petit cas, par exemple $n = 3$ : $1^2 + 3^2 + 3^2 + 1^2 = 20$, et $\binom{6}{3} = 20$.
2. Le membre de droite compte le nombre de façons de choisir $n$ personnes parmi $2n$. Imagine ces $2n$ personnes séparées en deux camps de $n$.
3. Si l'on choisit $n$ personnes parmi $n$ filles et $n$ garçons, combien de filles y a-t-il dans le choix ? Range les choix suivant ce nombre.
4. Il reste à voir pourquoi $\binom{n}{k} \times \binom{n}{n-k}$ vaut $\binom{n}{k}^2$. Que vaut $\binom{n}{n-k}$ ?

## Solution

**Ce que l'on va compter.** Prenons un groupe de $2n$ personnes, formé de $n$ filles et de $n$ garçons. On veut compter de combien de façons on peut en choisir $n$ pour former une délégation.

**Premier comptage, sans rien distinguer.** Choisir $n$ personnes parmi $2n$, c'est par définition

$$\binom{2n}{n}$$

façons. C'est le membre de droite.

**Second comptage, en rangeant par le nombre de filles.** Toute délégation contient un certain nombre $k$ de filles, avec $0 \le k \le n$, et alors exactement $n - k$ garçons. Réciproquement, pour former une délégation contenant exactement $k$ filles, il faut :

* choisir $k$ filles parmi les $n$ filles : $\binom{n}{k}$ façons ;
* choisir $n - k$ garçons parmi les $n$ garçons : $\binom{n}{n-k}$ façons.

Ces deux choix sont indépendants, donc il y a $\binom{n}{k}\binom{n}{n-k}$ délégations contenant exactement $k$ filles.

Comme chaque délégation contient un et un seul nombre de filles, les cas $k = 0, 1, \ldots, n$ se répartissent sans oubli ni répétition, et on peut additionner :

$$\binom{2n}{n} = \sum_{k=0}^{n} \binom{n}{k}\binom{n}{n-k} .$$

**La dernière étape.** La symétrie du triangle de Pascal donne

$$\binom{n}{n-k} = \binom{n}{k} ,$$

car choisir les $n-k$ personnes que l'on prend revient à choisir les $k$ personnes que l'on laisse de côté. (On peut aussi le lire sur la formule : $\binom{n}{n-k} = \dfrac{n!}{(n-k)!\,k!} = \binom{n}{k}$.)

D'où

$$\binom{2n}{n} = \sum_{k=0}^{n} \binom{n}{k}^{2} = \binom{n}{0}^{2} + \binom{n}{1}^{2} + \cdots + \binom{n}{n}^{2} ,$$

ce qu'il fallait démontrer.

**Vérification.** Pour $n = 4$ : la ligne du triangle de Pascal est $1,\ 4,\ 6,\ 4,\ 1$ et

$$1 + 16 + 36 + 16 + 1 = 70 = \binom{8}{4} .$$

## Going further

1. Sur le même modèle, démontrer l'identité de Vandermonde : pour tous entiers $m$, $n$, $r$ avec $r \le m$ et $r \le n$,
   $$\sum_{k=0}^{r} \binom{m}{k}\binom{n}{r-k} = \binom{m+n}{r} .$$
2. Que devient l'identité de l'exercice si l'on prend $m = n$ et $r = n$ dans la formule précédente ?
