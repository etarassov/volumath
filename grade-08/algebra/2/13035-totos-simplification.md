---
id: "13035"
title: "La simplification de Toto"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [fractions, equation, multiples, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 9 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Toto a écrit dans son cahier :
$$5 + \frac{a}{b} = \frac{5a}{b} .$$
Cette égalité est fausse en général, mais elle est vraie pour certains entiers $a$ et $b$ (avec $b \neq 0$).

Combien y a-t-il de couples d'entiers $(a, b)$, avec $1 \leqslant a \leqslant 1000$, pour lesquels l'égalité de Toto est vraie ?

## Hints

1. Multiplie les deux membres de l'égalité par $b$.
2. Tu obtiens une relation très simple entre $a$ et $b$. Montre que $a$ est forcément un multiple de $5$. Tu peux écrire $a = 5a - 4a$.
3. Pour un multiple de $5$ donné, combien de valeurs de $b$ conviennent ?

## Solution

**Une relation entre $a$ et $b$.** Comme $b \neq 0$, on peut multiplier les deux membres par $b$ sans rien perdre : l'égalité de Toto équivaut à
$$5b + a = 5a, \qquad \text{c'est-à-dire} \qquad 5b = 4a .$$

**$a$ est un multiple de $5$.** Si $5b = 4a$, alors
$$a = 5a - 4a = 5a - 5b = 5\,(a - b),$$
donc $a$ est un multiple de $5$. Écrivons $a = 5c$. La relation $5b = 4a = 20c$ donne alors $b = 4c$ : la valeur de $b$ est imposée.

**Réciproquement**, si $a = 5c$ et $b = 4c$ avec $c \geqslant 1$, on a $5b = 20c = 4a$, et l'égalité de Toto est vraie. On peut le vérifier directement :
$$5 + \frac{5c}{4c} = 5 + \frac{5}{4} = \frac{25}{4} \qquad \text{et} \qquad \frac{5 \times 5c}{4c} = \frac{25}{4} .$$

**On compte.** Chaque multiple de $5$ compris entre $1$ et $1000$ donne exactement un couple, et les autres valeurs de $a$ n'en donnent aucun. Les multiples de $5$ entre $1$ et $1000$ sont $5 \times 1, 5 \times 2, \ldots, 5 \times 200$.

**Conclusion.** Il y a $200$ couples $(a, b)$ pour lesquels l'égalité de Toto est vraie : ce sont les couples $(5c, 4c)$ avec $1 \leqslant c \leqslant 200$.

## Going further

1. Pour tous ces couples, la fraction $\dfrac{a}{b}$ vaut la même chose. Laquelle ?
2. Toto écrit maintenant $3 + \dfrac{a}{b} = \dfrac{3a}{b}$. Combien y a-t-il de couples d'entiers $(a, b)$, avec $1 \leqslant a \leqslant 1000$, pour lesquels c'est vrai ?
