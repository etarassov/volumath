---
id: "40728"
title: "Des intervalles emboîtés pour trouver les nombres explosifs"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [suites, suite-recurrente, composee, monotonie, theoreme-des-valeurs-intermediaires, suite-monotone, encadrement, calculatrice, recurrence]
adapted_from: null
see_also: ["40726", "40727", "40729"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 2 « Un nombre explosif », partie III « Un unique nombre explosif », questions 8 à 11"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $f_n$ la fonction définie sur $]0 ; +\infty[$ par
$f_n(x) = \left( 1 + \frac{1}{x} \right)^n$. Pour un réel $c > 0$, la **suite associée à $c$** est
la suite $(x_n)$ définie par $x_1 = c$ et $x_{n+1} = f_n(x_n)$ pour tout $n \geq 1$. On dit que $c$
est **explosif** si la suite associée à $c$ tend vers $+\infty$. Pour tout entier $n \geq 1$, on pose
$y_n = \frac{n+1}{\ln(n+2)} - 1$.

On admet les résultats suivants, démontrés dans d'autres parties du problème.

- **(A1)** Pour tout réel $x > 0$ et tout entier $n \geq 1$,
  $\exp\left( \frac{n}{x+1} \right) \leq f_n(x) \leq \exp\left( \frac{n}{x} \right)$.
- **(A2)** Pour tout entier $n \geq 8$, $y_n > \mathrm{e}$. Pour tout entier $n \geq 2$,
  $y_{n-1} \leq \frac{n}{\ln(y_n)}$. Et $y_n$ tend vers $+\infty$ quand $n$ tend vers $+\infty$.
- **(A3)** Un réel $c > 0$ est explosif si et seulement si sa suite associée vérifie
  $y_{n-1} \leq x_n \leq \frac{n}{\ln(y_n)}$ pour tout entier $n \geq 8$.

On pose $h_1 = f_1$ et, pour tout entier $n \geq 2$, $h_n(x) = f_n(h_{n-1}(x))$ pour tout $x > 0$. On
note $h_n(\mathbb{R}_+^*)$ l'ensemble des valeurs $h_n(x)$ quand $x$ décrit $]0 ; +\infty[$. On
admet que chaque fonction $h_n$ est continue sur $]0 ; +\infty[$.

1. a) Donner l'expression de $h_2(x)$ pour $x > 0$.

   b) Soit $c > 0$ et $(x_n)$ sa suite associée. Exprimer $x_{n+1}$ à l'aide de $h_n$ et de $c$.

2. a) Démontrer que, pour tout entier $n \geq 1$, la fonction $h_n$ est strictement monotone sur
   $]0 ; +\infty[$.

   b) À la calculatrice, et sans justification, trouver des valeurs approchées à $10^{-2}$ près des
   réels $u$ et $v$ tels que $h_8(\mathbb{R}_+^*) = \, ]u ; v[$. Vérifier que $u < \mathrm{e}$ et
   $v > 9$.

   c) Démontrer que, pour tout entier $n \geq 9$, l'intervalle $[\mathrm{e} ; n]$ est contenu dans
   $h_{n-1}(\mathbb{R}_+^*)$.

   d) En déduire que, pour tout entier $n \geq 9$, l'intervalle
   $\left[ y_{n-1} ; \frac{n}{\ln(y_n)} \right]$ est contenu dans $h_{n-1}(\mathbb{R}_+^*)$.

Pour tout entier $n \geq 9$, on pose $I_n = \left[ y_{n-1} ; \frac{n}{\ln(y_n)} \right]$ et on note
$J_n$ l'ensemble des réels $x > 0$ tels que $h_{n-1}(x) \in I_n$.

3. a) Démontrer que, pour tout entier $n \geq 9$, il existe deux réels $a_n \leq b_n$ tels que
   $J_n = [a_n ; b_n]$.

   b) Démontrer que, pour tout entier $n \geq 9$, $J_{n+1} \subset J_n$.

   c) En déduire que les suites $(a_n)$ et $(b_n)$ convergent.

On note $\alpha$ et $\beta$ les limites respectives de $(a_n)$ et $(b_n)$, et $(\alpha_n)$,
$(\beta_n)$ les suites associées à $\alpha$ et à $\beta$.

4. a) Démontrer que $\alpha$ et $\beta$ sont explosifs.

   b) Démontrer qu'un réel $x > 0$ est explosif si et seulement si $\alpha \leq x \leq \beta$.

