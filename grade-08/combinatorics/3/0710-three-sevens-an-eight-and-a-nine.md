---
id: "0710"
title: "Trois 7, un 8 et un 9"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, chiffres, anagrammes, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 25 (la question « pour aller plus loin » est l'exercice 26)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Trouve le nombre d'entiers naturels **impairs** dont l'écriture en base $10$ comprend trois fois le chiffre $7$, une fois le chiffre $8$ et une fois le chiffre $9$, et aucun autre chiffre.

## Hints

1. Combien de chiffres un tel nombre a-t-il ? La liste des chiffres est imposée, seule leur place reste à décider.
2. Un nombre est impair exactement quand son chiffre des unités est impair. Parmi les chiffres dont on dispose, lesquels peuvent occuper la dernière place ?
3. Traite séparément le cas où le nombre se termine par $9$ et le cas où il se termine par $7$. Dans chaque cas, il reste quatre chiffres à placer sur les quatre premières positions.
4. Dans le cas d'une fin par $9$, les quatre chiffres restants sont $7$, $7$, $7$ et $8$ : il suffit de décider où va le $8$.

## Solution

**Étape 1. La forme du nombre.**

Les chiffres imposés sont $7$, $7$, $7$, $8$, $9$ : cinq chiffres en tout. Le nombre a donc exactement cinq chiffres. Comme aucun de ces chiffres n'est $0$, il n'y a pas de souci avec le premier chiffre : tout rangement donne un vrai nombre à cinq chiffres.

Il reste donc à ranger ces cinq chiffres, avec la condition que le nombre soit impair.

**Étape 2. Le chiffre des unités.**

Un nombre est impair exactement quand son dernier chiffre est impair. Parmi $7$, $7$, $7$, $8$, $9$, les chiffres impairs sont les $7$ et le $9$. Le nombre se termine donc par $7$ ou par $9$. Séparons les deux cas.

**Cas 1 : le nombre se termine par 9.**

Il reste à placer $7$, $7$, $7$, $8$ sur les quatre premières positions. Les trois $7$ étant identiques, tout est décidé dès que l'on sait où se trouve le $8$ : il y a $4$ positions possibles, donc **$4$ nombres**.

Ce sont $87779$, $78779$, $77879$, $77789$.

**Cas 2 : le nombre se termine par 7.**

Il reste à placer $7$, $7$, $8$, $9$ sur les quatre premières positions. Tout est décidé dès que l'on sait où sont le $8$ et le $9$, car les deux $7$ remplissent les places restantes.

- $4$ positions possibles pour le $8$ ;
- puis $3$ positions restantes pour le $9$.

Cela fait $4 \times 3 = 12$ nombres.

**Étape 3. Conclusion.**

Les deux cas ne se recouvrent pas, puisqu'un nombre ne peut pas finir à la fois par $7$ et par $9$. Le total est

$$4 + 12 = 16$$

**Réponse : il y a $16$ nombres impairs de ce type.**

## Going further

Même question avec trois fois le chiffre $7$ et deux fois le chiffre $8$.

Cette fois le nombre a cinq chiffres et doit finir par un chiffre impair : seul le $7$ convient. Il reste à placer $7$, $7$, $8$, $8$ sur les quatre premières positions, c'est-à-dire à choisir les deux places des $8$ parmi quatre. Il y a $4$ places possibles pour le premier $8$ et $3$ pour le second, mais les deux $8$ étant identiques, chaque choix est ainsi compté deux fois : cela fait $(4 \times 3) \div 2 = 6$ façons, donc $6$ nombres : $88777$, $87877$, $87787$, $78877$, $78787$, $77887$.
