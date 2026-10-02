---
id: "11855"
title: "Changer les exposants sans changer l'existence d'une racine"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 50
tags: [polynomes, racines reelles, equation fonctionnelle, valeurs intermediaires, derivee, minimum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Seniors, exercice 17 ; corrigé 2023-07_corrige-envoi-5.pdf. La solution ci-dessous n'est pas celle du corrigé, qui étudie les équations x^b - x = t avec des exposants réels : elle teste l'hypothèse sur les polynômes N(x^m - x^k)^2 + 1."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

On note $\mathbb{N} = \{0, 1, 2, \ldots\}$. Déterminer toutes les fonctions injectives $f$ de $\mathbb{N}$ dans $\mathbb{N}$ ayant la propriété suivante : pour tout polynôme à coefficients réels
$$P(x) = \sum_{i=0}^{n} a_i x^i,$$
le polynôme $P$ a une racine réelle si et seulement si le polynôme
$$\sum_{i=0}^{n} a_i x^{f(i)}$$
a une racine réelle.

## Hints

1. Applique l'hypothèse à des polynômes très simples : la constante $1$, puis $x + 1$. Qu'en déduis-tu sur $f(0)$, puis sur $f(1)$ ?
2. Devine la réponse. La fonction $f(n) = 3n$ convient-elle ? Et $f(n) = 2n$ ?
3. Le polynôme $(x^m - x^k)^2$ s'annule en $1$ sans jamais devenir négatif : il « touche » zéro. Dès qu'on lui ajoute une constante strictement positive, il n'a plus de racine. Applique l'hypothèse à $N(x^m - x^k)^2 + 1$, pour un entier $N$ aussi grand que tu veux.
4. Si une fonction dérivable atteint son minimum en $1$, que vaut sa dérivée en $1$ ?

## Solution

Pour un polynôme $P(x) = \sum a_i x^i$, on note $P^f(x) = \sum a_i x^{f(i)}$ le polynôme obtenu en remplaçant chaque exposant $i$ par $f(i)$. L'hypothèse dit que $P$ a une racine réelle si et seulement si $P^f$ en a une. On remarque tout de suite que $P^f(1) = \sum a_i = P(1)$ pour tout polynôme $P$.

On n'utilisera pas l'injectivité de $f$.

**Rappels.**

- *Théorème des valeurs intermédiaires.* Une fonction polynôme qui prend une valeur strictement positive en un point et une valeur strictement négative en un autre s'annule entre ces deux points.
- *Dérivée en un minimum.* Si une fonction $g$ dérivable sur $\mathbb{R}$ atteint son minimum en un point $c$, alors $g'(c) = 0$. En effet, pour $h > 0$, le quotient $\frac{g(c+h) - g(c)}{h}$ est positif ou nul, et en faisant tendre $h$ vers $0$ on obtient $g'(c) \geqslant 0$ ; pour $h < 0$, ce même quotient est négatif ou nul, d'où $g'(c) \leqslant 0$.

**Étape 1 : $f(0) = 0$.** Le polynôme constant $P = 1$ n'a pas de racine réelle, donc $P^f(x) = x^{f(0)}$ n'en a pas non plus. Si l'on avait $f(0) \geqslant 1$, le nombre $0$ serait racine de $x^{f(0)}$. Donc $f(0) = 0$.

**Étape 2 : une relation entre trois valeurs de $f$.** Soient $m > k \geqslant 0$ deux entiers. Montrons que
$$f(2m) - 2f(m+k) + f(2k) = 0.$$

Pour tout entier $N \geqslant 1$, considérons
$$P_N(x) = N\left(x^m - x^k\right)^2 + 1 = N x^{2m} - 2N x^{m+k} + N x^{2k} + 1.$$
Pour tout réel $x$, on a $P_N(x) \geqslant 1$, donc $P_N$ n'a pas de racine réelle. Par hypothèse, $P_N^f$ n'en a pas non plus. Comme $f(0) = 0$, le terme constant $1$ reste égal à $1$, et
$$P_N^f(y) = N y^{f(2m)} - 2N y^{f(m+k)} + N y^{f(2k)} + 1 = N\,Q(y) + 1,$$
où l'on a posé
$$Q(y) = y^{f(2m)} - 2y^{f(m+k)} + y^{f(2k)}.$$
(Quand $k = 0$, le terme $N x^{2k}$ est la constante $N$, et le calcul reste le même puisque $y^{f(0)} = 1$.)

*La fonction $Q$ est positive ou nulle sur $\mathbb{R}$.* Supposons au contraire que $Q(y_0) < 0$ pour un réel $y_0$. Choisissons un entier $N$ assez grand pour que $N\,Q(y_0) < -1$, c'est-à-dire $N > -\frac{1}{Q(y_0)}$. Alors $P_N^f(y_0) = N\,Q(y_0) + 1 < 0$. D'autre part $Q(1) = 1 - 2 + 1 = 0$, donc $P_N^f(1) = 1 > 0$. D'après le théorème des valeurs intermédiaires, $P_N^f$ s'annule entre $y_0$ et $1$, ce qui contredit le fait que $P_N^f$ n'a pas de racine réelle.

*Conclusion de l'étape.* La fonction $Q$ est positive ou nulle sur $\mathbb{R}$ et $Q(1) = 0$, donc $Q$ atteint son minimum en $1$. C'est une fonction polynôme, donc dérivable, et d'après le rappel $Q'(1) = 0$. Or
$$Q'(y) = f(2m)\,y^{f(2m)-1} - 2f(m+k)\,y^{f(m+k)-1} + f(2k)\,y^{f(2k)-1}$$
(un exposant nul donne un terme constant, de dérivée nulle, ce qui est bien ce que donne cette formule avec un coefficient nul). En $y = 1$, on trouve $Q'(1) = f(2m) - 2f(m+k) + f(2k)$, qui est donc nul.

**Étape 3 : $f(n) = n\,f(1)$.** Avec $k = 0$ et $f(0) = 0$, l'étape 2 donne $f(2m) = 2f(m)$ pour tout $m \geqslant 1$, et c'est encore vrai pour $m = 0$. En remplaçant $f(2m)$ par $2f(m)$ et $f(2k)$ par $2f(k)$ dans l'étape 2, on obtient, pour $m > k \geqslant 0$,
$$2f(m+k) = 2f(m) + 2f(k), \quad \text{donc} \quad f(m+k) = f(m) + f(k).$$
En particulier $f(n+1) = f(n) + f(1)$ pour tout $n \geqslant 1$, et aussi pour $n = 0$ puisque $f(0) = 0$. Posons $a = f(1)$. Par récurrence, $f(n) = a\,n$ pour tout $n \in \mathbb{N}$.

**Étape 4 : $a$ est impair.** Le polynôme $x + 1$ a la racine $-1$, donc $P^f(x) = x^{a} + 1$ doit avoir une racine réelle. Si $a$ était pair (y compris $a = 0$), on aurait $x^a \geqslant 0$, donc $x^a + 1 \geqslant 1$ pour tout réel $x$, et pas de racine. Donc $a$ est impair, et en particulier $a \geqslant 1$.

**Étape 5 : réciproque.** Soit $a$ un entier impair positif et $f(n) = a\,n$. Cette fonction est bien injective, et pour $P(x) = \sum a_i x^i$ on a
$$P^f(y) = \sum a_i y^{a i} = \sum a_i \left(y^a\right)^i = P\left(y^a\right).$$

- Si $P^f(y_0) = 0$, alors $x_0 = y_0^{\,a}$ est une racine réelle de $P$.
- Si $P(x_0) = 0$, il existe un réel $y_0$ tel que $y_0^{\,a} = x_0$. En effet, comme $a$ est impair, la fonction $y \mapsto y^a$ est continue et strictement croissante sur $\mathbb{R}$, elle tend vers $-\infty$ en $-\infty$ et vers $+\infty$ en $+\infty$, donc elle prend la valeur $x_0$ d'après le théorème des valeurs intermédiaires. Alors $P^f(y_0) = P(x_0) = 0$.

Donc $P$ a une racine réelle si et seulement si $P^f$ en a une.

**Conclusion.** Les fonctions cherchées sont exactement les fonctions $f(n) = a\,n$, où $a$ est un entier impair positif ($a = 1, 3, 5, \ldots$).

## Going further

- La démonstration n'a utilisé que des polynômes à coefficients entiers. La réponse reste donc la même si l'énoncé ne parle que des polynômes à coefficients entiers. Elle n'a pas non plus utilisé l'injectivité de $f$ : cette hypothèse de l'énoncé est inutile.
- L'idée de l'étape 2 sert souvent : un carré qui s'annule en un point « touche » zéro sans le traverser, et une petite perturbation suffit à lui faire perdre sa racine. C'est ce qui a permis de transformer une information du type « il y a une racine ou non » en une égalité entre nombres.
