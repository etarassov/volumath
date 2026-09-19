---
id: "1808"
title: "m carrés consécutifs et le multiple de m"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, somme-des-carres, disjonction-de-cas, congruences]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Arithmetic"
  reference: "Handout-1496-1446.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1496-1446.pdf"
---

## Statement

1. Démontrer que, pour tout entier $n \ge 1$, le nombre

   $$n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2$$

   est divisible par $5$.

2. Soit $m$ un entier $\ge 1$ qui n'est divisible ni par $2$ ni par $3$. Démontrer que, pour tout entier $n \ge 1$, la somme de $m$ carrés consécutifs

   $$n^2 + (n+1)^2 + \ldots + (n+m-1)^2$$

   est divisible par $m$.

On pourra utiliser les deux formules classiques

$$1 + 2 + \ldots + k = \frac{k(k+1)}{2}, \qquad 1^2 + 2^2 + \ldots + k^2 = \frac{k(k+1)(2k+1)}{6}.$$

## Hints

1. Pour la question 1, il n'y a pas besoin d'idée : développe les cinq carrés et regroupe.
2. Pour la question 2, écris $(n+j)^2 = n^2 + 2jn + j^2$ et sépare la somme en trois morceaux, selon que le terme contient $n^2$, $n$, ou ni l'un ni l'autre.
3. Les indices $j$ vont de $0$ à $m-1$. Utilise les deux formules données avec $k = m-1$.
4. Les deux premiers morceaux sont visiblement des multiples de $m$. Écris le troisième : il vaut $\dfrac{(m-1)m(2m-1)}{6}$.
5. Il reste donc à montrer que $\dfrac{(m-1)(2m-1)}{6}$ est un entier, c'est-à-dire que $(m-1)(2m-1)$ est divisible par $6$.
6. Pour le facteur $2$ : $m$ est impair. Pour le facteur $3$ : sépare selon le reste de $m$ dans la division par $3$. Le cas « reste $0$ » est exclu par l'énoncé.

## Solution

### 1. Cinq carrés consécutifs

Développons directement :

$$\begin{aligned}
n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 &= 5n^2 + 2n\,(0+1+2+3+4) + (0+1+4+9+16) \\
&= 5n^2 + 20n + 30 \\
&= 5\left(n^2 + 4n + 6\right).
\end{aligned}$$

Comme $n^2+4n+6$ est un entier, la somme est divisible par $5$.

*Exemple :* pour $n = 3$, $9+16+25+36+49 = 135 = 5 \times 27$.

### 2. Le cas général

Posons

$$S = n^2 + (n+1)^2 + \ldots + (n+m-1)^2 = \sum_{j=0}^{m-1} (n+j)^2.$$

En développant chaque carré, $(n+j)^2 = n^2 + 2jn + j^2$, et en regroupant :

$$S = m\,n^2 + 2n \sum_{j=0}^{m-1} j \; + \sum_{j=0}^{m-1} j^2.$$

Les deux sommes se calculent avec les formules rappelées, en prenant $k = m-1$ :

$$\sum_{j=0}^{m-1} j = \frac{(m-1)m}{2}, \qquad \sum_{j=0}^{m-1} j^2 = \frac{(m-1)m\,(2m-1)}{6}.$$

Donc

$$S = m\,n^2 + 2n \times \frac{(m-1)m}{2} + \frac{(m-1)m(2m-1)}{6} = m\,n^2 + n\,m\,(m-1) + \frac{(m-1)m(2m-1)}{6}.$$

On peut mettre $m$ en facteur :

$$S = m \left( n^2 + n(m-1) + \frac{(m-1)(2m-1)}{6} \right).$$

Il reste donc **un seul point à vérifier** : que $\dfrac{(m-1)(2m-1)}{6}$ est bien un **entier**. Si c'est le cas, la parenthèse est un entier et $S$ est un multiple de $m$.

**Le facteur $2$.** Par hypothèse $m$ n'est pas divisible par $2$, donc $m$ est impair, donc $m-1$ est pair. Le produit $(m-1)(2m-1)$ est donc divisible par $2$.

**Le facteur $3$.** Par hypothèse $m$ n'est pas divisible par $3$. Il reste deux cas.

- Si $m$ laisse le reste $1$ dans la division par $3$, alors $m - 1$ est divisible par $3$.
- Si $m$ laisse le reste $2$, écrivons $m = 3q+2$. Alors $2m - 1 = 6q + 4 - 1 = 6q + 3 = 3(2q+1)$ est divisible par $3$.

Dans les deux cas, $(m-1)(2m-1)$ est divisible par $3$.

**Conclusion sur le quotient.** $(m-1)(2m-1)$ est divisible par $2$ et par $3$, qui sont premiers entre eux, donc il est divisible par $6$. Ainsi $\dfrac{(m-1)(2m-1)}{6}$ est un entier, et

$$S = m \times \underbrace{\left( n^2 + n(m-1) + \frac{(m-1)(2m-1)}{6} \right)}_{\text{entier}}$$

est divisible par $m$.

**Vérification sur un exemple.** Prenons $m = 7$ (ni pair, ni multiple de $3$) et $n = 2$ :

$$4 + 9 + 16 + 25 + 36 + 49 + 64 = 203 = 7 \times 29.$$

**Pourquoi l'hypothèse sur $m$ est nécessaire.** Pour $m = 2$ et $n = 1$ : $1 + 4 = 5$, qui n'est pas divisible par $2$. Pour $m = 3$ et $n = 1$ : $1+4+9 = 14$, qui n'est pas divisible par $3$. L'énoncé exclut donc bien les deux cas qui échouent.

## Going further

1. Que vaut la somme de $m$ carrés consécutifs modulo $m$ lorsque $m$ est pair ? Et lorsque $m$ est un multiple de $3$ ?
2. Même question pour la somme de $m$ **cubes** consécutifs.
