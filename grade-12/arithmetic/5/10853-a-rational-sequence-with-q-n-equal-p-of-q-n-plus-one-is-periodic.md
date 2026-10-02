---
id: "10853"
title: "Une suite de rationnels telle que qₙ = P(qₙ₊₁) est périodique"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [polynomes, rationnels, racine-rationnelle, suite, periodicite, tiroirs, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Seniors, exercice 8 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé écrit « u entier tel que uq1 soit entier » au lieu de uq0, qui est ce dont la récurrence a besoin ; la dernière étape est faite ici autrement, avec une application bijective)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients rationnels, de degré $d \geqslant 2$. Soit $(q_n)_{n \geqslant 0}$ une suite de nombres rationnels telle que
$$q_n = P\left(q_{n+1}\right) \qquad \text{pour tout } n \geqslant 0 .$$

Montrer que la suite $(q_n)$ est périodique à partir d'un certain rang, c'est-à-dire qu'il existe des entiers $n_0 \geqslant 0$ et $T \geqslant 1$ tels que $q_{n+T} = q_n$ pour tout $n \geqslant n_0$.

## Hints

1. Attention au sens : chaque terme est l'image du terme **suivant**. Connaissant $q_{n+1}$, on connaît $q_n$, mais pas l'inverse.
2. Commence par le cas où $P(X) = X^2 + c_1 X + c_0$, avec $c_1$ et $c_0$ entiers, et où $q_0$ est entier. Montre que si $r$ est un rationnel tel que $r^2 + c_1 r$ est entier, alors $r$ est entier. Déduis-en que tous les $q_n$ sont entiers.
3. Toujours dans ce cas, montre que la suite est bornée : si $|q_{n+1}|$ est très grand, alors $|P(q_{n+1})|$ est encore plus grand.
4. Dans le cas général, multiplie les $q_n$ par un entier bien choisi pour te ramener à un polynôme dont le coefficient dominant vaut $1$ et dont les autres coefficients sont entiers.
5. Pour finir : une suite d'entiers bornée ne prend qu'un nombre fini de valeurs. Si deux termes sont égaux, que peux-tu dire des termes précédents ? Et des suivants ?

## Solution

L'idée : on transforme la suite en une suite **d'entiers**, on montre qu'elle est **bornée**, donc qu'elle ne prend qu'un nombre fini de valeurs, puis on en déduit qu'elle se répète.

Écrivons $P(X) = c_d\,X^d + c_{d-1}\,X^{d-1} + \cdots + c_0$, avec $c_d \neq 0$.

### Étape 1 : on se ramène à des coefficients entiers

Soit $N \geqslant 1$ un dénominateur commun des $c_i$ : les nombres $a_i = N c_i$ sont des entiers, et $a_d \neq 0$. Soit $u \geqslant 1$ un entier tel que $u\,q_0$ soit entier (le dénominateur de $q_0$). On pose
$$r_n = a_d\,u\,q_n \qquad \text{pour tout } n \geqslant 0 .$$
Alors $r_0 = a_d \times (u\,q_0)$ est un entier.

La relation $q_n = P(q_{n+1})$ multipliée par $N$ donne
$$N\,q_n = a_d\,q_{n+1}^d + a_{d-1}\,q_{n+1}^{d-1} + \cdots + a_0 .$$
Multiplions encore par $a_d^{d-1}\,u^d$. Pour chaque $i$, le terme de droite $a_i\,q_{n+1}^i$ devient
$$a_i\,a_d^{d-1}\,u^d\,q_{n+1}^i = a_i\,a_d^{d-1-i}\,u^{d-i} \times \left(a_d\,u\,q_{n+1}\right)^i = b_i\,r_{n+1}^i, \qquad \text{avec } b_i = a_i\,a_d^{d-1-i}\,u^{d-i} .$$
Pour $i = d$, on trouve $b_d = 1$. Pour $i \leqslant d - 1$, l'exposant $d - 1 - i$ est positif ou nul, donc $b_i$ est un entier. À gauche, $N\,a_d^{d-1}\,u^d\,q_n = K\,r_n$ avec
$$K = N\,a_d^{d-2}\,u^{d-1},$$
qui est un entier non nul **parce que $d \geqslant 2$**. Notons
$$F(X) = X^d + b_{d-1}\,X^{d-1} + \cdots + b_1\,X + b_0 :$$
c'est un polynôme à coefficients entiers dont le coefficient dominant vaut $1$, et on a obtenu
$$F\left(r_{n+1}\right) = K\,r_n \qquad \text{pour tout } n \geqslant 0 . \qquad (\star)$$

### Étape 2 : tous les $r_n$ sont entiers

**Lemme.** Soit $r$ un rationnel tel que $r^d + b_{d-1}\,r^{d-1} + \cdots + b_0$ soit un entier $E$, où les $b_i$ sont entiers. Alors $r$ est un entier.

