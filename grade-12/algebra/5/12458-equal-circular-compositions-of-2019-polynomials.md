---
id: "12458"
title: "2019 polynômes dont les composées en cercle sont égales"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [maths-expertes, polynomes, composition, degre, coefficient-dominant, recurrence, cycle-impair]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 novembre 2019"
  reference: "2019-12_sujet-test-novembre.pdf, exercice 3 (groupe Senior) ; corrigé 2019-12_corrige-test-novembre.pdf (l'étape des coefficients dominants est ici refaite sans exposants négatifs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/12/sujet-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-12_sujet-test-novembre.pdf"
---

## Statement

Soit $P_1, P_2, \ldots, P_{2019}$ des polynômes non constants, à coefficients réels, tels que, pour
tout réel $x$,
$$P_1(P_2(x)) = P_2(P_3(x)) = \cdots = P_{2018}(P_{2019}(x)) = P_{2019}(P_1(x)).$$

Démontrer que $P_1 = P_2 = \cdots = P_{2019}$.

## Hints

1. Commence par les degrés. Quel est le degré de $P \circ Q$ en fonction des degrés de $P$ et de
   $Q$ ? Pourquoi est-il important que $2019$ soit impair ?
2. Fais de même avec les coefficients dominants. Si $q_k$ est le quotient du coefficient dominant
   de $P_k$ par celui de $P_{k+1}$, compare $|q_k|$ à $1$ quand on passe d'un indice au suivant.
3. Traite à part le cas où tous les polynômes sont de degré $1$.
4. Si le degré commun $d$ est au moins $2$, montre que les coefficients de même degré sont égaux en
   descendant, du coefficient de $X^d$ jusqu'au coefficient constant. Pour le coefficient de $X^\ell$,
   regarde le coefficient de $X^{d^2 - d + \ell}$ dans $P_k \circ P_{k+1}$.

## Solution

**Deux rappels sur les polynômes.**

- *Égalité de deux polynômes.* Un polynôme non nul de degré $n$ a au plus $n$ racines. Si deux
  polynômes $A$ et $B$ vérifient $A(x) = B(x)$ pour tout réel $x$, alors $A - B$ a une infinité de
  racines, donc c'est le polynôme nul : **$A$ et $B$ ont les mêmes coefficients**.
- *Degré d'une composée.* Si $P$ est de degré $d$, de coefficient dominant $p$, et $Q$ de degré $e$,
  de coefficient dominant $q$, alors $P(Q(X)) = \sum_{i=0}^{d} a_i\,Q(X)^i$, où les $a_i$ sont les
  coefficients de $P$. Le polynôme $Q^i$ est de degré $ie$, de coefficient dominant $q^i$. Le terme
  de plus haut degré vient donc de $i = d$ : **$P \circ Q$ est de degré $de$, de coefficient dominant
  $p\,q^d$.**

**Indices en cercle.** Posons $N = 2019$, et convenons que $P_{N+1} = P_1$, $P_{N+2} = P_2$, et ainsi
de suite. L'hypothèse s'écrit alors : $P_k \circ P_{k+1} = P_{k+1} \circ P_{k+2}$ pour tout $k$. On
fera de même pour toutes les suites indexées par $k$ dans la suite : l'indice $N + k$ désigne la même
chose que l'indice $k$.

### Étape 1 : tous les polynômes ont le même degré

Notons $d_k \geqslant 1$ le degré de $P_k$. D'après le rappel, $P_k \circ P_{k+1}$ est de degré
$d_k d_{k+1}$. L'hypothèse donne donc $d_k\,d_{k+1} = d_{k+1}\,d_{k+2}$, puis, comme $d_{k+1} \neq 0$,
$$d_k = d_{k+2} \quad \text{pour tout } k.$$
Ainsi $d_1 = d_3 = d_5 = \cdots = d_{2019}$. Comme $2019$ est impair, l'indice suivant est
$2019 + 2 = 2021$, qui désigne le même polynôme que l'indice $2$. Donc $d_{2019} = d_2$, puis
$d_2 = d_4 = \cdots = d_{2018}$. **Tous les polynômes ont le même degré**, que l'on note $d$.

### Étape 2 : tous les polynômes ont le même coefficient dominant

