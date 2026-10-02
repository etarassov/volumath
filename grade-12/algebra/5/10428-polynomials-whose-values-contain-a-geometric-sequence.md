---
id: "10428"
title: "Les polynômes dont les valeurs contiennent une suite géométrique"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [polynomes, suites-geometriques, divisibilite, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe A, exercice 10 (Iran 2014) ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (la solution ci-dessous remplace les valuations p-adiques par le lemme de Gauss, et la recherche des racines de P par un changement de variable ; le corrigé écrit la réponse w(vx + u)ⁿ après avoir trouvé w(vX − u)ⁿ, ce qui donne la même famille)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Déterminer tous les polynômes $P$ à coefficients entiers pour lesquels il existe deux réels $q \neq 0$ et $a \notin \{-1, 0, 1\}$ tels que tous les nombres

$$q, \quad qa, \quad qa^2, \quad qa^3, \quad \ldots$$

soient des valeurs de $P$ en des entiers naturels, c'est-à-dire appartiennent à l'ensemble $\{P(0), P(1), P(2), \ldots\}$.

## Hints

1. Commence par les exemples : $P(x) = x^2$ convient-il ? Et $P(x) = (2x + 1)^2$ ? Et $P(x) = x^2 + 1$ ?
2. Montre que l'on peut supposer le coefficient dominant de $P$ strictement positif, puis $a > 0$. Montre ensuite que $a$ est rationnel, puis entier, et que $q > 0$.
3. Soit $d$ le degré de $P$. Compare $a^d P(x)$ et $P(ax + b)$ pour un entier $b$ bien choisi : leurs termes en $x^d$ sont les mêmes, et on peut choisir $b$ pour que le terme en $x^{d-1}$ de la différence change de signe entre $b - 1$ et $b + 1$.
4. Si $P(m_k) = qa^k$, alors $P(m_{k+d}) = a^d P(m_k)$. Déduis-en $m_{k+d} = a m_k + b$ pour $k$ grand, puis l'égalité de polynômes $P(ax + b) = a^d P(x)$.
5. Pose $\delta = \frac{b}{1 - a}$ et $Q(y) = P(y + \delta)$. Montre que $Q(ay) = a^d Q(y)$, et compare les coefficients.

## Solution

**La réponse.** Ce sont les polynômes de la forme $P(x) = w\,(vx - u)^d$, où $u$, $v$, $w$, $d$ sont des entiers avec $d \geqslant 1$, $v \neq 0$ et $w \neq 0$.

On utilise trois outils.

- **Lemme 1.** *Si un polynôme $S$ n'est pas nul, alors $S(x) \neq 0$ pour tout $x$ assez grand.* En effet, si $c$ est son coefficient dominant et $m$ son degré, $S(x)$ a le signe de $c$ pour $x$ assez grand, car le terme $c\,x^m$ l'emporte sur les autres quand $x$ tend vers $+\infty$ (et si $m = 0$, $S$ est la constante $c \neq 0$). En particulier, si $c > 0$, alors $S(x) > 0$ pour $x$ assez grand. Une conséquence : si $S(x) = 0$ pour une infinité d'entiers $x \geqslant 0$, ou pour tout réel $x$, alors $S$ est le polynôme nul, c'est-à-dire que tous ses coefficients sont nuls.
- **Lemme 2.** *Pour des entiers $s$, $t$ et $j \geqslant 1$, l'entier $s - t$ divise $s^j - t^j$*, car $s^j - t^j = (s - t)(s^{j-1} + s^{j-2} t + \cdots + t^{j-1})$.
- **Lemme de Gauss** (maths expertes). *Si un entier $s$ divise un produit $tr$ et n'a aucun diviseur commun avec $t$ autre que $\pm 1$, alors $s$ divise $r$.*

### Les polynômes de la réponse conviennent

Soit $P(x) = w\,(vx - u)^d$ avec $d \geqslant 1$, $v \neq 0$, $w \neq 0$. Pour chaque cas, on donne des entiers naturels $m_0, m_1, m_2, \ldots$ tels que les $P(m_k)$ forment une suite géométrique de premier terme non nul et de raison au moins $2$.

- *Si $u = 0$.* Avec $m_k = 2^k$, on a $P(m_k) = w\,v^d \times (2^d)^k$.
- *Si $uv > 0$.* Posons $r = 3uv - 1 \geqslant 2$ et $m_k = \frac{u}{v}\left( r^{2k+1} + 1 \right)$. D'après le lemme 2 avec $s = r$ et $t = -1$, l'entier $r + 1 = 3uv$ divise $r^{2k+1} + 1$, donc $v$ aussi, et $m_k$ est un entier. Il est positif, car $\frac{u}{v} > 0$. Enfin $v\,m_k - u = u\,r^{2k+1}$, donc
  $$P(m_k) = w\,u^d\,r^{(2k+1)d} = w\,u^d r^d \times \left( r^{2d} \right)^k .$$
- *Si $uv < 0$.* Posons $r = 3uv + 1 \leqslant -2$ et $m_k = \frac{u}{v}\left( 1 - r^{2k} \right)$. On a $m_0 = 0$. Pour $k \geqslant 1$, d'après le lemme 2 avec $s = r$ et $t = 1$, l'entier $r - 1 = 3uv$ divise $r^{2k} - 1$, donc $v$ aussi, et $m_k$ est un entier. Il est positif, car $\frac{u}{v} < 0$ et $1 - r^{2k} \leqslant 0$. Enfin $v\,m_k - u = -u\,r^{2k}$, donc
  $$P(m_k) = w\,(-u)^d \times \left( r^{2d} \right)^k .$$

Dans les trois cas, le premier terme est non nul et la raison ($2^d$ ou $r^{2d}$) est au moins $2$.

### Il n'y en a pas d'autres

Soit $P$ un polynôme à coefficients entiers, et $q \neq 0$, $a \notin \{-1, 0, 1\}$ comme dans l'énoncé.

**Étape 1 : simplifications.**

- *$P$ n'est pas constant.* Les nombres $qa^k$ sont deux à deux distincts : $qa^k = qa^l$ avec $k < l$ donnerait $a^{l-k} = 1$, donc $|a| = 1$. Le polynôme $P$ prend donc une infinité de valeurs. Notons $d \geqslant 1$ son degré et $P(x) = p_d x^d + p_{d-1} x^{d-1} + \cdots + p_0$.
- *On peut supposer $p_d > 0$.* Sinon, on remplace $P$ par $-P$ et $q$ par $-q$. Cela ne change pas la conclusion, car $-w\,(vx - u)^d$ a la même forme.
- *On peut supposer $a > 0$.* Les nombres $q(a^2)^k = qa^{2k}$ sont aussi des valeurs de $P$, et $a^2 > 0$, $a^2 \neq 1$. On remplace $a$ par $a^2$.
- *$a$ est un entier, et $a \geqslant 2$.* Les nombres $q$ et $qa$ sont des valeurs de $P$ en des entiers, donc des entiers, et $a = \frac{qa}{q}$ est rationnel. Écrivons $a = \frac{r}{s}$ avec $r, s \geqslant 1$ entiers sans diviseur commun. Pour tout $k$, l'entier $qa^k = \frac{q\,r^k}{s^k}$ montre que $s^k$ divise $q\,r^k$. Comme $s^k$ et $r^k$ n'ont pas de diviseur commun, le lemme de Gauss donne : $s^k$ divise $q$. Puisque $q \neq 0$, on a $s^k \leqslant |q|$ pour tout $k$, ce qui force $s = 1$. Donc $a$ est un entier strictement positif différent de $1$.
- *$q > 0$.* Comme $p_d > 0$ et $d \geqslant 1$, $P(m)$ tend vers $+\infty$ quand l'entier $m$ grandit, donc les valeurs $P(0), P(1), \ldots$ sont toutes supérieures à un certain nombre. Si $q < 0$, les nombres $qa^k$ tendraient vers $-\infty$, ce qui est impossible. Donc $q > 0$, et $qa^k$ tend vers $+\infty$.

**Étape 2 : comparer $a^d P(x)$ et $P(ax + \beta)$.** Soit $\beta$ un entier. En développant, $(ax + \beta)^d = a^d x^d + d\,a^{d-1} \beta\, x^{d-1} + \cdots$ et $(ax + \beta)^{d-1} = a^{d-1} x^{d-1} + \cdots$. Donc le polynôme $P(ax + \beta) - a^d P(x)$ n'a pas de terme en $x^d$, et son coefficient de $x^{d-1}$ vaut

$$a^{d-1} \varphi(\beta), \qquad \text{où} \qquad \varphi(\beta) = d\,p_d\,\beta + (1 - a)\,p_{d-1} .$$

La fonction $\varphi$ est affine, de pente $d\,p_d \geqslant 1$. Soit $\beta_0$ le réel où elle s'annule, et $b$ un entier tel que $|b - \beta_0| \leqslant \frac{1}{2}$. Alors $b - 1 < \beta_0 < b + 1$, donc $\varphi(b - 1) < 0 < \varphi(b + 1)$.

D'après le lemme 1, il existe donc un entier $N \geqslant 0$ tel que, pour tout réel $x \geqslant N$ :

- $P(ax + b - 1) < a^d P(x) < P(ax + b + 1)$ ;
- $P$ est strictement croissante sur $[N, +\infty[$, car sa dérivée a pour coefficient dominant $d\,p_d > 0$ ;
- $ax + b - 1 \geqslant N$ (c'est vrai dès que $(a - 1)N + b - 1 \geqslant 0$, car $a \geqslant 2$).

**Étape 3 : l'égalité $P(ax + b) = a^d P(x)$.** Pour chaque $k$, choisissons un entier naturel $m_k$ tel que $P(m_k) = qa^k$. Les valeurs de $P$ en $0, 1, \ldots, N$ sont en nombre fini, alors que $qa^k$ tend vers $+\infty$. Il existe donc un rang $K$ tel que $m_k > N$ pour tout $k \geqslant K$.

Soit $k \geqslant K$. Alors $a^d P(m_k) = qa^{k+d} = P(m_{k+d})$, et l'étape 2 donne

$$P(a m_k + b - 1) < P(m_{k+d}) < P(a m_k + b + 1) .$$

Les trois nombres $a m_k + b - 1$, $m_{k+d}$ et $a m_k + b + 1$ sont au moins égaux à $N$, où $P$ est strictement croissante. Donc $a m_k + b - 1 < m_{k+d} < a m_k + b + 1$, et comme ce sont des entiers, $m_{k+d} = a m_k + b$. Ainsi

$$P(a m_k + b) = P(m_{k+d}) = a^d P(m_k) .$$

Les entiers $m_k$ sont deux à deux distincts, puisque leurs images le sont. Le polynôme $P(ax + b) - a^d P(x)$ s'annule donc en une infinité d'entiers naturels. D'après le lemme 1, il est nul :

$$P(ax + b) = a^d P(x) \qquad \text{pour tout réel } x . \qquad (1)$$

**Étape 4 : résoudre $(1)$.** Posons $\delta = \frac{b}{1 - a}$, qui vérifie $a\delta + b = \delta$, et $Q(y) = P(y + \delta)$, qui est un polynôme de degré $d$. Pour tout réel $y$, appliquons $(1)$ à $x = y + \delta$ : comme $a(y + \delta) + b = ay + \delta$, on obtient

$$Q(ay) = P(ay + \delta) = a^d P(y + \delta) = a^d Q(y) .$$

Écrivons $Q(y) = \sum_{j=0}^{d} c_j\,y^j$. L'égalité $Q(ay) = a^d Q(y)$ pour tout $y$ dit que le polynôme $\sum_{j=0}^{d} c_j\,(a^j - a^d)\,y^j$ est nul en tout réel $y$. D'après le lemme 1, tous ses coefficients sont nuls. Pour $j < d$, on a $a^j \neq a^d$ car $a \geqslant 2$, donc $c_j = 0$. Il reste $Q(y) = c_d\,y^d$, et $c_d = p_d$. En revenant à $P$ :

$$P(x) = Q(x - \delta) = p_d\,(x - \delta)^d .$$

**Étape 5 : les coefficients entiers.** Le nombre $\delta = \frac{b}{1 - a}$ est rationnel. Écrivons $\delta = \frac{u}{v}$, avec $u$ et $v \geqslant 1$ entiers sans diviseur commun (si $\delta = 0$, on prend $u = 0$ et $v = 1$). Le coefficient constant de $P$ est $p_d \left( -\frac{u}{v} \right)^d$, et c'est un entier : donc $v^d$ divise $p_d\,u^d$. Comme $v^d$ et $u^d$ n'ont pas de diviseur commun, le lemme de Gauss donne : $v^d$ divise $p_d$. Écrivons $p_d = w\,v^d$, avec $w \neq 0$ entier. Alors

$$P(x) = w\,v^d \left( x - \frac{u}{v} \right)^d = w\,(vx - u)^d .$$

**Conclusion.** Les polynômes cherchés sont exactement les polynômes $P(x) = w\,(vx - u)^d$, avec $u$, $v$, $w$, $d$ entiers, $d \geqslant 1$, $v \neq 0$ et $w \neq 0$.

## Going further

1. Pour $P(x) = (2x + 1)^2$, écrire explicitement les premiers termes $m_0$, $m_1$, $m_2$ donnés par la construction, et les valeurs $P(m_k)$.
2. Pour $P(x) = x^2 + 1$, montrer directement, sans la solution générale, que $P(\mathbb{N})$ ne contient aucune suite géométrique de raison entière $a \geqslant 2$ et de premier terme non nul.
