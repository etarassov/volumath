---
id: "8172"
title: "Beaucoup de restes différents modulo p"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [congruences, nombres-premiers, denombrement, principe-des-tiroirs, double-comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 130 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $p$ un nombre premier et soient $a_1, a_2, \ldots, a_p$ des entiers quelconques.

Montrer qu'il existe un entier $k$ tel que les $p$ nombres

$$a_1 + k,\quad a_2 + 2k,\quad a_3 + 3k,\quad \ldots,\quad a_p + pk$$

donnent au moins $\dfrac{p}{2}$ restes différents dans la division par $p$.

## Hints

1. Fixe deux indices $i < j$ et demande-toi pour quels $k$ les deux nombres $a_i + ik$ et $a_j + jk$ ont le même reste modulo $p$.
2. Tu obtiens une équation de la forme $(i-j)k \equiv a_j - a_i \pmod p$. Pourquoi $i - j$ est-il inversible modulo $p$ ? Combien d'entiers $k$ entre $0$ et $p-1$ conviennent alors ?
3. Compte de deux façons les « collisions » : additionne, sur les $p$ valeurs possibles de $k$, le nombre de paires qui se télescopent. Combien de paires d'indices y a-t-il en tout ?
4. Il existe donc un $k$ avec peu de collisions. Combien au plus ?
5. Reste à relier le nombre de collisions au nombre de restes distincts : si les $p$ nombres se répartissent en $t$ paquets de restes égaux, combien de paires « en collision » cela fait-il au minimum ?

## Solution

Pour chaque entier $k$, notons $N(k)$ le nombre de paires d'indices $\{i, j\}$ avec $i \neq j$ telles que

$$a_i + ik \equiv a_j + jk \pmod p .$$

Appelons de telles paires les **collisions** de $k$. Seul compte le reste de $k$ modulo $p$, on peut donc se restreindre à $k \in \{0, 1, \ldots, p-1\}$.

**Étape 1 : chaque paire d'indices ne collisionne que pour un seul $k$.**

Fixons $i \neq j$. La condition ci-dessus s'écrit

$$(i - j)\,k \equiv a_j - a_i \pmod p .$$

Les indices vérifient $1 \leqslant i, j \leqslant p$ et $i \neq j$, donc $0 < |i-j| < p$ : le nombre premier $p$ ne divise pas $i-j$, qui est donc **inversible modulo $p$**. L'équation a alors exactement une solution modulo $p$ :

$$k \equiv (a_j - a_i)\,(i-j)^{-1} \pmod p .$$

Autrement dit : **chaque paire $\{i, j\}$ est une collision pour exactement une valeur de $k$ dans $\{0, \ldots, p-1\}$.**

**Étape 2 : compter deux fois.**

Additionnons $N(k)$ pour $k$ allant de $0$ à $p-1$. Chaque paire d'indices est comptée exactement une fois, d'après l'étape 1 :

$$\sum_{k=0}^{p-1} N(k) = \binom{p}{2} = \frac{p(p-1)}{2} .$$

Cette somme comporte $p$ termes, donc l'un au moins est inférieur ou égal à la moyenne :

$$\text{il existe } k \text{ tel que } \quad N(k) \ \leqslant\ \frac{1}{p} \times \frac{p(p-1)}{2} = \frac{p-1}{2} .$$

**Étape 3 : peu de collisions, beaucoup de restes.**

Fixons un tel $k$ et regardons les $p$ nombres $a_1+k, \ldots, a_p+pk$. Regroupons-les selon leur reste modulo $p$ : disons qu'il y a $t$ restes distincts, et que les paquets ont pour effectifs $n_1, n_2, \ldots, n_t$, avec

$$n_1 + n_2 + \cdots + n_t = p .$$

Une collision, c'est exactement une paire de nombres pris dans un même paquet, donc

$$N(k) = \sum_{u=1}^{t} \binom{n_u}{2} .$$

Or pour tout entier $n \geqslant 1$ on a $\binom{n}{2} = \dfrac{n(n-1)}{2} \geqslant n - 1$ (c'est clair pour $n = 1$ et $n = 2$, et pour $n \geqslant 2$ on a $\dfrac{n}{2} \geqslant 1$). Donc

$$N(k) \ \geqslant\ \sum_{u=1}^{t} (n_u - 1) = p - t ,$$

c'est-à-dire

$$t \ \geqslant\ p - N(k) \ \geqslant\ p - \frac{p-1}{2} = \frac{p+1}{2} \ >\ \frac{p}{2} .$$

$$\boxed{\ \text{Pour ce } k,\ \text{les } p \text{ nombres donnent au moins } \frac{p+1}{2} \text{ restes distincts modulo } p.\ }$$

## Going further

Le raisonnement donne en fait un peu mieux que demandé : au moins $\dfrac{p+1}{2}$ restes, et pas seulement $\dfrac{p}{2}$.

Le cœur de la preuve est un double comptage : au lieu d'essayer de construire un bon $k$, on compte le nombre total de collisions sur tous les $k$ à la fois, et la moyenne fait le travail. C'est un exemple typique de « méthode probabiliste élémentaire » : on démontre qu'un objet existe sans jamais l'exhiber.

L'hypothèse « $p$ premier » est essentielle à l'étape 1. Si $p$ n'était pas premier, par exemple $p = 4$ avec $i - j = 2$, l'équation $2k \equiv c \pmod 4$ pourrait n'avoir aucune solution, ou bien deux, et le décompte s'effondrerait.
