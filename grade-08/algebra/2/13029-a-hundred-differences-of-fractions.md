---
id: "13029"
title: "Cent différences de fractions"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [fractions, somme telescopique, calcul]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 2 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on pose
$$a_n = \frac{1}{2n - 1} - \frac{1}{2n + 1} .$$
Ainsi $a_1 = 1 - \dfrac{1}{3}$ et $a_2 = \dfrac{1}{3} - \dfrac{1}{5}$.

On note $S = a_1 + a_2 + a_3 + \cdots + a_{100}$. Calculer $201 \times S$.

## Hints

1. Écris aussi $a_3$ et $a_4$ avec leurs deux fractions, puis le dernier terme $a_{100}$.
2. Que se passe-t-il quand on ajoute $a_1$ et $a_2$ ? Puis $a_3$ ?
3. Quand on additionne les cent termes, presque toutes les fractions disparaissent. Lesquelles restent ?

## Solution

**Les termes un par un.** On a
$$a_1 = 1 - \frac{1}{3}, \qquad a_2 = \frac{1}{3} - \frac{1}{5}, \qquad a_3 = \frac{1}{5} - \frac{1}{7}, \qquad \ldots, \qquad a_{100} = \frac{1}{199} - \frac{1}{201},$$
car $2 \times 100 - 1 = 199$ et $2 \times 100 + 1 = 201$.

**Les fractions s'annulent deux à deux.** Le terme $a_n$ se termine par $-\dfrac{1}{2n + 1}$, et le terme suivant $a_{n+1}$ commence par $\dfrac{1}{2(n + 1) - 1} = \dfrac{1}{2n + 1}$. Ces deux fractions s'annulent. Par exemple
$$a_1 + a_2 = 1 - \frac{1}{3} + \frac{1}{3} - \frac{1}{5} = 1 - \frac{1}{5}, \qquad a_1 + a_2 + a_3 = 1 - \frac{1}{7} .$$
En ajoutant les cent termes, il ne reste que la première fraction de $a_1$ et la dernière de $a_{100}$ :
$$S = 1 - \frac{1}{201} = \frac{200}{201} .$$

**Conclusion.**
$$201 \times S = 201 \times \frac{200}{201} = 200 .$$

## Going further

1. Vérifier que $a_n = \dfrac{2}{(2n - 1)(2n + 1)}$. En déduire la valeur de
$$\frac{1}{1 \times 3} + \frac{1}{3 \times 5} + \frac{1}{5 \times 7} + \cdots + \frac{1}{199 \times 201} .$$
2. Calculer $\dfrac{1}{1 \times 2} + \dfrac{1}{2 \times 3} + \dfrac{1}{3 \times 4} + \cdots + \dfrac{1}{99 \times 100}$.
