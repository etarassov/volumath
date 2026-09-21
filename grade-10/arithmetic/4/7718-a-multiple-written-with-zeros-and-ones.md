---
id: "7718"
title: "Un multiple écrit seulement avec des 0 et des 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, divisibilite, reste, chiffres]
adapted_from: null
see_also: ["1217"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

Montrer qu'il existe un multiple de $n$, non nul, dont l'écriture décimale ne contient que des chiffres $0$ et $1$, et qui s'écrit avec au plus $n$ chiffres.

Par exemple, pour $n = 6$ le nombre $1110$ convient : il vaut $6 \times 185$, il ne s'écrit qu'avec des $0$ et des $1$, et il a $4$ chiffres, ce qui est bien au plus $6$.

## Hints

1. Il n'y a pas beaucoup de nombres écrits uniquement avec des $1$ : $1$, $11$, $111$, $1111$, … Commence par les regarder.
2. Range les $n$ premiers de ces nombres selon leur **reste** dans la division par $n$. Combien y a-t-il de restes possibles ?
3. Si l'un de ces nombres a pour reste $0$, tu as gagné. Sinon, les restes ne prennent que $n-1$ valeurs différentes pour $n$ nombres : que dit le principe des tiroirs ?
4. Deux de ces nombres ont le même reste. Que vaut leur différence ? Écris-la, par exemple pour $1111 - 11$.

## Solution

**L'idée : regarder les nombres $1, 11, 111, \ldots$ et leurs restes dans la division par $n$.**

**Étape 1 : les candidats.** Pour $k$ allant de $1$ à $n$, notons $R_k$ le nombre formé de $k$ chiffres $1$ :

$$R_1 = 1, \quad R_2 = 11, \quad R_3 = 111, \quad \ldots, \quad R_n = \underbrace{11\cdots1}_{n \text{ chiffres}} .$$

Cela fait $n$ nombres, tous écrits uniquement avec des $1$, et $R_k$ a exactement $k$ chiffres, donc au plus $n$.

**Étape 2 : premier cas, un reste nul.** Si l'un de ces $n$ nombres est divisible par $n$, disons $R_k$, alors $R_k$ répond à la question : c'est un multiple de $n$ non nul, écrit avec des $1$ seulement, et il a $k \leqslant n$ chiffres. C'est terminé.

**Étape 3 : second cas, deux restes égaux.** Supposons maintenant qu'aucun des $R_k$ n'est divisible par $n$. Le reste de la division de $R_k$ par $n$ est alors l'un des $n-1$ nombres

$$1, \; 2, \; \ldots, \; n-1 .$$

On range donc $n$ nombres ($R_1$ à $R_n$) dans $n-1$ tiroirs (les restes possibles). D'après le principe des tiroirs, deux d'entre eux tombent dans le même tiroir : il existe $i < j$ tels que $R_i$ et $R_j$ ont le **même reste** dans la division par $n$.

Leur différence est alors un multiple de $n$ :

$$N = R_j - R_i .$$

**Étape 4 : à quoi ressemble cette différence.** Prenons un exemple pour voir : $R_4 - R_2 = 1111 - 11 = 1100$. En général,

$$R_j - R_i = \underbrace{11\cdots1}_{j \text{ chiffres}} - \underbrace{11\cdots1}_{i \text{ chiffres}} = \underbrace{1\cdots1}_{j-i \text{ chiffres}} \underbrace{0\cdots0}_{i \text{ chiffres}} ,$$

car les $i$ derniers chiffres $1$ s'annulent deux à deux et les autres restent inchangés. Autrement dit,

$$N = R_{j-i} \times 10^{\,i} .$$

Ce nombre :

- n'est **pas nul**, puisque $j > i$ donne $R_j > R_i$ ;
- ne s'écrit **qu'avec des $0$ et des $1$** ;
- a exactement $(j-i) + i = j$ chiffres, et $j \leqslant n$ ;
- est un **multiple de $n$**, puisque $R_i$ et $R_j$ ont le même reste dans la division par $n$.

**Conclusion : dans les deux cas, on a construit un multiple non nul de $n$ écrit seulement avec des $0$ et des $1$, et comptant au plus $n$ chiffres.**

## Going further

L'énoncé demande « au plus $n$ chiffres », et c'est exactement ce que donne la démonstration. On ne peut pas espérer beaucoup mieux en général : pour $n = 8$, le plus petit multiple de $8$ écrit avec des $0$ et des $1$ est $1000$, qui a $4$ chiffres ; pour $n = 2^k$, il faut au moins $k+1$ chiffres, puisque le nombre doit se terminer par au moins $k$ zéros.

Si $n$ n'est divisible ni par $2$ ni par $5$, on peut même trouver un multiple écrit **uniquement avec des $1$** : c'est le cas $R_k$ de l'étape 2, et il se produit toujours.
