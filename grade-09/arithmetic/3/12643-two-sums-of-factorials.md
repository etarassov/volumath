---
id: "12643"
title: "Si a! + b! = c! + d!, alors ab = cd"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [factorielle, divisibilite, inegalite, ordonner]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 1 (junior) ; corrigé 2022-03_Corrige-Web-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n!$ (lire « factorielle $n$ ») le produit
$$n! = 1 \times 2 \times 3 \times \cdots \times n.$$
Par exemple $1! = 1$, $3! = 6$ et $5! = 120$.

Soit $a$, $b$, $c$ et $d$ des entiers naturels non nuls. On suppose que
$$a! + b! = c! + d!.$$
Démontrer que $ab = cd$.

## Hints

1. On peut échanger $a$ et $b$, échanger $c$ et $d$, ou échanger les deux paires sans rien changer au problème. Tu peux donc supposer que $a \leqslant b$, que $c \leqslant d$, et que $a$ est le plus petit des quatre nombres.
2. Compare $b!$ et $d!$. Qu'en déduis-tu pour $b$ et $d$ ?
3. Écris $a! = c! + d! - b!$. Quel nombre divise à la fois $c!$, $d!$ et $b!$ ?

## Solution

**Deux propriétés des factorielles.** Pour tout entier $n \geqslant 1$, on a $(n+1)! = (n+1) \times n!$.

- Comme $n + 1 \geqslant 2$, on a $(n+1)! > n!$ : les factorielles sont rangées dans le même ordre que les nombres. Si $u < v$, alors $u! < v!$. Par conséquent, si $u! \geqslant v!$, alors $u \geqslant v$, et si $u! = v!$, alors $u = v$.
- Si $u \leqslant v$, alors $v! = u! \times (u+1) \times \cdots \times v$, donc $u!$ divise $v!$.

**On range les nombres.** L'égalité ne change pas si l'on échange $a$ et $b$, ni si l'on échange $c$ et $d$. La conclusion $ab = cd$ ne change pas non plus. Ainsi, on peut supposer que $a \leqslant b$ et $c \leqslant d$. On peut aussi échanger la paire $(a, b)$ avec la paire $(c, d)$, et donc supposer de plus que $a \leqslant c$.

**On compare $b$ et $d$.** Comme $a \leqslant c$, on a $a! \leqslant c!$, donc
$$b! = c! + d! - a! \geqslant d!.$$
D'après la première propriété, $b \geqslant d$. On a donc
$$a \leqslant c \leqslant d \leqslant b.$$

**On compare $a$ et $c$.** On écrit
$$a! = c! + d! - b!.$$
Comme $c \leqslant d$ et $c \leqslant b$, la seconde propriété dit que $c!$ divise $d!$ et $b!$. Il divise aussi $c!$, donc il divise $c! + d! - b!$, c'est-à-dire $a!$.

Or $a!$ est un entier strictement positif. Un multiple strictement positif de $c!$ est au moins égal à $c!$, donc $a! \geqslant c!$, et $a \geqslant c$. Avec $a \leqslant c$, on obtient $a = c$.

**Conclusion.** Puisque $a = c$, l'égalité de départ devient $b! = d!$, donc $b = d$. Ainsi $a = c$ et $b = d$, et donc **$ab = cd$**.

## Going further

- On a démontré davantage que ce qui était demandé : les deux paires $\{a, b\}$ et $\{c, d\}$ sont les mêmes, à l'ordre près.
- L'hypothèse « non nuls » est indispensable. Avec la convention habituelle $0! = 1$, on a $0! + 2! = 1! + 2!$, mais $0 \times 2 = 0$ alors que $1 \times 2 = 2$. Où la preuve utilise-t-elle que les nombres sont au moins égaux à $1$ ?
- Le corrigé met en garde contre une erreur fréquente : on ne peut pas supposer dès le départ que $a \leqslant c \leqslant d \leqslant b$. On a seulement le droit de choisir l'ordre à l'intérieur de chaque paire et l'ordre des deux paires. L'inégalité $d \leqslant b$ est à démontrer.
