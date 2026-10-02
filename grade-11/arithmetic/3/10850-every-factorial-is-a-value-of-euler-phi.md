---
id: "10850"
title: "Toute factorielle est une valeur de φ"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [indicatrice-d-euler, factorielle, nombres-premiers, decomposition-en-facteurs-premiers, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Communs, exercice 5 ; corrigé 2018-12_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Pour un entier $m \geqslant 2$ dont les diviseurs premiers (tous différents) sont $p_1, p_2, \ldots, p_k$, on pose
$$\varphi(m) = m \left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right) \cdots \left(1 - \frac{1}{p_k}\right),$$
et on pose aussi $\varphi(1) = 1$. Par exemple, les diviseurs premiers de $12$ sont $2$ et $3$, donc
$$\varphi(12) = 12 \times \left(1 - \frac{1}{2}\right) \times \left(1 - \frac{1}{3}\right) = 12 \times \frac{1}{2} \times \frac{2}{3} = 4 .$$

On rappelle que $n! = 1 \times 2 \times \cdots \times n$, et que $0! = 1$.

Soit $n \geqslant 0$ un entier. Montrer qu'il existe un entier $m \geqslant 1$ tel que $\varphi(m) = n!$.

## Hints

1. Cherche un $m$ tel que $\varphi(m) = 3! = 6$, puis un $m$ tel que $\varphi(m) = 4! = 24$.
2. Si les diviseurs premiers de $m$ sont exactement les nombres premiers $p \leqslant n$, que vaut $\varphi(m)$ ? Écris-le sous la forme $m \times (\text{une fraction})$.
3. Cela donne une formule pour $m$. Pour montrer que c'est un entier, remarque que les nombres $p - 1$, pour $p$ premier au plus égal à $n$, sont tous différents et compris entre $1$ et $n - 1$.

## Solution

**Les petits cas.** Si $n = 0$ ou $n = 1$, alors $n! = 1 = \varphi(1)$ : on prend $m = 1$.

Dans la suite, $n \geqslant 2$. Notons $q_1, q_2, \ldots, q_r$ les nombres premiers inférieurs ou égaux à $n$ (il y en a au moins un, le nombre $2$), et
$$P = q_1 \times q_2 \times \cdots \times q_r, \qquad Q = (q_1 - 1) \times (q_2 - 1) \times \cdots \times (q_r - 1) .$$

### L'idée

Si les diviseurs premiers de $m$ sont **exactement** $q_1, \ldots, q_r$, alors
$$\varphi(m) = m \times \frac{q_1 - 1}{q_1} \times \cdots \times \frac{q_r - 1}{q_r} = m \times \frac{Q}{P} .$$
Pour obtenir $\varphi(m) = n!$, on a donc envie de prendre
$$m = \frac{n! \times P}{Q} .$$
Il faut vérifier deux choses : que ce nombre est un entier, et que ses diviseurs premiers sont bien exactement $q_1, \ldots, q_r$.

### Étape 1 : $m$ est un entier

Les nombres $q_1 - 1, q_2 - 1, \ldots, q_r - 1$ sont **tous différents** (car les $q_i$ le sont) et compris entre $1$ et $n - 1$ (car $2 \leqslant q_i \leqslant n$). Ce sont donc certains des facteurs du produit $(n-1)! = 1 \times 2 \times \cdots \times (n-1)$. Leur produit $Q$ divise donc $(n-1)!$ : le nombre $A = (n-1)! / Q$ est un entier. Alors
$$m = \frac{n \times (n-1)! \times P}{Q} = n \times A \times P$$
est un entier.

### Étape 2 : les diviseurs premiers de $m$

- *Chaque $q_i$ divise $m$*, puisque $m = n \times A \times P$ et que $q_i$ divise $P$.
- *Un nombre premier $p$ qui divise $m$ est au plus égal à $n$.* En effet, $m \times Q = n! \times P$. Si $p$ divise $m$, il divise $n! \times P$, donc il divise l'un des facteurs $1, 2, \ldots, n$ ou l'un des $q_i$. Dans tous les cas $p \leqslant n$, donc $p$ est l'un des $q_i$.

Les diviseurs premiers de $m$ sont donc exactement $q_1, \ldots, q_r$.

### Conclusion

D'après l'idée de départ,
$$\varphi(m) = m \times \frac{Q}{P} = \frac{n! \times P}{Q} \times \frac{Q}{P} = n! .$$

**Pour tout $n \geqslant 0$, l'entier $m = n! \times P / Q$ (et $m = 1$ si $n \leqslant 1$) vérifie $\varphi(m) = n!$.**

*Exemples.* Pour $n = 3$ : $P = 2 \times 3 = 6$, $Q = 1 \times 2 = 2$, et $m = 6 \times 6 / 2 = 18$. On vérifie :
$$\varphi(18) = 18 \times \frac{1}{2} \times \frac{2}{3} = 6 .$$
 Pour $n = 5$ : $P = 30$, $Q = 1 \times 2 \times 4 = 8$, et $m = 120 \times 30 / 8 = 450$.

## Going further

1. Le nombre $m$ n'est pas le seul possible. Trouve tous les $m$ tels que $\varphi(m) = 6$. *Il y en a quatre.*
2. Montre que $\varphi(m)$ est pair dès que $m \geqslant 3$. En déduire qu'aucun nombre impair plus grand que $1$ n'est une valeur de $\varphi$.
3. On peut montrer que $\varphi(m)$ est aussi le nombre d'entiers compris entre $1$ et $m$ qui n'ont aucun diviseur premier commun avec $m$. Vérifie-le pour $m = 12$ et pour $m = 18$.
