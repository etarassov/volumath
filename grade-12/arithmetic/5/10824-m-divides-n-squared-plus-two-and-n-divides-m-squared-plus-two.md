---
id: "10824"
title: "m divise n² + 2 et n divise m² + 2"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [divisibilite, pgcd, second-degre, descente-infinie, suite-recurrente, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers impairs, avec $m \geqslant 1$ et $n \geqslant 1$, tels que

$$m \text{ divise } n^2 + 2 \qquad \text{et} \qquad n \text{ divise } m^2 + 2 .$$

On définit la suite $(u_k)_{k \geqslant 1}$ par $u_1 = u_2 = 1$ et $u_k = 4u_{k-1} - u_{k-2}$ pour tout $k \geqslant 3$.

Montrer que $m$ et $n$ sont tous les deux des termes de cette suite.

## Hints

1. Calcule les premiers termes de la suite : $1, 1, 3, 11, \ldots$ Vérifie que le couple $(m, n) = (11, 3)$ convient.
2. Montre que $m$ et $n$ n'ont pas de diviseur commun autre que $1$, puis que $mn$ divise $m^2 + n^2 + 2$.
3. Pose $k = \left(m^2 + n^2 + 2\right) / (mn)$. Parmi tous les couples $(x, y)$ d'entiers strictement positifs tels que $x^2 + y^2 + 2 = kxy$, prends-en un dont la somme $x + y$ est la plus petite possible. Si $x > y$, regarde l'autre solution de l'équation $t^2 - ky\,t + y^2 + 2 = 0$, d'inconnue $t$.
4. Tu dois trouver $k = 4$. Si $(m, n)$ vérifie $m^2 + n^2 + 2 = 4mn$ avec $m > n$, montre que le couple $(n, 4n - m)$ la vérifie aussi, avec une somme plus petite.

## Solution

Les premiers termes de la suite sont
$$u_1 = 1, \quad u_2 = 1, \quad u_3 = 3, \quad u_4 = 11, \quad u_5 = 41, \quad u_6 = 153, \quad \ldots$$

On utilise deux fois le même outil sur les équations du second degré : si $t_1$ est une solution de $t^2 - s\,t + r = 0$, alors l'autre solution est $t_2 = s - t_1$, et on a $t_1\,t_2 = r$. En effet, $t^2 - st + r = (t - t_1)(t - t_2)$, et en développant on trouve $t_1 + t_2 = s$ et $t_1 t_2 = r$.

### Étape 1 : $mn$ divise $m^2 + n^2 + 2$

*$m$ et $n$ sont premiers entre eux.* Soit $d$ un diviseur commun positif de $m$ et $n$. Il divise $n^2$ et $n^2 + 2$, donc il divise $2$. Comme $m$ est impair, $d$ aussi, donc $d = 1$.

*Conclusion de l'étape.* Comme $m$ divise $n^2 + 2$, il divise $m^2 + n^2 + 2$. De même, $n$ divise $m^2 + 2$, donc il divise $m^2 + n^2 + 2$. Un nombre premier qui apparaît dans la décomposition de $mn$ apparaît soit dans celle de $m$, soit dans celle de $n$, mais pas dans les deux. Sa puissance dans $mn$ divise donc $m^2 + n^2 + 2$. Ainsi **$mn$ divise $m^2 + n^2 + 2$.**

Notons
$$k = \frac{m^2 + n^2 + 2}{mn} :$$
c'est un entier strictement positif.

### Étape 2 : $k = 4$

Considérons tous les couples $(x, y)$ d'entiers strictement positifs tels que
$$x^2 + y^2 + 2 = k\,x\,y .$$
Il y en a au moins un, le couple $(m, n)$. Parmi eux, choisissons-en un dont la somme $x + y$ est la plus petite possible. L'équation ne change pas quand on échange $x$ et $y$, donc on peut supposer $x \geqslant y$.

*Montrons que $x = y$.* Supposons par l'absurde $x > y$. Le nombre $x$ est une solution de l'équation
$$t^2 - k y\,t + \left(y^2 + 2\right) = 0 .$$
L'autre solution est $x' = ky - x$, et $x\,x' = y^2 + 2$. Donc $x'$ est un entier (première formule) et $x' = \left(y^2 + 2\right) / x > 0$ (deuxième formule). Ainsi $(x', y)$ est encore un couple d'entiers strictement positifs qui vérifie l'équation. De plus, comme $y \leqslant x - 1$ et $x \geqslant 2$,
$$x' = \frac{y^2 + 2}{x} \leqslant \frac{(x - 1)^2 + 2}{x} = \frac{x^2 - 2x + 3}{x} < \frac{x^2}{x} = x ,$$
car $-2x + 3 < 0$. Donc $x' + y < x + y$, ce qui contredit le choix de $(x, y)$. **Donc $x = y$.**

