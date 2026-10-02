---
id: "13217"
title: "Cent termes qui montent de 1 à 4"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, bijection, combinaisons, suites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 18 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Combien y a-t-il de listes de $100$ entiers $a_1, a_2, \ldots, a_{100}$ telles que

- $a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{100}$ ;
- $a_1 = 1$ et $a_{100} = 4$ ;
- la valeur $2$ apparaît au moins une fois dans la liste, et la valeur $3$ aussi ?

## Hints

1. Quelles valeurs peuvent prendre les $a_i$ ? À quoi ressemble une telle liste quand on l'écrit ?
2. La liste est faite d'un bloc de $1$, puis d'un bloc de $2$, puis de $3$, puis de $4$. Qu'est-ce qui suffit à la décrire entièrement ?
3. Note $k$, $m$, $n$ les positions du dernier $1$, du dernier $2$ et du dernier $3$. Quelles conditions vérifient-elles ?
4. Combien y a-t-il de façons de choisir trois nombres différents entre $1$ et $99$ ?

## Solution

**À quoi ressemble une liste.** Les termes ne diminuent jamais et vont de $a_1 = 1$ à $a_{100} = 4$ : ce sont donc des entiers entre $1$ et $4$. Une telle liste s'écrit

$$\underbrace{1, \ldots, 1}_{\text{bloc de } 1}, \ \underbrace{2, \ldots, 2}_{\text{bloc de } 2}, \ \underbrace{3, \ldots, 3}_{\text{bloc de } 3}, \ \underbrace{4, \ldots, 4}_{\text{bloc de } 4},$$

et les quatre blocs sont non vides : le premier car $a_1 = 1$, le dernier car $a_{100} = 4$, les deux autres par hypothèse.

**On code la liste par trois positions.** Notons $k$ la position du dernier $1$, $m$ celle du dernier $2$ et $n$ celle du dernier $3$. Comme les blocs sont non vides et dans cet ordre,

$$1 \leqslant k < m < n \leqslant 99$$

($n \leqslant 99$ car la position $100$ est occupée par un $4$). Réciproquement, trois entiers $k < m < n$ entre $1$ et $99$ donnent exactement une liste qui convient : des $1$ jusqu'à la position $k$, des $2$ jusqu'à $m$, des $3$ jusqu'à $n$, et des $4$ ensuite. Il y a donc autant de listes que de choix de trois entiers $k < m < n$ entre $1$ et $99$.

**On compte ces choix.** Choisir trois entiers $k < m < n$ revient à choisir un ensemble de trois nombres différents parmi $1, 2, \ldots, 99$ : une fois l'ensemble choisi, on le range dans l'ordre croissant. Si l'on choisit les trois nombres l'un après l'autre, il y a $99 \times 98 \times 97$ façons, mais chaque ensemble est alors obtenu $3 \times 2 \times 1 = 6$ fois (une fois par ordre de tirage). Le nombre d'ensembles est donc

$$\frac{99 \times 98 \times 97}{6} = \frac{941\,094}{6} = 156\,849.$$

**Conclusion.** Il y a $156\,849$ telles listes.
