---
id: "8622"
title: "Le produit de trois différences est toujours pair"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, tiroirs, produit, divisibilite]
adapted_from: null
see_also: ["7246"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers quelconques. Montrer que le nombre

$$(a-b)(b-c)(c-a)$$

est toujours pair.

## Hints

1. Résiste à l'envie de développer : un produit garde beaucoup plus d'information sur la divisibilité qu'une somme développée.
2. Pour qu'un produit soit pair, il suffit qu'un seul de ses facteurs le soit.
3. Quand la différence de deux entiers est-elle paire ?
4. Tu as trois entiers, et seulement deux parités possibles.

## Solution

**Ne pas développer.** Un produit est bien plus commode qu'une somme quand on s'intéresse à la divisibilité : pour que le produit soit pair, il suffit qu'**un seul** des trois facteurs le soit.

**Quand une différence est-elle paire ?** Si deux entiers $x$ et $y$ ont la même parité, alors $x - y$ est pair :

- si $x = 2k$ et $y = 2\ell$, alors $x - y = 2(k - \ell)$ ;
- si $x = 2k+1$ et $y = 2\ell+1$, alors $x - y = 2(k - \ell)$.

**Le principe des tiroirs.** Il n'y a que deux parités possibles, « pair » et « impair » : ce sont nos deux tiroirs. Nous avons trois nombres $a$, $b$, $c$ à y ranger.

Comme $3 > 2$, l'un des tiroirs contient au moins deux de nos nombres : **deux des trois entiers ont la même parité.**

**Conclusion.** Ces deux nombres-là forment, à l'ordre près, l'un des trois facteurs du produit : si ce sont $a$ et $b$, c'est le facteur $a - b$ ; si ce sont $b$ et $c$, c'est $b - c$ ; si ce sont $a$ et $c$, c'est $c - a$. Dans tous les cas ce facteur est pair, donc le produit tout entier est pair.

## Going further

La même idée va plus loin. Montre que si $a$, $b$, $c$, $d$ sont quatre entiers, le produit de toutes leurs différences deux à deux

$$(a-b)(a-c)(a-d)(b-c)(b-d)(c-d)$$

est divisible par $12$.

*Indication : pour le facteur $3$, range les quatre nombres selon leur reste dans la division par $3$. Pour le facteur $4$, regarde les parités : soit il y a deux paires de même parité, soit trois nombres ont la même parité.*