Notons $p_k \neq 0$ le coefficient dominant de $P_k$. D'après le rappel, l'hypothèse donne
$p_k\,p_{k+1}^d = p_{k+1}\,p_{k+2}^d$. Posons $q_k = \dfrac{p_k}{p_{k+1}}$. En divisant par
$p_{k+1}^{d+1}$, on obtient
$$q_k = \frac{p_{k+2}^d}{p_{k+1}^d} = \frac{1}{q_{k+1}^d}, \qquad \text{c'est-à-dire} \qquad q_k\,q_{k+1}^d = 1.$$

**Les $q_k$ valent $1$ ou $-1$.** D'après l'égalité ci-dessus, $|q_k| = 1$ si et seulement si
$|q_{k+1}| = 1$, et $|q_k| > 1$ si et seulement si $|q_{k+1}| < 1$. Supposons qu'un des $|q_k|$ soit
différent de $1$. Alors aucun ne vaut $1$, et quand on passe d'un indice au suivant, on passe
toujours d'un nombre plus grand que $1$ à un nombre plus petit que $1$, ou l'inverse. Après $N$ pas,
on revient au même indice. Comme $N$ est impair, on aurait changé de côté un nombre impair de fois,
et donc $|q_k| > 1$ et $|q_k| < 1$ à la fois : c'est impossible. Donc $|q_k| = 1$ pour tout $k$.

**Les $q_k$ valent $1$.** On a d'abord
$$q_1\,q_2 \cdots q_N = \frac{p_1}{p_2} \times \frac{p_2}{p_3} \times \cdots \times \frac{p_N}{p_1} = 1.$$

- Si $d$ est pair, $q_{k+1}^d = 1$ car $q_{k+1} = \pm 1$, donc $q_k = 1$ pour tout $k$.
- Si $d$ est impair, $q_{k+1}^d = q_{k+1}$, donc $q_k\,q_{k+1} = 1$ et $q_k = q_{k+1}$. Tous les
  $q_k$ sont égaux à un même nombre $\varepsilon = \pm 1$, et le produit ci-dessus vaut
  $\varepsilon^N = \varepsilon$, car $N$ est impair. Donc $\varepsilon = 1$.

Dans les deux cas, $p_k = p_{k+1}$ pour tout $k$ : **tous les polynômes ont le même coefficient
dominant**, que l'on note $p$.

### Étape 3 : le cas $d = 1$

Écrivons $P_k(X) = pX + b_k$. Alors $P_k(P_{k+1}(X)) = p^2 X + p\,b_{k+1} + b_k$, et l'hypothèse donne
$p\,b_{k+1} + b_k = p\,b_{k+2} + b_{k+1}$. Posons $c_k = b_{k+1} - b_k$. L'égalité précédente s'écrit
$$c_k = -p\,c_{k+1} \quad \text{pour tout } k.$$
En l'appliquant $N$ fois, on obtient $c_k = (-p)^N c_k$.

- Si l'un des $c_k$ n'est pas nul, alors $(-p)^N = 1$. Comme $N$ est impair, cela impose $-p = 1$,
  donc $p = -1$, et l'égalité devient $c_k = c_{k+1}$ : tous les $c_k$ sont égaux à un même nombre
  $c$. Mais
  $$c_1 + c_2 + \cdots + c_N = (b_2 - b_1) + (b_3 - b_2) + \cdots + (b_1 - b_N) = 0,$$
  donc $Nc = 0$ et $c = 0$, ce qui contredit le fait qu'un des $c_k$ n'est pas nul.
- Donc tous les $c_k$ sont nuls, c'est-à-dire que tous les $b_k$ sont égaux.

**Quand $d = 1$, tous les polynômes sont égaux.**

### Étape 4 : le cas $d \geqslant 2$

Écrivons $P_k(X) = \sum_{i=0}^{d} a_{k,i} X^i$, avec $a_{k,d} = p$. On démontre, en descendant de
$\ell = d$ jusqu'à $\ell = 0$, que **le coefficient $a_{k,\ell}$ ne dépend pas de $k$**. Pour
$\ell = d$, c'est l'étape 2.

**Un outil.** Soit $Q = pX^d + \cdots + \alpha_\ell X^\ell + \cdots + \alpha_0$ un polynôme de
degré $d$, et $0 \leqslant \ell \leqslant d - 1$. Le coefficient de $X^{d^2 - d + \ell}$ dans $Q^d$
vaut
$$d\,p^{d-1}\,\alpha_\ell + R,$$
où $R$ ne dépend que de $p$ et des coefficients $\alpha_j$ avec $j > \ell$.

En effet, $Q^d = Q \times Q \times \cdots \times Q$, avec $d$ facteurs. En développant, on choisit un
terme $\alpha_{j_t} X^{j_t}$ dans chaque facteur $t$, et on obtient un monôme de degré
$j_1 + \cdots + j_d$. Ce degré vaut $d^2 - d + \ell$ quand les « manques » $d - j_t$, qui sont tous
positifs ou nuls, ont pour somme $d - \ell$.

- Si l'un des $j_t$ est au plus $\ell$, son manque est au moins $d - \ell$, donc il fait tout le
  total à lui seul : $j_t = \ell$, et tous les autres facteurs donnent $pX^d$. On a $d$ choix pour
  le facteur $t$, ce qui donne $d\,p^{d-1}\alpha_\ell$.
- Sinon, tous les $j_t$ sont plus grands que $\ell$, et le produit n'utilise que des $\alpha_j$ avec
  $j > \ell$. La somme de ces produits est le nombre $R$.

**La récurrence.** Soit $\ell$ avec $0 \leqslant \ell \leqslant d - 1$, et supposons que, pour tout
$j > \ell$, le coefficient $a_{k,j}$ ne dépende pas de $k$. Calculons le coefficient de
$X^{d^2 - d + \ell}$ dans
$$P_k(P_{k+1}(X)) = \sum_{i=0}^{d} a_{k,i}\,P_{k+1}(X)^i.$$

- Pour $i = d$, l'outil donne $p\,(d\,p^{d-1} a_{k+1,\ell} + R) = d\,p^d a_{k+1,\ell} + pR$,
  où $R$ ne fait intervenir que les $a_{k+1,j}$ avec $j > \ell$. Par hypothèse, ils ne dépendent
  pas de $k$, donc $R$ non plus.
- Pour $i = d - 1$, le polynôme $P_{k+1}^{d-1}$ est de degré $d^2 - d$, de coefficient dominant
  $p^{d-1}$. Il ne contribue que si $\ell = 0$, et donne alors $a_{k,d-1}\,p^{d-1}$.
- Pour $i \leqslant d - 2$, le polynôme $P_{k+1}^i$ est de degré au plus $d^2 - 2d < d^2 - d$ : il ne
  contribue pas.

Comparons avec le coefficient de $X^{d^2 - d + \ell}$ dans $P_{k+1}(P_{k+2}(X))$, qui est le même
d'après l'hypothèse de l'énoncé.

- Si $\ell \geqslant 1$ : $d\,p^d a_{k+1,\ell} + pR = d\,p^d a_{k+2,\ell} + pR$. Comme $d\,p^d \neq 0$,
  on obtient $a_{k+1,\ell} = a_{k+2,\ell}$.
- Si $\ell = 0$ : $d\,p^d a_{k+1,0} + pR + p^{d-1} a_{k,d-1} = d\,p^d a_{k+2,0} + pR + p^{d-1} a_{k+1,d-1}$.
  Comme $d \geqslant 2$, on a $d - 1 \geqslant 1 > 0$, donc on sait déjà que $a_{k,d-1} = a_{k+1,d-1}$.
  Il reste $a_{k+1,0} = a_{k+2,0}$.

Ceci vaut pour tout $k$, donc $a_{k,\ell}$ ne dépend pas de $k$, ce qui achève la récurrence.

### Conclusion

Dans tous les cas, les polynômes $P_1, \ldots, P_{2019}$ ont les mêmes coefficients. **Donc
$P_1 = P_2 = \cdots = P_{2019}$.**

## Going further

1. Montrer que le résultat devient faux avec un nombre pair de polynômes. On pourra chercher deux
   polynômes $P_1 \neq P_2$ de degré $1$ tels que $P_1 \circ P_2 = P_2 \circ P_1$.
2. Où l'imparité de $2019$ a-t-elle servi dans la solution ? Et où n'a-t-elle pas servi ?
