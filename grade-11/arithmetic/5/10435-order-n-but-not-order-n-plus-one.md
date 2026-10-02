---
id: "10435"
title: "Des entiers d'ordre n mais pas d'ordre n + 1"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [somme-des-chiffres, iteration, fonction-croissante, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf (la solution ci-dessous suit l'« autre solution, un peu plus courte » du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Pour un entier naturel $k$, on note $S(k)$ la somme de ses chiffres en base dix. Par exemple, $S(2016) = 2 + 0 + 1 + 6 = 9$.

On dit qu'un entier naturel $a$ est *d'ordre $n$* s'il existe des entiers naturels $a_0, a_1, \ldots, a_n$ tels que $a_n = a$ et

$$a_{i+1} = a_i - S(a_i) \qquad \text{pour tout } i = 0, 1, \ldots, n - 1 .$$

Montrer que, pour tout entier $n \geqslant 1$, il existe un entier naturel qui est d'ordre $n$ mais pas d'ordre $n + 1$.

## Hints

1. Pose $F(k) = k - S(k)$. Compare $F(k)$ et $F(k + 1)$, selon que le dernier chiffre de $k$ est un $9$ ou non.
2. Déduis-en que $F$ est croissante (au sens large) et qu'un entier a au plus $10$ antécédents par $F$. Que peut-on dire de la fonction obtenue en appliquant $n$ fois $F$ ?
3. Calcule $F(10^\ell)$ et $F(10^\ell - 1)$. Montre qu'aucune valeur de $F$ n'est strictement comprise entre ces deux nombres.
4. Prends un entier $A$ un peu plus petit que $10^\ell - 1$, et applique-lui $n$ fois la fonction $F$. Montre que le résultat convient quand $\ell$ est assez grand.

## Solution

Posons $F(k) = k - S(k)$ pour tout entier naturel $k$. Comme $S(k) \leqslant k$, on a $F(k) \geqslant 0$. Notons $G$ la fonction obtenue en appliquant $n$ fois $F$ :

$$G(k) = F(F(\cdots F(k) \cdots)), \qquad \text{avec } n \text{ fois la lettre } F .$$

Dire qu'un entier $a$ est d'ordre $n$, c'est dire qu'il existe un entier naturel $a_0$ tel que $a = G(a_0)$ : il suffit de prendre $a_1 = F(a_0)$, $a_2 = F(a_1)$, et ainsi de suite. De même, $a$ est d'ordre $n + 1$ si et seulement s'il existe un entier naturel $y$ tel que $a = G(F(y))$.

**Étape 1 : comparer $F(k)$ et $F(k + 1)$.**

- Si le dernier chiffre de $k$ n'est pas un $9$, on passe de $k$ à $k + 1$ en augmentant ce dernier chiffre de $1$, sans toucher aux autres. Donc $S(k + 1) = S(k) + 1$, et $F(k + 1) = F(k)$.
- Si $k$ se termine par exactement $j \geqslant 1$ chiffres $9$, on passe de $k$ à $k + 1$ en remplaçant ces $j$ chiffres $9$ par des $0$ et en augmentant de $1$ le chiffre juste avant (éventuellement un $0$ qu'on écrit devant). Donc $S(k + 1) = S(k) - 9j + 1$, et $F(k + 1) = F(k) + 9j > F(k)$.

Dans tous les cas $F(k) \leqslant F(k + 1)$, donc $F$ est croissante au sens large : si $k \leqslant k'$, alors $F(k) \leqslant F(k')$.

**Étape 2 : au plus $10$ antécédents.** Soient $k < k'$ tels que $F(k) = F(k')$. Comme $F$ est croissante, $F(k) = F(k + 1) = \cdots = F(k')$. D'après l'étape 1, aucun des entiers $k, k + 1, \ldots, k' - 1$ ne se termine par $9$. Ils sont donc tous dans le même paquet de dix entiers $\{10q, 10q + 1, \ldots, 10q + 9\}$, et $k'$ aussi. Ainsi un entier a au plus $10$ antécédents par $F$.

**Étape 3 : la fonction $G$.** La fonction $G$ est croissante au sens large, comme composée de fonctions croissantes. De plus, un entier $v$ a au plus $10^n$ antécédents par $G$. Montrons-le par récurrence sur le nombre $m$ de fois où l'on applique $F$. Pour $m = 1$, c'est l'étape 2. Si c'est vrai pour $m$, un antécédent de $v$ par « $F$ appliquée $m + 1$ fois » est un antécédent, par « $F$ appliquée $m$ fois », d'un antécédent $w$ de $v$ par $F$. Il y a au plus $10$ choix de $w$, et pour chacun au plus $10^m$ antécédents, donc au plus $10^{m+1}$ en tout.

On en déduit que, pour tout entier naturel $k$,

$$G(k + 10^n) > G(k) . \qquad (1)$$

En effet $G(k) \leqslant G(k + 10^n)$ car $G$ est croissante. S'il y avait égalité, on aurait $G(k) = G(k + 1) = \cdots = G(k + 10^n)$, et la valeur $G(k)$ aurait les $10^n + 1$ antécédents $k, k + 1, \ldots, k + 10^n$, ce qui est impossible.

Par croissance de $G$, l'inégalité $(1)$ entraîne aussi : si $k' \geqslant k + 10^n$, alors $G(k') \geqslant G(k + 10^n) > G(k)$.

**Étape 4 : un trou dans les valeurs de $F$.** Soit $\ell \geqslant 1$ un entier. Le nombre $10^\ell$ s'écrit avec un $1$ suivi de $\ell$ zéros, donc $F(10^\ell) = 10^\ell - 1$. Posons

$$B = 10^\ell - 1, \qquad C = F(B) .$$

Le nombre $B$ s'écrit avec $\ell$ chiffres $9$, donc $S(B) = 9\ell$ et $C = B - 9\ell$. Par croissance de $F$ :

- si $y \geqslant 10^\ell$, alors $F(y) \geqslant F(10^\ell) = B$ ;
- si $y \leqslant 10^\ell - 1 = B$, alors $F(y) \leqslant F(B) = C$.

Ainsi **aucune valeur de $F$ n'est strictement comprise entre $C$ et $B$.**

**Étape 5 : le choix de l'entier.** Choisissons $\ell$ tel que $9\ell \geqslant 2 \times 10^n$, par exemple $\ell = 10^n$, et posons

$$A = B - 10^n, \qquad X = G(A) .$$

On a $A - C = 9\ell - 10^n \geqslant 10^n$, donc $A \geqslant C + 10^n$, et en particulier $A$ est un entier naturel. Le nombre $X$ est d'ordre $n$, puisque $X = G(A)$. D'après l'étape 3 :

- $B = A + 10^n$, donc $G(B) > G(A) = X$ ;
- $A \geqslant C + 10^n$, donc $X = G(A) > G(C)$.

Ainsi

$$G(C) < X < G(B) . \qquad (2)$$

**Étape 6 : $X$ n'est pas d'ordre $n + 1$.** Supposons le contraire : il existe un entier naturel $y$ tel que $X = G(F(y))$. Posons $z = F(y)$.

- Si $z \leqslant C$, alors $G(z) \leqslant G(C) < X$ par croissance de $G$ et par $(2)$.
- Si $z \geqslant B$, alors $G(z) \geqslant G(B) > X$.

Dans les deux cas $G(z) \neq X$. Donc $C < z < B$. Mais $z = F(y)$ est une valeur de $F$, et l'étape 4 dit qu'aucune valeur de $F$ n'est dans cet intervalle. C'est une contradiction.

**Conclusion.** L'entier $X = G(10^\ell - 1 - 10^n)$, avec $\ell = 10^n$, est d'ordre $n$ mais pas d'ordre $n + 1$.

## Going further

1. Pour $n = 1$, la démonstration marche aussi avec $\ell = 3$. Calculer alors $B$, $C$, $A$ et $X$, et vérifier sur cet exemple l'encadrement $(2)$.
2. Montrer qu'un entier d'ordre $n + 1$ est toujours d'ordre $n$.
3. Montrer que l'entier $1$ n'est d'ordre $n$ pour aucun $n \geqslant 1$. Pourquoi l'énoncé exige-t-il que l'entier cherché soit d'ordre $n$ ?