## Hints

1. **Question 2 a).** Chaque $f_n$ est strictement décroissante. Que donne la composée de deux
   fonctions strictement décroissantes ?
2. **Question 2 b).** $h_8$ est croissante : $u$ et $v$ sont ses limites en $0$ et en $+\infty$.
   Quand $x$ tend vers $0$, $h_1(x)$ tend vers $+\infty$, donc $h_2(x)$ tend vers $1$. Continuer
   ainsi, de proche en proche.
3. **Question 2 c).** Notons $h_m(\mathbb{R}_+^*) = \, ]u_m ; v_m[$. Exprimer $u_{m+1}$ et $v_{m+1}$ à
   l'aide de $f_{m+1}$, $u_m$ et $v_m$, puis montrer par récurrence sur $m \geq 8$ que
   $u_m < \mathrm{e}$ et $v_m > m + 1$.
4. **Question 2 c).** Pour l'hérédité, comparer $f_{m+1}(v_m)$ à $f_{m+1}(m+1)$, et $f_{m+1}(u_m)$ à
   $f_{m+1}(\mathrm{e}) = \left( 1 + \frac{1}{\mathrm{e}} \right)^{m+1}$.
5. **Question 3 b).** Soit $x \in J_{n+1}$ et $t = h_{n-1}(x)$, de sorte que $h_n(x) = f_n(t)$.
   Montrer, avec (A1), que si $t < y_{n-1}$ alors $f_n(t) > n + 1$, et que si $t > \frac{n}{\ln(y_n)}$
   alors $f_n(t) < y_n$.
6. **Question 4 a).** Pourquoi $\alpha$ appartient-il à tous les intervalles $J_n$ ?

## Solution

**1. a)** $h_2(x) = f_2(f_1(x)) = \left( 1 + \frac{1}{1 + \frac{1}{x}} \right)^2 = \left( 1 + \frac{x}{x+1} \right)^2 = \left( \frac{2x+1}{x+1} \right)^2$.

**1. b)** Montrons par récurrence que $x_{n+1} = h_n(c)$ pour tout $n \geq 1$. Pour $n = 1$,
$x_2 = f_1(x_1) = f_1(c) = h_1(c)$. Si $x_{n+1} = h_n(c)$, alors
$x_{n+2} = f_{n+1}(x_{n+1}) = f_{n+1}(h_n(c)) = h_{n+1}(c)$.

**2. a)** Chaque $f_n$ est strictement décroissante sur $]0 ; +\infty[$ : $x \mapsto 1 + \frac{1}{x}$
est strictement décroissante, à valeurs dans $]1 ; +\infty[$, et $u \mapsto u^n$ est strictement
croissante sur cet intervalle. De plus $f_n$ prend ses valeurs dans $]0 ; +\infty[$, donc les
composées ont un sens.

On montre par récurrence que $h_n$ est strictement décroissante si $n$ est impair, strictement
croissante si $n$ est pair. C'est vrai pour $h_1 = f_1$. Si $h_{n-1}$ est strictement croissante et
$x < x'$, alors $h_{n-1}(x) < h_{n-1}(x')$, donc $h_n(x) = f_n(h_{n-1}(x)) > f_n(h_{n-1}(x')) = h_n(x')$ :
$h_n$ est strictement décroissante. De même, si $h_{n-1}$ est strictement décroissante, $h_n$ est
strictement croissante. Dans tous les cas, $h_n$ est strictement monotone.

**2. b)** La fonction $h_8$ est continue et strictement croissante, donc $u$ et $v$ sont ses limites
en $0$ et en $+\infty$. On les obtient de proche en proche, par continuité des $f_n$ :

- quand $x \to 0$ : $h_1(x) \to +\infty$, $h_2(x) \to 1$, $h_3(x) \to f_3(1) = 8$,
  $h_4(x) \to f_4(8) \approx \text{1,60}$, et ainsi de suite jusqu'à $u \approx \text{1,34}$ ;
- quand $x \to +\infty$ : $h_1(x) \to 1$, $h_2(x) \to f_2(1) = 4$,
  $h_3(x) \to f_3(4) \approx \text{1,95}$, et ainsi de suite jusqu'à $v \approx \text{18,70}$.

On a bien $u \approx \text{1,34} < \mathrm{e}$ et $v \approx \text{18,70} > 9$.

