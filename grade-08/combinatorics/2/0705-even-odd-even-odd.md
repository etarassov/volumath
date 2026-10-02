---
id: "0705"
title: "Pair, impair, pair, impair"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, chiffres, parite, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 9"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Combien y a-t-il de nombres de quatre chiffres dont le premier et le troisième chiffre sont pairs, et dont le deuxième et le quatrième chiffre sont impairs ?

## Hints

1. Choisis les quatre chiffres l'un après l'autre et compte les possibilités à chaque étape.
2. Combien y a-t-il de chiffres pairs ? Combien de chiffres impairs ? N'oublie pas que $0$ est pair.
3. Les quatre étapes n'ont pas toutes le même nombre de possibilités. Regarde bien la première de près : quelle valeur un premier chiffre ne peut-il jamais prendre ?

## Solution

Notons le nombre $\overline{abcd}$, avec $a$ le chiffre des milliers, $b$ celui des centaines, $c$ celui des dizaines et $d$ celui des unités.

**Les chiffres disponibles.**

- Les chiffres pairs sont $0$, $2$, $4$, $6$, $8$ : il y en a $5$.
- Les chiffres impairs sont $1$, $3$, $5$, $7$, $9$ : il y en a $5$ aussi.

**Étape par étape.**

- $a$ doit être pair. Mais $a$ est le premier chiffre d'un nombre à quatre chiffres, donc $a \neq 0$. Il reste $2$, $4$, $6$, $8$, soit **$4$ possibilités**. C'est le seul endroit où le $0$ pose problème.
- $b$ doit être impair : **$5$ possibilités**.
- $c$ doit être pair, et cette fois $0$ est autorisé : **$5$ possibilités**.
- $d$ doit être impair : **$5$ possibilités**.

Rien ne relie ces quatre choix entre eux, donc on multiplie :

$$4 \times 5 \times 5 \times 5 = 4 \times 125 = 500$$

**Réponse : il y a $500$ nombres de ce type.**

Par exemple $2109$ en fait partie, mais pas $0123$ (ce n'est pas un nombre à quatre chiffres) ni $2134$ (le dernier chiffre est pair).

## Going further

Si l'on avait oublié que $a$ ne peut pas valoir $0$, on aurait trouvé $5 \times 5 \times 5 \times 5 = 625$. L'écart, $625 - 500 = 125$, est exactement le nombre d'écritures commençant par $0$ : $1 \times 5 \times 5 \times 5 = 125$. Les comptes se recoupent.
