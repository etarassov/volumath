---
id: "7067"
title: "Deux fractions à examiner"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, fraction irreductible, combinaison lineaire, parite]
adapted_from: null
see_also: ["7040"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, matin (Vincent Jugé), exercices 3 et 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

1. Soit $n$ un entier. La fraction $\dfrac{3n+10}{4n+13}$ est-elle **toujours** irréductible ?
2. Pour quels entiers $n$ la fraction $\dfrac{3n+10}{5n+16}$ est-elle irréductible ?

*(Une fraction est irréductible quand le PGCD de son numérateur et de son dénominateur
vaut $1$.)*

## Hints

1. Un diviseur commun du numérateur et du dénominateur divise aussi toute combinaison
   $\alpha \times (\text{numérateur}) + \beta \times (\text{dénominateur})$ à coefficients
   entiers.
2. Cherche une combinaison où le $n$ disparaît. Pour la question 1, essaie
   $4 \times (3n+10) - 3 \times (4n+13)$.
3. Pour la question 2, essaie $5 \times (3n+10) - 3 \times (5n+16)$.
4. Tu obtiens un nombre qui ne dépend plus de $n$. Dans le second cas il ne vaut pas $1$ :
   il reste à voir quand il divise vraiment les deux.

## Solution

### Question 1

Notons $d = \mathrm{PGCD}(3n+10,\ 4n+13)$.

Faisons disparaître le $n$ :
$$4 \times (3n + 10) - 3 \times (4n + 13) = 12n + 40 - 12n - 39 = 1 .$$

Comme $d$ divise $3n+10$ et $4n+13$, il divise cette combinaison, donc $d$ divise $1$, donc
$d = 1$.

$$\boxed{\text{La fraction } \frac{3n+10}{4n+13} \text{ est irréductible pour tout entier } n.}$$

### Question 2

Notons $e = \mathrm{PGCD}(3n+10,\ 5n+16)$.

Cette fois,
$$5 \times (3n + 10) - 3 \times (5n + 16) = 15n + 50 - 15n - 48 = 2 .$$

Donc $e$ divise $2$ : il vaut $1$ ou $2$.

Il vaut $2$ exactement quand les deux nombres $3n+10$ et $5n+16$ sont **pairs**. Regardons
leur parité :

- $3n + 10$ est pair $\iff 3n$ est pair $\iff n$ est pair ;
- $5n + 16$ est pair $\iff 5n$ est pair $\iff n$ est pair.

Les deux conditions sont donc la même. On en déduit :

- si $n$ est **pair**, alors $e = 2$ et la fraction se simplifie par $2$ ;
- si $n$ est **impair**, alors les deux nombres sont impairs, donc $e \neq 2$, donc $e = 1$ et
  la fraction est irréductible.

$$\boxed{\text{La fraction } \frac{3n+10}{5n+16} \text{ est irréductible si et seulement si }
n \text{ est impair.}}$$

**Deux vérifications.**

- $n = 1$ (impair) : la fraction vaut $\dfrac{13}{21}$, irréductible. $\checkmark$
- $n = 2$ (pair) : la fraction vaut $\dfrac{16}{26} = \dfrac{8}{13}$, qui se simplifie
  par $2$. $\checkmark$

## Going further

Comment trouve-t-on la bonne combinaison ? On cherche $\alpha$ et $\beta$ entiers tels que le
coefficient de $n$ disparaisse dans $\alpha(an+b) + \beta(cn+d)$, c'est-à-dire
$\alpha a + \beta c = 0$. Le choix le plus simple est $\alpha = c$ et $\beta = -a$, et il
reste alors
$$c\,b - a\,d .$$

Pour la question 1 : $4 \times 10 - 3 \times 13 = 40 - 39 = 1$.
Pour la question 2 : $5 \times 10 - 3 \times 16 = 50 - 48 = 2$.

Ce nombre $cb - ad$ s'appelle le **déterminant** de la fraction. Il donne d'un coup toutes les
simplifications possibles : le PGCD divise toujours $cb - ad$. Quand ce déterminant vaut
$\pm 1$, la fraction est irréductible pour tout $n$, sans aucun calcul supplémentaire.
