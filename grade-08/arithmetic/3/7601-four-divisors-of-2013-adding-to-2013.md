---
id: "7601"
title: "Quatre diviseurs de 2013 dont la somme fait 2013"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [parite, diviseurs, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de sélection"
  reference: "stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On cherche quatre nombres entiers strictement positifs $a$, $b$, $c$, $d$ tels que

- chacun des quatre nombres $a$, $b$, $c$, $d$ est un **diviseur** de $2013$ ;
- et $a + b + c + d = 2013$.

Les quatre nombres n'ont pas besoin d'être différents les uns des autres.

Trouver tous les quadruplets $(a, b, c, d)$ qui conviennent, ou bien démontrer qu'il n'en existe aucun.

## Hints

1. Avant de chercher les diviseurs de $2013$, posez-vous une question beaucoup plus simple : $2013$ est-il pair ou impair ?
2. Un multiple d'un nombre pair est toujours pair. Que peut-on en déduire sur les diviseurs d'un nombre impair ?
3. Additionnez quatre nombres impairs. Quelle est la parité du résultat ?

## Solution

**Il n'existe aucun quadruplet.** Voici pourquoi.

**Étape 1 : les quatre nombres sont impairs.**

Le nombre $2013$ se termine par $3$, il est donc impair.

Supposons un instant que $a$ soit pair. Comme $a$ divise $2013$, il existe un entier $k$ tel que $2013 = a \times k$. Un produit dont l'un des facteurs est pair est pair, donc $2013$ serait pair. C'est faux.

Donc $a$ est impair. Le même raisonnement s'applique à $b$, à $c$ et à $d$ : **les quatre nombres sont impairs.**

**Étape 2 : leur somme est paire.**

La somme de deux nombres impairs est paire. Donc $a + b$ est pair, et $c + d$ est pair. La somme de deux nombres pairs est paire, donc

$$a + b + c + d \quad \text{est pair.}$$

**Étape 3 : la contradiction.**

On voulait $a + b + c + d = 2013$, qui est impair. Mais on vient de voir que cette somme est forcément paire. Un nombre ne peut pas être à la fois pair et impair.

**Conclusion.** Il n'existe aucun quadruplet $(a, b, c, d)$ d'entiers strictement positifs, diviseurs de $2013$, dont la somme vaut $2013$.

## Going further

Remarquez qu'on n'a jamais eu besoin de connaître les diviseurs de $2013$. Pour les curieux, les voici : en utilisant le critère de divisibilité par $3$ (la somme des chiffres $2+0+1+3 = 6$ est un multiple de $3$), puis celui par $11$ (la somme alternée des chiffres, $3 - 1 + 0 - 2 = 0$, est un multiple de $11$), on trouve

$$2013 = 3 \times 11 \times 61,$$

et les huit diviseurs de $2013$ sont

$$1, \quad 3, \quad 11, \quad 33, \quad 61, \quad 183, \quad 671, \quad 2013 .$$

Tous sont bien impairs, comme prévu.

La démonstration ne se sert d'aucune particularité de $2013$ : **pour tout nombre impair $N$, il est impossible d'écrire $N$ comme somme de quatre de ses diviseurs.** En revanche, avec $N = 12$, qui est pair, on trouve tout de suite $12 = 6 + 3 + 2 + 1$.
