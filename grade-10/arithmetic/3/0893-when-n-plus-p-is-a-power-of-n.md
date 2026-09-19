---
id: "0893"
title: "Quand n + p est une puissance de n"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres premiers, divisibilite, puissances, equations entieres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 2, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Déterminer tous les couples d'entiers $(n, p)$ strictement positifs, où $p$ est un nombre premier, tels que $n + p$ soit une puissance de $n$.

*Une puissance de $n$ est un entier de la forme $n^k$, où $k$ est un entier naturel.*

## Hints

1. Écris l'égalité : $n + p = n^k$. Commence par écarter les petits exposants. Que se passe-t-il si $k = 0$ ? si $k = 1$ ?
2. Avec $k \geqslant 2$, isole $p$ : $p = n^k - n$. Que peux-tu mettre en facteur à droite ?
3. Tu obtiens que $n$ divise $p$. Quels sont les diviseurs positifs d'un nombre premier ?
4. Le cas $n = p$ donne $2p = p^k$. Simplifie par $p$ et conclus.

## Solution

**La réponse : le seul couple est $(n, p) = (2, 2)$, car $2 + 2 = 4 = 2^2$.**

Supposons que $n + p = n^k$, avec $n \geqslant 1$, $p$ premier (donc $p \geqslant 2$) et $k$ entier naturel.

**Étape 1. On écarte $k = 0$ et $k = 1$.**

- Si $k = 0$ : $n^0 = 1$, donc $n + p = 1$. Impossible, car $n \geqslant 1$ et $p \geqslant 2$ donnent $n + p \geqslant 3$.
- Si $k = 1$ : $n + p = n$, donc $p = 0$. Impossible, car $p$ est premier.

Donc $k \geqslant 2$.

**Étape 2. $n$ divise $p$.** De $n + p = n^k$ on tire

$$p = n^k - n = n\left(n^{k-1} - 1\right),$$

et comme $k \geqslant 2$, le nombre $n^{k-1} - 1$ est un entier. Donc **$n$ divise $p$**.

**Étape 3. Deux cas seulement.** Les diviseurs positifs du nombre premier $p$ sont $1$ et $p$. Donc $n = 1$ ou $n = p$.

- **Si $n = 1$ :** alors $n^k = 1^k = 1$ et l'égalité devient $1 + p = 1$, donc $p = 0$. Impossible.
- **Si $n = p$ :** l'égalité devient $p + p = p^k$, c'est-à-dire
$$2p = p^k.$$
Comme $p \neq 0$, on simplifie par $p$ :
$$2 = p^{k-1}.$$
Avec $k \geqslant 2$, l'exposant $k-1$ vaut au moins $1$. Si $k - 1 \geqslant 2$, alors $p^{k-1} \geqslant 2^2 = 4 > 2$ : impossible. Donc $k - 1 = 1$, c'est-à-dire $k = 2$, et alors $p = 2$.

**Vérification.** Pour $n = p = 2$ : $n + p = 4 = 2^2$, qui est bien une puissance de $n = 2$, et $2$ est bien un nombre premier.

**Conclusion : le seul couple qui convient est $(n, p) = (2, 2)$.**

## Going further

La clé de l'exercice tient en une ligne : dans $p = n(n^{k-1}-1)$, le nombre premier $p$ se retrouve écrit comme un produit de deux entiers, ce qui ne laisse presque aucune liberté. C'est un réflexe à garder : **dès qu'un nombre premier s'écrit comme un produit, l'un des deux facteurs vaut $1$.**
