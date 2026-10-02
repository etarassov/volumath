---
id: "10424"
title: "Un polynôme qui atteint 1, 2, …, 10 atteint tous les entiers"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [polynomes, divisibilite, coefficients-binomiaux, factorisation, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices communs, exercice 6 (Pays-Bas 2014) ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (qui travaille dans Z/10!Z ; ici la divisibilité par 10! vient directement des coefficients binomiaux, et la factorisation par X − c est démontrée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients entiers, de degré au plus $10$. On suppose que

- $|P(10) - P(0)| < 1000$ ;
- pour chaque $k \in \{1, 2, \ldots, 10\}$, il existe un entier $m$ tel que $P(m) = k$.

Montrer que, pour tout entier $k$, il existe un entier $m$ tel que $P(m) = k$.

## Hints

1. Si $u$ et $v$ sont deux entiers, montre que $u - v$ divise $P(u) - P(v)$. Pense à $u^j - v^j$.
2. Choisis des entiers $c_1, \ldots, c_{10}$ tels que $P(c_i) = i$. Que peut valoir $c_{i+1} - c_i$ ? Déduis-en que $c_1, \ldots, c_{10}$ sont dix entiers consécutifs, rangés dans l'ordre croissant ou décroissant.
3. Dans le cas croissant, compare $P$ au polynôme $X + 1 - c_1$, qui prend les mêmes valeurs aux points $c_1, \ldots, c_{10}$. Leur différence $R$ a dix racines entières : factorise-la.
4. Un produit de dix entiers consécutifs est toujours un multiple de $10! = 3\,628\,800$. Utilise-le pour comparer $R(10)$ et $R(0)$.

## Solution

On utilise trois petits résultats, démontrés d'abord.

**Lemme 1.** *Si $Q$ est un polynôme à coefficients entiers et $u$, $v$ deux entiers, alors $u - v$ divise $Q(u) - Q(v)$.* Écrivons $Q(X) = \sum_j q_j X^j$. Alors $Q(u) - Q(v) = \sum_j q_j (u^j - v^j)$, et pour $j \geqslant 1$,

$$u^j - v^j = (u - v)(u^{j-1} + u^{j-2} v + \cdots + v^{j-1}) .$$

Chaque terme est donc un multiple entier de $u - v$.

**Lemme 2.** *Si $Q$ est un polynôme à coefficients entiers, de degré $d \geqslant 1$, et si $c$ est un entier tel que $Q(c) = 0$, alors $Q(X) = (X - c)\,Q_1(X)$, où $Q_1$ est un polynôme à coefficients entiers de degré $d - 1$.* Il suffit d'écrire $Q(X) = Q(X) - Q(c) = \sum_j q_j (X^j - c^j)$ et d'utiliser la même factorisation de $X^j - c^j$ par $X - c$.

**Lemme 3.** *Le produit de dix entiers consécutifs est un multiple de $10!$.* Soient $k, k + 1, \ldots, k + 9$ ces entiers. Si l'un d'eux est nul, le produit est nul. S'ils sont tous strictement positifs, leur produit vaut

$$\frac{(k + 9)!}{(k - 1)!} = 10! \times \binom{k + 9}{10} ,$$

et le coefficient binomial est un entier (c'est un nombre de parties). S'ils sont tous strictement négatifs, leur produit est égal, au signe près, au produit des dix entiers consécutifs strictement positifs $-k - 9, \ldots, -k$, et on est ramené au cas précédent.

**Étape 1 : dix antécédents consécutifs.** Pour chaque $i \in \{1, \ldots, 10\}$, choisissons un entier $c_i$ tel que $P(c_i) = i$. Ces entiers sont deux à deux distincts, puisque leurs images le sont. Pour $i \leqslant 9$, le lemme 1 dit que $c_{i+1} - c_i$ divise $P(c_{i+1}) - P(c_i) = 1$, donc $c_{i+1} - c_i = 1$ ou $-1$. Deux pas successifs ne peuvent pas être de signes contraires, sinon on aurait $c_{i+2} = c_i$. Tous les pas sont donc égaux à $+1$, ou tous égaux à $-1$.

**Étape 2 : on peut supposer les $c_i$ croissants.** Si tous les pas valent $-1$, remplaçons $P(X)$ par $\tilde{P}(X) = P(10 - X)$. Ce polynôme est encore à coefficients entiers et de degré au plus $10$ ; il vérifie $|\tilde{P}(10) - \tilde{P}(0)| = |P(0) - P(10)| < 1000$ ; il prend la valeur $i$ en $10 - c_i$, et ces points augmentent de $1$ à chaque pas ; enfin, il prend exactement les mêmes valeurs entières que $P$ sur les entiers, car $m \mapsto 10 - m$ échange les entiers entre eux. Il suffit donc de traiter le cas où $c_i = c + i - 1$ pour tout $i$, avec $c = c_1$.

**Étape 3 : factoriser.** Posons $R(X) = P(X) - (X + 1 - c)$. C'est un polynôme à coefficients entiers, de degré au plus $10$, et pour tout $i$,

$$R(c_i) = i - (c + i - 1 + 1 - c) = 0 .$$

Si $R$ n'est pas nul, le lemme 2 donne $R(X) = (X - c_1) R_1(X)$. Pour $i \geqslant 2$, on a $0 = R(c_i) = (c_i - c_1) R_1(c_i)$ avec $c_i \neq c_1$, donc $R_1(c_i) = 0$. Le polynôme $R_1$ n'est pas nul et s'annule en $c_2$, donc il n'est pas constant, et on peut recommencer avec $R_1$ et $c_2$, puis avec $c_3$, et ainsi de suite. À chaque étape, le degré baisse de $1$. Après dix étapes, il reste un polynôme de degré $\deg R - 10 \leqslant 0$, c'est-à-dire une constante entière $A$. Donc

$$R(X) = A\,S(X), \qquad \text{où} \qquad S(X) = (X - c)(X - c - 1) \cdots (X - c - 9) .$$

Cette écriture reste vraie avec $A = 0$ si $R$ est nul.

**Étape 4 : $A = 0$.** Supposons $A \neq 0$. Pour tout entier $m$, $S(m)$ est un produit de dix entiers consécutifs, donc un multiple de $10!$ d'après le lemme 3. Ainsi $R(10) - R(0) = A\,(S(10) - S(0))$ est un multiple de $10!$. Or

$$|R(10) - R(0)| = |P(10) - P(0) - 10| \leqslant |P(10) - P(0)| + 10 < 1010 < 10! .$$

Le seul multiple de $10!$ de valeur absolue strictement inférieure à $10!$ est $0$. Donc $R(10) = R(0)$, et comme $A \neq 0$, $S(10) = S(0)$. Montrons que c'est impossible. Les racines de $S$ sont les dix entiers consécutifs $c, c + 1, \ldots, c + 9$.

- *Si $c \geqslant 10$.* Alors $S(m) = (c - m)(c + 1 - m) \cdots (c + 9 - m)$, car le produit a dix facteurs et les signes se compensent. Pour chaque $j$, on a $0 \leqslant c + j - 10 < c + j$. Le produit des nombres positifs $c + j - 10$ est donc strictement plus petit que celui des nombres strictement positifs $c + j$ : $S(10) < S(0)$.
- *Si $c + 9 \leqslant 0$.* De même, pour chaque $j$, on a $0 \leqslant -c - j < 10 - c - j$, donc $S(0) < S(10)$.
- *Sinon*, $c \leqslant 9$ et $c + 9 \geqslant 1$. Si $c \leqslant 0$, alors $c \leqslant 0 \leqslant c + 9$, donc $0$ est une racine de $S$. Si $c \geqslant 1$, alors $c \leqslant 10 \leqslant c + 9$, donc $10$ est une racine de $S$. Dans les deux cas, l'égalité $S(10) = S(0)$ montre que $0$ et $10$ sont tous deux racines de $S$. Mais deux racines de $S$ diffèrent d'au plus $9$. C'est impossible.

Donc $A = 0$.

**Conclusion.** On a $R = 0$, c'est-à-dire $P(X) = X + 1 - c$. Pour tout entier $k$, l'entier $m = k + c - 1$ vérifie $P(m) = k$. (Dans le cas décroissant de l'étape 2, on obtient de même $P(X) = 1 + c_1 - X$, qui atteint aussi tous les entiers.)

## Going further

1. Montrer que l'hypothèse $|P(10) - P(0)| < 1000$ ne peut pas être supprimée, en étudiant le polynôme $P(X) = X + (X - 1)(X - 2) \cdots (X - 10)$. Prend-il la valeur $0$ ?
2. La démonstration montre en fait plus que ce que demande l'énoncé. Quels sont exactement les polynômes $P$ qui vérifient les deux hypothèses ?
