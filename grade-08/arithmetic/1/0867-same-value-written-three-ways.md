---
id: "0867"
title: "Une même valeur écrite de trois façons"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [fractions-egales, proportion, entiers-naturels]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 45, section « Fractions »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Détermine les entiers naturels $x$ et $y$ tels que

$$\frac{2}{3} = \frac{x+1}{6} = \frac{10}{2y+1}.$$

## Hints

1. Les trois écritures désignent le même nombre, mais tu peux les traiter deux par deux. Commence par $\dfrac{2}{3} = \dfrac{x+1}{6}$ et oublie la troisième pour l'instant.
2. Pour passer du dénominateur $3$ au dénominateur $6$, par combien faut-il multiplier ? Le numérateur doit suivre.
3. Pour la seconde égalité, va dans l'autre sens : pour passer du numérateur $2$ au numérateur $10$, par combien faut-il multiplier ?

## Solution

**Première égalité.** On écrit $\dfrac{2}{3}$ avec le dénominateur $6$ :

$$\frac{2}{3} = \frac{2 \times 2}{3 \times 2} = \frac{4}{6}.$$

Donc $\dfrac{x+1}{6} = \dfrac{4}{6}$, ce qui donne $x + 1 = 4$, puis

$$x = 3.$$

**Seconde égalité.** Cette fois on écrit $\dfrac{2}{3}$ avec le numérateur $10$ :

$$\frac{2}{3} = \frac{2 \times 5}{3 \times 5} = \frac{10}{15}.$$

Donc $\dfrac{10}{2y+1} = \dfrac{10}{15}$, ce qui donne $2y + 1 = 15$, puis $2y = 14$ et

$$y = 7.$$

**Vérification.** Avec $x = 3$ et $y = 7$ :

$$\frac{x+1}{6} = \frac{4}{6} = \frac{2}{3}, \qquad \frac{10}{2y+1} = \frac{10}{15} = \frac{2}{3}. \qquad \checkmark$$

Les deux nombres trouvés sont bien des entiers naturels.

**Conclusion.** $x = \mathbf{3}$ et $y = \mathbf{7}$.

## Going further

1. Même travail avec $\dfrac{24}{36} = \dfrac{12}{x+2} = \dfrac{y+1}{6}$. (Commence par simplifier $\dfrac{24}{36}$.)
2. Existe-t-il un entier naturel $y$ tel que $\dfrac{2}{3} = \dfrac{10}{2y}$ ? Explique pourquoi la réponse est non, en regardant la parité.
