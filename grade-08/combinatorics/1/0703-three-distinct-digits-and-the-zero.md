---
id: "0703"
title: "Trois chiffres distincts, et le zéro qui gêne"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, chiffres, permutations, zero]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

a) Combien de nombres de trois chiffres tous différents peut-on former en utilisant les chiffres $1$, $2$ et $3$ ?

b) Même question avec les chiffres $0$, $1$ et $2$.

## Hints

1. Comme les trois chiffres doivent être différents et qu'il n'y a que trois chiffres disponibles, chacun est utilisé exactement une fois. Il s'agit donc de les ranger dans un ordre.
2. Pour la question a), écris simplement la liste complète. Elle est courte.
3. Pour la question b), fais la même liste, puis regarde si tous les nombres écrits sont bien des nombres à trois chiffres.

## Solution

**a) Avec les chiffres 1, 2 et 3.**

Les trois chiffres sont différents et il n'y en a que trois à disposition : chacun sert exactement une fois. Compter les nombres revient donc à compter les façons de ranger $1$, $2$, $3$ dans un ordre.

- Pour le chiffre des centaines, $3$ possibilités.
- Pour celui des dizaines, il reste $2$ possibilités.
- Pour celui des unités, il n'en reste qu'une.

Cela fait $3 \times 2 \times 1 = 6$ nombres. On peut les écrire tous :

$$123,\quad 132,\quad 213,\quad 231,\quad 312,\quad 321$$

**b) Avec les chiffres 0, 1 et 2.**

Le même décompte donnerait encore $6$ rangements :

$$012,\quad 021,\quad 102,\quad 120,\quad 201,\quad 210$$

Mais les deux premiers ne conviennent pas : $012$ n'est pas un nombre à trois chiffres, c'est $12$, un nombre à deux chiffres. Un nombre ne commence jamais par $0$.

Il faut donc retirer les rangements qui commencent par $0$. Une fois le $0$ placé devant, il reste à ranger $1$ et $2$ : cela fait $2 \times 1 = 2$ rangements interdits. Il reste

$$6 - 2 = 4$$

nombres, à savoir $102$, $120$, $201$ et $210$.

**Réponse : $6$ nombres dans le cas a), et seulement $4$ dans le cas b).**

## Going further

On peut aussi traiter la question b) en commençant par le chiffre des centaines : il y a $2$ possibilités ($1$ ou $2$, mais pas $0$), puis $2$ possibilités pour les dizaines et $1$ pour les unités, soit $2 \times 2 \times 1 = 4$. Deux routes, une seule réponse.
