---
id: "7609"
title: "Si x + 1/x est entier, xⁿ + 1/xⁿ aussi"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence forte, entiers, identite remarquable, suites]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe B, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que $x + \dfrac{1}{x}$ soit un nombre **entier**.

Démontrer que, pour tout entier $n \geqslant 0$, le nombre

$$x^n + \frac{1}{x^n}$$

est lui aussi un entier.

## Hints

1. Posez $S_n = x^n + \dfrac{1}{x^n}$. Calculez $S_0$ et $S_1$. Que valent-ils ?
2. Calculez $S_1 \times S_n$ en développant. Vous obtiendrez quatre termes : regroupez-les.
3. Vous devriez trouver une relation qui exprime $S_{n+1}$ à l'aide de $S_n$ et de $S_{n-1}$. Une récurrence ordinaire ne suffira pas : il faut supposer la propriété vraie aux **deux** rangs précédents.
4. Une bonne façon de faire : démontrer par récurrence la propriété « $S_n$ et $S_{n+1}$ sont tous deux entiers ».

## Solution

Pour tout entier $n \geqslant 0$, posons

$$S_n = x^n + \frac{1}{x^n} .$$

C'est bien défini, puisque $x \neq 0$.

**Les deux premières valeurs.**

$$S_0 = x^0 + \frac{1}{x^0} = 1 + 1 = 2 , \qquad S_1 = x + \frac{1}{x} .$$

$S_0$ est entier, et $S_1$ l'est par hypothèse. Notons $k = S_1$ cet entier.

**La relation clé.**

Pour $n \geqslant 1$, développons le produit $S_1 \times S_n$ :

$$\left(x + \frac{1}{x}\right)\left(x^n + \frac{1}{x^n}\right) = x^{n+1} + \frac{x}{x^n} + \frac{x^n}{x} + \frac{1}{x^{n+1}} = x^{n+1} + \frac{1}{x^{n+1}} + x^{n-1} + \frac{1}{x^{n-1}} .$$

Autrement dit

$$k \, S_n = S_{n+1} + S_{n-1}, \qquad \text{c'est-à-dire} \qquad S_{n+1} = k\,S_n - S_{n-1} .$$

**La récurrence.**

Démontrons par récurrence sur $n \geqslant 0$ la propriété

$$P(n) : \quad \text{« } S_n \ \text{et} \ S_{n+1} \ \text{sont des entiers ».}$$

*Initialisation.* $S_0 = 2$ et $S_1 = k$ sont des entiers, donc $P(0)$ est vraie.

*Hérédité.* Soit $n \geqslant 0$ tel que $P(n)$ soit vraie : $S_n$ et $S_{n+1}$ sont entiers. La relation clé, appliquée au rang $n+1$, donne

$$S_{n+2} = k\,S_{n+1} - S_n .$$

C'est une combinaison de trois entiers par des produits et une soustraction, donc $S_{n+2}$ est un entier. Ainsi $S_{n+1}$ et $S_{n+2}$ sont entiers, c'est-à-dire $P(n+1)$.

*Conclusion.* $P(n)$ est vraie pour tout $n \geqslant 0$. En particulier $S_n$ est entier pour tout $n \geqslant 0$.

**Conclusion.** Pour tout entier $n \geqslant 0$, le nombre $x^n + \dfrac{1}{x^n}$ est un entier.

## Going further

La relation $S_{n+1} = k\,S_n - S_{n-1}$ permet de calculer les valeurs les unes après les autres sans jamais connaître $x$. Par exemple avec $k = 3$ :

$$S_0 = 2, \quad S_1 = 3, \quad S_2 = 3 \times 3 - 2 = 7, \quad S_3 = 3 \times 7 - 3 = 18, \quad S_4 = 3 \times 18 - 7 = 47 .$$

Ici $x + \dfrac1x = 3$ donne $x = \dfrac{3 + \sqrt5}{2}$, un nombre irrationnel : pourtant toutes ses puissances, additionnées à leur inverse, tombent sur des entiers.

On peut aussi obtenir $S_2$ directement : $\left(x + \dfrac1x\right)^2 = x^2 + 2 + \dfrac{1}{x^2}$, donc $S_2 = k^2 - 2$. Retrouvez de même une expression de $S_3$ en fonction de $k$ seul.
