---
id: "10842"
title: "Une infinité de n qui divisent 2^(2ⁿ+1) + 1 mais pas 2ⁿ + 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [puissances-de-deux, congruences, divisibilite, nombres-premiers, construction, factorisation, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf (le corrigé n'est pas terminé : il propose les mêmes nombres n, mais laisse la divisibilité de 2^(2ⁿ+1) + 1 par n en suspens, avec la mention « Recherche en cours » ; la preuve est complétée ici sans le lemme LTE ni le petit théorème de Fermat)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Montrer qu'il existe une infinité d'entiers $n \geqslant 1$ tels que $n$ divise

$$2^{2^n + 1} + 1,$$

mais que $n$ ne divise pas $2^n + 1$.

## Hints

1. Pose $a_m = 2^{3^m} + 1$. Avec l'identité $X^3 + 1 = (X + 1)\left(X^2 - X + 1\right)$, montre par récurrence que $3^{m+1}$ divise $a_m$.
2. Pour $m \geqslant 2$, pose $X = 2^{3^{m-1}}$, de sorte que $a_m = (X + 1)\left(X^2 - X + 1\right)$. Montre qu'un diviseur commun des deux facteurs divise $3$, puis trouve un nombre premier $p \geqslant 5$ qui divise $a_m$ mais pas $a_{m-1}$.
3. Essaie $n = 3^{m-1} \times p$. Pour $m = 2$, tu dois trouver $p = 19$ et $n = 57$.
4. Pour montrer que $p$ ne divise pas $2^n + 1$, remarque que $X^6$ a pour reste $1$ dans la division par $p$, et regarde le reste de $p$ dans la division par $6$.

## Solution

### Rappels

On écrit $u \equiv v \pmod M$ quand $u - v$ est un multiple de $M$. On peut ajouter et multiplier ces relations comme des égalités.

On utilise aussi deux faits simples. Si $s$ est impair, alors $Y + 1$ divise $Y^s + 1$, car
$$Y^s + 1 = (Y + 1)\left(Y^{s-1} - Y^{s-2} + \cdots - Y + 1\right) .$$
Et si deux nombres sans facteur premier commun divisent $N$, leur produit divise $N$.

### Étape 1 : une identité et ses conséquences

Pour tout entier $X$,
$$X^3 + 1 = (X + 1)\left(X^2 - X + 1\right) \qquad \text{et} \qquad X^2 - X + 1 = (X + 1)(X - 2) + 3 .$$
On en tire trois conséquences.

- **(a)** Si $3^j$ divise $X + 1$, avec $j \geqslant 1$, alors $3^{j+1}$ divise $X^3 + 1$. En effet $X \equiv -1 \pmod 3$, donc $X^2 - X + 1 \equiv 1 + 1 + 1 \equiv 0 \pmod 3$, et le produit est divisible par $3^j \times 3$.
- **(b)** Tout diviseur commun de $X + 1$ et de $X^2 - X + 1$ divise $3$, d'après la deuxième égalité.
- **(c)** Si $9$ divise $X + 1$, alors $9$ divise $(X + 1)(X - 2)$, donc $X^2 - X + 1 = 9 \times (\ldots) + 3$ : c'est $3$ fois un nombre qui n'est pas multiple de $3$.

### Étape 2 : les nombres $a_m = 2^{3^m} + 1$

Posons $a_m = 2^{3^m} + 1$ pour $m \geqslant 0$. On a $a_0 = 3$, et $a_{m+1} = X^3 + 1$ avec $X = 2^{3^m}$, $X + 1 = a_m$. D'après (a), par récurrence sur $m$ :
$$3^{m+1} \text{ divise } a_m \qquad \text{pour tout } m \geqslant 0 .$$

### Étape 3 : un nombre premier $p$

Fixons $m \geqslant 2$, et posons $X = 2^{3^{m-1}}$. Alors $X + 1 = a_{m-1}$ et $X^3 + 1 = a_m$.

D'après l'étape 2, $3^m$ divise $X + 1$, et en particulier $9$ le divise. D'après (c), on peut écrire $X^2 - X + 1 = 3R$, avec $R$ non multiple de $3$. Le nombre $R$ est impair, car $X$ est pair et $X^2 - X + 1$ impair. Et $R > 1$, car $X \geqslant 8$ donne $X^2 - X + 1 \geqslant 57$. Donc $R$ a un facteur premier $p$, différent de $2$ et de $3$ : **$p \geqslant 5$.**

