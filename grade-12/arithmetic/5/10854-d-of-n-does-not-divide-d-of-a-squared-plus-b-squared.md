---
id: "10854"
title: "d(n) ne divise jamais d(a² + b²) quand a + b = n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [nombre-de-diviseurs, decomposition-en-facteurs-premiers, puissances-de-deux, congruences, parite, encadrement, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Seniors, exercice 9 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé écrit « 5^(q−1) » au lieu de 5^(p−1) dans le cas q ⩾ 5, et « la gauche fait 1 modulo 4 » là où a0² + b0² vaut 2 modulo 4 ; la suite du raisonnement suppose bien 2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Pour un entier $m \geqslant 1$, on note $d(m)$ le nombre de diviseurs positifs de $m$ ($1$ et $m$ compris). Par exemple, $d(12) = 6$.

Soit $k \geqslant 1$ un entier. Montrer qu'il existe une infinité d'entiers $n \geqslant 1$ qui vérifient les deux conditions suivantes :

- $n$ a exactement $k$ diviseurs premiers différents ;
- pour tous entiers $a \geqslant 1$ et $b \geqslant 1$ tels que $a + b = n$, le nombre $d(n)$ ne divise pas $d\left(a^2 + b^2\right)$.

## Hints

1. Montre que si $N = q_1^{e_1} \times \cdots \times q_s^{e_s}$, avec des nombres premiers $q_i$ différents, alors $d(N) = (e_1 + 1) \times \cdots \times (e_s + 1)$. Que vaut $d\left(2^{p-1}\right)$ quand $p$ est premier ?
2. Commence par $k = 1$, avec $n = 2^{p-1}$ et $p$ premier impair. Si $p$ divise $d\left(a^2 + b^2\right)$, montre qu'un nombre premier $q$ apparaît dans $a^2 + b^2$ avec un exposant au moins égal à $p - 1$.
3. Compare $a^2 + b^2$ avec $n^2$ pour exclure $q \geqslant 3$. Pour exclure $q = 2$, regarde combien de fois $2$ divise $a$ et $b$.
4. Pour $k$ quelconque, multiplie par un produit fixe $m$ de $k - 1$ nombres premiers plus grands que $3$, et prends $p$ assez grand. Que devient l'argument de l'indication 3 ?

## Solution

### Étape 1 : compter les diviseurs

**Lemme.** Si $N = q_1^{e_1} \times q_2^{e_2} \times \cdots \times q_s^{e_s}$, avec des nombres premiers $q_i$ différents et des exposants $e_i \geqslant 1$, alors
$$d(N) = (e_1 + 1) \times (e_2 + 1) \times \cdots \times (e_s + 1) .$$

*Preuve.* D'après l'unicité de la décomposition en facteurs premiers, les diviseurs positifs de $N$ sont exactement les nombres $q_1^{f_1} \times \cdots \times q_s^{f_s}$ avec $0 \leqslant f_i \leqslant e_i$ pour chaque $i$, et deux choix différents des exposants donnent deux diviseurs différents. Il y a $e_i + 1$ choix pour chaque $f_i$, d'où le produit.

*Conséquence.* Si un nombre premier $p$ divise $d(N)$, alors $p$ divise l'un des facteurs $e_i + 1$. Autrement dit, **un nombre premier $q_i$ apparaît dans $N$ avec un exposant $e_i = cp - 1$, où $c \geqslant 1$** ; en particulier $e_i \geqslant p - 1$.

### Étape 2 : le choix de $n$

Si $k = 1$, on pose $m = 1$. Si $k \geqslant 2$, on choisit $k - 1$ nombres premiers différents, tous plus grands que $3$ (par exemple $5, 7, 11, \ldots$), et on note $m$ leur produit. Le nombre $m$ est fixé une fois pour toutes.

Soit $p$ un nombre premier impair assez grand pour que
$$5^{p-1} > m^2 \times 4^{p-1} . \qquad (1)$$
C'est vrai pour tous les $p$ assez grands, car $(5/4)^{p-1}$ devient aussi grand qu'on veut. Comme il y a une infinité de nombres premiers, il y a une infinité de tels $p$. On pose
$$n = m \times 2^{p-1} .$$
Des $p$ différents donnent des $n$ différents. Il suffit donc de montrer que chacun de ces $n$ convient.

*La première condition.* Les diviseurs premiers de $n$ sont $2$ et les $k - 1$ nombres premiers de $m$ : il y en a exactement $k$.

*Le nombre $d(n)$.* D'après le lemme, $d(n) = p \times 2^{k-1}$ : le facteur $p$ vient de l'exposant $p - 1$ de $2$, et chaque nombre premier de $m$, d'exposant $1$, apporte un facteur $2$.

### Étape 3 : on suppose le contraire

