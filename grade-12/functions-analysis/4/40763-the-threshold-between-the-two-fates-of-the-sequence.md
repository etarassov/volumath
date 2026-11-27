---
id: "40763"
title: "uₙ₊₁ = exp(uₙ)/(n + 1) : le seuil δ entre les deux destins"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 55
tags: [suites, suite-recurrente, exponentielle, logarithme, dichotomie, limite, suite-croissante, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40761", "40762"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 1 « Le début justifie la fin », questions 8 à 11"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Pour tout réel $x$, on note $u(x)$ la suite définie par

$$u_0(x) = x \quad \text{et} \quad u_{n+1}(x) = \frac{\exp(u_n(x))}{n+1} \quad \text{pour tout entier } n \geqslant 0.$$

On note $E_0$ l'ensemble des réels $x$ pour lesquels la suite $u(x)$ converge vers $0$, et $E_\infty$ l'ensemble des réels $x$ pour lesquels elle diverge vers $+\infty$.

On admet les résultats suivants, démontrés dans des exercices précédents.

- (R1) Si $u_N(x) \leqslant 1$ pour un rang $N \geqslant 2$, alors $x \in E_0$.
- (R2) Tout réel $x$ appartient à $E_0$ ou à $E_\infty$ (et pas aux deux).
- (R3) Pour tout entier $n \geqslant 0$, la fonction $x \mapsto u_n(x)$ est strictement croissante sur $\mathbb{R}$.
- (R4) Si $x \in E_0$, alors $]-\infty, x] \subset E_0$. Si $x \in E_\infty$, alors $[x, +\infty[ \subset E_\infty$.
- (R5) $0 \in E_0$ et $1 \in E_\infty$.

Le but est de démontrer qu'il existe un réel $\delta$ tel que $E_0 = ]-\infty, \delta[$ et $E_\infty = [\delta, +\infty[$.

1. On définit deux suites $(a_n)$ et $(b_n)$ ainsi : $a_0 = 0$ et $b_0 = 1$, puis, pour tout entier $n \geqslant 0$,
   - si $\frac{a_n + b_n}{2} \in E_0$, on pose $a_{n+1} = \frac{a_n + b_n}{2}$ et $b_{n+1} = b_n$ ;
   - sinon, on pose $a_{n+1} = a_n$ et $b_{n+1} = \frac{a_n + b_n}{2}$.

   a) Démontrer que les suites $(a_n)$ et $(b_n)$ convergent et ont la même limite.

   b) On note $\delta$ cette limite commune. Démontrer que $]-\infty, \delta[ \subset E_0$ et que $]\delta, +\infty[ \subset E_\infty$.
2. On pose $c_2 = \ln(\ln 2)$, $c_3 = \ln(\ln(2 \ln 3))$, $c_4 = \ln(\ln(2 \ln(3 \ln 4)))$ et plus généralement, pour tout entier $\ell \geqslant 2$,

   $$c_\ell = \ln(\ln(2 \ln(3 \ln( \cdots \ln((\ell - 1) \ln \ell) \cdots )))).$$

   On admet que tous les logarithmes de cette expression sont bien définis. Démontrer que $c_\ell \in E_0$ pour tout $\ell \geqslant 2$.
3. Démontrer que la suite $(c_\ell)_{\ell \geqslant 2}$ converge.
4. Démontrer que $\delta \in E_\infty$.

## Hints

1. **Question 1.** Montrer par récurrence que $a_n \in E_0$, que $b_n \in E_\infty$, et que $b_n - a_n = \frac{1}{2^n}$.
2. **Question 1.** Pour b), si $x < \delta$, il existe un terme $a_n$ plus grand que $x$. Que dit alors (R4) ?
3. **Question 2.** Calculer $u_1(c_2)$ et $u_2(c_2)$, puis $u_1(c_3)$, $u_2(c_3)$ et $u_3(c_3)$. Que remarque-t-on ?
4. **Question 2.** Pour un $\ell$ fixé, définir des nombres en partant de la fin : $v_\ell = 1$, puis $v_j = \ln((j+1)\,v_{j+1})$ pour $j = \ell - 1, \ldots, 1, 0$. Montrer que $u_j(c_\ell) = v_j$.
5. **Question 3.** Comparer $u_\ell(c_\ell)$ et $u_\ell(c_{\ell+1})$, et utiliser (R3). Pour majorer la suite, utiliser (R5).
6. **Question 4.** Si $x \in E_0$, il existe un rang $N \geqslant 2$ tel que $u_N(x) < 1 = u_N(c_N)$. Qu'en déduit-on sur $x$ ?
7. **Question 4.** Montrer que tout élément de $E_0$ est strictement inférieur à la limite $c$ de la suite $(c_\ell)$, et que $c \leqslant \delta$.