Ce nombre premier $p$ divise $X^2 - X + 1$, donc il divise $a_m = X^3 + 1$, c'est-à-dire
$$X^3 \equiv -1 \pmod p .$$
Il ne divise pas $X + 1 = a_{m-1}$ : sinon, d'après (b), il diviserait $3$.

*Exemple.* Pour $m = 2$, on a $X = 8$, $X^2 - X + 1 = 57 = 3 \times 19$, donc $p = 19$.

### Étape 4 : le nombre $n = 3^{m-1}\,p$ convient

Posons $n = 3^{m-1}\,p$. Pour $m = 2$, c'est $n = 57$.

*$3^m$ divise $2^n + 1$.* On a $2^n = \left(2^{3^{m-1}}\right)^p = X^p$, avec $p$ impair. Donc $X + 1$ divise $X^p + 1 = 2^n + 1$, et $3^m$ divise $X + 1$. Comme $2^n + 1$ est impair, on peut écrire
$$2^n + 1 = 3^m \times s, \qquad \text{avec } s \text{ impair} .$$

*$p$ divise $2^{2^n + 1} + 1$.* On a $2^{2^n + 1} = \left(2^{3^m}\right)^s$. Or $2^{3^m} = X^3 \equiv -1 \pmod p$, et $s$ est impair, donc
$$2^{2^n + 1} \equiv (-1)^s = -1 \pmod p .$$

*$3^{m-1}$ divise $2^{2^n + 1} + 1$.* Comme $s$ est impair, $2^{3^m} + 1 = a_m$ divise $\left(2^{3^m}\right)^s + 1 = 2^{2^n+1} + 1$. Et $3^{m+1}$ divise $a_m$ d'après l'étape 2.

Comme $p \neq 3$, les nombres $3^{m-1}$ et $p$ n'ont aucun facteur premier commun. **Donc $n = 3^{m-1}\,p$ divise $2^{2^n + 1} + 1$.**

### Étape 5 : $n$ ne divise pas $2^n + 1$

Il suffit de montrer que $p$ ne divise pas $2^n + 1 = X^p + 1$. Comme $X^3 \equiv -1 \pmod p$, on a $X^6 \equiv 1 \pmod p$. Le nombre premier $p \geqslant 5$ n'est divisible ni par $2$ ni par $3$, donc son reste dans la division par $6$ vaut $1$ ou $5$.

- **Si $p = 6t + 1$**, alors $X^p = \left(X^6\right)^t \times X \equiv X$, donc $X^p + 1 \equiv X + 1 \pmod p$. Ce n'est pas $0$, car $p$ ne divise pas $X + 1$.
- **Si $p = 6t + 5$**, alors $X^p = \left(X^6\right)^t \times X^3 \times X^2 \equiv -X^2$, donc $X^p + 1 \equiv 1 - X^2 = (1 - X)(1 + X) \pmod p$. Le nombre premier $p$ ne divise pas $1 + X$. Il ne divise pas non plus $X - 1$ : sinon $X \equiv 1$, donc $X^3 \equiv 1$, et avec $X^3 \equiv -1$ on aurait $p$ qui divise $2$. Comme $p$ est premier, il ne divise pas le produit.

Dans les deux cas, $p$ ne divise pas $2^n + 1$. **Donc $n$ ne divise pas $2^n + 1$.**

### Conclusion

Pour chaque $m \geqslant 2$, on obtient un entier $n_m = 3^{m-1}\,p_m$ qui convient. L'exposant de $3$ dans $n_m$ vaut exactement $m - 1$, car $p_m \neq 3$, donc ces entiers sont tous différents. **Il existe donc une infinité d'entiers $n$ tels que $n$ divise $2^{2^n+1} + 1$ mais pas $2^n + 1$.**

Pour $m = 2$ et $m = 3$, on obtient $n = 3 \times 19 = 57$ et $n = 9 \times 87\,211 = 784\,899$ ($87\,211$ est premier).

## Going further

1. Pour $n = 57$, calcule le reste de $2^{57} + 1$ dans la division par $19$. *Indication : $2^9 \equiv -1 \pmod{19}$.*
2. Montre que si $n$ divise $2^n + 1$, alors $n$ divise aussi $2^{2^n + 1} + 1$. C'est pour cela que l'énoncé demande des $n$ qui ne divisent pas $2^n + 1$.