*Preuve.* Écrivons $r = s / t$ sous forme irréductible, avec $t \geqslant 1$. En multipliant par $t^d$,
$$s^d = E\,t^d - b_{d-1}\,s^{d-1}\,t - \cdots - b_0\,t^d .$$
Tous les termes de droite sont des multiples de $t$, donc $t$ divise $s^d$. Si $t \geqslant 2$, un nombre premier $\ell$ divise $t$, donc $s^d$, donc $s$ : c'est impossible, car $s$ et $t$ n'ont pas de diviseur commun. Donc $t = 1$ et $r$ est un entier.

*Récurrence.* $r_0$ est entier. Si $r_n$ est entier, alors $(\star)$ dit que $F(r_{n+1}) = K\,r_n$ est un entier, et le lemme donne que $r_{n+1}$ est un entier. **Tous les $r_n$ sont donc des entiers.**

### Étape 3 : la suite $(r_n)$ est bornée

Posons $B = |b_{d-1}| + \cdots + |b_0|$. Si $|x| \geqslant 1$, chaque $|x|^i$ avec $i \leqslant d - 1$ est au plus $|x|^{d-1}$, donc
$$\left|F(x)\right| \geqslant |x|^d - B\,|x|^{d-1} = |x|^{d-1}\,(|x| - B) .$$
Posons $M = \max(|r_0|,\ B + |K|,\ 1)$, et soit $x$ avec $|x| > M$. Alors $|x| - B > |K| \geqslant 0$, et $|x|^{d-1} \geqslant |x|$ car $d \geqslant 2$. Donc
$$\left|F(x)\right| \geqslant |x|\,(|x| - B) > |K|\,|x| .$$
Montrons par récurrence que $|r_n| \leqslant M$ pour tout $n$. C'est vrai pour $n = 0$. Supposons $|r_n| \leqslant M$, et supposons par l'absurde $|r_{n+1}| > M$. Alors, d'après $(\star)$ et ce qui précède,
$$|K|\,|r_n| = \left|F\left(r_{n+1}\right)\right| > |K|\,|r_{n+1}| > |K|\,M ,$$
donc $|r_n| > M$ (on peut diviser par $|K| > 0$), ce qui est faux. **Donc $|r_n| \leqslant M$ pour tout $n$.**

### Étape 4 : la suite se répète

Les $r_n$ sont des entiers compris entre $-M$ et $M$. Ils prennent donc leurs valeurs dans un ensemble fini. Notons $V$ l'ensemble des valeurs prises par la suite, et posons $g(v) = F(v) / K$. D'après $(\star)$, **$g(r_{n+1}) = r_n$ pour tout $n$** : chaque terme est déterminé par le suivant.

*(a) Le premier terme revient.* Comme $V$ est fini, il existe $i < j$ avec $r_i = r_j$. En appliquant $g$, on trouve $r_{i-1} = r_{j-1}$, puis en recommençant $r_{i-2} = r_{j-2}$, et ainsi de suite jusqu'à $r_0 = r_T$, avec $T = j - i \geqslant 1$.

*(b) Chaque terme est aussi déterminé par le précédent.* L'application $g$ envoie $V$ dans $V$ : si $v = r_n$ avec $n \geqslant 1$, alors $g(v) = r_{n-1}$, et si $v = r_0 = r_T$, alors $g(v) = r_{T-1}$. De plus, chaque élément $r_n$ de $V$ est atteint, puisque $r_n = g(r_{n+1})$. Si $V$ a $L$ éléments, les $L$ images $g(v)$ couvrent donc les $L$ éléments de $V$ : elles sont toutes différentes. Autrement dit, deux éléments différents de $V$ ont des images différentes.

Par conséquent, si $r_m = r_k$, alors $g(r_{m+1}) = g(r_{k+1})$, et donc $r_{m+1} = r_{k+1}$.

*(c) Conclusion de l'étape.* On a $r_0 = r_T$ d'après (a), et (b) permet d'avancer d'un cran : par récurrence, $r_n = r_{n+T}$ pour tout $n \geqslant 0$.

### Conclusion

Comme $q_n = r_n / (a_d\,u)$, on obtient $q_{n+T} = q_n$ pour tout $n \geqslant 0$. **La suite $(q_n)$ est périodique**, et même dès le premier terme ($n_0 = 0$).

## Going further

1. Vérifie que la suite $0, 1, 0, 1, \ldots$ convient avec $P(X) = 1 - X^2$. Trouve de même un polynôme de degré $2$ et une suite de période $3$ qui conviennent.
2. Montre que le résultat est faux en degré $1$ : avec $P(X) = X / 2$, trouve une suite de rationnels qui convient et qui n'est pas périodique. Où la preuve utilise-t-elle $d \geqslant 2$ ?
3. Montre que le résultat devient faux si l'on autorise les $q_n$ à être des réels quelconques, par exemple avec $P(X) = X^2$.
