---
id: "0706"
title: "Un nombre qui se lit dans les deux sens"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, palindrome, chiffres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 14"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Un nombre est appelé **palindrome** lorsqu'il se lit de la même façon de gauche à droite et de droite à gauche. Par exemple $121$ et $13431$ sont des palindromes.

Combien existe-t-il de palindromes de six chiffres ?

## Hints

1. Écris un palindrome de six chiffres sous la forme $\overline{abcdef}$. Que dit la condition « il se lit pareil dans les deux sens » sur $a$ et $f$ ? Sur $b$ et $e$ ? Sur $c$ et $d$ ?
2. Une fois cette remarque faite, combien de chiffres reste-t-il à choisir librement ?
3. L'un de ces chiffres libres ne peut pas prendre toutes les valeurs. Lequel, et pourquoi ?

## Solution

**Étape 1. À quoi ressemble un palindrome de six chiffres ?**

Écrivons-le $\overline{abcdef}$. Lu à l'envers, il s'écrit $\overline{fedcba}$. Pour que les deux lectures donnent le même nombre, il faut que les chiffres coïncident place par place :

$$a = f, \qquad b = e, \qquad c = d$$

Un palindrome de six chiffres s'écrit donc

$$\overline{abccba}$$

Par exemple $217712$.

**Étape 2. Compter.**

Le nombre est entièrement déterminé par les trois chiffres $a$, $b$ et $c$ ; les trois derniers ne font que les recopier en sens inverse. Il suffit donc de compter les choix de $a$, $b$, $c$.

- $a$ est le premier chiffre du nombre, donc $a \neq 0$ : **$9$ possibilités**.
- $b$ est libre : **$10$ possibilités**.
- $c$ est libre : **$10$ possibilités**.

Cela fait

$$9 \times 10 \times 10 = 900$$

palindromes.

**Réponse : il y a $900$ palindromes de six chiffres.**

## Going further

Combien y a-t-il de palindromes de cinq chiffres ? Un tel nombre s'écrit $\overline{abcba}$ : les chiffres libres sont encore $a$, $b$ et $c$, donc la réponse est encore $900$. Les palindromes de longueur $5$ et ceux de longueur $6$ sont aussi nombreux les uns que les autres.
