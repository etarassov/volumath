---
id: "4217"
title: "Le PGCD ne dépasse jamais la différence"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [pgcd, divisibilite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Greatest Common Divisors"
  reference: "Handout-1957-1801.pdf, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1957-1801.pdf"
---

## Statement

Le $\mathrm{PGCD}$ de deux entiers strictement positifs **différents** peut-il être plus grand que
leur différence ?

Répondre à la question et démontrer la réponse.

## Hints

1. Fais d'abord quelques essais : $\mathrm{PGCD}(12, 18)$ et la différence $18 - 12$ ;
   $\mathrm{PGCD}(14, 21)$ et la différence $21 - 14$. Que constates-tu ?
2. Si un nombre $d$ divise $a$ et divise $b$, que peut-on dire de $a - b$ ?
3. Un diviseur strictement positif d'un nombre entier strictement positif ne peut pas être plus
   grand que ce nombre.

## Solution

**La réponse est non :** le $\mathrm{PGCD}$ de deux entiers strictement positifs différents est
toujours inférieur ou égal à leur différence.

**Démonstration.** Soient $a$ et $b$ deux entiers strictement positifs, avec $a > b$ pour fixer
les idées. Notons $d = \mathrm{PGCD}(a, b)$.

Par définition, $d$ divise $a$ et $d$ divise $b$. Il existe donc deux entiers $k$ et $\ell$ tels
que
$$a = kd \qquad \text{et} \qquad b = \ell d.$$

Alors
$$a - b = kd - \ell d = (k - \ell)\,d,$$
ce qui montre que $d$ divise aussi $a - b$.

Comme $a \neq b$ et $a > b$, la différence $a - b$ est un entier **strictement positif**. Or un
diviseur strictement positif d'un entier strictement positif $N$ ne dépasse jamais $N$ : en effet,
si $N = md$ avec $m \geq 1$, alors $N = md \geq d$.

On a donc
$$d \leq a - b.$$

**Conclusion.** Le $\mathrm{PGCD}$ de deux entiers strictement positifs distincts est toujours
inférieur ou égal à leur différence. Il ne peut donc jamais la dépasser.

**Le cas d'égalité arrive.** Pour $a = 18$ et $b = 12$, la différence vaut $6$ et
$\mathrm{PGCD}(18, 12) = 6$ : la borne est atteinte.

## Going further

1. Pourquoi faut-il supposer $a \neq b$ ? Que se passe-t-il si $a = b$ ?
2. Deux entiers consécutifs ont une différence de $1$. Qu'en déduis-tu sur leur $\mathrm{PGCD}$ ?
