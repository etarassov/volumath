---
id: "12895"
title: "Deux nombres premiers et une tour de puissances divisible par qᵖ"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [nombres-premiers, congruences, petit-theoreme-de-fermat, puissances, divisibilite, recurrence, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test junior, exercice 3 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (même plan ; le théorème d'Euler et le lemme LTE du corrigé sont remplacés par un calcul de cubes modulo les puissances de 3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Déterminer tous les couples $(p, q)$ de nombres premiers tels que $p \neq q$ et tels que $q^p$ divise

$$p + p^q + p^{(q^p)}.$$

(Le dernier terme est $p$ élevé à la puissance $q^p$.)

## Hints

1. Commencez par une condition plus faible : $q$ divise le nombre. Que vaut $p^q$ modulo $q$ ? Et $p^{(q^p)}$ ?
2. Montrez que $q = 3$. Il reste à trouver les nombres premiers $p \neq 3$ tels que $3^p$ divise $p + p^3 + p^{(3^p)}$.
3. Soit $\varepsilon = 1$ ou $\varepsilon = -1$, et $k \geq 1$. Montrez que si $x \equiv \varepsilon \pmod{3^k}$, alors $x^3 \equiv \varepsilon \pmod{3^{k+1}}$. Écrivez $x = \varepsilon + 3^k m$ et développez.
4. Pour $p \geq 5$, comparez $p^3 + p + 1$ et $3^p$.

## Solution

### Rappel

**Petit théorème de Fermat.** Si $q$ est un nombre premier, alors pour tout entier $x$, on a $x^q \equiv x \pmod q$.

La réponse : **le seul couple est $(p, q) = (2, 3)$.**

### Étape 1 : on trouve q = 3

Soit $(p, q)$ un couple qui convient. Alors $q$ divise aussi $p + p^q + p^{(q^p)}$, puisque $q$ divise $q^p$.

D'après le petit théorème de Fermat, $p^q \equiv p \pmod q$.

Montrons par récurrence que $p^{(q^k)} \equiv p \pmod q$ pour tout entier $k \geq 0$. Pour $k = 0$, c'est $p^1 = p$. Si c'est vrai pour un entier $k$, alors en appliquant le petit théorème de Fermat à $x = p^{(q^k)}$,

$$p^{(q^{k+1})} = \left(p^{(q^k)}\right)^q \equiv p^{(q^k)} \equiv p \pmod q.$$

En particulier, pour $k = p$, on a $p^{(q^p)} \equiv p \pmod q$. Donc

$$0 \equiv p + p^q + p^{(q^p)} \equiv p + p + p = 3p \pmod q.$$

Le nombre premier $q$ divise $3p$, donc $q = 3$ ou $q = p$. Comme $q \neq p$, **on a $q = 3$**, et donc $p \neq 3$.

La condition devient : $3^p$ divise $p + p^3 + p^{(3^p)}$.

### Étape 2 : le cas p = 2

Pour $p = 2$, on a $3^2 = 9$ et $2 + 2^3 + 2^9 = 2 + 8 + 512 = 522 = 9 \times 58$. **Le couple $(2, 3)$ convient.**

Il reste le cas où $p$ est un nombre premier au moins égal à $5$. On va montrer qu'il n'y a alors aucune solution.

### Étape 3 : un calcul de cubes

Soit $\varepsilon$ égal à $1$ ou à $-1$, de sorte que $\varepsilon^2 = 1$ et $\varepsilon^3 = \varepsilon$.

**Lemme.** Soit $k \geq 1$ un entier. Si $x \equiv \varepsilon \pmod{3^k}$, alors $x^3 \equiv \varepsilon \pmod{3^{k+1}}$.

*Preuve.* On écrit $x = \varepsilon + 3^k m$ avec $m$ entier. Alors

$$x^3 = \varepsilon^3 + 3\varepsilon^2 \cdot 3^k m + 3\varepsilon \cdot 3^{2k} m^2 + 3^{3k} m^3 = \varepsilon + 3^{k+1} m + 3^{2k+1} \varepsilon m^2 + 3^{3k} m^3.$$

Comme $k \geq 1$, on a $2k + 1 \geq k + 1$ et $3k \geq k + 1$. Les trois derniers termes sont donc divisibles par $3^{k+1}$, et $x^3 \equiv \varepsilon \pmod{3^{k+1}}$.

### Étape 4 : la valeur de la tour modulo une puissance de 3

Soit $p \geq 5$ premier. Il n'est pas divisible par $3$, donc $p \equiv 1$ ou $p \equiv -1 \pmod 3$. On choisit $\varepsilon$ tel que $p \equiv \varepsilon \pmod 3$.

Montrons par récurrence que $p^{(3^j)} \equiv \varepsilon \pmod{3^{j+1}}$ pour tout entier $j \geq 0$.

- Pour $j = 0$, c'est $p \equiv \varepsilon \pmod 3$.
- Si c'est vrai pour un entier $j$, on applique le lemme à $x = p^{(3^j)}$ et $k = j + 1$ : le nombre $x^3 = p^{(3^{j+1})}$ est congru à $\varepsilon$ modulo $3^{j+2}$.

Pour $j = p$, on obtient $p^{(3^p)} \equiv \varepsilon \pmod{3^{p+1}}$, donc a fortiori

$$p^{(3^p)} \equiv \varepsilon \pmod{3^p}.$$

### Étape 5 : le nombre est trop petit

Si $3^p$ divise $p + p^3 + p^{(3^p)}$, alors d'après l'étape 4, $3^p$ divise l'entier $N = p^3 + p + \varepsilon$. Or

$$0 < p^3 + p - 1 \leq N \leq p^3 + p + 1.$$

Montrons que $n^3 + n + 1 < 3^n$ pour tout entier $n \geq 5$, par récurrence.

- Pour $n = 5$ : $125 + 5 + 1 = 131 < 243 = 3^5$.
- Si $n^3 + n + 1 < 3^n$ pour un entier $n \geq 5$, alors $3^{n+1} > 3n^3 + 3n + 3$. Après développement, $3n^3 + 3n + 3 > (n+1)^3 + (n+1) + 1$ revient à $2n^3 > 3n^2 + n$. C'est vrai, car $2n^3 \geq 10n^2 = 3n^2 + 7n^2 > 3n^2 + n$. Donc $3^{n+1} > (n+1)^3 + (n+1) + 1$.

Ainsi $0 < N < 3^p$, et $3^p$ ne peut pas diviser $N$. Il n'y a aucune solution avec $p \geq 5$.

### Conclusion

**Le seul couple $(p, q)$ de nombres premiers distincts tel que $q^p$ divise $p + p^q + p^{(q^p)}$ est $(2, 3)$.**

## Going further

1. Soit $x$ un entier tel que $x - 1$ est divisible par $3$ mais pas par $9$. Montrez que, pour tout entier $j \geq 0$, le nombre $x^{(3^j)} - 1$ est divisible par $3^{j+1}$ mais pas par $3^{j+2}$.
2. Que se passe-t-il si l'on autorise $p = q$ ? Montrez qu'aucun nombre premier $p$ ne vérifie : $p^p$ divise $p + p^p + p^{(p^p)}$. (Regardez modulo $p^2$.)
