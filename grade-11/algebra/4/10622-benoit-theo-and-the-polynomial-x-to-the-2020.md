---
id: "10622"
title: "Benoît, Théo et le polynôme X²⁰²⁰"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [jeu, strategie, polynome, puissances, parite, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 16 ; corrigé 2021-01_Corrige-envoi-2.pdf. Le corrigé raisonne sur une partie gagnante de longueur minimale ; la solution ci-dessous écrit directement le polynôme obtenu."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Au départ, le polynôme $X^{2020}$ est écrit au tableau. Benoît et Théo jouent chacun leur tour, Benoît commence. À chaque tour, le joueur ajoute au polynôme écrit un monôme $X^k$, avec $k$ entier et $0 \leqslant k \leqslant 2020$ (le même $k$ peut être choisi plusieurs fois).

À la fin de chaque tour de Théo, on note $P$ le polynôme écrit. S'il existe un réel $x$ tel que $P(x) < 0$, Benoît gagne. Sinon, le jeu continue.

Montrer que Théo peut jouer de façon à ne jamais perdre.

## Hints

1. Ajouter $X^k$ avec $k$ pair ne fait jamais de mal à Théo : pourquoi ? Que peut-il répondre dans ce cas ?
2. Le danger vient des puissances impaires. Pour $k$ impair, compare $x^{k-1} + 2x^k + x^{k+1}$ à $0$ en factorisant.
3. Stratégie possible : quand Benoît ajoute $X^k$ avec $k$ impair, Théo répond $X^{k-1}$ ou $X^{k+1}$, en alternant à chaque fois que Benoît rejoue ce même $k$.
4. Il reste des termes $x^{k-1}(x + 1)$ isolés. Pour $x < -1$, regroupe chaque $x^k$ impair avec le terme pair suivant.

## Solution

**La stratégie de Théo.** Quand Benoît vient d'ajouter $X^k$ :

- si $k$ est pair, Théo ajoute lui aussi $X^k$ ;
- si $k$ est impair, Théo compte combien de fois Benoît a joué $X^k$ depuis le début, ce coup compris. Si ce nombre est impair, Théo ajoute $X^{k-1}$ ; s'il est pair, Théo ajoute $X^{k+1}$.

Ces coups sont permis : si $k$ est impair, alors $1 \leqslant k \leqslant 2019$, donc $0 \leqslant k - 1$ et $k + 1 \leqslant 2020$.

Montrons qu'avec cette stratégie, à la fin de chaque tour de Théo, $P(x) \geqslant 0$ pour tout réel $x$.

**Étape 1. Le polynôme écrit, regroupé.**

Regardons le polynôme à la fin d'un tour de Théo, et rangeons ses termes.

- Chaque coup pair $X^k$ de Benoît a reçu la réponse $X^k$ : ensemble, ils apportent $2X^k$.
- Fixons un $k$ impair, joué $c$ fois par Benoît. Ses coups et les réponses de Théo se groupent par deux : le premier et le deuxième, le troisième et le quatrième, etc. Chaque groupe apporte $X^{k-1} + X^k + X^k + X^{k+1}$, c'est-à-dire
$$X^{k-1} + 2X^k + X^{k+1} = X^{k-1}(X + 1)^2$$
Si $c$ est impair, il reste un dernier coup, avec sa réponse $X^{k-1}$ : il apporte $X^{k-1} + X^k = X^{k-1}(X + 1)$.

Notons $L$ l'ensemble des exposants impairs $k$ joués un nombre impair de fois par Benoît. On a donc $P(x) = R(x) + Q(x)$, où $R(x)$ est la somme des termes $2x^k$ (pour $k$ pair) et des termes $x^{k-1}(x + 1)^2$ (pour $k$ impair), et où

$$Q(x) = x^{2020} + \sum_{k \in L} x^{k-1}(x + 1)$$

Tous les termes de $R(x)$ sont positifs ou nuls, car une puissance paire d'un réel est positive ou nulle, et $k - 1$ est pair quand $k$ est impair. Donc $R(x) \geqslant 0$, et il suffit de montrer que $Q(x) \geqslant 0$.

**Étape 2. Si $x \geqslant -1$.**

Alors $x + 1 \geqslant 0$, et $x^{k-1} \geqslant 0$ car $k - 1$ est pair. Chaque terme de $Q(x)$ est positif ou nul, donc $Q(x) \geqslant 0$.

**Étape 3. Si $x < -1$.**

Si $L$ est vide, $Q(x) = x^{2020} \geqslant 0$. Sinon, notons $k_1 < k_2 < \cdots < k_r$ les éléments de $L$, qui sont des entiers impairs entre $1$ et $2019$. Développons et regroupons autrement :

$$Q(x) = x^{k_1 - 1} + \left(x^{k_1} + x^{k_2 - 1}\right) + \left(x^{k_2} + x^{k_3 - 1}\right) + \cdots + \left(x^{k_r} + x^{2020}\right)$$

Le premier terme est positif ou nul, car $k_1 - 1$ est pair. Chaque parenthèse est de la forme $x^j + x^e$ avec $j$ impair, $e$ pair et $e > j$. En effet, deux impairs distincts diffèrent d'au moins $2$, donc $k_{i+1} - 1 \geqslant k_i + 1 > k_i$, et $2020 > 2019 \geqslant k_r$. Comme $|x| > 1$ et $e > j$, on a $|x|^e > |x|^j$, donc

$$x^j + x^e = -|x|^j + |x|^e > 0$$

Ainsi $Q(x) > 0$.

**Étape 4. Conclusion.**

Dans tous les cas $Q(x) \geqslant 0$, donc $P(x) \geqslant 0$ pour tout réel $x$, à la fin de chaque tour de Théo.

**Conclusion : en suivant cette stratégie, Théo fait en sorte que le polynôme écrit ne prenne jamais de valeur strictement négative à la fin de ses tours. Benoît ne gagne jamais.**
