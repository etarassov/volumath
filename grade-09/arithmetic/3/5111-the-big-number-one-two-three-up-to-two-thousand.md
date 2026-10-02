---
id: "5111"
title: "Le grand nombre 123456789101112…"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [chiffres, comptage, somme-des-chiffres, divisibilite, grands-nombres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problèmes 16 et 24 réunis"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On écrit à la suite, sans rien séparer, tous les entiers de $1$ à $2000$ :

$$N = 123456789101112\ldots199819992000$$

1. Combien de chiffres a le nombre $N$ ?
2. Quels sont le $2007^{\text{e}}$ et le $2008^{\text{e}}$ chiffre de $N$, comptés à partir de la gauche ?
3. Quel est le reste de la division de $N$ par $9$ ?

## Hints

1. Pour la question 1, sépare les entiers selon leur nombre de chiffres : ceux de $1$ à $9$, ceux de $10$ à $99$, et ainsi de suite. Combien y en a-t-il dans chaque paquet ?
2. Pour la question 2, commence par repérer dans quel paquet tombe le $2007^{\text{e}}$ chiffre. Combien de chiffres a-t-on déjà écrits quand on a fini d'écrire $99$ ?
3. Il reste alors un certain nombre de chiffres à parcourir dans le paquet des nombres à trois chiffres. Divise ce nombre par $3$ : le reste de cette division te dit où tu tombes à l'intérieur d'un nombre.
4. Pour la question 3, souviens-toi qu'un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. La somme des chiffres de $N$, c'est la somme des sommes des chiffres de $1$, $2$, …, $2000$.
5. Toujours pour la question 3 : chaque entier $k$ a le même reste modulo $9$ que la somme de ses chiffres. Tu n'as donc pas besoin de connaître ces sommes une par une.

## Solution

### Question 1 : le nombre de chiffres

On regroupe les entiers par nombre de chiffres :

| entiers | combien | chiffres chacun | total |
|---|---|---|---|
| $1$ à $9$ | $9$ | $1$ | $9$ |
| $10$ à $99$ | $90$ | $2$ | $180$ |
| $100$ à $999$ | $900$ | $3$ | $2700$ |
| $1000$ à $2000$ | $1001$ | $4$ | $4004$ |

$$9 + 180 + 2700 + 4004 = 6893$$

**Le nombre $N$ a $6893$ chiffres.**

### Question 2 : le $2007^{\text{e}}$ chiffre

Quand on a fini d'écrire $99$, on a écrit $9 + 180 = 189$ chiffres. Quand on a fini d'écrire $999$, on en a écrit $189 + 2700 = 2889$.

Comme $189 < 2007 < 2889$, le $2007^{\text{e}}$ chiffre se trouve dans le paquet des nombres à trois chiffres.

Une fois passés les $189$ premiers chiffres, il en reste

$$2007 - 189 = 1818$$

à parcourir, par paquets de trois. Or

$$1818 = 3 \times 606$$

La division tombe juste : le $2007^{\text{e}}$ chiffre est donc le **dernier** chiffre du $606^{\text{e}}$ nombre à trois chiffres. Ce nombre est

$$99 + 606 = 705$$

Son dernier chiffre est $5$. Le chiffre suivant est le premier chiffre du nombre d'après, $706$, c'est-à-dire $7$.

**Le $2007^{\text{e}}$ chiffre est $5$, le $2008^{\text{e}}$ est $7$.** (Leur produit vaut $35$.)

### Question 3 : le reste modulo 9

*L'outil.* Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$ : pour tout entier $m$, on a $S(m) \equiv m \pmod 9$, où $S$ désigne la somme des chiffres.

*On l'applique à $N$.* Les chiffres de $N$ sont exactement, mis bout à bout, les chiffres de $1$, puis ceux de $2$, …, puis ceux de $2000$. Donc

$$S(N) = S(1) + S(2) + \cdots + S(2000)$$

*On l'applique à chaque terme.* Chaque $S(k)$ a le même reste que $k$ modulo $9$, donc

$$N \equiv S(N) = \sum_{k=1}^{2000} S(k) \equiv \sum_{k=1}^{2000} k \pmod 9$$

*On calcule.*

$$\sum_{k=1}^{2000} k = \frac{2000 \times 2001}{2} = 1000 \times 2001 = 2\,001\,000$$

La somme des chiffres de $2\,001\,000$ vaut $2 + 0 + 0 + 1 + 0 + 0 + 0 = 3$, donc $2\,001\,000 \equiv 3 \pmod 9$.

**Le reste de la division de $N$ par $9$ est $3$.**

## Going further

La question 3 est un bel exemple d'un calcul qui paraît monstrueux et qui tient en trois lignes : on n'a jamais eu besoin de connaître un seul chiffre de $N$.

La question 2, elle, se généralise : si l'on écrit ainsi tous les entiers de $1$ à l'infini, on obtient une suite de chiffres appelée **constante de Champernowne**. On sait dire quel est son $n^{\text{e}}$ chiffre pour n'importe quel $n$, exactement par la méthode ci-dessus.
