---
id: "13417"
title: "Une somme de fractions entre 1 et n − 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, fractions, encadrement, somme cyclique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 7 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Montrer que, pour tous réels strictement positifs $x_1, x_2, \ldots, x_n$, on a

$$1 < \frac{x_1}{x_1 + x_2} + \frac{x_2}{x_2 + x_3} + \ldots + \frac{x_{n-1}}{x_{n-1} + x_n} + \frac{x_n}{x_n + x_1} < n - 1.$$

## Hints

1. Essaie avec $n = 3$ et $x_1 = x_2 = x_3 = 1$, puis avec des nombres très différents, comme $1$, $100$ et $10\,000$.
2. Appelle $S$ la somme $x_1 + x_2 + \ldots + x_n$. Compare chaque dénominateur à $S$. Que peux-tu en déduire pour chaque fraction ?
3. Pour l'autre inégalité, calcule $1 - \frac{x_1}{x_1 + x_2}$. Écris ensuite $n$ comme une somme de $n$ fois le nombre $1$.

## Solution

On note $E$ la somme du milieu, et $S = x_1 + x_2 + \ldots + x_n$ la somme de tous les nombres. Pour alléger, on pose $x_{n+1} = x_1$ : la $i$-ième fraction s'écrit alors $\frac{x_i}{x_i + x_{i+1}}$, pour tous les $i$ de $1$ à $n$, y compris la dernière.

**Une remarque sur les dénominateurs.** Chaque dénominateur $x_i + x_{i+1}$ est la somme de deux des nombres. Comme $n \geqslant 3$, il reste au moins un autre nombre, strictement positif, dans $S$. Donc

$$x_i + x_{i+1} < S.$$

Or si l'on divise un nombre positif par un dénominateur plus petit, on obtient un résultat plus grand. Donc, pour tout $i$,

$$\frac{x_i}{x_i + x_{i+1}} > \frac{x_i}{S} \qquad \text{et} \qquad \frac{x_{i+1}}{x_i + x_{i+1}} > \frac{x_{i+1}}{S}.$$

**L'inégalité de gauche.** On additionne la première inégalité pour $i = 1, 2, \ldots, n$ :

$$E > \frac{x_1}{S} + \frac{x_2}{S} + \ldots + \frac{x_n}{S} = \frac{x_1 + x_2 + \ldots + x_n}{S} = \frac{S}{S} = 1.$$

**L'inégalité de droite.** Pour chaque $i$,

$$1 - \frac{x_i}{x_i + x_{i+1}} = \frac{x_i + x_{i+1} - x_i}{x_i + x_{i+1}} = \frac{x_{i+1}}{x_i + x_{i+1}}.$$

En écrivant $n = 1 + 1 + \ldots + 1$ ($n$ fois), on obtient

$$n - E = \frac{x_2}{x_1 + x_2} + \frac{x_3}{x_2 + x_3} + \ldots + \frac{x_n}{x_{n-1} + x_n} + \frac{x_1}{x_n + x_1}.$$

On utilise maintenant la seconde inégalité de la remarque, pour $i = 1, 2, \ldots, n$ :

$$n - E > \frac{x_2 + x_3 + \ldots + x_n + x_1}{S} = 1.$$

Donc $E < n - 1$.

**Conclusion.** Pour tous réels strictement positifs $x_1, \ldots, x_n$, on a bien $1 < E < n - 1$.

*Pourquoi $n \geqslant 3$.* Pour $n = 2$, la somme vaut $\frac{x_1}{x_1 + x_2} + \frac{x_2}{x_2 + x_1} = 1$, et $n - 1 = 1$ aussi : aucune des deux inégalités strictes n'est vraie. C'est la remarque sur les dénominateurs qui ne marche plus, car alors $x_1 + x_2 = S$.

## Going further

On prend $n = 3$, $x_1 = 1$, $x_2 = t$ et $x_3 = t^2$, avec $t > 0$. Montrer que la somme $E$ devient aussi proche de $1$ que l'on veut quand $t$ est très grand. Trouver de même trois nombres pour lesquels $E$ est très proche de $2$. Les bornes $1$ et $n - 1$ ne peuvent donc pas être améliorées.
