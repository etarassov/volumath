---
id: "10814"
title: "Une fonction qui fabrique des carrés parfaits"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, carre-parfait, nombres-premiers, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf (le corrigé ne donne que l'identité : il oublie que f(0) n'intervient jamais et peut être choisi librement, et il oublie le cas f(p) = 0)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

On note $\mathbb{N} = \{0, 1, 2, 3, \ldots\}$ l'ensemble des entiers naturels.

Trouver toutes les fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que, pour tous entiers naturels $m$ et $n$, le nombre

$$2mn + m\,f(m) + n\,f(n)$$

soit un carré parfait.

## Hints

1. Prends $n = 0$ : que dit l'énoncé sur le nombre $m\,f(m)$ ? Prends aussi $n = m$.
2. Pour un nombre premier $p$, montre que $f(p)$ s'écrit $p\,a^2$ avec $a$ entier, $a \geqslant 1$.
3. Pour montrer que $a = 1$ quand $p$ est grand, prends $m = p$ et $n = 1$ : tu obtiens un carré plus grand que $(ap)^2$, donc au moins égal à $(ap + 1)^2$.
4. Fixe $k \geqslant 1$, et prends un nombre premier $p$ très grand avec $f(p) = p$. Coince le nombre $2kp + p^2 + k\,f(k)$ entre $(p + k - 1)^2$ et $(p + k + 1)^2$.
5. N'oublie pas de te demander ce que vaut $f(0)$.

## Solution

**Réponse : ce sont les fonctions telles que $f(k) = k$ pour tout $k \geqslant 1$, la valeur $f(0)$ étant un entier naturel quelconque.**

Notons $F(m, n) = 2mn + m\,f(m) + n\,f(n)$. Par hypothèse, $F(m, n)$ est un carré parfait pour tous $m, n \in \mathbb{N}$.

### Étape 1 : ces fonctions conviennent

Soit $f$ telle que $f(k) = k$ pour tout $k \geqslant 1$, et $f(0) = c$ quelconque.

- Si $m \geqslant 1$ et $n \geqslant 1$ : $F(m, n) = 2mn + m^2 + n^2 = (m + n)^2$.
- Si $m = 0$ : $F(0, n) = 0 + 0 \times c + n\,f(n)$, qui vaut $n^2$ si $n \geqslant 1$ et $0$ si $n = 0$. C'est un carré. Le cas $n = 0$ est pareil.

Remarquons que **$f(0)$ n'intervient jamais** : dans $F(m, n)$, il n'apparaît que multiplié par $0$. Il peut donc prendre n'importe quelle valeur. Il reste à montrer que $f(k) = k$ pour tout $k \geqslant 1$.

### Étape 2 : deux conséquences immédiates

- **$m\,f(m)$ est un carré pour tout $m$**, car $F(m, 0) = m\,f(m)$.
- **$f(m) \geqslant 1$ pour tout $m \geqslant 1$.** En effet, si $f(m) = 0$, alors $F(m, m) = 2m^2$. Or $2m^2$ n'est pas un carré quand $m \geqslant 1$ : dans sa décomposition en facteurs premiers, l'exposant de $2$ est impair (c'est $1$ plus deux fois l'exposant de $2$ dans $m$), alors que dans un carré tous les exposants sont pairs.

### Étape 3 : la forme de $f(p)$ quand $p$ est premier

Soit $p$ un nombre premier. Le nombre $p\,f(p)$ est un carré $s^2$. Comme $p$ est premier et divise $s^2$, il divise $s$, donc $p^2$ divise $s^2 = p\,f(p)$, et $p$ divise $f(p)$. Écrivons $f(p) = p\,g$. Alors $p^2 g = s^2$, donc $g = (s/p)^2$ est le carré d'un entier $a$. Ainsi
$$f(p) = p\,a^2, \qquad \text{avec } a \geqslant 1 \text{ d'après l'étape 2.}$$

### Étape 4 : $f(p) = p$ pour tout nombre premier $p > f(1)$

Soit $p$ un nombre premier, avec $f(p) = p\,a^2$. Supposons $a \geqslant 2$. On a
$$F(p, 1) = 2p + p \times p a^2 + f(1) = (ap)^2 + 2p + f(1) .$$
C'est un carré, strictement plus grand que $(ap)^2$. Il vaut donc au moins le carré suivant, $(ap + 1)^2 = (ap)^2 + 2ap + 1$. Par conséquent
$$2p + f(1) \geqslant 2ap + 1 \geqslant 4p + 1, \qquad \text{donc} \qquad f(1) \geqslant 2p + 1 .$$
Ainsi, **dès que $p > f(1)$, on ne peut pas avoir $a \geqslant 2$, donc $a = 1$ et $f(p) = p$.**

### Étape 5 : $f(k) = k$ pour tout $k \geqslant 1$

Fixons $k \geqslant 1$. Comme il existe une infinité de nombres premiers, on peut choisir un nombre premier $p$ tel que
$$p > f(1), \qquad p > k\,f(k), \qquad p > k^2 .$$
D'après l'étape 4, $f(p) = p$, donc
$$F(p, k) = 2kp + p^2 + k\,f(k) .$$
Comparons ce nombre avec $(p + k)^2 = p^2 + 2kp + k^2$ et les carrés voisins.

*Majoration.* Comme $k\,f(k) < p$,
$$F(p, k) < p^2 + 2kp + p < p^2 + 2kp + k^2 + 2p + 2k + 1 = (p + k + 1)^2 .$$

*Minoration.* On a $(p + k - 1)^2 = p^2 + 2kp + \left(k^2 - 2p - 2k + 1\right)$. Comme $p > k^2$, on a $k^2 - 2p - 2k + 1 < k^2 - 2k^2 + 1 = 1 - k^2 \leqslant 0$. Donc
$$(p + k - 1)^2 < p^2 + 2kp \leqslant F(p, k) .$$

Ainsi $(p + k - 1)^2 < F(p, k) < (p + k + 1)^2$. Si $F(p, k) = s^2$ avec $s \geqslant 0$, on a donc $p + k - 1 < s < p + k + 1$, c'est-à-dire $s = p + k$. Par conséquent
$$2kp + p^2 + k\,f(k) = p^2 + 2kp + k^2, \qquad \text{donc} \qquad k\,f(k) = k^2,$$
et, puisque $k \geqslant 1$, **$f(k) = k$.**

### Conclusion

Les fonctions cherchées sont exactement celles qui vérifient $f(k) = k$ pour tout entier $k \geqslant 1$, la valeur de $f(0)$ étant **un entier naturel quelconque**. En particulier, la fonction identité $f(k) = k$ convient, mais ce n'est pas la seule.

## Going further

1. La fonction $f(k) = 4k$ rend tous les nombres $m\,f(m)$ carrés. Vérifie pourtant qu'elle ne convient pas.
2. À l'étape 4, un seul nombre premier $p > f(1)$ suffit. Pourquoi a-t-on besoin, à l'étape 5, d'une infinité de nombres premiers ?