## Solution

**1. a)** Montrons par récurrence que, pour tout $n$ : $a_n \in E_0$, $b_n \in E_\infty$, $a_n \leqslant a_{n+1}$, $b_{n+1} \leqslant b_n$ et $b_n - a_n = \frac{1}{2^n}$.

Au départ, $a_0 = 0 \in E_0$, $b_0 = 1 \in E_\infty$ d'après (R5), et $b_0 - a_0 = 1$. Notons $m = \frac{a_n + b_n}{2}$. Si $m \in E_0$, alors $a_{n+1} = m \in E_0$ et $b_{n+1} = b_n \in E_\infty$. Sinon, d'après (R2), $m \in E_\infty$, et $a_{n+1} = a_n \in E_0$, $b_{n+1} = m \in E_\infty$. Dans les deux cas, l'intervalle $[a_{n+1}, b_{n+1}]$ est l'une des deux moitiés de $[a_n, b_n]$ : $a_n \leqslant a_{n+1}$, $b_{n+1} \leqslant b_n$ et $b_{n+1} - a_{n+1} = \frac{1}{2}(b_n - a_n) = \frac{1}{2^{n+1}}$.

La suite $(a_n)$ est donc croissante, et majorée par $1$ puisque $a_n \leqslant b_n \leqslant b_0 = 1$ ; elle converge. De même $(b_n)$ est décroissante et minorée par $a_0 = 0$ ; elle converge. Enfin $b_n - a_n = \frac{1}{2^n}$ tend vers $0$, donc les deux limites sont égales.

**b)** Comme $(a_n)$ est croissante et tend vers $\delta$, on a $a_n \leqslant \delta$ pour tout $n$ ; de même $b_n \geqslant \delta$.

Soit $x < \delta$. Comme $a_n$ tend vers $\delta$, il existe un rang $n$ tel que $a_n > x$. Or $a_n \in E_0$, donc d'après (R4), $x \in E_0$.

Soit $x > \delta$. Comme $b_n$ tend vers $\delta$, il existe un rang $n$ tel que $b_n < x$. Or $b_n \in E_\infty$, donc d'après (R4), $x \in E_\infty$.

**2.** Fixons $\ell \geqslant 2$ et définissons des nombres en partant de la fin :

$$v_\ell = 1, \qquad v_j = \ln((j + 1)\,v_{j+1}) \quad \text{pour } j = \ell - 1, \ell - 2, \ldots, 0.$$

Ainsi $v_{\ell - 1} = \ln \ell$, $v_{\ell-2} = \ln((\ell - 1) \ln \ell)$, …, et $v_0$ est exactement l'expression qui définit $c_\ell$ : $v_0 = c_\ell$. (Ces logarithmes sont bien définis : en descendant, si $v_{j+1} \geqslant 1$ avec $2 \leqslant j \leqslant \ell - 1$, alors $v_j = \ln((j+1)\,v_{j+1}) \geqslant \ln 3 > 1$ ; donc $v_2 \geqslant 1$, puis $v_1 = \ln(2 v_2) \geqslant \ln 2 > 0$, et $v_0 = \ln(v_1)$ existe.)

