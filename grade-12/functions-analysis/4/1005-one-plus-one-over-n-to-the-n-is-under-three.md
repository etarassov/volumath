---
id: "1005"
title: "Une suite qui ne dépasse jamais 3"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 45
tags: [suites, recurrence, majoration, binome-de-newton, suite-geometrique, nombre-e]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Euler's number"
  reference: "Handout-4820-5022.pdf, problèmes 11 et 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4820-5022.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$ on pose
$$u_n = \left(1 + \frac{1}{n}\right)^{n}.$$

Les premières valeurs sont $u_1 = 2$, $u_2 = \text{2,25}$, $u_3 \approx \text{2,370}$, $u_{10} \approx \text{2,594}$, $u_{100} \approx \text{2,705}$. La suite a l'air de monter doucement. Jusqu'où ?

1. Montrer que pour tout entier $k \geqslant 1$, $\; k! \geqslant 2^{\,k-1}$.
2. Montrer que pour tout entier $n \geqslant 1$,
$$u_n \leqslant 1 + \frac{1}{1!} + \frac{1}{2!} + \cdots + \frac{1}{n!}.$$
3. En déduire que $u_n < 3$ pour tout $n \geqslant 1$.

## Hints

1. Pour la question 1, une récurrence : passer de $k$ à $k+1$ multiplie la factorielle par $k+1$ et la puissance de $2$ par $2$.
2. Pour la question 2, développer $\left(1 + \frac{1}{n}\right)^n$ avec la formule du binôme.
3. Le terme de rang $k$ du développement est $\displaystyle \binom{n}{k}\frac{1}{n^k}$. Écrivez $\binom{n}{k}$ comme $\dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}$ et regardez ce qu'il reste après division par $n^k$ : un produit de $k$ fractions. Chacune est-elle plus grande ou plus petite que $1$ ?
4. Pour la question 3, majorer chaque $\frac{1}{k!}$ à l'aide de la question 1. On tombe alors sur une somme que l'on sait calculer exactement.

## Solution

### Question 1 : $k! \geqslant 2^{k-1}$

Récurrence sur $k \geqslant 1$.

*Initialisation.* Pour $k = 1$ : $1! = 1$ et $2^{0} = 1$, donc $1! \geqslant 2^{0}$.

*Hérédité.* Supposons $k! \geqslant 2^{k-1}$ pour un entier $k \geqslant 1$. Alors
$$(k+1)! = (k+1) \times k! \geqslant (k+1) \times 2^{k-1} \geqslant 2 \times 2^{k-1} = 2^{k},$$
la dernière minoration venant de $k + 1 \geqslant 2$.

L'inégalité est donc vraie pour tout $k \geqslant 1$.

### Question 2 : majorer par une somme d'inverses de factorielles

La formule du binôme donne
$$u_n = \left(1 + \frac{1}{n}\right)^{n} = \sum_{k=0}^{n} \binom{n}{k}\left(\frac{1}{n}\right)^{k} = \sum_{k=0}^{n} \frac{1}{k!} \cdot \frac{n(n-1)(n-2)\cdots(n-k+1)}{n^{k}}.$$

Regardons le facteur de droite pour $k \geqslant 1$. Il y a exactement $k$ facteurs au numérateur et $k$ facteurs $n$ au dénominateur, que l'on peut apparier :
$$\frac{n(n-1)\cdots(n-k+1)}{n^{k}} = \frac{n}{n} \times \frac{n-1}{n} \times \frac{n-2}{n} \times \cdots \times \frac{n-k+1}{n}.$$

Chacune de ces $k$ fractions est positive et inférieure ou égale à $1$, puisque $0 \leqslant n - j \leqslant n$ pour $0 \leqslant j \leqslant k-1$. Leur produit est donc lui aussi compris entre $0$ et $1$, et par conséquent
$$\binom{n}{k}\frac{1}{n^{k}} \leqslant \frac{1}{k!}.$$

En sommant sur $k$ de $0$ à $n$ (le terme $k = 0$ vaut $1$ des deux côtés) :
$$u_n \leqslant \sum_{k=0}^{n} \frac{1}{k!} = 1 + \frac{1}{1!} + \frac{1}{2!} + \cdots + \frac{1}{n!}.$$

### Question 3 : conclure que $u_n < 3$

D'après la question 1, pour $k \geqslant 1$ on a $\dfrac{1}{k!} \leqslant \dfrac{1}{2^{k-1}}$. Donc
$$u_n \leqslant 1 + \sum_{k=1}^{n} \frac{1}{2^{k-1}} = 1 + \left(1 + \frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2^{n-1}}\right).$$

La parenthèse est la somme des $n$ premiers termes d'une suite géométrique de premier terme $1$ et de raison $\frac12$ :
$$1 + \frac12 + \cdots + \frac{1}{2^{n-1}} = \frac{1 - \left(\frac12\right)^{n}}{1 - \frac12} = 2\left(1 - \frac{1}{2^{n}}\right) = 2 - \frac{1}{2^{n-1}}.$$

Par conséquent
$$u_n \leqslant 1 + 2 - \frac{1}{2^{n-1}} = 3 - \frac{1}{2^{n-1}} < 3.$$

**Conclusion.** Pour tout entier $n \geqslant 1$,
$$\left(1 + \frac{1}{n}\right)^{n} \leqslant 3 - \frac{1}{2^{n-1}} < 3.$$

La suite $(u_n)$ est donc majorée par $3$, et cela quel que soit $n$, aussi grand soit-il.

**Un mot sur la suite.** On peut montrer en plus que $(u_n)$ est croissante. Étant croissante et majorée, elle converge. Sa limite est un nombre célèbre, le **nombre d'Euler**
$$e = \lim_{n \to +\infty}\left(1 + \frac{1}{n}\right)^{n} \approx \text{2,7182818}.$$
C'est la base de la fonction exponentielle. La majoration ci-dessus montre au passage que $e \leqslant 3$.

## Going further

1. Montrer que $(u_n)$ est croissante. *Indication* : poser $\dfrac{u_{n+1}}{u_n} = \dfrac{n+2}{n+1}\left(1 - \dfrac{1}{(n+1)^2}\right)^{n}$ et utiliser l'**inégalité de Bernoulli** $(1+x)^n \geqslant 1 + nx$ pour $x \geqslant -1$.
2. Démontrer l'inégalité de Bernoulli par récurrence.
3. Montrer par le même procédé que $1 + \frac{1}{1!} + \cdots + \frac{1}{n!}$ converge, et que sa limite est encore $e$. Calculer les six premières décimales de $e$ avec cette somme.
4. La majoration $u_n \leqslant 3 - \frac{1}{2^{n-1}}$ est-elle bonne pour $n$ grand ? Comparer à $e$ pour $n = 10$, $n = 100$.
