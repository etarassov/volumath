---
id: "12204"
title: "Cinquante fractions dont la somme dépasse 25"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [fractions, inegalite, comparaison, somme, nombres impairs, minoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2015"
  reference: "2017-10_ofm-2014-2015-test-janvier.pdf, exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-janvier.pdf"
---

## Statement

**a)** Démontrer que, pour tous nombres réels strictement positifs $a$, $b$ et $k$ tels que $a < b$, on a

$$\frac{a}{b} < \frac{a+k}{b+k}.$$

**b)** Démontrer que

$$\frac{1}{100} + \frac{4}{101} + \frac{7}{102} + \frac{10}{103} + \cdots + \frac{148}{149} > 25.$$

(Les numérateurs augmentent de $3$ en $3$, les dénominateurs de $1$ en $1$.)

## Hints

1. Pour la question **a)**, compare les produits en croix $a(b+k)$ et $b(a+k)$.
2. Pour la question **b)**, numérote les fractions à partir de $0$ : la fraction numéro $j$ est $\dfrac{1 + 3j}{100 + j}$. Combien y en a-t-il ?
3. La question **a)** dit qu'enlever le même nombre au numérateur et au dénominateur d'une fraction plus petite que $1$ la rend plus petite. Que faut-il enlever à $\dfrac{1 + 3j}{100 + j}$ pour que le dénominateur devienne $100$ ?
4. Il reste à calculer $1 + 3 + 5 + \cdots + 99$.

## Solution

**a)** Comme $a < b$ et $k > 0$, on a $ak < bk$. En ajoutant $ab$ des deux côtés :

$$ab + ak < ab + bk, \qquad \text{c'est-à-dire} \qquad a(b + k) < b(a + k).$$

On divise par le nombre strictement positif $b(b+k)$, ce qui ne change pas le sens de l'inégalité :

$$\frac{a}{b} < \frac{a+k}{b+k}.$$

**b)** Notons $S$ la somme. Les numérateurs sont $1, 4, 7, \ldots, 148$ et les dénominateurs $100, 101, \ldots, 149$. En numérotant les fractions à partir de $0$, la fraction numéro $j$ est

$$\frac{1 + 3j}{100 + j}, \qquad j = 0, 1, 2, \ldots, 49.$$

C'est bien la dernière pour $j = 49$, puisque $1 + 3 \times 49 = 148$ et $100 + 49 = 149$. Il y a donc $50$ fractions.

**Étape 1. On minore chaque fraction.** Pour $j \geqslant 1$, on applique la question **a)** avec $a = 1 + 2j$, $b = 100$ et $k = j$. La condition $a < b$ est vraie, car $1 + 2j \leqslant 1 + 2 \times 49 = 99 < 100$. Comme $a + k = 1 + 3j$ et $b + k = 100 + j$, on obtient

$$\frac{1 + 2j}{100} < \frac{1 + 3j}{100 + j}.$$

Pour $j = 0$, les deux fractions valent $\dfrac{1}{100}$.

**Étape 2. On additionne.** En additionnant ces $50$ comparaisons (dont $49$ sont strictes) :

$$S > \frac{1}{100} + \frac{3}{100} + \frac{5}{100} + \cdots + \frac{99}{100} = \frac{1 + 3 + 5 + \cdots + 99}{100}.$$

**Étape 3. La somme des nombres impairs.** On regroupe les $50$ nombres impairs de $1$ à $99$ en $25$ paires : $1 + 99$, $3 + 97$, $5 + 95$, …, $49 + 51$. Chaque paire vaut $100$, donc

$$1 + 3 + 5 + \cdots + 99 = 25 \times 100 = 2500.$$

**Conclusion.** $S > \dfrac{2500}{100} = 25$.

## Going further

La somme des $n$ premiers nombres impairs vaut toujours $n^2$ : $1 = 1^2$, $1 + 3 = 2^2$, $1 + 3 + 5 = 3^2$, etc. Ici $n = 50$ et $50^2 = 2500$.

Avec une calculatrice, on trouve que $S$ vaut environ 28,3. La minoration par 25 perd donc un peu plus de 3, mais elle suffit.