Soient $a \geqslant 1$ et $b \geqslant 1$ tels que $a + b = n$, et supposons que $d(n)$ divise $d\left(a^2 + b^2\right)$. Alors $p$ divise $d\left(a^2 + b^2\right)$. D'après la conséquence du lemme, il existe un nombre premier $q$ et un entier $c \geqslant 1$ tels que **$q$ apparaisse dans $a^2 + b^2$ avec l'exposant exactement $cp - 1$**. On va voir qu'aucun nombre premier $q$ ne convient.

**Cas $q \geqslant 5$.** Alors $q^{p-1}$ divise $a^2 + b^2$, donc, avec $(1)$,
$$a^2 + b^2 \geqslant q^{p-1} \geqslant 5^{p-1} > m^2 \times 4^{p-1} = \left(m \times 2^{p-1}\right)^2 = n^2 .$$
Mais $n^2 = (a + b)^2 = a^2 + 2ab + b^2 > a^2 + b^2$. C'est contradictoire.

**Cas $q = 3$.** Alors $3$ divise $a^2 + b^2$. Le carré d'un entier laisse le reste $0$ ou $1$ dans la division par $3$ (car $0^2 = 0$, $1^2 = 1$, $2^2 = 4 = 3 + 1$). La somme de deux tels restes n'est un multiple de $3$ que si les deux restes sont nuls. Donc $3$ divise $a$ et $b$, puis $n = a + b$. Or les diviseurs premiers de $n$ sont $2$ et des nombres plus grands que $3$. C'est contradictoire.

**Cas $q = 2$.** Écrivons $a = 2^s\,a'$ et $b = 2^t\,b'$ avec $a'$ et $b'$ impairs. Rappelons que $2$ apparaît dans $n$ avec l'exposant $p - 1$, puisque $m$ est impair.

- *Si $s \neq t$*, disons $s < t$ (l'autre cas est pareil). Alors $n = 2^s\left(a' + 2^{t-s}\,b'\right)$, et la parenthèse est impaire, donc $s = p - 1$. De même
$$a^2 + b^2 = 4^s\left(a'^2 + 4^{t-s}\,b'^2\right),$$
et la parenthèse est impaire, donc $2$ apparaît dans $a^2 + b^2$ avec l'exposant $2s = 2p - 2$. Ainsi $cp - 1 = 2p - 2$, soit $(2 - c)\,p = 1$. C'est impossible, car $p \geqslant 3$ ne divise pas $1$.

- *Si $s = t$.* Alors $n = 2^s\,(a' + b')$, et $a' + b'$ est pair, donc $p - 1 \geqslant s + 1$, c'est-à-dire $s \leqslant p - 2$. D'autre part $a^2 + b^2 = 4^s\left(a'^2 + b'^2\right)$. Le carré d'un nombre impair $2j + 1$ vaut $4j^2 + 4j + 1$ : il laisse le reste $1$ dans la division par $4$. Donc $a'^2 + b'^2$ laisse le reste $2$ : c'est le double d'un nombre impair. Ainsi $2$ apparaît dans $a^2 + b^2$ avec l'exposant $2s + 1$, et
$$cp - 1 = 2s + 1, \qquad \text{donc} \qquad cp = 2s + 2 \leqslant 2(p - 2) + 2 = 2p - 2 < 2p .$$
Donc $c = 1$, puis $p = 2s + 2$ est pair. C'est impossible, car $p$ est impair.

### Conclusion

Aucun nombre premier $q$ ne convient : l'hypothèse « $d(n)$ divise $d\left(a^2 + b^2\right)$ » est donc fausse, pour tous $a, b \geqslant 1$ tels que $a + b = n$.

**Pour chaque nombre premier impair $p$ qui vérifie $(1)$, l'entier $n = m \times 2^{p-1}$ a exactement $k$ diviseurs premiers et vérifie la seconde condition. Il y a une infinité de tels $n$.**

*Exemples.* Pour $k = 1$, on a $m = 1$, et $(1)$ est vraie pour tout $p$ : les nombres $n = 4, 16, 64, 1024, \ldots$ conviennent. Pour $n = 4$, on a $d(4) = 3$, alors que $1^2 + 3^2 = 10$ et $2^2 + 2^2 = 8$ ont chacun $4$ diviseurs. Pour $k = 2$ et $m = 5$, la condition $(1)$ demande $p \geqslant 17$, ce qui donne $n = 5 \times 2^{16} = 327\,680$.

## Going further

1. La condition $(1)$ n'est pas là pour rien. Pour $n = 20 = 5 \times 2^2$, trouve $a$ et $b$ avec $a + b = 20$ et $d(20)$ divisant $d\left(a^2 + b^2\right)$.
2. Pourquoi a-t-on choisi les nombres premiers de $m$ plus grands que $3$ ? Où cela a-t-il servi ?