*Conclusion de l'étape.* Avec $x = y$, l'équation devient $2x^2 + 2 = kx^2$, soit $(k - 2)\,x^2 = 2$. Le carré $x^2$ divise $2$, donc $x = 1$, puis $k - 2 = 2$. **Donc $k = 4$**, c'est-à-dire
$$m^2 + n^2 + 2 = 4mn . \qquad (E)$$

### Étape 3 : on descend jusqu'au début de la suite

Montrons la propriété suivante, par récurrence sur la somme $m + n$ :

> si $m \geqslant n \geqslant 1$ sont des entiers qui vérifient $(E)$, alors il existe $i \geqslant 1$ tel que $n = u_i$ et $m = u_{i+1}$.

Supposons la propriété vraie pour tous les couples de somme plus petite que $m + n$, et considérons un couple $(m, n)$ avec $m \geqslant n \geqslant 1$ qui vérifie $(E)$.

**Si $m = n$**, l'équation $(E)$ donne $2m^2 + 2 = 4m^2$, donc $m^2 = 1$, et $m = n = 1$. C'est le couple $(u_2, u_1)$.

**Si $m > n$**, posons $m' = 4n - m$. Comme à l'étape 2, $m$ est une solution de $t^2 - 4n\,t + \left(n^2 + 2\right) = 0$, et $m'$ est l'autre solution : $m'$ est un entier, $m\,m' = n^2 + 2$, donc $m' = \left(n^2 + 2\right) / m > 0$, et le couple $(n, m')$ vérifie $(E)$.

*On a $m' \leqslant n$.* Si $n = 1$, l'équation $(E)$ s'écrit $m^2 - 4m + 3 = 0$, donc $m = 3$ (car $m > 1$), puis $m' = 4 - 3 = 1 = n$. Si $n \geqslant 2$, alors $m \geqslant n + 1$ et
$$m' = \frac{n^2 + 2}{m} \leqslant \frac{n^2 + 2}{n + 1} \leqslant \frac{n^2 + n}{n + 1} = n .$$

Ainsi $(n, m')$ vérifie $(E)$, avec $n \geqslant m' \geqslant 1$, et sa somme $n + m'$ est plus petite que $m + n$ (car $m' \leqslant n < m$). Par hypothèse de récurrence, il existe $i \geqslant 1$ tel que $m' = u_i$ et $n = u_{i+1}$. Alors
$$u_{i+2} = 4u_{i+1} - u_i = 4n - m' = 4n - (4n - m) = m .$$
Donc $n = u_{i+1}$ et $m = u_{i+2}$ : la propriété est vraie pour $(m, n)$.

### Conclusion

D'après l'étape 2, nos entiers $m$ et $n$ vérifient $(E)$. Quitte à les échanger, on peut supposer $m \geqslant n$. D'après l'étape 3, **$m$ et $n$ sont deux termes consécutifs de la suite $(u_k)$**, et en particulier ce sont deux termes de la suite.

## Going further

1. Où l'hypothèse « $m$ et $n$ impairs » a-t-elle servi ? Trouve deux entiers pairs $m$ et $n$ tels que $m$ divise $n^2 + 2$ et $n$ divise $m^2 + 2$, mais qui ne sont pas des termes de la suite.
2. Réciproquement, montre par récurrence que $u_{k+1}^2 + u_k^2 + 2 = 4\,u_k\,u_{k+1}$ pour tout $k \geqslant 1$. Déduis-en que deux termes consécutifs de la suite vérifient toujours les deux conditions de l'énoncé.
