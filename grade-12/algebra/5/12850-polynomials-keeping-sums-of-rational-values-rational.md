---
id: "12850"
title: "Quand P(x) et P(y) sont rationnels, P(x + y) l'est aussi"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [polynomes, rationnels, theoreme-des-valeurs-intermediaires, nombres-premiers, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test senior, exercice 7 ; corrigé 2025-01_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

Trouver tous les polynômes $P$ à coefficients réels qui ont la propriété suivante : pour tous réels $x$ et $y$ tels que $P(x)$ et $P(y)$ sont rationnels, le nombre $P(x + y)$ est lui aussi rationnel.

## Hints

1. Commencez par les polynômes constants et par ceux de degré $1$, $P(X) = aX + b$. Lesquels conviennent ? Essayez $x = y = -b/a$.
2. Supposons maintenant que $P$ convient et est de degré $d \geq 2$. Montrez qu'il existe un réel $t > 0$ tel que $P(t)$ est rationnel, puis que le polynôme $Q(X) = P(tX)$ convient aussi et prend des valeurs rationnelles en tous les entiers $k \geq 1$.
3. Un polynôme de degré au plus $m$ qui prend des valeurs rationnelles en $1, 2, \ldots, m + 1$ a des coefficients rationnels. Pour le montrer, utilisez $S(X + 1) - S(X)$, qui fait baisser le degré de $1$.
4. On peut alors se ramener à un polynôme $R$ à coefficients entiers. Choisissez un nombre premier $p$ et un réel $z$ tel que $R(z) = R(0) + 1/p$. Montrez que $z$ est rationnel, puis regardez son dénominateur.

## Solution

La réponse : les polynômes qui conviennent sont **les polynômes constants**, et **les polynômes $aX + b$ avec $a \neq 0$ réel quelconque et $b$ rationnel**.

### Étape 1 : les polynômes de degré au plus 1

**Les polynômes constants conviennent.** Si $P = c$ avec $c$ rationnel, alors $P(x + y) = c$ est toujours rationnel. Si $c$ est irrationnel, $P(x)$ n'est jamais rationnel, et il n'y a rien à vérifier.

**Les polynômes $aX + b$ avec $b$ rationnel conviennent**, car $P(x + y) = a(x + y) + b = P(x) + P(y) - b$ est rationnel dès que $P(x)$ et $P(y)$ le sont.

**Les polynômes $aX + b$ avec $a \neq 0$ et $b$ irrationnel ne conviennent pas.** Prenons $x = y = -b/a$ : alors $P(x) = P(y) = 0$ est rationnel, mais $P(x + y) = P(-2b/a) = -2b + b = -b$ ne l'est pas.

Il reste à montrer qu'**aucun polynôme de degré $d \geq 2$ ne convient**. On raisonne par l'absurde : dans les étapes 2 à 6, $P$ est un polynôme de degré $d \geq 2$ qui convient.

### Étape 2 : deux outils sur les polynômes

Pour un polynôme $S$, on note $\Delta S$ le polynôme $S(X + 1) - S(X)$.

**Outil A.** Si $S$ est de degré $k \geq 1$ et de coefficient dominant $c$, alors $\Delta S$ est de degré $k - 1$ et de coefficient dominant $kc$. Si $S$ est à coefficients entiers, $\Delta S$ aussi. Plus généralement, si $S$ est de degré au plus $k$ et si $c$ est son coefficient de $X^k$, le coefficient de $X^{k-1}$ dans $\Delta S$ vaut $kc$.

En effet, montrons par récurrence sur $j \geq 1$ que $(X + 1)^j = X^j + jX^{j-1} + L_j$, où $L_j$ est un polynôme à coefficients entiers de degré au plus $j - 2$ (ou nul). Pour $j = 1$, $X + 1 = X + 1 \cdot X^0$, avec $L_1 = 0$. Si c'est vrai pour $j$, alors

$$(X + 1)^{j+1} = (X + 1)\left(X^j + jX^{j-1} + L_j\right) = X^{j+1} + (j + 1)X^j + \left(jX^{j-1} + XL_j + L_j\right),$$

et la dernière parenthèse est à coefficients entiers, de degré au plus $j - 1$. Ainsi $\Delta(X^j) = jX^{j-1} + L_j$, et $\Delta(1) = 0$. Comme $\Delta(S + T) = \Delta S + \Delta T$ et $\Delta(cS) = c\,\Delta S$, on applique cela à chaque terme de $S$ : seul le terme $cX^k$ fournit un terme en $X^{k-1}$, à savoir $kcX^{k-1}$.

**Outil B.** Soit $m \geq 0$. Si $S$ est un polynôme de degré au plus $m$ et si $S(1), S(2), \ldots, S(m + 1)$ sont rationnels, alors tous les coefficients de $S$ sont rationnels.

Par récurrence sur $m$. Pour $m = 0$, $S$ est constant et égal à $S(1)$. Supposons le résultat vrai pour $m - 1$, et soit $S$ de degré au plus $m$, de coefficient de $X^m$ noté $c$.

- Le polynôme $\Delta S$ est de degré au plus $m - 1$, et $\Delta S(k) = S(k + 1) - S(k)$ est rationnel pour $k = 1, \ldots, m$. D'après l'hypothèse de récurrence, $\Delta S$ est à coefficients rationnels. Son coefficient de $X^{m-1}$ est $mc$ d'après l'outil A, donc $c$ est rationnel.
- Le polynôme $T = S - cX^m$ est de degré au plus $m - 1$, et $T(k) = S(k) - ck^m$ est rationnel pour $k = 1, \ldots, m$. D'après l'hypothèse de récurrence, $T$ est à coefficients rationnels.

Donc $S = T + cX^m$ est à coefficients rationnels.

### Étape 3 : se ramener à un polynôme à coefficients entiers

Deux remarques simples. Si $P$ convient et si $q$ est un rationnel non nul, alors $qP$ convient, car $qP(x)$ est rationnel exactement quand $P(x)$ l'est. Si $P$ convient et si $t$ est un réel non nul, le polynôme $X \mapsto P(tX)$ convient aussi : si $P(tx)$ et $P(ty)$ sont rationnels, alors $P(tx + ty)$ l'est.

Quitte à remplacer $P$ par $-P$, on suppose que le coefficient dominant de $P$ est positif. Alors $P(x)$ tend vers $+\infty$ quand $x$ tend vers $+\infty$.

**Une valeur rationnelle.** Soit $r$ l'entier $\lfloor P(0) \rfloor + 1$, qui est plus grand que $P(0)$. Il existe $b > 0$ tel que $P(b) > r$, et d'après le théorème des valeurs intermédiaires, il existe $t \in \,]0, b[$ tel que $P(t) = r$.

**Des valeurs rationnelles en tous les entiers.** Le polynôme $Q(X) = P(tX)$ convient, est de degré $d$, de coefficient dominant positif, et $Q(1) = r$ est rationnel. Par récurrence, $Q(k)$ est rationnel pour tout entier $k \geq 1$ : si $Q(k)$ l'est, on applique la propriété à $x = k$ et $y = 1$.

**Des coefficients entiers.** D'après l'outil B, $Q$ est à coefficients rationnels. En le multipliant par le produit des dénominateurs de ses coefficients, on obtient un polynôme

$$R(X) = a_d X^d + a_{d-1} X^{d-1} + \cdots + a_1 X + a_0$$

à coefficients entiers, avec $a_d > 0$, qui convient. Pour tout entier $k$, $R(k)$ est un entier.

### Étape 4 : un point z bien choisi

Soit $p$ un nombre premier qui ne divise pas $a_d$, par exemple un nombre premier plus grand que $a_d$. On a $R(0) = a_0 < a_0 + 1/p$, et $R(x)$ tend vers $+\infty$ en $+\infty$. Le théorème des valeurs intermédiaires donne un réel $z > 0$ tel que

$$R(z) = a_0 + \frac{1}{p}.$$

Par récurrence, $R(z + k)$ est rationnel pour tout entier $k \geq 0$ : si $R(z + k)$ est rationnel, comme $R(1)$ l'est aussi, $R(z + k + 1)$ l'est.

### Étape 5 : le réel z est rationnel

Posons $R_0 = R$, puis $R_1 = \Delta R_0$, $R_2 = \Delta R_1$, et ainsi de suite jusqu'à $R_{d-1}$ (il y a au moins une étape, car $d \geq 2$).

- D'après l'outil A appliqué $d - 1$ fois, les degrés valent successivement $d, d - 1, \ldots, 1$, les coefficients dominants $a_d$, $d\,a_d$, $d(d - 1)\,a_d$, ..., et tous les coefficients restent entiers. Donc $R_{d-1}(X) = uX + v$, avec $u = d! \, a_d \neq 0$ et $v$ entiers.
- Par récurrence, chaque $R_m$ s'écrit $R_m(X) = c_0 R(X) + c_1 R(X + 1) + \cdots + c_m R(X + m)$ avec des entiers $c_j$. C'est vrai pour $m = 0$, et si c'est vrai pour $R_m$, alors $R_{m+1}(X) = R_m(X + 1) - R_m(X)$ est encore de cette forme.

En $z$, on obtient $uz + v = c_0 R(z) + \cdots + c_{d-1} R(z + d - 1)$, qui est rationnel d'après l'étape 4. Donc $z = \left(R_{d-1}(z) - v\right)/u$ est rationnel.

### Étape 6 : la contradiction

Écrivons $z = m/n$ avec $m$ et $n \geq 1$ entiers premiers entre eux. En multipliant $R(z)$ par $n^d$, on obtient l'entier

$$W = n^d R(z) = a_d m^d + a_{d-1} m^{d-1} n + a_{d-2} m^{d-2} n^2 + \cdots + a_0 n^d.$$

D'autre part $W = n^d a_0 + n^d/p$. Donc $n^d/p = W - n^d a_0$ est un entier : $p$ divise $n^d$. Comme $p$ est premier, il divise $n$.

- Tous les termes de $W$ sauf $a_d m^d$ contiennent un facteur $n$, donc sont des multiples de $p$. Ainsi $W - a_d m^d$ est un multiple de $p$.
- D'autre part $W = n^d a_0 + n^{d-1} \times (n/p)$. Comme $d \geq 2$, le nombre $n^{d-1}$ contient au moins un facteur $n$, donc est un multiple de $p$, et $n/p$ est un entier. Ainsi $W$ est un multiple de $p$.

Par différence, $p$ divise $a_d m^d$. Or $p$ ne divise pas $a_d$, par choix de $p$, et ne divise pas $m$, car il divise $n$ et $m$, $n$ sont premiers entre eux. Un nombre premier qui divise un produit divise l'un des facteurs : c'est impossible.

### Conclusion

Aucun polynôme de degré au moins $2$ ne convient. **Les polynômes cherchés sont les constantes et les polynômes $aX + b$ avec $a \neq 0$ et $b$ rationnel.** Remarquons que le coefficient $a$ peut être irrationnel : $P(X) = \sqrt{2}\,X + 1$ convient.

## Going further

1. Où l'hypothèse $d \geq 2$ a-t-elle servi dans l'étape 6 ? Refaites le calcul avec $R(X) = 2X + 1$ et $p = 3$ : que vaut $z$, et pourquoi n'y a-t-il pas de contradiction ?
2. L'outil B est une forme de l'interpolation de Lagrange. Pour $m = 1$, retrouvez directement les coefficients d'un polynôme $S$ de degré au plus $1$ à partir de $S(1)$ et $S(2)$.
