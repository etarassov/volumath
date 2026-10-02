---
id: "11638"
title: "Combien d'éléments dans un ensemble puissant ?"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [puissances reelles, exponentielle, logarithme, monotonie, ensembles, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (le corrigé écrit aₙ₋ᵢ = 2^(−2^i), il faut lire 2^(−2^(i−1)), puisque aₙ₋₁ = 1/2 ; la conclusion n'en est pas changée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Pour un réel $x > 0$ et un réel $y$, on rappelle que $x^y = \mathrm{e}^{y \ln x}$.

Un ensemble $E$ fini et non vide de réels strictement positifs est dit **puissant** lorsque, pour tous $a, b \in E$ distincts, l'un au moins des deux nombres $a^b$ et $b^a$ appartient aussi à $E$.

Déterminer le nombre maximal d'éléments que peut contenir un ensemble puissant.

## Hints

1. Cherche un ensemble puissant à quatre éléments formé de $1$ et de puissances de $1/2$.
2. Montre qu'un ensemble puissant ne peut pas contenir à la fois un nombre plus petit que $1$ et un nombre plus grand que $1$. Regarde le plus petit élément, et le plus petit des éléments plus grands que $1$.
3. Ajouter $1$ à un ensemble puissant donne encore un ensemble puissant. Tu peux donc supposer que $1$ est dans l'ensemble, et que tous les éléments sont du même côté de $1$.
4. Si les éléments sont $a_1 < a_2 < \cdots < a_n = 1$, regarde les couples formés avec $a_{n-1}$. Lequel des deux nombres $a_i^{a_{n-1}}$ et $a_{n-1}^{a_i}$ peut être dans l'ensemble ? Combien y en a-t-il, et entre quelles bornes sont-ils ?

## Solution

**Rappel.** Comme $x^y = \mathrm{e}^{y \ln x}$ et que la fonction exponentielle est strictement croissante :

- **(P1)** Si $x > 1$, alors $\ln x > 0$ et la fonction $y \mapsto x^y$ est strictement croissante. Si $0 < x < 1$, alors $\ln x < 0$ et cette fonction est strictement décroissante. Dans les deux cas, $x^y = x^z$ entraîne $y = z$.
- **(P2)** Si $y > 0$, la fonction $x \mapsto x^y$ est strictement croissante sur $]0\,;\,+\infty[$, car $\ln$ est strictement croissante.
- Enfin $1^y = 1$, $x^0 = 1$, $x^1 = x$ et $(x^y)^z = x^{yz}$.

**Étape 1 : un ensemble puissant à quatre éléments.** Prenons $E = \{1, 1/2, 1/4, 1/16\}$. Un couple qui contient $1$ convient, car $1^b = 1 \in E$. Pour les trois autres couples :

$$\left(\frac{1}{4}\right)^{1/2} = \frac{1}{2}, \qquad \left(\frac{1}{16}\right)^{1/2} = \frac{1}{4}, \qquad \left(\frac{1}{16}\right)^{1/4} = \frac{1}{2}.$$

Cet ensemble est donc puissant. Il reste à montrer qu'**aucun ensemble puissant n'a cinq éléments ou plus.**

**Étape 2 : pas d'éléments des deux côtés de $1$.** Soit $F$ un ensemble puissant. Supposons qu'il contienne un élément plus petit que $1$ et un élément plus grand que $1$. Notons $a$ le plus petit élément de $F$, et $b$ le plus petit des éléments de $F$ plus grands que $1$. Alors $a < 1 < b$.

- Comme $0 < a < 1$ et $b > 1$, (P1) donne $a^b < a^1 = a$. Le nombre $a^b$ est plus petit que le plus petit élément de $F$, donc il n'est pas dans $F$.
- Comme $b > 1$ et $0 < a < 1$, (P1) donne $1 = b^0 < b^a < b^1 = b$. Le nombre $b^a$ est plus grand que $1$ et plus petit que $b$, donc il n'est pas dans $F$, par le choix de $b$.

C'est impossible pour un ensemble puissant. **Les éléments d'un ensemble puissant sont donc tous $\geqslant 1$, ou tous $\leqslant 1$.**

**Étape 3 : on peut ajouter $1$.** Si $E$ est puissant, $E \cup \{1\}$ l'est aussi : les couples sans $1$ conviennent comme avant, et pour un couple $(1, b)$, le nombre $1^b = 1$ est dans $E \cup \{1\}$.

Raisonnons par l'absurde et supposons qu'un ensemble puissant $E$ ait au moins cinq éléments. Alors $F = E \cup \{1\}$ est puissant, contient $1$, et a $n \geqslant 5$ éléments. D'après l'étape 2, il y a deux cas.

**Étape 4 : premier cas, tous les éléments sont $\geqslant 1$.** On écrit $F = \{a_1, \ldots, a_n\}$ avec $1 = a_1 < a_2 < \cdots < a_n$.

Pour $2 \leqslant i \leqslant n - 1$, regardons le couple $(a_i, a_n)$. Comme $a_n > 1$ et $a_i > 1$, (P1) donne $a_n^{a_i} > a_n^1 = a_n$ : ce nombre dépasse le plus grand élément de $F$, il n'est pas dans $F$. Donc $a_i^{a_n}$ est dans $F$.

D'après (P2), ces $n - 2$ nombres sont rangés ainsi :

$$a_2^{a_n} < a_3^{a_n} < \cdots < a_{n-1}^{a_n},$$

et d'après (P1), le premier vérifie $a_2^{a_n} > a_2^1 = a_2$. Ce sont donc $n - 2$ éléments distincts de $F$, tous plus grands que $a_2$. Or $F$ a exactement $n - 2$ éléments plus grands que $a_2$, à savoir $a_3, \ldots, a_n$. En les rangeant dans l'ordre, on obtient $a_{i+1} = a_i^{a_n}$ pour $2 \leqslant i \leqslant n - 1$. En particulier

$$a_3 = a_2^{a_n} \qquad \text{et} \qquad a_4 = a_3^{a_n}.$$

Regardons maintenant le couple $(a_2, a_3)$. Comme $1 < a_3 < a_n$, (P1) donne $a_2 < a_2^{a_3} < a_2^{a_n} = a_3$. Comme $1 < a_2 < a_n$, (P1) donne $a_3 < a_3^{a_2} < a_3^{a_n} = a_4$. Chacun des deux nombres est strictement entre deux éléments consécutifs de $F$, donc aucun n'est dans $F$. C'est une contradiction.

**Étape 5 : second cas, tous les éléments sont $\leqslant 1$.** On écrit $F = \{a_1, \ldots, a_n\}$ avec $a_1 < a_2 < \cdots < a_n = 1$. Tous les $a_i$ avec $i \leqslant n - 1$ sont dans $]0\,;\,1[$. On note $r = a_{n-1}$ et $s = a_{n-2}$, de sorte que $s < r < 1$.

*(a) Les couples formés avec $r$.* Pour $1 \leqslant i \leqslant n - 2$, on a $0 < a_i < 1$ et $0 < r < 1$. D'après (P1), la fonction $y \mapsto r^y$ est décroissante, donc $r = r^1 < r^{a_i} < r^0 = 1$. Le nombre $r^{a_i}$ est strictement entre $a_{n-1}$ et $a_n$, il n'est pas dans $F$. Donc $a_i^r$ est dans $F$.

D'après (P2), ces $n - 2$ nombres sont rangés ainsi : $a_1^r < a_2^r < \cdots < a_{n-2}^r$. D'après (P1), ils sont tous dans $]a_1\,;\,1[$, car $a_1^r > a_1^1 = a_1$ et $a_i^r < a_i^0 = 1$. Ce sont donc $n - 2$ éléments distincts de $F$ strictement entre $a_1$ et $1$. Il y en a exactement $n - 2$, à savoir $a_2, \ldots, a_{n-1}$. Donc

$$a_{i+1} = a_i^{\,r} \quad \text{pour } 1 \leqslant i \leqslant n - 2. \qquad (A)$$

En particulier, avec $i = n - 2$, on obtient $r = s^r$.

*(b) Les couples formés avec $s$.* Pour $1 \leqslant i \leqslant n - 3$, on a $a_i < r$. Comme $y \mapsto s^y$ est décroissante, $s^{a_i} > s^r = r$, et $s^{a_i} < s^0 = 1$. Le nombre $s^{a_i}$ est strictement entre $a_{n-1}$ et $a_n$, il n'est pas dans $F$. Donc $a_i^s$ est dans $F$.

Ces $n - 3$ nombres sont rangés ainsi : $a_1^s < a_2^s < \cdots < a_{n-3}^s$. Ils sont plus petits que $1$, et le premier vérifie $a_1^s > a_1^r = a_2$, car $s < r$ et $y \mapsto a_1^y$ est décroissante. Ce sont donc $n - 3$ éléments distincts de $F$ strictement entre $a_2$ et $1$. Il y en a exactement $n - 3$, à savoir $a_3, \ldots, a_{n-1}$. Donc

$$a_{i+2} = a_i^{\,s} \quad \text{pour } 1 \leqslant i \leqslant n - 3. \qquad (B)$$

*(c) Les valeurs de $r$ et $s$.* D'après $(A)$ appliquée deux fois, $a_3 = a_2^r = (a_1^r)^r = a_1^{r^2}$. D'après $(B)$ avec $i = 1$, $a_3 = a_1^s$. Donc $a_1^{r^2} = a_1^s$, et (P1) donne $s = r^2$. Alors

$$r = s^r = \left(r^2\right)^r = r^{2r},$$

et (P1), appliquée à la base $r$, donne $1 = 2r$. Donc $r = 1/2$ et $s = 1/4$.

*(d) La contradiction.* D'après $(A)$, $a_{i+1} = a_i^{1/2}$, c'est-à-dire $a_i = a_{i+1}^2$. On en tire $a_{n-3} = s^2 = 1/16$ puis $a_{n-4} = 1/256$. Ce terme existe car $n \geqslant 5$. Regardons le couple $(a_{n-4}, a_{n-3})$ :

$$\left(\frac{1}{256}\right)^{1/16} = \left(2^{-8}\right)^{1/16} = 2^{-1/2}, \qquad \left(\frac{1}{16}\right)^{1/256} = \left(2^{-4}\right)^{1/256} = 2^{-1/64}.$$

Comme $y \mapsto 2^y$ est strictement croissante et que $-1 < -1/2 < 0$ et $-1 < -1/64 < 0$, ces deux nombres sont strictement entre $2^{-1} = a_{n-1}$ et $2^0 = a_n$. Aucun des deux n'est dans $F$ : c'est une contradiction.

Dans les deux cas, on aboutit à une contradiction. Aucun ensemble puissant n'a donc cinq éléments ou plus.

**Conclusion : un ensemble puissant contient au plus $4$ éléments, et $\{1, 1/2, 1/4, 1/16\}$ en contient $4$. Le nombre maximal cherché est $4$.**

## Going further

Le raisonnement donne un peu plus.

- L'étape 4 n'utilise que quatre éléments. Un ensemble puissant qui contient un nombre plus grand que $1$ a donc au plus $3$ éléments, par exemple $\{1, \sqrt{2}, 2\}$, puisque $\sqrt{2}^{\,2} = 2$.
- L'ensemble $\{1, 1/2, 1/4, 1/16\}$ est le **seul** ensemble puissant à quatre éléments. En effet, un tel ensemble contient $1$, sinon on pourrait l'ajouter et obtenir cinq éléments. Ses éléments sont tous $\leqslant 1$, d'après le point précédent. Et les parties (a) à (c) de l'étape 5 fonctionnent encore avec $n = 4$ : elles donnent $a_3 = 1/2$, $a_2 = 1/4$ et $a_1 = 1/16$.
