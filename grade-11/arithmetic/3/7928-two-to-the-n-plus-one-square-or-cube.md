---
id: "7928"
title: "2 puissance n plus 1, carré ou cube"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [puissances-de-2, factorisation, carre-parfait, cube-parfait, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, évaluation initiale"
  reference: "stage_ete_2016.pdf, « Evaluation initiale », rubrique Arithmétique, dernier exercice (p. 34-35)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

1. Trouver tous les entiers naturels $n$ tels que $2^n + 1$ soit le carré d'un entier.
2. Trouver tous les entiers naturels $n$ tels que $2^n + 1$ soit le cube d'un entier.

## Hints

1. Commence par calculer $2^n + 1$ pour $n = 0, 1, 2, \ldots, 6$ et repère les carrés et les cubes.
2. Pour la première question, écris $2^n + 1 = k^2$ puis isole $2^n$ et factorise $k^2 - 1$.
3. Le produit de deux entiers positifs vaut une puissance de $2$ : que peut-on dire de chacun d'eux ? Et ici, ils diffèrent de $2$.
4. Pour la seconde question, factorise $k^3 - 1$. L'un des deux facteurs est toujours impair : lequel, et pourquoi ?

## Solution

**1. Le cas du carré : la seule solution est $n = 3$.**

Supposons $2^n + 1 = k^2$ avec $k$ entier naturel. Alors

$$2^n = k^2 - 1 = (k-1)(k+1) .$$

Comme $2^n \ge 1$, on a $k^2 \ge 2$, donc $k \ge 2$ et les deux facteurs $k-1$ et $k+1$ sont des entiers strictement positifs.

Chacun d'eux divise $2^n$. Or les diviseurs positifs de $2^n$ sont exactement les puissances de $2$. Donc $k - 1$ et $k + 1$ sont deux puissances de $2$ qui diffèrent de $2$ :

$$(k+1) - (k-1) = 2 .$$

Cherchons deux puissances de $2$ dont la différence vaut $2$. Si $k - 1 = 2^u$ et $k+1 = 2^v$ avec $u < v$, alors $2^v - 2^u = 2$. Si $u \ge 2$, les deux termes sont des multiples de $4$ et leur différence aussi : impossible, car $2$ n'est pas un multiple de $4$. Il reste $u = 0$ ou $u = 1$ :

- $u = 0$ : $2^v = 3$, impossible ;
- $u = 1$ : $2^v = 4$, donc $v = 2$.

Donc $k - 1 = 2$ et $k + 1 = 4$, d'où $k = 3$ et $2^n = 8$, soit $n = 3$.

*Vérification :* $2^3 + 1 = 9 = 3^2$. ✓

**2. Le cas du cube : il n'y a aucune solution.**

Supposons $2^n + 1 = k^3$ avec $k$ entier naturel. Comme $2^n + 1 \ge 2$, on a $k \ge 2$. On factorise :

$$2^n = k^3 - 1 = (k - 1)\left(k^2 + k + 1\right) .$$

Regardons le second facteur. On a $k^2 + k + 1 = k(k+1) + 1$. Or $k$ et $k+1$ sont deux entiers consécutifs, donc leur produit $k(k+1)$ est **pair**. Par conséquent

$$k^2 + k + 1 \ \text{est impair} .$$

De plus, comme $k \ge 2$, on a $k^2 + k + 1 \ge 4 + 2 + 1 = 7 > 1$.

Mais $k^2 + k + 1$ divise $2^n$, dont les seuls diviseurs positifs sont les puissances de $2$. La seule puissance de $2$ qui soit impaire est $1$, et nous venons de voir que $k^2+k+1 \ge 7$. Contradiction.

**Conclusion.** $2^n + 1$ est un carré uniquement pour $n = 3$, et n'est jamais un cube.

## Going further

Ces deux questions sont deux cas particuliers d'un résultat beaucoup plus difficile, la **conjecture de Catalan**, démontrée par Preda Mihăilescu en 2002 : les seules puissances parfaites consécutives sont $8$ et $9$. Autrement dit, la seule solution en entiers de $x^p - y^q = 1$ avec $x, y, p, q \ge 2$ est $3^2 - 2^3 = 1$. C'est exactement le couple qu'on vient de rencontrer à la question 1.