**2. c)** Pour $m \geq 2$, $h_m$ est continue et strictement monotone sur $]0 ; +\infty[$, donc son
image est un intervalle ouvert, que l'on note $]u_m ; v_m[$. On a $u_8 = u$ et $v_8 = v$.

*Lien entre deux images successives.* Par définition, $h_{m+1}(\mathbb{R}_+^*)$ est l'ensemble des
$f_{m+1}(t)$ pour $t$ dans $]u_m ; v_m[$. Comme $f_{m+1}$ est continue et strictement décroissante,
cet ensemble est $]f_{m+1}(v_m) ; f_{m+1}(u_m)[$ (toute valeur strictement entre les deux est
atteinte, par le théorème des valeurs intermédiaires). Donc

$$u_{m+1} = f_{m+1}(v_m) \qquad \text{et} \qquad v_{m+1} = f_{m+1}(u_m).$$

*Récurrence.* Montrons que $u_m < \mathrm{e}$ et $v_m > m + 1$ pour tout $m \geq 8$. Pour $m = 8$,
c'est la question b). Supposons-le au rang $m \geq 8$.

- Comme $v_m > m + 1$ et $f_{m+1}$ est strictement décroissante, avec (A1) :
  $u_{m+1} = f_{m+1}(v_m) < f_{m+1}(m+1) \leq \exp\left( \frac{m+1}{m+1} \right) = \mathrm{e}$.
- Comme $u_m < \mathrm{e}$ : $v_{m+1} = f_{m+1}(u_m) > f_{m+1}(\mathrm{e}) = \left( 1 + \frac{1}{\mathrm{e}} \right)^{m+1}$.
  Or $\left( 1 + \frac{1}{\mathrm{e}} \right)^k \geq k + 1$ pour tout $k \geq 9$ : pour $k = 9$,
  $\left( 1 + \frac{1}{\mathrm{e}} \right)^9 \approx \text{16,7} \geq 10$, et si c'est vrai pour $k$,
  alors $\left( 1 + \frac{1}{\mathrm{e}} \right)^{k+1} \geq \left( 1 + \frac{1}{\mathrm{e}} \right)(k+1) = k + 1 + \frac{k+1}{\mathrm{e}} \geq k + 2$
  car $k + 1 \geq \mathrm{e}$. Avec $k = m + 1 \geq 9$, on obtient $v_{m+1} > m + 2$.

Pour $n \geq 9$, on applique ce résultat à $m = n - 1 \geq 8$ : $u_{n-1} < \mathrm{e}$ et
$v_{n-1} > n$, donc $[\mathrm{e} ; n] \subset \, ]u_{n-1} ; v_{n-1}[ = h_{n-1}(\mathbb{R}_+^*)$.

**2. d)** Soit $n \geq 9$. D'après (A2), $y_{n-1} > \mathrm{e}$ car $n - 1 \geq 8$, et $y_n > \mathrm{e}$,
donc $\ln(y_n) > 1$ et $\frac{n}{\ln(y_n)} < n$. Ainsi
$\left[ y_{n-1} ; \frac{n}{\ln(y_n)} \right] \subset [\mathrm{e} ; n] \subset h_{n-1}(\mathbb{R}_+^*)$.

**3. a)** Soit $n \geq 9$, et notons $I_n = [c ; d]$, avec $c \leq d$ d'après (A2). D'après 2. d),
$c$ et $d$ sont des valeurs de $h_{n-1}$ : il existe $x_c$ et $x_d$ tels que $h_{n-1}(x_c) = c$ et
$h_{n-1}(x_d) = d$, uniques puisque $h_{n-1}$ est strictement monotone.

Si $h_{n-1}$ est croissante, $h_{n-1}(x) \in [c ; d]$ équivaut à $x \in [x_c ; x_d]$ : en effet,
pour $x < x_c$ on a $h_{n-1}(x) < c$, pour $x > x_d$ on a $h_{n-1}(x) > d$, et entre les deux
$c \leq h_{n-1}(x) \leq d$. Si $h_{n-1}$ est décroissante, on trouve de même $J_n = [x_d ; x_c]$.
Dans les deux cas, $J_n = [a_n ; b_n]$ avec $a_n = \min(x_c, x_d) \leq b_n = \max(x_c, x_d)$.

**3. b)** Soit $n \geq 9$ et $x \in J_{n+1}$, c'est-à-dire
$y_n \leq h_n(x) \leq \frac{n+1}{\ln(y_{n+1})}$. Posons $t = h_{n-1}(x) > 0$, de sorte que
$h_n(x) = f_n(t)$.