Montrons par récurrence sur $j$ que $u_j(c_\ell) = v_j$ pour $0 \leqslant j \leqslant \ell$. Pour $j = 0$, $u_0(c_\ell) = c_\ell = v_0$. Si $u_j(c_\ell) = v_j$ avec $j < \ell$, alors

$$u_{j+1}(c_\ell) = \frac{\exp(v_j)}{j+1} = \frac{(j+1)\,v_{j+1}}{j+1} = v_{j+1}.$$

Donc $u_\ell(c_\ell) = v_\ell = 1$. Comme $\ell \geqslant 2$, (R1) donne $c_\ell \in E_0$.

**3.** *La suite est croissante.* D'après la question 2, $u_\ell(c_\ell) = 1$. Pour $c_{\ell + 1}$, les nombres construits en partant de la fin commencent par $v_{\ell+1} = 1$ puis $v_\ell = \ln(\ell + 1)$, donc $u_\ell(c_{\ell+1}) = \ln(\ell+1) \geqslant \ln 3 > 1$. Ainsi $u_\ell(c_\ell) < u_\ell(c_{\ell+1})$, et comme $x \mapsto u_\ell(x)$ est strictement croissante (R3), on a $c_\ell < c_{\ell+1}$.

*La suite est majorée.* D'après (R5) et (R4), $[1, +\infty[ \subset E_\infty$. Comme $c_\ell \in E_0$ et qu'aucun réel n'est à la fois dans $E_0$ et dans $E_\infty$, on a $c_\ell < 1$.

La suite $(c_\ell)$ est croissante et majorée, donc elle converge. Notons $c$ sa limite. Comme elle est strictement croissante, $c_\ell < c_{\ell+1} \leqslant c$ pour tout $\ell$.

**4.** *Tout élément de $E_0$ est strictement inférieur à $c$.* Soit $x \in E_0$. Comme $u_n(x)$ tend vers $0$, il existe un rang $N \geqslant 2$ tel que $u_N(x) < 1$. Alors $u_N(x) < 1 = u_N(c_N)$, et la stricte croissance de $u_N$ (R3) donne $x < c_N$. Donc $x < c_N < c$.

*On a $c \leqslant \delta$.* Chaque $c_\ell$ est dans $E_0$, donc pas dans $E_\infty$, donc pas dans $]\delta, +\infty[$ d'après 1 b) : $c_\ell \leqslant \delta$. En passant à la limite, $c \leqslant \delta$.

*Conclusion.* Si $\delta$ était dans $E_0$, on aurait $\delta < c$ d'après le premier point, ce qui contredit $c \leqslant \delta$. Donc $\delta \notin E_0$, et d'après (R2), $\delta \in E_\infty$.

**Bilan.** Il existe un seuil $\delta$, entre $0$ et $1$, tel que la suite partie de $x$ converge vers $0$ exactement quand $x < \delta$, et diverge vers $+\infty$ exactement quand $x \geqslant \delta$. De plus, on a vu que tout élément de $E_0$ est strictement inférieur à $c = \lim c_\ell$ et que $c \leqslant \delta$ ; comme $]-\infty, \delta[ \subset E_0$, on a aussi $\delta \leqslant c$, donc $\delta = c$ : le seuil est la limite de la suite $(c_\ell)$.

## Going further

- À la calculatrice, $c_2 \approx -\text{0,367}$, $c_3 \approx -\text{0,239}$, $c_4 \approx \text{0,046}$, $c_5 \approx \text{0,212}$, $c_{10} \approx \text{0,3130}$, et la limite est $\delta \approx \text{0,31328}$. Que se passe-t-il, terme après terme, pour la suite partie exactement de $\delta$ ?
- Pourquoi le seuil appartient-il à $E_\infty$ et non à $E_0$ ? On peut aussi le voir avec la continuité : si $u_N(\delta) < 1$, alors $u_N(x) < 1$ pour tout $x$ assez proche de $\delta$, y compris un peu au-dessus de $\delta$. Rédiger cet argument.
