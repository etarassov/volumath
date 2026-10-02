---
id: "12225"
title: "Les polynômes f tels que f(n) divise 3ⁿ − 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [polynome, divisibilite, nombres-premiers, petit-theoreme-de-fermat, congruences, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 1"
  reference: "2017-10_ofm-2014-2015-test-mai-1.pdf, test final du 12 mai 2015, exercice 1 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-1.pdf"
---

## Statement

Trouver tous les polynômes $f$ à coefficients entiers tels que, pour tout entier $n \geqslant 1$, le nombre $f(n)$ divise $3^n - 1$.

## Hints

1. Commence par les polynômes constants : lesquels conviennent ?
2. Pour deux entiers $a$ et $b$, montre que $a - b$ divise $f(a) - f(b)$.
3. Soit $p$ un nombre premier qui divise $f(n)$. Montre que $p$ divise aussi $f(n + p)$, puis utilise le petit théorème de Fermat pour trouver $p$.
4. Quand $n$ est impair, quelle est la plus grande puissance de $2$ qui divise $3^n - 1$ ? Pense ensuite à la limite de $f$ en $+\infty$.

## Solution

On utilise trois résultats.

- **(R1)** Si $f$ est un polynôme à coefficients entiers et si $a$ et $b$ sont des entiers, alors $a - b$ divise $f(a) - f(b)$. En effet, si $f(x) = c_0 + c_1 x + \cdots + c_d x^d$, alors $f(a) - f(b) = c_1(a - b) + c_2(a^2 - b^2) + \cdots + c_d(a^d - b^d)$, et chaque $a^k - b^k = (a - b)(a^{k-1} + a^{k-2} b + \cdots + b^{k-1})$ est un multiple de $a - b$.
- **(R2)** Le petit théorème de Fermat : si $p$ est un nombre premier, alors $3^p \equiv 3 \pmod p$.
- **(R3)** Un polynôme $f$ non constant vérifie $|f(x)| \to +\infty$ quand $x \to +\infty$.

**Étape 1. Les seuls diviseurs premiers possibles de $f(n)$.**

Pour tout $n \geqslant 1$, on a $3^n - 1 \neq 0$, donc $f(n) \neq 0$, puisque $0$ ne divise que $0$.

Fixons $n \geqslant 1$ et supposons qu'un nombre premier $p$ divise $f(n)$. D'après (R1), $(n + p) - n = p$ divise $f(n + p) - f(n)$. Comme $p$ divise $f(n)$, il divise aussi $f(n + p)$. Or $f(n)$ divise $3^n - 1$ et $f(n + p)$ divise $3^{n+p} - 1$. Donc

$$3^n \equiv 1 \pmod p \qquad \text{et} \qquad 3^{n+p} \equiv 1 \pmod p.$$

Mais $3^{n+p} = 3^n \times 3^p \equiv 1 \times 3^p \pmod p$, donc $3^p \equiv 1 \pmod p$. D'après (R2), $3^p \equiv 3 \pmod p$. Ainsi $3 \equiv 1 \pmod p$ : $p$ divise $2$, donc $p = 2$.

Le seul nombre premier qui peut diviser $f(n)$ est donc $2$ : pour tout $n \geqslant 1$, $|f(n)|$ est une puissance de $2$ (éventuellement $2^0 = 1$).

**Étape 2. Les valeurs de $f$ aux entiers impairs.**

Soit $n$ impair. Comme $3 \equiv -1 \pmod 4$, on a $3^n \equiv (-1)^n = -1 \equiv 3 \pmod 4$, donc $3^n - 1 \equiv 2 \pmod 4$. Le nombre $3^n - 1$ est pair, mais il n'est pas divisible par $4$.

Or $|f(n)|$ est une puissance de $2$ qui divise $3^n - 1$. Elle ne peut donc pas être divisible par $4$ : $|f(n)| = 1$ ou $|f(n)| = 2$. Ainsi

$$|f(n)| \leqslant 2 \qquad \text{pour tout entier impair } n \geqslant 1.$$

**Étape 3. Le polynôme $f$ est constant.**

Si $f$ n'était pas constant, on aurait $|f(x)| \to +\infty$ quand $x \to +\infty$ d'après (R3). On trouverait alors un entier impair $n$ assez grand avec $|f(n)| > 2$, ce qui contredit l'étape 2. Donc $f$ est constant, égal à un entier $c$, et l'étape 2 donne $c \in \{-2, -1, 1, 2\}$.

**Étape 4. Vérification.**

Pour tout $n \geqslant 1$, le nombre $3^n$ est impair, donc $3^n - 1$ est pair. Il est donc divisible par $1$, $-1$, $2$ et $-2$. Les quatre polynômes constants trouvés conviennent.

**Réponse : les polynômes cherchés sont les quatre polynômes constants $f = 1$, $f = -1$, $f = 2$ et $f = -2$.**

## Going further

L'idée de l'étape 1 sert souvent : si un nombre premier $p$ divise $f(n)$, il divise aussi $f(n + p)$, $f(n + 2p)$, et ainsi de suite. On obtient ainsi une infinité d'entiers $m$ pour lesquels $p$ divise $f(m)$.

Que devient la réponse si l'on remplace $3^n - 1$ par $5^n - 1$ ? La même méthode montre que $p$ divise $5 - 1 = 4$, donc encore $p = 2$. Mais cette fois $5^n - 1$ est toujours divisible par $4$ : quels polynômes constants conviennent alors ?
