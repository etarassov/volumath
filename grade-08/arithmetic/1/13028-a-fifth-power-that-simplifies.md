---
id: "13028"
title: "Une puissance cinquième qui se simplifie"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [racines carrees, puissances, calcul]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 1 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Calculer
$$\left( \frac{1 + 3^2}{\sqrt{21 + \sqrt{16}}} \right)^5 .$$

## Hints

1. Commence par l'intérieur : que vaut $\sqrt{16}$ ?
2. Le nombre $21 + 4$ est le carré d'un entier.
3. Simplifie la fraction avant de l'élever à la puissance $5$.

## Solution

**La racine du bas.** On a $4^2 = 16$ et $4$ est positif, donc $\sqrt{16} = 4$. Ainsi
$$\sqrt{21 + \sqrt{16}} = \sqrt{21 + 4} = \sqrt{25} = 5,$$
car $5^2 = 25$.

**Le haut.** On a $1 + 3^2 = 1 + 9 = 10$.

**La fraction.** Elle vaut donc $\dfrac{10}{5} = 2$, et il reste
$$2^5 = 2 \times 2 \times 2 \times 2 \times 2 = 32 .$$

**Conclusion.**
$$\left( \frac{1 + 3^2}{\sqrt{21 + \sqrt{16}}} \right)^5 = 32 .$$

## Going further

1. Calculer $\sqrt{5 + \sqrt{11 + \sqrt{25}}}$.
2. Calculer $\sqrt{9 + 16}$ et $\sqrt{9} + \sqrt{16}$. A-t-on le droit d'écrire $\sqrt{21 + 16} = \sqrt{21} + \sqrt{16}$ ?
