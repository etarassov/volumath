---
id: "4015"
title: "Palindromes de sept chiffres sans chiffre répété trois fois"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, palindrome, chiffres, principe-multiplicatif]
adapted_from: null
see_also: ["0706"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 18 (réponse 4536 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Un nombre est un **palindrome** lorsqu'il se lit de la même façon de gauche à droite et de
droite à gauche ; par exemple $1\,234\,321$.

Combien y a-t-il de nombres de sept chiffres qui sont des palindromes et dans lesquels
aucun chiffre n'apparaît plus de deux fois ?

## Hints

1. Écris un palindrome de sept chiffres sous la forme $\overline{abcdcba}$. Combien de chiffres faut-il réellement choisir ?
2. Compte combien de fois chacune des lettres $a$, $b$, $c$, $d$ apparaît dans le nombre. Que se passe-t-il si deux de ces lettres désignent le même chiffre ?
3. Traduis la condition « aucun chiffre plus de deux fois » en une condition sur $a$, $b$, $c$ et $d$.
4. N'oublie pas que $a$ est le premier chiffre du nombre.

## Solution

**Étape 1. La forme d'un palindrome de sept chiffres.**

Écrivons le nombre $\overline{a\,b\,c\,d\,e\,f\,g}$. Le lire à l'envers donne
$\overline{g\,f\,e\,d\,c\,b\,a}$, et l'égalité des deux impose

$$g = a, \qquad f = b, \qquad e = c.$$

Un palindrome de sept chiffres s'écrit donc

$$\overline{a\,b\,c\,d\,c\,b\,a}.$$

Il est entièrement déterminé par les quatre chiffres $a$, $b$, $c$, $d$.

**Étape 2. Traduire la condition.**

Dans $\overline{abcdcba}$, le chiffre $a$ apparaît aux positions $1$ et $7$, donc **deux
fois**. De même $b$ apparaît deux fois, et $c$ apparaît deux fois. Le chiffre $d$ apparaît
une seule fois, au milieu.

Que se passe-t-il si deux de ces lettres valent le même chiffre ?

- Si $a = b$ (ou $a = c$, ou $b = c$), ce chiffre apparaît $2 + 2 = 4$ fois : interdit.
- Si $d$ est égal à $a$, $b$ ou $c$, ce chiffre apparaît $2 + 1 = 3$ fois : interdit.

Réciproquement, si les quatre chiffres $a$, $b$, $c$, $d$ sont deux à deux distincts, alors
trois d'entre eux apparaissent deux fois et le dernier une fois : la condition est
respectée.

La condition de l'énoncé revient donc exactement à : **$a$, $b$, $c$ et $d$ sont quatre
chiffres deux à deux distincts.**

**Étape 3. Compter.**

Choisissons-les dans l'ordre :

- $a$ est le premier chiffre du nombre, donc $a \neq 0$ : $9$ possibilités ;
- $b$ doit seulement être différent de $a$ (il a le droit d'être $0$) : $9$ possibilités ;
- $c$ doit être différent de $a$ et de $b$ : $8$ possibilités ;
- $d$ doit être différent de $a$, $b$ et $c$ : $7$ possibilités.

Le nombre total vaut

$$9 \times 9 \times 8 \times 7 = 81 \times 56 = 4536.$$

**Réponse : il y a $4536$ tels palindromes.**

## Going further

Sans la condition sur les répétitions, il y aurait $9 \times 10 \times 10 \times 10 = 9000$
palindromes de sept chiffres. La condition en élimine donc un peu moins de la moitié.
