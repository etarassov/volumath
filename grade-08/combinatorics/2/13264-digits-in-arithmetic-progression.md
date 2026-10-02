---
id: "13264"
title: "Des chiffres en progression arithmétique"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, chiffres, parite, progression-arithmetique]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices collégiens, exercice 5 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

On dit que trois nombres $a$, $b$, $c$, pris dans cet ordre, forment une **progression arithmétique** si $a + c = 2b$. Par exemple, $3$, $5$, $7$ ou $8$, $8$, $8$ ou $6$, $3$, $0$.

Combien y a-t-il de nombres entre $100$ et $999$ (inclus) dont les trois chiffres, lus de gauche à droite, forment une progression arithmétique ?

## Hints

1. Si l'on connaît le premier et le dernier chiffre, combien de choix reste-t-il pour le chiffre du milieu ?
2. Le chiffre du milieu doit valoir $\frac{a + c}{2}$. Quand est-ce un entier ?

## Solution

Notons $a$, $b$, $c$ les chiffres du nombre, de gauche à droite : $a$ va de $1$ à $9$ (le nombre a trois chiffres), $b$ et $c$ vont de $0$ à $9$.

**Le chiffre du milieu est imposé.** La condition $a + c = 2b$ s'écrit $b = \frac{a + c}{2}$. Une fois $a$ et $c$ choisis, il y a donc au plus un choix pour $b$. Il en existe un exactement quand $a + c$ est pair, c'est-à-dire quand $a$ et $c$ ont la même parité. Dans ce cas, $b$ est bien un chiffre, car $\frac{a + c}{2}$ est entre $\frac{1 + 0}{2}$ et $\frac{9 + 9}{2} = 9$.

**On compte les couples $(a, c)$ de même parité.**

- Si $a$ est impair ($1$, $3$, $5$, $7$ ou $9$, soit $5$ choix), $c$ doit être impair : $5$ choix.
- Si $a$ est pair ($2$, $4$, $6$ ou $8$, soit $4$ choix), $c$ doit être pair ($0$, $2$, $4$, $6$ ou $8$) : $5$ choix.

Pour chacune des $9$ valeurs de $a$, il y a donc $5$ valeurs de $c$, ce qui fait $9 \times 5 = 45$ couples, et autant de nombres.

**Conclusion.** Il y a $45$ nombres de ce type, de $111$, $123$, $135$ à $987$ en passant par $210$ ou $963$.