- Si $t < y_{n-1}$ : comme $y_{n-1} + 1 = \frac{n}{\ln(n+1)}$, on a
  $\frac{n}{t+1} > \frac{n}{y_{n-1}+1} = \ln(n+1)$, donc, par (A1),
  $f_n(t) \geq \exp\left( \frac{n}{t+1} \right) > n + 1$. Mais $y_{n+1} > \mathrm{e}$, donc
  $\ln(y_{n+1}) > 1$ et $\frac{n+1}{\ln(y_{n+1})} < n + 1 < f_n(t)$. C'est impossible.
- Si $t > \frac{n}{\ln(y_n)}$ : comme $\ln(y_n) > 0$, on a $\frac{n}{t} < \ln(y_n)$, donc, par (A1),
  $f_n(t) \leq \exp\left( \frac{n}{t} \right) < y_n$. C'est impossible aussi.

Donc $t \in I_n$, c'est-à-dire $x \in J_n$. Ainsi $J_{n+1} \subset J_n$.

**3. c)** Pour $n \geq 9$, $[a_{n+1} ; b_{n+1}] \subset [a_n ; b_n]$ donne
$a_n \leq a_{n+1} \leq b_{n+1} \leq b_n$. La suite $(a_n)$ est donc croissante, et majorée par $b_9$
(car $a_n \leq b_n \leq b_9$). La suite $(b_n)$ est décroissante et minorée par $a_9$. Par le théorème
de la limite monotone, **les deux suites convergent**.

**4. a)** Soit $n \geq 9$. Pour tout $p \geq n$, on a $a_n \leq a_p \leq b_p \leq b_n$. En faisant
tendre $p$ vers $+\infty$, on obtient $a_n \leq \alpha \leq \beta \leq b_n$. Donc $\alpha$ et $\beta$
appartiennent à $J_n$ pour tout $n \geq 9$. En particulier $\alpha \geq a_9 > 0$, car $J_9$ ne
contient que des réels strictement positifs : les suites associées à $\alpha$ et à $\beta$ ont un sens.

D'après 1. b), $\alpha_n = h_{n-1}(\alpha)$ pour $n \geq 2$. Donc $\alpha_n \in I_n$, et en
particulier $\alpha_n \geq y_{n-1}$, pour tout $n \geq 9$. Comme $y_{n-1}$ tend vers $+\infty$
d'après (A2), $\alpha_n$ tend vers $+\infty$ : **$\alpha$ est explosif**. De même pour $\beta$.

**4. b)** *Si $x$ est explosif*, sa suite associée vérifie $y_{n-1} \leq x_n \leq \frac{n}{\ln(y_n)}$
pour tout $n \geq 8$, d'après (A3). Pour $n \geq 9$, cela s'écrit $h_{n-1}(x) \in I_n$, donc
$x \in J_n$, c'est-à-dire $a_n \leq x \leq b_n$. En passant à la limite, $\alpha \leq x \leq \beta$.

*Réciproquement*, si $\alpha \leq x \leq \beta$, alors, pour tout $n \geq 9$,
$a_n \leq \alpha \leq x \leq \beta \leq b_n$, donc $x \in J_n$ et $x_n = h_{n-1}(x) \in I_n$. En
particulier $x_n \geq y_{n-1}$ pour tout $n \geq 9$, donc $x_n$ tend vers $+\infty$ : $x$ est
explosif.

**Bilan.** On a démontré qu'il existe des nombres explosifs, et que l'ensemble des nombres explosifs
est exactement l'intervalle $[\alpha ; \beta]$, où $\alpha$ et $\beta$ sont les limites des
extrémités des intervalles emboîtés $J_n$. On n'a pas encore montré que $\alpha = \beta$.

## Going further

- Dans la suite du sujet (exercice 40729), on montrait que $\alpha = \beta$ : il n'y a qu'un seul
  nombre explosif. L'idée est qu'au voisinage de la suite explosive, la fonction $f_n$ écarte les
  points : deux suites qui partent de $\alpha$ et de $\beta$ s'éloigneraient l'une de l'autre au
  moins comme $2^n$, alors qu'elles restent toutes deux dans $I_n$, qui est de longueur au plus $n$.
- À la calculatrice, calculez $a_{20}$ et $b_{20}$ en résolvant $h_{19}(x) = y_{19}$ et
  $h_{19}(x) = \frac{20}{\ln(y_{20})}$ par dichotomie.
