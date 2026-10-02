---
id: "12882"
title: "Des moyennes toujours entières"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [suites, moyenne, moyenne-geometrique, divisibilite, decomposition-en-facteurs-premiers, valuation, periodicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test senior, exercice 6 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (on suit la première solution, étapes 1 et 2, écrite avec des divisibilités au lieu des congruences)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Déterminer toutes les suites infinies $a_1$, $a_2$, $a_3$, ... d'entiers strictement positifs qui ont la propriété suivante : pour tous entiers $m$ et $n$ tels que $1 \leq m \leq n$, les deux nombres

$$\frac{a_m + a_{m+1} + \cdots + a_n}{n - m + 1} \qquad \text{et} \qquad \left(a_m a_{m+1} \cdots a_n\right)^{1/(n - m + 1)}$$

sont des entiers.

Autrement dit, la moyenne arithmétique et la moyenne géométrique de termes consécutifs de la suite sont toujours des entiers.

## Hints

1. Quelles suites conviennent de façon évidente ? Il s'agit de montrer que ce sont les seules.
2. Soit $N \geq 1$ un entier. Écrivez que la moyenne de $a_k, \ldots, a_{k+N-1}$ est entière, puis celle de $a_{k+1}, \ldots, a_{k+N}$. Déduisez-en que $N$ divise $a_{k+N} - a_k$.
3. Pour les moyennes géométriques, regardez l'exposant d'un nombre premier $p$ dans la décomposition en facteurs premiers des termes. Montrez que ces exposants vérifient la même propriété que dans l'indication 2.
4. Soit $\alpha$ l'exposant de $p$ dans $a_1$. Avec l'indication 2, montrez que l'exposant de $p$ dans $a_{1 + j p^{\alpha+1}}$ vaut aussi $\alpha$, pour tout entier $j \geq 1$.

## Solution

La réponse : **les suites qui conviennent sont exactement les suites constantes.**

Une suite constante égale à $c$ convient : la moyenne arithmétique de $N$ termes vaut $Nc/N = c$, et la moyenne géométrique vaut $(c^N)^{1/N} = c$. Il reste à montrer qu'une suite qui convient est constante.

### Une notation

Pour un nombre premier $p$ et un entier $x \geq 1$, on note $v_p(x)$ l'exposant de $p$ dans la décomposition de $x$ en facteurs premiers. Par exemple $v_2(24) = 3$ et $v_5(24) = 0$. On l'appelle la valuation de $x$ en $p$. On utilise deux faits :

- $v_p(xy) = v_p(x) + v_p(y)$, car on obtient la décomposition de $xy$ en mettant ensemble celles de $x$ et de $y$ ;
- deux entiers strictement positifs qui ont la même valuation en chaque nombre premier sont égaux, car ils ont la même décomposition en facteurs premiers.

### Étape 1 : deux divisibilités

Soit $N \geq 1$ et $k \geq 1$ deux entiers.

**Avec les moyennes arithmétiques.** Les moyennes de $a_k, \ldots, a_{k+N-1}$ et de $a_{k+1}, \ldots, a_{k+N}$ sont entières. Donc $N$ divise les deux sommes

$$a_k + a_{k+1} + \cdots + a_{k+N-1} \qquad \text{et} \qquad a_{k+1} + \cdots + a_{k+N-1} + a_{k+N}.$$

Il divise donc leur différence :

$$(1) \qquad N \text{ divise } a_{k+N} - a_k.$$

**Avec les moyennes géométriques.** La moyenne géométrique de $a_k, \ldots, a_{k+N-1}$ est un entier $g$, donc $a_k a_{k+1} \cdots a_{k+N-1} = g^N$. Soit $p$ un nombre premier. En prenant la valuation en $p$ des deux membres,

$$v_p(a_k) + v_p(a_{k+1}) + \cdots + v_p(a_{k+N-1}) = N\,v_p(g),$$

qui est un multiple de $N$. Il en est de même en partant de $a_{k+1}$. Par différence, comme plus haut,

$$(2) \qquad N \text{ divise } v_p(a_{k+N}) - v_p(a_k).$$

**Conséquence de (1).** En appliquant (1) aux indices $k$, $k + N$, $k + 2N$, ..., puis en additionnant, on obtient que $N$ divise

$$(a_{k+N} - a_k) + (a_{k+2N} - a_{k+N}) + \cdots + (a_{k+jN} - a_{k+(j-1)N}) = a_{k+jN} - a_k$$

pour tout entier $j \geq 1$.

### Étape 2 : des termes qui ont la même valuation que le premier

Soit $p$ un nombre premier, et $\alpha = v_p(a_1)$. Ainsi $p^\alpha$ divise $a_1$, mais $p^{\alpha+1}$ ne divise pas $a_1$.

Soit $q = p^{\alpha+1}$ et $j \geq 1$ un entier. D'après l'étape 1, $q$ divise $a_{1+jq} - a_1$.

- Comme $p^\alpha$ divise $q$, il divise $a_{1+jq} - a_1$, et aussi $a_1$, donc il divise $a_{1+jq}$.
- Si $p^{\alpha+1}$ divisait $a_{1+jq}$, il diviserait $a_1 = a_{1+jq} - (a_{1+jq} - a_1)$, ce qui est faux.

Donc **$v_p(a_{1+jq}) = \alpha$ pour tout entier $j \geq 1$.**

### Étape 3 : tous les termes ont la même valuation

Soit $k \geq 1$ un indice. Pour tout entier $j$ tel que $1 + jq > k$, on pose $N = 1 + jq - k$, qui est un entier strictement positif. Alors $k + N = 1 + jq$, et la divisibilité (2) donne

$$N \text{ divise } v_p(a_{1+jq}) - v_p(a_k) = \alpha - v_p(a_k).$$

Quand $j$ augmente, $N$ prend des valeurs aussi grandes que l'on veut. Or un entier non nul $d$ n'a que des diviseurs inférieurs ou égaux à $|d|$. L'entier $\alpha - v_p(a_k)$ a des diviseurs aussi grands que l'on veut, donc il est nul :

$$v_p(a_k) = v_p(a_1).$$

### Conclusion

Pour tout indice $k$, les entiers $a_k$ et $a_1$ ont la même valuation en chaque nombre premier $p$, donc $a_k = a_1$.

**Les suites qui conviennent sont les suites constantes d'entiers strictement positifs.**

## Going further

1. Montrez que la suite définie par $a_n = 2n$ vérifie la condition sur les moyennes arithmétiques, mais pas celle sur les moyennes géométriques.
2. Montrez que la suite définie par $a_n = 4^n$ vérifie la condition sur les moyennes géométriques, mais pas celle sur les moyennes arithmétiques (essayez les cinq premiers termes). Les deux conditions sont donc nécessaires.
3. Où la solution utilise-t-elle la condition sur les moyennes arithmétiques ? Et celle sur les moyennes géométriques ?
