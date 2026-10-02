---
id: "13023"
title: "Chaque terme est le quotient des deux précédents"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [suites, periodicite, fractions, calcul]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices communs, exercice 4 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

On construit une liste de nombres $a_1, a_2, a_3, \ldots$ de la façon suivante : $a_1 = 2$, $a_2 = 3$, puis chaque nombre est le quotient du précédent par celui d'avant :
$$a_n = \frac{a_{n-1}}{a_{n-2}} \qquad \text{pour tout entier } n \geqslant 3 .$$
Par exemple, $a_3 = \dfrac{a_2}{a_1} = \dfrac{3}{2}$.

Quelle est la valeur de $a_{2014}$ ?

## Hints

1. Calcule les termes suivants, $a_4$, $a_5$, $a_6$, ..., jusqu'à ce que quelque chose te frappe.
2. Tu dois retrouver les nombres $2$ et $3$ côte à côte. Que se passe-t-il ensuite ?
3. Les termes se répètent par paquets de $6$. Quel est le reste de la division de $2014$ par $6$ ?

## Solution

**On calcule les premiers termes.**
$$a_3 = \frac{3}{2}, \qquad a_4 = \frac{a_3}{a_2} = \frac{3/2}{3} = \frac{1}{2}, \qquad a_5 = \frac{a_4}{a_3} = \frac{1/2}{3/2} = \frac{1}{3},$$
$$a_6 = \frac{a_5}{a_4} = \frac{1/3}{1/2} = \frac{2}{3}, \qquad a_7 = \frac{a_6}{a_5} = \frac{2/3}{1/3} = 2, \qquad a_8 = \frac{a_7}{a_6} = \frac{2}{2/3} = 3 .$$

**La liste se répète.** On retrouve $a_7 = 2 = a_1$ et $a_8 = 3 = a_2$. Or chaque terme ne dépend que des deux termes qui le précèdent. Puisque $a_7$ et $a_8$ sont égaux à $a_1$ et $a_2$, le terme suivant $a_9$ se calcule exactement comme $a_3$, donc $a_9 = a_3$, puis $a_{10} = a_4$, et ainsi de suite. La liste répète sans fin le même paquet de six nombres :
$$2,\ 3,\ \frac{3}{2},\ \frac{1}{2},\ \frac{1}{3},\ \frac{2}{3},\ \ 2,\ 3,\ \frac{3}{2},\ \ldots$$
Autrement dit, $a_{n+6} = a_n$ pour tout $n \geqslant 1$ : deux termes dont les rangs diffèrent d'un multiple de $6$ sont égaux.

**On se ramène au premier paquet.** La division de $2014$ par $6$ donne
$$2014 = 6 \times 335 + 4 .$$
Le rang $2014$ diffère donc du rang $4$ d'un multiple de $6$, et $a_{2014} = a_4$.

**Conclusion.**
$$a_{2014} = \frac{1}{2} .$$

## Going further

1. Montrer directement, sans calculer de valeurs, que $a_{n+3} = \dfrac{1}{a_n}$ pour tout $n \geqslant 1$. En déduire que $a_{n+6} = a_n$, quels que soient les deux premiers termes (non nuls).
2. On remplace la règle par $a_n = a_{n-1} - a_{n-2}$, toujours avec $a_1 = 2$ et $a_2 = 3$. Que vaut $a_{2014}$ ?
