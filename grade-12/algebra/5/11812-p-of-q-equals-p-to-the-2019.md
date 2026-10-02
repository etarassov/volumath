---
id: "11812"
title: "P(Q(x)) = P(x)²⁰¹⁹ et des racines toutes réelles"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [polynomes, racines, degre, ordre de multiplicite, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 16 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soient $P$ et $Q$ deux fonctions polynômes à coefficients réels telles que
$$P(Q(x)) = P(x)^{2019} \quad \text{pour tout réel } x .$$
On suppose que $P$ n'est pas constant et que toutes ses racines sont réelles, c'est-à-dire que $P$ s'écrit
$$P(x) = c\,(x - x_1)^{a_1} (x - x_2)^{a_2} \cdots (x - x_k)^{a_k},$$
avec $c \neq 0$, des réels $x_1, \ldots, x_k$ deux à deux distincts et des entiers $a_1, \ldots, a_k \geqslant 1$.

Montrer que $k = 1$ : toutes les racines de $P$ sont égales.

## Hints

1. Compare les degrés des deux membres. Quel est le degré de $Q$ ?
2. Si $r$ est un réel tel que $Q(r) = x_i$, que vaut $P(r)$ ? Où se trouvent donc les racines réelles du polynôme $Q(x) - x_i$ ?
3. Un polynôme de degré impair a toujours au moins une racine réelle. Les polynômes $Q(x) - x_1, \ldots, Q(x) - x_k$ peuvent-ils avoir une racine commune ? Compte.
4. Compare l'ordre de chaque racine $x_j$ dans les deux membres de l'égalité.
5. Regarde le coefficient de $x^{2018}$ dans chaque $Q(x) - x_i$.

## Solution

Notons $n = a_1 + \cdots + a_k \geqslant 1$ le degré de $P$ et $E = \{x_1, \ldots, x_k\}$ l'ensemble de ses racines.

**Un outil : l'ordre d'une racine.** Rappelons que si $R$ est un polynôme et $R(a) = 0$, on peut écrire $R(x) = (x - a) R_1(x)$ avec $R_1$ polynôme de degré $\deg R - 1$. En recommençant tant que c'est possible, on écrit tout polynôme non nul $R$ sous la forme
$$R(x) = (x - a)^{\mu} S(x), \qquad S \text{ polynôme}, \quad S(a) \neq 0 .$$
L'entier $\mu \geqslant 0$ est unique : si l'on avait aussi $R(x) = (x - a)^{\nu} T(x)$ avec $T(a) \neq 0$ et, par exemple, $\mu < \nu$, alors pour tout $x \neq a$ on aurait $S(x) = (x - a)^{\nu - \mu} T(x)$, et en faisant tendre $x$ vers $a$ (les polynômes sont continus) on trouverait $S(a) = 0$, ce qui est faux. On appelle $\mu$ l'*ordre* de $a$ dans $R$ ($\mu = 0$ si $R(a) \neq 0$). Deux propriétés découlent aussitôt de cette écriture :

- l'ordre de $a$ dans un produit $R_1 R_2$ est la somme des ordres de $a$ dans $R_1$ et dans $R_2$ ;
- si $R$ est de degré $d$ et si $a$ est d'ordre $d$ dans $R$, alors $S$ est de degré $0$ et $R(x) = q\,(x - a)^d$, où $q$ est le coefficient dominant de $R$.

Par exemple, l'ordre de $x_j$ dans $P$ vaut $a_j$, et dans $P^{2019}$ il vaut $2019\,a_j$.

**Étape 1 : le degré de $Q$.** Si $Q$ était constant, $P(Q(x))$ le serait aussi, alors que $P(x)^{2019}$ est de degré $2019\,n \geqslant 1$. Donc $Q$ est de degré $m \geqslant 1$, de coefficient dominant $q$. Le terme de plus haut degré de $P(Q(x))$ est alors $c\,(q x^m)^n$, donc $P(Q(x))$ est de degré $mn$. En comparant avec $2019\,n$, on obtient $m = 2019$.

Pour $i = 1, \ldots, k$, posons $R_i(x) = Q(x) - x_i$. Chaque $R_i$ est de degré $2019$, de coefficient dominant $q$, et l'égalité de l'énoncé s'écrit
$$c\, R_1(x)^{a_1} R_2(x)^{a_2} \cdots R_k(x)^{a_k} = c^{2019} (x - x_1)^{2019 a_1} \cdots (x - x_k)^{2019 a_k} . \qquad (\star)$$

**Étape 2 : les racines réelles des $R_i$.**

- *Elles sont dans $E$.* Si $R_i(r) = 0$, alors $Q(r) = x_i$ et $P(r)^{2019} = P(Q(r)) = P(x_i) = 0$. Donc $P(r) = 0$ et $r \in E$.
- *Chaque $R_i$ en a au moins une.* $R_i$ est de degré impair : ses limites en $-\infty$ et en $+\infty$ sont infinies et de signes contraires. Comme $R_i$ est continue, le théorème des valeurs intermédiaires lui donne une racine réelle.
- *Deux $R_i$ distincts n'ont pas de racine commune.* Si $R_i(r) = R_j(r) = 0$, alors $x_i = Q(r) = x_j$, donc $i = j$.

Ainsi les $k$ polynômes $R_1, \ldots, R_k$ ont chacun au moins une racine dans $E$, qui n'a que $k$ éléments, et ils ne partagent aucune racine. Chacun a donc **exactement une** racine réelle, et ces racines sont deux à deux distinctes. Notons $x_{\sigma(i)}$ l'unique racine de $R_i$ : quand $i$ parcourt $1, \ldots, k$, l'indice $\sigma(i)$ parcourt aussi $1, \ldots, k$, chacun une fois.

**Étape 3 : chaque $R_i$ est une puissance $2019$-ième.** Fixons $i$ et notons $\mu_i \geqslant 1$ l'ordre de $x_{\sigma(i)}$ dans $R_i$. Comme $\deg R_i = 2019$, on a $\mu_i \leqslant 2019$. Le nombre $x_{\sigma(i)}$ n'est racine d'aucun autre $R_j$, donc son ordre dans le membre de gauche de $(\star)$ vaut $a_i \mu_i$. Dans le membre de droite, il vaut $2019\,a_{\sigma(i)}$. Par unicité de l'ordre,
$$a_i\, \mu_i = 2019\, a_{\sigma(i)} \qquad \text{pour tout } i .$$
Additionnons ces $k$ égalités. Comme $\sigma(i)$ prend chaque valeur une fois, la somme des $a_{\sigma(i)}$ est $a_1 + \cdots + a_k$, et
$$a_1 \mu_1 + \cdots + a_k \mu_k = 2019\,(a_1 + \cdots + a_k), \quad \text{soit} \quad a_1 (2019 - \mu_1) + \cdots + a_k (2019 - \mu_k) = 0 .$$
Tous les termes sont positifs ou nuls, donc tous sont nuls : $\mu_i = 2019$ pour tout $i$. D'après la seconde propriété des ordres,
$$Q(x) - x_i = R_i(x) = q\,(x - x_{\sigma(i)})^{2019} \qquad \text{pour tout } i .$$

**Étape 4 : le coefficient de $x^{2018}$.** Par la formule du binôme, le coefficient de $x^{2018}$ dans $q\,(x - b)^{2019}$ vaut $q \times \binom{2019}{1}(-b) = -2019\,q\,b$. D'autre part, $Q(x) - x_i$ et $Q(x)$ ne diffèrent que par leur terme constant, donc ils ont le même coefficient de $x^{2018}$, que nous notons $\beta$. Ainsi
$$-2019\, q\, x_{\sigma(i)} = \beta \quad \text{pour tout } i, \qquad \text{donc} \quad x_{\sigma(1)} = x_{\sigma(2)} = \cdots = x_{\sigma(k)} = -\frac{\beta}{2019\,q} .$$
Mais les $x_{\sigma(i)}$ sont deux à deux distincts. Il n'y en a donc qu'un : $k = 1$.

**Conclusion.** Le polynôme $P$ n'a qu'une racine, $P(x) = c\,(x - x_1)^{n}$ : toutes ses racines sont égales.

## Going further

Trouver tous les couples $(P, Q)$ qui conviennent. On pourra montrer qu'il faut $P(x) = c\,(x - a)^n$ et $Q(x) = a + \lambda (x - a)^{2019}$, puis chercher quels réels $\lambda$ sont possibles selon la parité de $n$.
