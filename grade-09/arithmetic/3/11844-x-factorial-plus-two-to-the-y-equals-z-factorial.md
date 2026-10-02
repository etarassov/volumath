---
id: "11844"
title: "x! + 2ʸ = z!"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorielle, divisibilite, parite, puissances-de-deux, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 1 (repris en exercice 10 chez les Seniors) ; corrigé 2023-07_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Pour un entier naturel $n \geqslant 1$, on note $n! = 1 \times 2 \times \cdots \times n$ (on lit « factorielle $n$ »), et on pose $0! = 1$. Par exemple $3! = 6$ et $4! = 24$.

Trouver tous les triplets $(x, y, z)$ d'entiers naturels ($0$ est autorisé) tels que

$$x! + 2^y = z!.$$

## Hints

1. Comparer $x$ et $z$. Le nombre $x!$ divise-t-il $z!$ ?
2. Le nombre $x!$ divise donc $z! - x! = 2^y$. Que se passe-t-il si $x \geqslant 3$ ?
3. Il ne reste que $x! = 1$ ou $x! = 2$. Dans le premier cas, regarder la parité. Dans le second, écrire $2 + 2^y = 2(1 + 2^{y-1})$ et se demander si $z!$ est divisible par $4$.

## Solution

**On réduit les valeurs possibles de $x$.** Comme $2^y > 0$, on a $z! > x!$, donc $z > x$. Alors $z! = x! \times (x+1) \times \cdots \times z$ est un multiple de $x!$. Ainsi $x!$ divise $z!$ et $x!$, donc il divise leur différence $z! - x! = 2^y$.

Si $x \geqslant 3$, alors $3$ divise $x!$, donc $3$ diviserait $2^y$. C'est impossible, car les seuls diviseurs premiers de $2^y$ sont des $2$ (et $2^0 = 1$ n'est pas divisible par $3$ non plus). Donc $x = 0$, $1$ ou $2$, c'est-à-dire $x! = 1$ ou $x! = 2$.

**Premier cas : $x = 0$ ou $x = 1$.** L'équation devient $1 + 2^y = z!$.

- Si $y = 0$ : $z! = 2$, donc $z = 2$. On obtient les solutions $(0, 0, 2)$ et $(1, 0, 2)$.
- Si $y \geqslant 1$ : $1 + 2^y$ est impair et au moins égal à $3$. Or $z! = 1$ si $z \leqslant 1$, et $z!$ est pair si $z \geqslant 2$. Aucune valeur de $z$ ne convient.

**Second cas : $x = 2$.** L'équation devient $2 + 2^y = z!$.

- Si $y = 0$ : $z! = 3$. Impossible, car $2! = 2 < 3 < 6 = 3!$.
- Si $y = 1$ : $z! = 4$. Impossible, car $2! = 2 < 4 < 6 = 3!$.
- Si $y \geqslant 2$ : $2 + 2^y = 2\,(1 + 2^{y-1})$, et $1 + 2^{y-1}$ est impair (car $y - 1 \geqslant 1$). Donc $z!$ est divisible par $2$ mais pas par $4$. Or pour $z \geqslant 4$, le produit $z!$ contient le facteur $4$. Donc $z \leqslant 3$. Comme $z! = 2 + 2^y \geqslant 2 + 4 = 6$, on a $z = 3$, puis $2^y = 6 - 2 = 4$ et $y = 2$. On vérifie : $2! + 2^2 = 2 + 4 = 6 = 3!$.

**Conclusion.** Les solutions sont exactement les trois triplets

$$(0, 0, 2), \qquad (1, 0, 2), \qquad (2, 2, 3).$$

Attention aux petits cas : $2^0 = 1$ est impair, et $0! = 1! = 1$. Oublier l'un de ces deux faits fait perdre des solutions.
