---
id: "11037"
title: "P(mn) et P(m)P(n) ont autant de facteurs premiers"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [polynome, facteurs-premiers, tiroirs, absurde, equation-fonctionnelle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 18 ; corrigé 2022-02_corrige-envoi-3.pdf. L'indicatrice d'Euler du corrigé est remplacée ici par le principe des tiroirs, et les congruences par des divisibilités."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Déterminer tous les polynômes $P$ à coefficients entiers tels que :

1. $P(n) \geqslant 1$ pour tout entier $n \geqslant 1$ ;
2. pour tous entiers $m, n \geqslant 1$, les nombres $P(mn)$ et $P(m)P(n)$ ont le même nombre de diviseurs
   premiers.

## Hints

1. Note $D(N)$ l'ensemble des diviseurs premiers d'un entier $N \geqslant 1$. Comme $D(AB) = D(A) \cup D(B)$, la condition 2 dit que $P(mn)$ a autant de diviseurs premiers que $D(P(m)) \cup D(P(n))$ a d'éléments. Commence par vérifier que les polynômes $aX^d$ conviennent.
2. Fixe $n$ et compare $P(n)$, $P(n^2)$, $P(n^3)$ et $P(n^4)$, en écrivant $n^4 = n^2 \times n^2 = n^3 \times n$. Montre que tous les $P(n^k)$ ont exactement les mêmes diviseurs premiers que $P(n)$.
3. Écris $P = X^d Q$ avec $Q(0) \neq 0$, et prends un nombre premier $p$ qui ne divise pas $Q(0)$. Les nombres $Q(p^k)$ ont tous les mêmes diviseurs premiers $q_1, \ldots, q_s$. Si $Q$ n'est pas constant, $Q(p^k)$ devient énorme, donc l'un des $q_i$ y apparaît avec un grand exposant.
4. Trouve $\beta \geqslant 1$ tel que $p^\beta - 1$ soit un multiple de $(q_1 \cdots q_s)^{\alpha + 1}$ (principe des tiroirs), puis utilise le fait que $x - y$ divise $Q(x) - Q(y)$.

## Solution

**Réponse :** les polynômes $P = aX^d$, où $a \geqslant 1$ et $d \geqslant 0$ sont des entiers.

Pour un entier $N \geqslant 1$, on note $D(N)$ l'ensemble de ses diviseurs premiers et $\delta(N)$ leur
nombre. Un nombre premier divise $AB$ si et seulement s'il divise $A$ ou $B$, donc $D(AB) = D(A) \cup D(B)$.
La condition 2 s'écrit ainsi

$$\delta\left(P(mn)\right) = \text{nombre d'éléments de } D(P(m)) \cup D(P(n)) .$$

On utilisera souvent la remarque suivante : si $\delta(P(mn)) = \delta(P(n))$, alors la réunion
$D(P(m)) \cup D(P(n))$ a autant d'éléments que $D(P(n))$, donc $D(P(m))$ est inclus dans $D(P(n))$.

**Ces polynômes conviennent.** Si $P = aX^d$, alors $P(n) = an^d \geqslant 1$. Les nombres
$P(mn) = a\,m^d n^d$ et $P(m)P(n) = a^2 m^d n^d$ ont les mêmes diviseurs premiers : ceux de $a$, plus ceux de
$m$ et de $n$ si $d \geqslant 1$.

Réciproquement, soit $P$ un polynôme qui vérifie les deux conditions.

### Étape 1 : les $P(n^k)$ ont les mêmes diviseurs premiers que $P(n)$

Fixons $n \geqslant 1$ et notons $D_k = D(P(n^k))$ et $\delta_k$ son nombre d'éléments. La condition 2,
appliquée à $n^i$ et $n^j$, donne

$$\delta_{i+j} = \text{nombre d'éléments de } D_i \cup D_j .$$

* Avec $i = j = 1$ : $\delta_2 = \delta_1$. Avec $i = j = 2$ : $\delta_4 = \delta_2 = \delta_1$.
* Avec $i = 3$, $j = 1$ : $D_3 \cup D_1$ a $\delta_4 = \delta_1$ éléments, donc $D_3 \subset D_1$, et
  $\delta_3 \leqslant \delta_1$.
* Avec $i = 2$, $j = 1$ : $\delta_3$ est le nombre d'éléments de $D_2 \cup D_1$, donc
  $\delta_3 \geqslant \delta_1$. Ainsi $\delta_3 = \delta_1$, et l'inclusion $D_3 \subset D_1$ est une
  égalité. De plus $D_2 \cup D_1$ a $\delta_1$ éléments, donc $D_2 \subset D_1$, et comme
  $\delta_2 = \delta_1$, on a $D_2 = D_1$.

Montrons par récurrence que $D_k = D_1$ pour tout $k \geqslant 1$. C'est vrai pour $k = 1, 2, 3$. Supposons
$D_1 = D_2 = \cdots = D_k$ pour un $k \geqslant 2$. Alors

* $\delta_{k+2}$ est le nombre d'éléments de $D_k \cup D_2 = D_1$, donc $\delta_{k+2} = \delta_1$ ;
* $\delta_{k+2}$ est aussi le nombre d'éléments de $D_{k+1} \cup D_1$, donc $D_{k+1} \subset D_1$ ;
* $\delta_{k+1}$ est le nombre d'éléments de $D_k \cup D_1 = D_1$, donc $\delta_{k+1} = \delta_1$.

L'inclusion $D_{k+1} \subset D_1$ entre deux ensembles de même taille est une égalité : $D_{k+1} = D_1$.

### Étape 2 : on se ramène à un polynôme $Q$

Le polynôme $P$ n'est pas nul, puisque $P(1) \geqslant 1$. On l'écrit $P = X^d Q$, où $d \geqslant 0$ est
un entier et $Q$ est un polynôme à coefficients entiers tel que $Q(0) \neq 0$. Pour $n \geqslant 1$, on a
$n^d Q(n) = P(n) \geqslant 1$, donc $Q(n)$ est un entier $\geqslant 1$.

Soit $p$ un nombre premier qui ne divise pas $Q(0)$, par exemple un nombre premier plus grand que $|Q(0)|$.
Pour $k \geqslant 1$, le nombre $Q(p^k) - Q(0)$ est une somme de termes $c_j \, p^{kj}$ avec $j \geqslant 1$,
donc un multiple de $p$ : ainsi $p$ ne divise pas $Q(p^k)$.

Comme $P(p^k) = p^{kd} \, Q(p^k)$, l'ensemble $D(P(p^k))$ est formé de $D(Q(p^k))$, auquel s'ajoute $p$ si
$d \geqslant 1$. Et $p$ n'est pas dans $D(Q(p^k))$. Donc $D(Q(p^k))$ est $D(P(p^k))$ privé de $p$. D'après
l'étape 1, $D(P(p^k)) = D(P(p))$, donc

$$D(Q(p^k)) = D(Q(p)) \quad \text{pour tout } k \geqslant 1 .$$

Notons $q_1, \ldots, q_s$ les éléments de $D(Q(p))$ (on a $s \geqslant 0$, et aucun $q_i$ n'est égal à $p$).
Pour tout $k \geqslant 1$, le nombre $Q(p^k)$ est un produit de puissances de $q_1, \ldots, q_s$.

### Étape 3 : $Q$ est constant

Supposons par l'absurde que $Q$ n'est pas constant. Son coefficient dominant est positif, sinon $Q(n)$
tendrait vers $-\infty$, alors que $Q(n) \geqslant 1$. Donc $Q(n)$ tend vers $+\infty$ quand $n$ tend vers
$+\infty$.

Soit $\alpha$ le plus grand exposant d'un nombre premier dans la décomposition de $Q(1)$ (on prend
$\alpha = 0$ si $Q(1) = 1$). Posons $R = (q_1 \cdots q_s)^{\alpha}$ et $K = (q_1 \cdots q_s)^{\alpha+1}$.

**Un $q_i$ avec un grand exposant.** Si $Q(p^k) > R$, l'un des $q_i$ apparaît dans $Q(p^k)$ avec un exposant
au moins $\alpha + 1$. Sinon, tous les exposants seraient au plus $\alpha$, donc $Q(p^k)$ diviserait $R$ et
serait au plus $R$. Cela arrive pour tout $k$ assez grand, puisque $Q(p^k)$ tend vers $+\infty$. (En
particulier $s \geqslant 1$.)

**Une puissance de $p$ qui vaut $1$ de plus qu'un multiple de $K$.** Parmi les $K + 1$ nombres
$p^1, p^2, \ldots, p^{K+1}$, deux ont le même reste dans la division par $K$ (principe des tiroirs), disons
$p^u$ et $p^v$ avec $u < v$. Alors $K$ divise $p^v - p^u = p^u \left( p^{v-u} - 1 \right)$. Pour chaque
$q_i$, son exposant dans ce produit est celui qu'il a dans $p^{v-u} - 1$, puisque $q_i$ ne divise pas $p^u$.
Donc $K$ divise $p^\beta - 1$, où $\beta = v - u \geqslant 1$. Pour tout entier $N \geqslant 1$,

$$p^{N\beta} - 1 = \left( p^\beta - 1 \right) \left( p^{\beta(N-1)} + p^{\beta(N-2)} + \cdots + p^\beta + 1 \right)$$

est donc aussi un multiple de $K$.

**La contradiction.** Pour deux entiers $x$ et $y$, $x - y$ divise $Q(x) - Q(y)$, car chaque
$x^j - y^j = (x - y)\left(x^{j-1} + x^{j-2} y + \cdots + y^{j-1}\right)$ est un multiple de $x - y$.

Choisissons $N$ assez grand pour que $Q(p^{N\beta}) > R$, et un $q_i$ dont l'exposant dans
$Q(p^{N\beta})$ est au moins $\alpha + 1$. Alors :

* $q_i^{\alpha+1}$ divise $K$, qui divise $p^{N\beta} - 1$, qui divise $Q(p^{N\beta}) - Q(1)$ ;
* $q_i^{\alpha+1}$ divise $Q(p^{N\beta})$.

Par différence, $q_i^{\alpha+1}$ divise $Q(1)$. L'exposant de $q_i$ dans $Q(1)$ est donc au moins
$\alpha + 1$, ce qui contredit le choix de $\alpha$.

Donc $Q$ est constant, égal à $a = Q(1) \geqslant 1$, et $P = aX^d$.

**Conclusion.** Les polynômes cherchés sont exactement les $P = aX^d$, avec $a \geqslant 1$ et
$d \geqslant 0$ entiers.

## Going further

Plusieurs élèves ont utilisé un théorème attribué à Schur : si $Q$ est un polynôme non constant à
coefficients entiers, il existe une infinité de nombres premiers qui divisent au moins l'un des nombres
$Q(1), Q(2), Q(3), \ldots$ Démontre-le en imitant la preuve d'Euclide de l'infinité des nombres premiers.
Si $Q(0) = c \neq 0$ et si $p_1, \ldots, p_r$ sont des nombres premiers, regarde
$Q(c \, p_1 \cdots p_r \, t)$ pour un entier $t$ bien choisi.
