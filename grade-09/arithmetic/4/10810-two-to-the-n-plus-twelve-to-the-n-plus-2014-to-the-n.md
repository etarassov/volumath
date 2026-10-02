---
id: "10810"
title: "2ⁿ + 12ⁿ + 2014ⁿ n'est jamais un carré"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre-parfait, congruences, restes, puissances, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ tels que le nombre

$$2^n + 12^n + 2014^n$$

soit un carré parfait.

## Hints

1. Essaie $n = 1$ : le nombre vaut $2028$. Est-ce un carré ? Pour aller plus loin, il faut un outil qui marche pour tous les $n$ à la fois : les restes dans une division.
2. Un carré a toujours pour reste $0$ ou $1$ dans la division par $3$. Cherche les restes de $2$, $12$ et $2014$ dans la division par $3$, et déduis-en que $n$ doit être impair.
3. Pour $n$ impair, regarde les restes dans la division par $7$. Remarque que $12 = 14 - 2$ : que se passe-t-il pour $2^n + 12^n$ ?
4. Les restes des carrés dans la division par $7$ sont $0$, $1$, $2$ et $4$. Calcule les restes de $5$, $5^2$, $5^3$, … dans la division par $7$.

## Solution

**Réponse : il n'existe aucun entier $n \geqslant 1$ qui convienne.**

Notons $N = 2^n + 12^n + 2014^n$.

### Un rappel sur les restes

On écrit $a \equiv b \pmod m$, et on lit « $a$ est congru à $b$ modulo $m$ », quand $a - b$ est un multiple de $m$. Pour $a$ et $b$ positifs, cela veut dire que $a$ et $b$ ont le même reste dans la division par $m$. Par exemple $2 \equiv -1 \pmod 3$, car $2 - (-1) = 3$.

On peut ajouter et multiplier ces relations comme des égalités : si $a \equiv b$ et $c \equiv d \pmod m$, alors $a + c \equiv b + d$ et $ac \equiv bd \pmod m$. En multipliant plusieurs fois, $a \equiv b$ donne $a^n \equiv b^n \pmod m$.

En pratique : pour connaître le reste d'une somme ou d'une puissance, on peut remplacer chaque nombre par son reste, ou par un nombre plus simple qui lui est congru.

### Étape 1 : les carrés dans la division par $3$

Tout entier $k$ s'écrit $3q$, $3q + 1$ ou $3q + 2$. Alors $k^2$ vaut
$$9q^2 = 3 \times 3q^2, \qquad 9q^2 + 6q + 1 = 3(3q^2 + 2q) + 1, \qquad 9q^2 + 12q + 4 = 3(3q^2 + 4q + 1) + 1 .$$
**Le reste d'un carré dans la division par $3$ est donc $0$ ou $1$, jamais $2$.**

### Étape 2 : $n$ doit être impair

On a $2 \equiv -1$, $12 \equiv 0$ et $2014 = 3 \times 671 + 1 \equiv 1 \pmod 3$. Comme $n \geqslant 1$,
$$N \equiv (-1)^n + 0 + 1^n = (-1)^n + 1 \pmod 3 .$$
Si $n$ était pair, on aurait $(-1)^n = 1$, donc $N \equiv 2 \pmod 3$, et $N$ ne serait pas un carré d'après l'étape 1. **Donc $n$ est impair.**

### Étape 3 : les carrés dans la division par $7$

Tout entier $k$ s'écrit $7q + r$ avec $r$ entre $0$ et $6$, et alors $k^2 \equiv r^2 \pmod 7$. Il suffit donc de regarder les sept valeurs de $r$ :

| $r$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $r^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $25$ | $36$ |
| reste de $r^2$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

**Le reste d'un carré dans la division par $7$ est $0$, $1$, $2$ ou $4$, jamais $3$, $5$ ou $6$.**

### Étape 4 : le reste de $N$ dans la division par $7$, pour $n$ impair

On a $12 = 14 - 2 \equiv -2 \pmod 7$ et $2014 = 7 \times 287 + 5 \equiv 5 \pmod 7$. Comme $n$ est impair, $(-2)^n = -2^n$, donc
$$N \equiv 2^n + (-2)^n + 5^n = 2^n - 2^n + 5^n = 5^n \pmod 7 .$$

Calculons les restes des puissances de $5$, en multipliant chaque fois le reste précédent par $5$ :
$$5^1 \equiv 5, \qquad 5^2 \equiv 25 \equiv 4, \qquad 5^3 \equiv 4 \times 5 = 20 \equiv 6,$$
$$5^4 \equiv 6 \times 5 = 30 \equiv 2, \qquad 5^5 \equiv 2 \times 5 = 10 \equiv 3, \qquad 5^6 \equiv 3 \times 5 = 15 \equiv 1 \pmod 7 .$$
Comme $5^6 \equiv 1$, on a $5^{n+6} = 5^n \times 5^6 \equiv 5^n$ : les restes se répètent tous les $6$ rangs. Quand $n$ est impair, le reste de $n$ dans la division par $6$ est $1$, $3$ ou $5$, donc $5^n$ a pour reste $5$, $6$ ou $3$.

Ainsi, pour $n$ impair, le reste de $N$ dans la division par $7$ est $3$, $5$ ou $6$. D'après l'étape 3, **$N$ n'est pas un carré.**

### Conclusion

Si $n$ est pair, $N$ n'est pas un carré (étape 2). Si $n$ est impair, $N$ n'est pas un carré non plus (étape 4). **Aucun entier $n \geqslant 1$ ne rend $2^n + 12^n + 2014^n$ égal à un carré parfait.**

*Vérification pour $n = 1$ :* $N = 2028$, et $45^2 = 2025 < 2028 < 2116 = 46^2$.

## Going further

1. En fait, la division par $7$ suffit à elle seule. Pour $n$ pair, calcule le reste de $N$ dans la division par $7$ et montre que ce n'est jamais $0$, $1$, $2$ ou $4$. *Indication : les restes de $2^n$ se répètent tous les $3$ rangs, ceux de $5^n$ tous les $6$ rangs.*
2. Le nombre $2^n + 12^n + 2013^n$ peut-il être un carré parfait ? *Indication : pour $n$ impair, regarde le reste dans la division par $3$. Pour $n$ pair, compare ce nombre avec les carrés $\left(2013^{n/2}\right)^2$ et $\left(2013^{n/2} + 1\right)^2$.*
3. Le nombre $2^n + 12^n + 2011^n$ peut-il être un carré parfait ? *Indication : montre comme ici que $n$ est impair, puis regarde le reste dans la division par $4$ quand $n \geqslant 3$. Pour $n = 1$, on trouve $2025 = 45^2$.*
