---
id: "8141"
title: "Le plus petit dénominateur après addition"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, fraction-irreductible, divisibilite, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 2 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers non nuls tels que les deux fractions

$$\frac{a}{600} \qquad \text{et} \qquad \frac{b}{700}$$

soient irréductibles.

On forme alors la fraction

$$\frac{7a + 6b}{4200}.$$

Quel est le plus petit dénominateur possible de cette fraction, une fois celle-ci réduite ?

## Hints

1. Remarque d'abord que $4200 = 7 \times 600 = 6 \times 700$ : la fraction de l'énoncé est simplement $\dfrac{a}{600} + \dfrac{b}{700}$.
2. Le dénominateur réduit vaut $\dfrac{4200}{d}$, où $d$ est le PGCD de $7a+6b$ et de $4200$. Il s'agit donc de rendre $d$ aussi **grand** que possible.
3. Décompose $4200$ en facteurs premiers. Pour chacun de ces facteurs premiers, demande-toi s'il peut diviser $7a + 6b$.
4. Que dit « $\dfrac{a}{600}$ est irréductible » sur la parité de $a$ ? Sur son reste modulo $3$ ? Et « $\dfrac{b}{700}$ est irréductible » sur $b$ modulo $7$ ?
5. Une fois les facteurs $2$, $3$ et $7$ éliminés, il ne reste qu'un facteur possible. Trouve un exemple qui l'atteint.

## Solution

Posons $N = 7a + 6b$ et $d = \mathrm{PGCD}(N, 4200)$. Après réduction, la fraction $\dfrac{N}{4200}$ a pour dénominateur $\dfrac{4200}{d}$. Chercher le plus petit dénominateur revient donc à chercher le plus grand $d$ possible.

**Ce que disent les hypothèses.**

$$600 = 2^3 \times 3 \times 5^2, \qquad 700 = 2^2 \times 5^2 \times 7, \qquad 4200 = 2^3 \times 3 \times 5^2 \times 7.$$

- $\dfrac{a}{600}$ irréductible signifie que $a$ n'a aucun facteur commun avec $600$ : donc $a$ n'est divisible ni par $2$, ni par $3$, ni par $5$.
- $\dfrac{b}{700}$ irréductible signifie que $b$ n'est divisible ni par $2$, ni par $5$, ni par $7$.

**Le facteur $2$ ne peut pas apparaître.**

L'entier $a$ est impair, donc $7a$ est impair. L'entier $6b$ est pair. Une somme « impair $+$ pair » est impaire, donc $N$ est impair : $2$ ne divise pas $N$.

**Le facteur $3$ non plus.**

$6b$ est un multiple de $3$, et $7a = 6a + a$ a le même reste que $a$ modulo $3$. Donc $N$ a le même reste que $a$ modulo $3$. Or $3$ ne divise pas $a$, donc $3$ ne divise pas $N$.

**Le facteur $7$ non plus.**

$7a$ est un multiple de $7$, donc $N$ a le même reste que $6b$ modulo $7$. Comme $7$ ne divise ni $6$ ni $b$, il ne divise pas $6b$, donc pas $N$.

**Il ne reste que $25$.**

Le nombre $d$ divise $4200 = 2^3 \times 3 \times 5^2 \times 7$ et n'a ni le facteur $2$, ni le facteur $3$, ni le facteur $7$. Donc $d$ divise $25$, et par conséquent

$$d \leq 25, \qquad \text{donc le dénominateur réduit vaut au moins } \frac{4200}{25} = 168.$$

**La valeur $168$ est atteinte.**

Prenons $a = 1$ et $b = 3$.

- $\dfrac{1}{600}$ est bien irréductible ;
- $\dfrac{3}{700}$ aussi, car $700 = 2^2 \times 5^2 \times 7$ n'est pas divisible par $3$.

Alors $N = 7 \times 1 + 6 \times 3 = 7 + 18 = 25$, et

$$\frac{25}{4200} = \frac{1}{168}.$$

**Le plus petit dénominateur possible est $168$.**
