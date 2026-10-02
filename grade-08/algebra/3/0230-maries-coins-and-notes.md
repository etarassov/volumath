---
id: "0230"
title: "L'argent de Marie"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [mise-en-equation, double-comptage, prix, monnaie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 28 «Подсчёт двумя способами», задача 7, с. 82"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Marie possède des pièces de $2$ euros et des billets de $5$ euros. Elle voudrait acheter des livres, qui coûtent tous le même prix.

- Si elle prend toutes ses pièces de $2$ euros, il lui manque $60$ euros pour acheter quatre livres.
- Si elle prend tous ses billets de $5$ euros, il lui manque $60$ euros pour acheter cinq livres.
- Si elle prend tout son argent, il lui manque $60$ euros pour acheter six livres.

Combien coûte un livre ?

## Hints

1. Récris chacun des trois renseignements sous la forme : « l'argent qu'elle prend $+$ ce qui lui manque $=$ le prix des livres ».
2. Imagine que Marie fasse deux courses de suite : la première en ne payant qu'avec ses pièces, la seconde en ne payant qu'avec ses billets. Combien de livres achète-t-elle en tout, et combien d'argent lui manque-t-il en tout ?
3. Tu as maintenant deux phrases qui parlent du même argent, celui que Marie possède en tout : une pour six livres, une pour neuf livres.
4. Compare ces deux phrases. La différence te donne le prix de plusieurs livres d'un coup.

## Solution

**L'idée : parler deux fois de la même somme d'argent.**

Le troisième renseignement et les deux premiers parlent tous de la même chose : tout l'argent de Marie. On va l'écrire de deux façons.

**Première façon : en réunissant les deux premiers renseignements.**

Le premier renseignement dit :

$$\text{(argent en pièces)} + 60 \text{ €} = \text{prix de } 4 \text{ livres}.$$

Le deuxième dit :

$$\text{(argent en billets)} + 60 \text{ €} = \text{prix de } 5 \text{ livres}.$$

Additionnons ces deux lignes. À gauche, les pièces et les billets réunis donnent tout l'argent de Marie, et les deux manques donnent $60 + 60 = 120$ euros. À droite, on obtient le prix de $4 + 5 = 9$ livres :

$$\text{(tout l'argent de Marie)} + 120 \text{ €} = \text{prix de } 9 \text{ livres}.$$

**Deuxième façon : le troisième renseignement.**

$$\text{(tout l'argent de Marie)} + 60 \text{ €} = \text{prix de } 6 \text{ livres}.$$

**On compare.**

Les deux lignes commencent par la même somme, celle que Marie possède. En passant de la seconde à la première, on ajoute $120 - 60 = 60$ euros à gauche, et on passe de $6$ livres à $9$ livres à droite, soit $3$ livres de plus. Donc

$$3 \text{ livres coûtent } 60 \text{ €}.$$

**Conclusion.**

Un livre coûte $60 : 3 = 20$ euros.

**Vérification.** Quatre livres coûtent $80$ €, donc Marie a $80 - 60 = 20$ € en pièces de $2$ € (soit $10$ pièces). Cinq livres coûtent $100$ €, donc elle a $100 - 60 = 40$ € en billets de $5$ € (soit $8$ billets). En tout elle a $60$ €, et six livres coûtent $120$ € : il lui manque bien $60$ €.

**La même chose avec des lettres.** En notant $p$ le prix d'un livre, $a$ l'argent en pièces et $b$ l'argent en billets, l'énoncé s'écrit
$$a + 60 = 4p, \qquad b + 60 = 5p, \qquad a + b + 60 = 6p.$$
Les deux premières donnent $a + b + 120 = 9p$. En retranchant la troisième : $60 = 3p$, donc $p = 20$.

## Going further

1. Combien de pièces de $2$ euros et combien de billets de $5$ euros Marie possède-t-elle exactement ?
2. Le fait que les pièces valent $2$ euros et les billets $5$ euros n'a servi nulle part dans la solution. Pourquoi l'énoncé le précise-t-il quand même ?
3. Invente un énoncé du même type dans lequel le livre coûterait $15$ euros.
