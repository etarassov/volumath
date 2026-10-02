---
id: "7832"
title: "x² − y! = 2015"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorielle, carres, congruences, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de fin de parcours du mardi 25 août, groupe A, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Rappel : pour un entier $y \geq 1$, $y! = 1 \times 2 \times \cdots \times y$, et par convention
$0! = 1$.

Trouver tous les couples d'entiers naturels $(x, y)$ tels que
$$x^2 - y! = 2015 .$$

## Hints

1. Une factorielle $y!$ avec $y$ assez grand contient le facteur $3$. À partir de quelle valeur
   de $y$ le nombre $y!$ est-il un multiple de $3$ ?
2. Dans ce cas, l'équation lue « à trois près » devient $x^2 \equiv 2015$. Quel est le reste de
   $2015$ dans la division par $3$ ?
3. Quels sont les restes possibles d'un carré dans la division par $3$ ? Fais le test sur
   $x = 0, 1, 2$ et explique pourquoi cela suffit.
4. Il ne restera que deux ou trois petites valeurs de $y$ à traiter à la main. Pour chacune,
   regarde si $2015 + y!$ est un carré parfait : encadre-le entre deux carrés consécutifs.

## Solution

**Étape 1 : le cas $y \geq 3$.**

Si $y \geq 3$, le produit $y! = 1 \times 2 \times 3 \times \cdots \times y$ contient le facteur
$3$, donc $y!$ est un multiple de $3$.

L'équation donne alors
$$x^2 = 2015 + y! \equiv 2015 \pmod 3 .$$

Or $2 + 0 + 1 + 5 = 8$, et $8 = 3 \times 2 + 2$, donc $2015 \equiv 2 \pmod 3$. Il faudrait donc
$$x^2 \equiv 2 \pmod 3 .$$

Mais un carré ne vaut jamais $2$ modulo $3$. En effet, tout entier $x$ s'écrit $3q$, $3q+1$ ou
$3q+2$, et alors

| $x \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $x^2 \bmod 3$ | $0$ | $1$ | $1$ |

Les seuls restes possibles sont $0$ et $1$. C'est une contradiction : **aucune solution avec
$y \geq 3$.**

**Étape 2 : les petites valeurs de $y$.**

Il ne reste que $y = 0$, $y = 1$ et $y = 2$, pour lesquels $y! = 1$, $1$ et $2$.

- $y = 0$ ou $y = 1$ : $x^2 = 2015 + 1 = 2016$ ;
- $y = 2$ : $x^2 = 2015 + 2 = 2017$.

Encadrons : $44^2 = 1936$ et $45^2 = 2025$. Les deux nombres $2016$ et $2017$ sont strictement
compris entre $1936$ et $2025$, donc strictement entre deux carrés consécutifs. Aucun des deux
n'est un carré parfait.

**Conclusion.**

L'équation $x^2 - y! = 2015$ n'a $\boxed{\text{aucune solution}}$ en entiers naturels.

*Remarque.* La force de l'argument modulo $3$ est qu'il traite d'un seul coup une infinité de
valeurs de $y$. C'est le réflexe à avoir face à une factorielle : au-delà d'un certain rang,
elle devient divisible par tout ce qu'on veut, et l'équation se lit modulo ce diviseur.
