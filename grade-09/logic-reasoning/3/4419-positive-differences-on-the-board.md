---
id: "4419"
title: "Les différences positives au tableau"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [parite, invariant, tableau, somme]
adapted_from: null
see_also: []
same_as: ["7408"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Parity"
  reference: "Handout-1255-1270.pdf, problème 4 (réponse dans Handout-1264-1270.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1255-1270.pdf"
---

## Statement

Les nombres $1, 2, 3, \ldots, 2016, 2017$ sont écrits au tableau.

À chaque étape, on efface deux nombres de son choix et on écrit à la place leur **différence
positive** (le plus grand moins le plus petit). Le nombre de nombres au tableau diminue donc de
un à chaque étape.

Au bout de $2016$ étapes, il ne reste qu'un seul nombre au tableau.

Ce nombre peut-il être égal à $0$ ?

## Hints

1. Cherche une quantité qui ne change pas, ou qui change de façon très contrôlée, à chaque
   étape. La somme de tous les nombres du tableau est un bon candidat.
2. La somme, elle, change. Mais comment change sa **parité** ? Compare $a + b$ et $a - b$.
3. Calcule la parité de la somme de départ $1 + 2 + \cdots + 2017$.

## Solution

**Ce qui ne change pas.** Regardons la **parité de la somme** de tous les nombres écrits au
tableau.

À une étape, on remplace deux nombres $a$ et $b$ (avec $a \geqslant b$) par $a - b$. La somme
du tableau diminue donc de

$$(a + b) - (a - b) = 2b,$$

qui est un nombre pair. Enlever un nombre pair à la somme ne change pas sa parité.

**Autrement dit :** la parité de la somme des nombres du tableau est la même au début et à la
fin, quelles que soient les étapes choisies.

**La somme de départ.** C'est

$$1 + 2 + \cdots + 2017 = \frac{2017 \times 2018}{2} = 2017 \times 1009.$$

C'est un produit de deux nombres impairs, donc il est **impair**.

**Conclusion.** La somme du tableau est impaire au départ, donc elle reste impaire à toutes les
étapes. À la fin il ne reste qu'un seul nombre, qui est donc la somme du tableau : ce nombre est
impair. Or $0$ est pair.

**Non, le nombre restant ne peut pas être $0$.**

## Going further

Le même argument dit plus : le dernier nombre est toujours impair, quelles que soient les
opérations. On peut d'ailleurs obtenir $1$, et donc le plus petit résultat possible est $1$.
Si l'on remplaçait $2017$ par $2016$, la somme de départ vaudrait $2016 \times 2017 \div 2 =
1008 \times 2017$, un nombre pair, et $0$ deviendrait atteignable.
