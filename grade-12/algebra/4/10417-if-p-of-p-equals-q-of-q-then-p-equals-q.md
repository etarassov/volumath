---
id: "10417"
title: "Si P(P(x)) = Q(Q(x)), alors P = Q"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynomes, composition, limites, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf (la solution ci-dessous suit l'« autre solution » du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Soient $P$ et $Q$ deux polynômes à coefficients réels, de même degré $n \geqslant 0$. On suppose que, dans chacun des deux, le coefficient de $x^n$ est égal à $1$, et que

$$P(P(x)) = Q(Q(x)) \qquad \text{pour tout réel } x .$$

Montrer que $P = Q$.

## Hints

1. Règle d'abord le cas $n = 0$, puis le cas $n = 1$ à la main, en écrivant $P(x) = x + p$ et $Q(x) = x + q$.
2. Suppose que $R = P - Q$ n'est pas le polynôme nul. Quitte à échanger $P$ et $Q$, on peut supposer que le coefficient dominant de $R$ est strictement positif. Que peut-on dire du signe de $R(x)$ quand $x$ est très grand ?
3. Quand $x$ est très grand, $P(x) > Q(x)$. Pour comparer $P(P(x))$ et $P(Q(x))$, il serait utile que $P$ soit croissante. Regarde la dérivée $P'$.
4. Écris $P(Q(x)) = Q(Q(x)) + R(Q(x))$ et regarde le signe de $R(Q(x))$ quand $x$ est très grand.

## Solution

**Le cas $n = 0$.** Un polynôme de degré $0$ dont le coefficient de $x^0$ vaut $1$ est le polynôme constant $1$. Donc $P = Q = 1$.

Dans la suite, on suppose $n \geqslant 1$, et on raisonne par l'absurde : on suppose que le polynôme $R = P - Q$ n'est pas nul. L'hypothèse ne change pas si l'on échange $P$ et $Q$, et cet échange remplace $R$ par $-R$. On peut donc supposer que le coefficient dominant de $R$ est strictement positif.

**Un lemme.** *Si un polynôme $S$ a un coefficient dominant $c > 0$, alors $S(x) > 0$ pour tout $x$ assez grand.* En effet, si $S$ est de degré $m$, la limite de $S(x)$ en $+\infty$ est celle de son terme de plus haut degré $c\,x^m$. Si $m \geqslant 1$, cette limite est $+\infty$, donc $S(x) > 0$ à partir d'un certain réel. Si $m = 0$, $S$ est la constante $c > 0$.

**Étape 1 : trois faits pour $x$ grand.**

- $R(x) > 0$ pour $x \geqslant b$, d'après le lemme appliqué à $R$.
- La dérivée $P'$ a pour coefficient dominant $n > 0$ (car $P(x) = x^n + \cdots$ donne $P'(x) = n x^{n-1} + \cdots$). D'après le lemme, il existe un réel $a$ tel que $P'(x) > 0$ pour $x \geqslant a$. Donc $P$ est strictement croissante sur $[a, +\infty[$.
- $Q$ est de degré $n \geqslant 1$ et de coefficient dominant $1$, donc $Q(x)$ tend vers $+\infty$ quand $x$ tend vers $+\infty$. Il existe donc un réel $d$ tel que, pour $x \geqslant d$, on ait $Q(x) \geqslant a$ et $Q(x) \geqslant b$.

**Étape 2 : la contradiction.** Prenons un réel $x$ supérieur à $b$ et à $d$. Alors :

- $P(x) - Q(x) = R(x) > 0$, donc $P(x) > Q(x) \geqslant a$. Les deux nombres $Q(x)$ et $P(x)$ sont dans $[a, +\infty[$, où $P$ est strictement croissante, donc $P(P(x)) > P(Q(x))$.
- $P(Q(x)) = Q(Q(x)) + R(Q(x))$, et $R(Q(x)) > 0$ car $Q(x) \geqslant b$. Donc $P(Q(x)) > Q(Q(x))$.

En mettant bout à bout ces deux inégalités, on obtient $P(P(x)) > Q(Q(x))$, ce qui contredit l'hypothèse $P(P(x)) = Q(Q(x))$.

**Conclusion.** Le polynôme $R = P - Q$ est donc nul, c'est-à-dire $P = Q$.

## Going further

1. Montrer que l'hypothèse « coefficient de $x^n$ égal à $1$ » ne peut pas être supprimée : trouver deux polynômes $P \neq Q$ de degré $1$ tels que $P(P(x)) = Q(Q(x))$ pour tout $x$.
2. La démonstration utilise-t-elle vraiment que les deux coefficients dominants valent $1$ ? Énoncer un résultat plus général, et le comparer avec l'exemple de la question 1.
