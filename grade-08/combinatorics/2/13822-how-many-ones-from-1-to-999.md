---
id: "13822"
title: "Combien de chiffres 1 de 1 à 999"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [chiffres, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 6 ; corrigé dans le même fichier, solution 6 (Olympiades mathématiques belges, demi-finale miNi 2001, Q26)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

On écrit tous les entiers de $1$ à $999$. Combien de fois écrit-on le chiffre $1$ ?

Par exemple, en écrivant $111$, on écrit trois fois le chiffre $1$.

## Hints

1. Compte séparément les $1$ écrits au chiffre des unités, ceux écrits au chiffre des
   dizaines et ceux écrits au chiffre des centaines.
2. Pour que tous les nombres aient trois chiffres, écris-les avec des zéros devant :
   $007$ au lieu de $7$, $042$ au lieu de $42$. Cela change-t-il le nombre de chiffres $1$ ?
3. Parmi les nombres de $000$ à $999$, combien ont un $1$ au chiffre des centaines ?

## Solution

**On complète avec des zéros.** Écrivons chaque nombre avec trois chiffres, en ajoutant des
zéros devant : $7$ devient $007$, $42$ devient $042$. Ajoutons aussi le nombre $000$. On a
seulement ajouté des zéros, donc le nombre de chiffres $1$ ne change pas. On doit maintenant
compter les chiffres $1$ dans la liste des $1000$ nombres $000, 001, \ldots, 999$.

**Chiffre par chiffre.**

- **Au chiffre des centaines.** Les nombres qui ont un $1$ à cette place sont ceux de $100$ à
  $199$, soit $100$ nombres.
- **Au chiffre des dizaines.** Le chiffre des centaines peut être n'importe lequel des $10$
  chiffres, et de même pour le chiffre des unités. Il y a donc $10 \times 10 = 100$ nombres qui
  ont un $1$ au chiffre des dizaines.
- **Au chiffre des unités.** De même, $10 \times 10 = 100$ nombres ont un $1$ au chiffre des
  unités.

**En tout.** On écrit $100 + 100 + 100 = 300$ fois le chiffre $1$.

**On écrit $300$ fois le chiffre $1$.**

## Going further

Le même raisonnement montre que chacun des chiffres de $1$ à $9$ est écrit $300$ fois. Le
chiffre $0$, lui, est écrit moins souvent, car on n'écrit pas les zéros de tête. Combien de
fois ?
