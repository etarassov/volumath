---
id: "5010"
title: "Quels nombres premiers sont sommes de deux carrés ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [nombres-premiers, carres, restes, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 1, problème 7, et partie 2, problème 14 c)"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

Certains nombres premiers s'écrivent comme la somme de deux carrés d'entiers, d'autres non :

$$5 = 1^2 + 2^2, \qquad 13 = 2^2 + 3^2, \qquad \text{mais } 7 \text{ ne marche pas.}$$

1. Parmi les nombres premiers inférieurs à $50$, déterminer ceux qui s'écrivent comme somme de
   deux carrés d'entiers positifs ou nuls, et donner l'écriture quand elle existe.
2. Classer ces nombres premiers selon leur reste dans la division par $4$. Quelle règle
   apparaît ?
3. Démontrer la moitié « impossible » de cette règle : **aucun** nombre dont le reste est $3$
   dans la division par $4$ n'est une somme de deux carrés.

## Hints

1. Pour la question 1, les carrés utiles sont $0, 1, 4, 9, 16, 25, 36, 49$. Sois systématique :
   pour chaque nombre premier $p$, essaie $p - 0$, $p - 1$, $p - 4$, $p - 9$... et regarde si le
   résultat est un carré.
2. Pour la question 2, écris chaque nombre premier avec son reste dans la division par $4$, puis
   compare avec la colonne « somme de deux carrés ou non ». N'oublie pas le cas particulier
   $p = 2$.
3. Pour la question 3, ne regarde pas le nombre premier, regarde les **carrés**. Quels restes un
   carré d'entier peut-il laisser dans la division par $4$ ?
4. Traite séparément le cas d'un entier pair, $n = 2k$, et celui d'un entier impair, $n = 2k+1$,
   et développe le carré dans chaque cas.
5. Une fois connus les restes possibles d'un carré, additionne-les deux par deux et regarde
   quels restes une somme de deux carrés peut avoir.

## Solution

### 1. La liste jusqu'à 50

Les carrés utiles sont $0, 1, 4, 9, 16, 25, 36, 49$.

| $p$ | somme de deux carrés ? | $p$ | somme de deux carrés ? |
|---|---|---|---|
| $2$ | oui : $1^2 + 1^2$ | $23$ | non |
| $3$ | non | $29$ | oui : $2^2 + 5^2$ |
| $5$ | oui : $1^2 + 2^2$ | $31$ | non |
| $7$ | non | $37$ | oui : $1^2 + 6^2$ |
| $11$ | non | $41$ | oui : $4^2 + 5^2$ |
| $13$ | oui : $2^2 + 3^2$ | $43$ | non |
| $17$ | oui : $1^2 + 4^2$ | $47$ | non |
| $19$ | non | | |

### 2. La règle

Rangeons les mêmes nombres premiers selon leur reste dans la division par $4$.

| reste par $4$ | nombres premiers | somme de deux carrés ? |
|---|---|---|
| cas à part | $2$ | oui |
| $1$ | $5, 13, 17, 29, 37, 41$ | **tous oui** |
| $3$ | $3, 7, 11, 19, 23, 31, 43, 47$ | **tous non** |

La règle qui apparaît est nette :

> Un nombre premier impair est une somme de deux carrés si et seulement si son reste dans la
> division par $4$ vaut $1$. (Et $2 = 1^2 + 1^2$ est un cas à part.)

Remarquons qu'un nombre premier impair laisse forcément le reste $1$ ou le reste $3$ dans la
division par $4$ : les restes $0$ et $2$ donneraient un nombre pair.

### 3. La moitié « impossible »

**On cherche les restes possibles d'un carré dans la division par $4$.**

Soit $n$ un entier.

- Si $n$ est pair, écrivons $n = 2k$. Alors $n^2 = 4k^2$ : le reste est $0$.
- Si $n$ est impair, écrivons $n = 2k+1$. Alors
  $$n^2 = 4k^2 + 4k + 1 = 4(k^2 + k) + 1 ,$$
  donc le reste est $1$.

**Un carré d'entier laisse donc toujours le reste $0$ ou le reste $1$ dans la division par
$4$.** Le reste ne vaut jamais $2$ ni $3$.

**On additionne deux carrés.** Soient $a^2$ et $b^2$ deux carrés. Écrivons
$a^2 = 4u + r$ et $b^2 = 4v + s$, avec $r$ et $s$ dans $\{0, 1\}$. Alors

$$a^2 + b^2 = 4(u+v) + (r+s), \qquad \text{avec } r + s \in \{0, 1, 2\} .$$

Comme $r+s$ est déjà strictement plus petit que $4$, c'est le reste de $a^2+b^2$ dans la
division par $4$.

**Conclusion.** Une somme de deux carrés laisse toujours le reste $0$, $1$ ou $2$ dans la
division par $4$. Elle ne laisse **jamais** le reste $3$.

En particulier, un nombre premier de reste $3$ (comme $3$, $7$, $11$, $19$, $23$, $31$, $43$,
$47$, et tous les suivants) ne peut pas s'écrire comme somme de deux carrés. La moitié
« impossible » de la règle est démontrée.

## Going further

L'autre moitié de la règle — **tout** nombre premier de reste $1$ dans la division par $4$
**est** une somme de deux carrés — est beaucoup plus difficile. C'est un théorème de Fermat,
énoncé en 1640, dont la première démonstration publiée est due à Euler en 1749, après sept ans
d'efforts.

Le théorème dit bien plus que ce qu'on voit sur la petite liste : par exemple $10\,009$, qui est
premier et laisse le reste $1$, s'écrit nécessairement comme somme de deux carrés, et
effectivement $10\,009 = 3^2 + 100^2$. Rien dans l'énoncé ne dit comment trouver les deux
carrés : le théorème garantit seulement qu'ils existent.

Remarquons enfin que cette écriture, quand elle existe, est unique pour un nombre premier. Ce
n'est plus vrai pour un nombre quelconque : $50 = 1^2 + 7^2 = 5^2 + 5^2$.
