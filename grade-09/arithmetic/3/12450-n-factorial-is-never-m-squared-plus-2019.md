---
id: "12450"
title: "n! n'est jamais égal à m² + 2019"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [factorielle, carres, divisibilite, divisibilite-par-3, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2019"
  reference: "2019-11_Test-15-05.pdf, exercice 2 (groupe Junior) ; corrigé 2019-11_Test-15-05-Corrige.pdf (le corrigé raisonne avec les carrés modulo 9 ; solution réécrite avec la divisibilité par 3 puis par 9)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/Test-15-05.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-11_Test-15-05.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$
(« factorielle $n$ »), et on pose $0! = 1$.

Soit $m$ et $n$ deux entiers naturels. Démontrer que $n! \neq m^2 + 2019$.

## Hints

1. Quand $n$ est assez grand, $n!$ est divisible par beaucoup de nombres. À partir de quelle valeur
   de $n$ a-t-on $n! \geqslant 2019$ ?
2. Décompose $2019$ en produit de facteurs premiers. Par quel petit nombre premier est-il
   divisible ?
3. Si $3$ divise $m^2$, que peux-tu dire de $m$, puis de $m^2$ ?

## Solution

Supposons, pour arriver à une contradiction, qu'il existe deux entiers naturels $m$ et $n$ tels que
$n! = m^2 + 2019$.

### $n$ est au moins égal à $7$

On a $n! = m^2 + 2019 \geqslant 2019$. Or $6! = 720 < 2019$, et les factorielles augmentent avec
$n$, donc $n \geqslant 7$. En particulier, les nombres $3$ et $6$ font partie du produit
$1 \times 2 \times \cdots \times n$, donc $n!$ est divisible par $3 \times 6 = 18$, et donc par $9$.

### Le rôle du nombre $3$

On a $2019 = 3 \times 673$, et la somme des chiffres de $673$ est $16$, donc $673$ n'est pas
divisible par $3$. Ainsi $2019$ est divisible par $3$ mais **pas par $9$**.

- **$m$ est un multiple de $3$.** On a $m^2 = n! - 2019$. Les deux nombres $n!$ et $2019$ sont
  divisibles par $3$, donc leur différence $m^2$ aussi. Or si $m$ n'était pas un multiple de $3$,
  alors $m^2 = m \times m$ ne serait pas non plus un multiple de $3$, car $3$ est un nombre premier
  et il n'apparaîtrait pas dans la décomposition de $m \times m$. Donc $3$ divise $m$.
- **$m^2$ est un multiple de $9$.** On écrit $m = 3k$, et alors $m^2 = 9k^2$.

### La contradiction

On a $2019 = n! - m^2$. Les nombres $n!$ et $m^2$ sont tous les deux divisibles par $9$, donc leur
différence $2019$ aussi. Mais on a vu que $2019$ n'est pas divisible par $9$. C'est impossible.

### Conclusion

**Pour tous les entiers naturels $m$ et $n$, on a $n! \neq m^2 + 2019$.**

## Going further

Trouver tous les entiers naturels $m$ et $n$ tels que $n! = m^2 + 1$. (On pourra chercher des
petites solutions, puis se demander si l'argument ci-dessus s'adapte.)
