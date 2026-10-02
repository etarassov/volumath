---
id: "8937"
title: "Un nombre impair qui divise 8y"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, nombres-premiers-entre-eux, theoreme-de-gauss, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers relatifs tels que $2x + 1$ divise $8y$.

Montrer que $2x + 1$ divise $y$.

## Hints

1. Quelle particularité a le nombre $2x+1$, quel que soit l'entier $x$ ?
2. Le nombre $8$ n'a qu'un seul facteur premier. Lequel ?
3. Que vaut $\mathrm{PGCD}(2x+1,\ 8)$ ?
4. Rappelez-vous le théorème de Gauss : si $a$ divise $bc$ et si $a$ et $b$ sont premiers entre eux, alors $a$ divise $c$.

## Solution

### L'observation de départ

Quel que soit l'entier relatif $x$, le nombre $2x + 1$ est **impair**.

### Le PGCD avec 8

Posons $d = \mathrm{PGCD}(2x+1,\ 8)$. Comme $d$ divise $8 = 2^3$, les seules valeurs possibles pour $d$ sont $1$, $2$, $4$ et $8$ : ce sont les diviseurs positifs de $8$. Mais $d$ divise aussi $2x+1$, qui est impair, donc $d$ ne peut pas être pair. Il ne reste que

$$\mathrm{PGCD}(2x+1,\ 8) = 1,$$

c'est-à-dire que $2x+1$ et $8$ sont premiers entre eux.

### Le théorème de Gauss

Nous savons que $2x+1$ divise le produit $8 \times y$, et que $2x+1$ est premier avec $8$. Le théorème de Gauss donne alors directement

$$2x + 1 \text{ divise } y.$$

$$\boxed{2x+1 \mid 8y \ \Longrightarrow \ 2x+1 \mid y.}$$

### Sans le théorème de Gauss

Si l'on veut voir les choses de plus près, on peut aussi raisonner sur les puissances de $2$. Écrivons $8y = k(2x+1)$ pour un certain entier $k$ (c'est l'hypothèse). Comme $2x+1$ est impair, il n'apporte aucun facteur $2$ : tous les facteurs $2$ du membre de droite viennent de $k$. Or le membre de gauche est divisible par $8 = 2^3$, donc $k$ l'est aussi. Écrivons $k = 8m$. Alors

$$8y = 8m(2x+1), \qquad \text{donc} \qquad y = m(2x+1),$$

et $2x+1$ divise bien $y$.

## Going further

1. Le nombre $8$ n'a rien de particulier : démontrez que si $d$ est impair et divise $2^k y$ pour un certain entier $k \geqslant 0$, alors $d$ divise $y$.
2. Montrez sur un exemple que l'hypothèse « premiers entre eux » est indispensable : trouvez $a$, $b$, $c$ tels que $a$ divise $bc$ sans que $a$ divise $c$.
