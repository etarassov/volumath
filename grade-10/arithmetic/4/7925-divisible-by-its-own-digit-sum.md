---
id: "7925"
title: "Divisible par la somme de ses chiffres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-des-chiffres, divisibilite-par-9, multiples, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 7 (énoncé p. 29, solution p. 31)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Montrer que parmi $18$ entiers consécutifs strictement positifs et tous inférieurs ou égaux à $2016$, il en existe au moins un qui est divisible par la somme de ses chiffres.

## Hints

1. Parmi $18$ entiers consécutifs, il y en a forcément un qui est un multiple de $18$. C'est celui-là qu'il faut examiner.
2. Un multiple de $18$ est un multiple de $9$. Que peut-on dire de la somme de ses chiffres ?
3. Majore la somme des chiffres d'un entier inférieur ou égal à $2016$. Il ne reste alors que trois valeurs possibles.
4. Deux des trois valeurs se traitent immédiatement. Pour la troisième, liste tous les entiers concernés : ils sont très peu nombreux.

## Solution

Notons $s(n)$ la somme des chiffres de $n$.

**Étape 1 : on choisit le bon entier.**

Parmi $18$ entiers consécutifs, il y en a exactement un qui est un multiple de $18$. Appelons-le $n$. On a $1 \le n \le 2016$.

C'est cet entier que nous allons étudier.

**Étape 2 : la somme de ses chiffres est un multiple de $9$.**

Comme $n$ est un multiple de $18$, il est en particulier un multiple de $9$. Or un entier est divisible par $9$ si et seulement si la somme de ses chiffres l'est. Donc $9$ divise $s(n)$.

**Étape 3 : $s(n)$ ne peut pas être trop grand.**

L'entier $n$ vérifie $n \le 2016$, donc il a au plus quatre chiffres. Distinguons :

- si $n < 2000$, alors le premier chiffre est $0$ ou $1$ et les suivants valent au plus $9$, donc $s(n) \le 1 + 9 + 9 + 9 = 28$ ;
- si $2000 \le n \le 2016$, alors $n$ s'écrit $20\square\square$ et $s(n) \le 2 + 0 + 1 + 9 = 12$.

Dans tous les cas $s(n) \le 28$. Comme $s(n)$ est un multiple de $9$ non nul, il ne reste que trois possibilités :

$$s(n) = 9, \qquad s(n) = 18, \qquad s(n) = 27 .$$

**Étape 4 : les deux premiers cas.**

- Si $s(n) = 9$ : comme $n$ est un multiple de $18$, il est un multiple de $9$, donc $s(n) = 9$ divise $n$. C'est gagné.
- Si $s(n) = 18$ : comme $n$ est un multiple de $18$, $s(n) = 18$ divise $n$. C'est gagné aussi.

**Étape 5 : le troisième cas.**

Supposons $s(n) = 27$. Cherchons tous les entiers $n \le 2016$ dont la somme des chiffres vaut $27$.

- Avec trois chiffres, il faut que les trois chiffres somment à $27$ : ils valent tous $9$, donc $n = 999$.
- Avec quatre chiffres et $n \le 2016$, le premier chiffre est $1$ ou $2$. S'il vaut $2$, alors $n \le 2016$ impose $n = 20\square\square$, dont la somme des chiffres est au plus $12$ : impossible. Donc le premier chiffre vaut $1$, et les trois autres somment à $26$ : ils valent $9, 9, 8$ dans un certain ordre, d'où $n = 1899$, $n = 1989$ ou $n = 1998$.

Il reste quatre candidats : $999$, $1899$, $1989$, $1998$. Mais $n$ est un multiple de $18$, donc il est **pair**. Les trois premiers sont impairs ; il ne reste que

$$n = 1998 .$$

Et $1998 = 27 \times 74$ : le nombre $1998$ est bien divisible par $27$, c'est-à-dire par la somme de ses chiffres. C'est gagné.

**Conclusion.** Dans les trois cas possibles, le multiple de $18$ situé parmi les $18$ entiers consécutifs est divisible par la somme de ses chiffres.

## Going further

L'hypothèse $n \le 2016$ sert uniquement à majorer $s(n)$ par $28$, ce qui laisse seulement trois valeurs possibles. Sans elle l'énoncé tombe : le nombre $9918$ est un multiple de $18$ (car $9918 = 18 \times 551$), la somme de ses chiffres vaut $27$, mais $9918$ n'est pas divisible par $27$, puisque $27 \times 367 = 9909$ et $27 \times 368 = 9936$.
