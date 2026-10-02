---
id: "13803"
title: "Retrouver a et b derrière deux racines"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [racine carree, factorisation, irrationnel]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 1 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers tels que

$$\left(1 + \sqrt{3}\right)\left(a + b\sqrt{7}\right) = 10 + 10\sqrt{3} + 11\sqrt{7} + 11\sqrt{21}.$$

Déterminer $a + b$, et justifier que la réponse est la seule possible.

## Hints

1. Remarque que $\sqrt{21} = \sqrt{3} \times \sqrt{7}$. Peux-tu regrouper les quatre termes de
   droite deux par deux ?
2. Le membre de droite se factorise par $1 + \sqrt{3}$. Que vaut alors $a + b\sqrt{7}$ ?
3. Il reste à montrer que $a + b\sqrt{7} = 10 + 11\sqrt{7}$ oblige $a = 10$ et $b = 11$.
   Que se passerait-il si $b$ était différent de $11$ ?

## Solution

**On factorise le membre de droite.** Comme $\sqrt{21} = \sqrt{3} \times \sqrt{7}$, on peut
regrouper les termes deux par deux :

$$10 + 10\sqrt{3} + 11\sqrt{7} + 11\sqrt{3}\sqrt{7}
= 10\left(1 + \sqrt{3}\right) + 11\sqrt{7}\left(1 + \sqrt{3}\right)
= \left(1 + \sqrt{3}\right)\left(10 + 11\sqrt{7}\right).$$

L'égalité de l'énoncé s'écrit donc

$$\left(1 + \sqrt{3}\right)\left(a + b\sqrt{7}\right) = \left(1 + \sqrt{3}\right)\left(10 + 11\sqrt{7}\right).$$

Le nombre $1 + \sqrt{3}$ n'est pas nul, on peut diviser par lui :

$$a + b\sqrt{7} = 10 + 11\sqrt{7}, \qquad \text{c'est-à-dire} \qquad a - 10 = (11 - b)\sqrt{7}.$$

**On en déduit $a$ et $b$.** Supposons $b \neq 11$. On pourrait alors diviser par $11 - b$ :

$$\sqrt{7} = \frac{a - 10}{11 - b},$$

et $\sqrt{7}$ serait un quotient de deux entiers. C'est impossible, car $\sqrt{7}$ est
irrationnel (voir ci-dessous). Donc $b = 11$, puis $a - 10 = 0 \times \sqrt{7} = 0$, donc
$a = 10$.

**Pourquoi $\sqrt{7}$ est irrationnel.** C'est la même preuve que pour $\sqrt{2}$. Supposons
$\sqrt{7} = \dfrac{p}{q}$ avec $p$ et $q$ entiers positifs et la fraction irréductible. Alors
$p^2 = 7q^2$, donc $7$ divise $p^2$. Comme $7$ est premier, $7$ divise $p$ : on écrit
$p = 7k$. Alors $49k^2 = 7q^2$, soit $q^2 = 7k^2$, donc $7$ divise aussi $q$. Ainsi $7$
divise à la fois $p$ et $q$, ce qui contredit le fait que la fraction est irréductible.

**Conclusion.** On a forcément $a = 10$ et $b = 11$, et ces valeurs conviennent bien d'après
la factorisation. **La réponse est $a + b = 21$.**
