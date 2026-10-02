---
id: "11216"
title: "1 008 entiers et un PGCD"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [pgcd, tiroirs, parite, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

On choisit $1\,008$ entiers différents compris entre $1$ et $2\,014$ (bornes comprises).

1. Montrer qu'on peut trouver, parmi les entiers choisis, trois entiers différents $a$, $b$, $c$
   tels que $\mathrm{PGCD}(a, b)$ divise $c$.
2. Montrer qu'on peut aussi trouver, parmi les entiers choisis, trois entiers différents $a$, $b$,
   $c$ tels que $\mathrm{PGCD}(a, b)$ ne divise **pas** $c$.

## Hints

1. Pour la question 1, quel nombre divise tous les entiers ? Quand le PGCD de deux entiers vaut-il
   sûrement $1$ ?
2. Range les entiers de $1$ à $2\,014$ par paires de nombres qui se suivent : $(1, 2)$, $(3, 4)$,
   et ainsi de suite. Combien y a-t-il de paires ?
3. Pour la question 2, combien y a-t-il de nombres pairs entre $1$ et $2\,014$ ? Si $a$ et $b$ sont
   pairs, que peut-on dire de leur PGCD ?
4. Que se passe-t-il si l'on a choisi au plus un nombre pair ?

## Solution

**Question 1.**

Rangeons les entiers de $1$ à $2\,014$ en paires de nombres qui se suivent :
$$(1, 2), \ (3, 4), \ (5, 6), \ \ldots, \ (2\,013, 2\,014) .$$
Il y a $\frac{2\,014}{2} = 1\,007$ paires. On a choisi $1\,008$ entiers, plus que de paires, donc
deux des entiers choisis sont dans la même paire (principe des tiroirs). Appelons-les $a$ et
$b = a + 1$.

Le PGCD de $a$ et $b$ divise $a$ et $b$, donc il divise leur différence $b - a = 1$. Ainsi
$\mathrm{PGCD}(a, b) = 1$. Or $1$ divise tous les entiers : on peut prendre pour $c$ n'importe
lequel des $1\,006$ autres entiers choisis.

**Question 2.**

On utilise un fait du cours : un diviseur commun de deux entiers divise toujours leur PGCD. On le
voit par exemple sur la décomposition en facteurs premiers.

Entre $1$ et $2\,014$, il y a $1\,007$ nombres pairs et $1\,007$ nombres impairs. Comme on a choisi
$1\,008$ entiers, on a forcément choisi au moins un nombre impair.

- **Si on a choisi au moins deux nombres pairs**, appelons-les $a$ et $b$, et prenons pour $c$ un
  nombre impair choisi. Le nombre $2$ divise $a$ et $b$, donc il divise $\mathrm{PGCD}(a, b)$ :
  ce PGCD est pair. Un nombre pair ne peut pas diviser le nombre impair $c$. Donc
  $\mathrm{PGCD}(a, b)$ ne divise pas $c$.
- **Si on a choisi au plus un nombre pair**, alors on a choisi au moins $1\,007$ nombres impairs,
  donc **tous** les nombres impairs de $1$ à $2\,013$. En particulier $1$, $3$ et $9$ sont choisis.
  On prend $a = 3$, $b = 9$ et $c = 1$ : $\mathrm{PGCD}(3, 9) = 3$ ne divise pas $1$.

**Conclusion : dans les deux questions, on trouve toujours trois entiers qui conviennent. Pour la
question 1, deux entiers consécutifs ont pour PGCD $1$, qui divise tout. Pour la question 2, on
prend deux nombres pairs et un impair, ou bien $3$, $9$ et $1$.**

## Going further

La question 1 n'a rien d'évident : avec peu de nombres, elle peut être fausse. Pour les trois
nombres $6$, $10$ et $15$, on a $\mathrm{PGCD}(6, 10) = 2$, qui ne divise pas $15$,
$\mathrm{PGCD}(6, 15) = 3$, qui ne divise pas $10$, et $\mathrm{PGCD}(10, 15) = 5$, qui ne
divise pas $6$. C'est le grand nombre d'entiers choisis qui force deux d'entre eux à se suivre.
