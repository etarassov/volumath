---
id: "40727"
title: "Un critère pour qu'une suite (1 + 1/xₙ)ⁿ tende vers l'infini"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [suites, suite-recurrente, logarithme, exponentielle, derivee, encadrement, raisonnement-par-l-absurde, recurrence, limite]
adapted_from: null
see_also: ["40726", "40728", "40729"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 2 « Un nombre explosif », partie II « Un critère d'explosivité », questions 5 à 7"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $f_n$ la fonction définie sur $]0 ; +\infty[$ par
$f_n(x) = \left( 1 + \frac{1}{x} \right)^n$. On admet que, pour tout réel $x > 0$ et tout entier
$n \geq 1$,

$$\exp\left( \frac{n}{x+1} \right) \leq f_n(x) \leq \exp\left( \frac{n}{x} \right).$$

Si $\alpha$ est un réel strictement positif, la **suite associée à $\alpha$** est la suite $(x_n)$
définie par $x_1 = \alpha$ et $x_{n+1} = f_n(x_n)$ pour tout entier $n \geq 1$. Ses termes sont tous
strictement positifs. On dit que $\alpha$ est **explosif** si la suite associée à $\alpha$ tend vers
$+\infty$.

Pour tout entier $n \geq 1$, on pose

$$y_n = \frac{n+1}{\ln(n+2)} - 1.$$

1. a) Étudier les variations de la fonction $g$ définie sur $[2 ; +\infty[$ par
   $g(x) = \frac{x}{\ln(x+1)}$.

   b) En déduire que, pour tout entier $n \geq 8$, on a $y_n > \mathrm{e}$.

   c) Démontrer que, pour tout entier $n \geq 2$, on a $y_n > 1$ et
   $y_{n-1} \leq \frac{n}{\ln(y_n)}$.

2. Soit $\alpha > 0$ et $(x_n)$ la suite associée à $\alpha$.

   a) Démontrer que, pour tout entier $n \geq 8$, si $x_n < y_{n-1}$, alors $x_{n+1} > n + 1$ et
   $x_{n+2} < \mathrm{e}$.

   b) En déduire que, si $\alpha$ est explosif, alors $x_n \geq y_{n-1}$ pour tout entier $n \geq 8$.

   c) Démontrer que, si $\alpha$ est explosif, alors $x_n \leq \frac{n}{\ln(y_n)}$ pour tout entier
   $n \geq 8$.

   d) Démontrer que $\alpha$ est explosif si et seulement si, pour tout entier $n \geq 8$,
   $$y_{n-1} \leq x_n \leq \frac{n}{\ln(y_n)}.$$

3. Soit $\alpha$, $\beta$, $\gamma$ des réels strictement positifs tels que
   $\alpha \leq \beta \leq \gamma$. Démontrer que, si $\alpha$ et $\gamma$ sont explosifs, alors
   $\beta$ est explosif.

## Hints

1. **Question 1 a).** Le signe de $g'(x)$ est celui de $\ln(x+1) - \frac{x}{x+1}$. Étudier cette
   expression comme une fonction de $x$ sur $[0 ; +\infty[$.
2. **Question 1 b).** Écrire $y_n$ à l'aide de $g$. À la calculatrice, combien vaut $g(9) - 1$ ?
3. **Question 1 c).** Comparer $y_n$ et $n + 1$, puis $\ln(y_n)$ et $\ln(n+1)$.
4. **Question 2 a).** Utiliser la minoration admise pour $x_{n+1} = f_n(x_n)$, et remarquer que
   $y_{n-1} + 1 = \frac{n}{\ln(n+1)}$. Pour $x_{n+2}$, utiliser la majoration admise.
5. **Question 2 b).** Si $x_n < y_{n-1}$ pour un $n \geq 8$, alors $x_{n+2} < \mathrm{e} < y_{n+1}$ :
   on peut recommencer à partir du rang $n + 2$. Que devient la suite ?
6. **Question 2 c).** Si $x_n > \frac{n}{\ln(y_n)}$, que peut-on dire de $x_{n+1}$ ? Comparer à 2 b).
7. **Question 3.** Les fonctions $f_n$ sont décroissantes. Montrer par récurrence que, pour tout $n$,
   le terme de rang $n$ de la suite associée à $\beta$ est compris entre ceux des suites associées
   à $\alpha$ et à $\gamma$.

## Solution

**1. a)** La fonction $g$ est dérivable sur $[2 ; +\infty[$, et

$$g'(x) = \frac{\ln(x+1) - \frac{x}{x+1}}{(\ln(x+1))^2}.$$

Posons $\varphi(x) = \ln(1+x) - \frac{x}{1+x} = \ln(1+x) - 1 + \frac{1}{1+x}$ pour $x \geq 0$. Alors

$$\varphi'(x) = \frac{1}{1+x} - \frac{1}{(1+x)^2} = \frac{x}{(1+x)^2},$$

qui est strictement positif pour $x > 0$. Donc $\varphi$ est strictement croissante sur
$[0 ; +\infty[$, et comme $\varphi(0) = 0$, on a $\varphi(x) > 0$ pour $x > 0$. Ainsi $g'(x) > 0$
sur $[2 ; +\infty[$ : **$g$ est strictement croissante sur $[2 ; +\infty[$**.

**1. b)** Pour tout $n \geq 1$, $y_n = g(n+1) - 1$. Si $n \geq 8$, alors $n + 1 \geq 9$ et, $g$ étant
croissante, $y_n \geq g(9) - 1 = \frac{9}{\ln 10} - 1$. À la calculatrice, $\frac{9}{\ln 10} \approx \text{3,909}$,
donc $y_n \geq \text{2,90} > \mathrm{e} \approx \text{2,718}$.

**1. c)** Soit $n \geq 2$. Comme $n + 1 \geq 3$, on a $y_n \geq g(3) - 1 = \frac{3}{\ln 4} - 1$. Or
$\ln 4 < \text{1,5}$ (car $\mathrm{e}^{\text{1,5}} \approx \text{4,48} > 4$), donc $\frac{3}{\ln 4} > 2$ et $y_n > 1$.

Ensuite, $\ln(n+2) > 1$ car $n + 2 > \mathrm{e}$, donc $y_n < \frac{n+1}{\ln(n+2)} < n + 1$. Comme
$1 < y_n < n + 1$, la croissance de $\ln$ donne $0 < \ln(y_n) < \ln(n+1)$, donc

$$\frac{n}{\ln(y_n)} > \frac{n}{\ln(n+1)} > \frac{n}{\ln(n+1)} - 1 = y_{n-1}.$$

**2. a)** Soit $n \geq 8$ tel que $x_n < y_{n-1}$. Remarquons que $y_{n-1} + 1 = \frac{n}{\ln(n+1)}$.
Comme $0 < x_n + 1 < y_{n-1} + 1$, on a $\frac{n}{x_n + 1} > \frac{n}{y_{n-1} + 1} = \ln(n+1)$. Par la
minoration admise et la stricte croissance de l'exponentielle,

$$x_{n+1} = f_n(x_n) \geq \exp\left( \frac{n}{x_n + 1} \right) > \exp(\ln(n+1)) = n + 1.$$

Par la majoration admise, puisque $\frac{n+1}{x_{n+1}} < 1$,

$$x_{n+2} = f_{n+1}(x_{n+1}) \leq \exp\left( \frac{n+1}{x_{n+1}} \right) < \exp(1) = \mathrm{e}.$$

**2. b)** Supposons $\alpha$ explosif, et supposons par l'absurde qu'il existe $n_0 \geq 8$ tel que
$x_{n_0} < y_{n_0 - 1}$. Montrons par récurrence que $x_{n_0 + 2j} < \mathrm{e}$ pour tout $j \geq 1$.

- Pour $j = 1$, c'est la question a) au rang $n_0$.
- Si $x_{n_0 + 2j} < \mathrm{e}$, posons $n = n_0 + 2j \geq 8$. D'après 1. b), $y_{n-1} > \mathrm{e}$
  car $n - 1 \geq 8$, donc $x_n < y_{n-1}$, et la question a) au rang $n$ donne
  $x_{n+2} = x_{n_0 + 2(j+1)} < \mathrm{e}$.

Ainsi une infinité de termes de la suite sont inférieurs à $\mathrm{e}$, ce qui est impossible si
la suite tend vers $+\infty$ (à partir d'un certain rang, tous ses termes dépassent $\mathrm{e}$).
Donc **$x_n \geq y_{n-1}$ pour tout $n \geq 8$**.

**2. c)** Supposons $\alpha$ explosif, et supposons par l'absurde que
$x_n > \frac{n}{\ln(y_n)}$ pour un entier $n \geq 8$. D'après 1. b), $y_n > \mathrm{e}$, donc
$\ln(y_n) > 1 > 0$, et $\frac{n}{x_n} < \ln(y_n)$. Par la majoration admise,

$$x_{n+1} = f_n(x_n) \leq \exp\left( \frac{n}{x_n} \right) < \exp(\ln(y_n)) = y_n.$$

Ainsi $x_{n+1} < y_{(n+1)-1}$ avec $n + 1 \geq 8$, ce qui contredit la question b). Donc
**$x_n \leq \frac{n}{\ln(y_n)}$ pour tout $n \geq 8$**.

**2. d)** Si $\alpha$ est explosif, l'encadrement résulte de b) et c).

Réciproquement, supposons $y_{n-1} \leq x_n$ pour tout $n \geq 8$. On a
$y_{n-1} = \frac{n}{\ln(n+1)} - 1 = \frac{n}{n+1} \times \frac{n+1}{\ln(n+1)} - 1$. Par croissances
comparées, $\frac{n+1}{\ln(n+1)}$ tend vers $+\infty$, et $\frac{n}{n+1}$ tend vers $1$, donc
$y_{n-1}$ tend vers $+\infty$. Par comparaison, $x_n$ tend vers $+\infty$ : $\alpha$ est explosif.
(Seule la minoration sert dans ce sens.)

**3.** Notons $(a_n)$, $(b_n)$, $(c_n)$ les suites associées à $\alpha$, $\beta$, $\gamma$. Chaque
fonction $f_n$ est strictement décroissante sur $]0 ; +\infty[$, comme composée de
$x \mapsto 1 + \frac{1}{x}$, décroissante et à valeurs dans $]1 ; +\infty[$, et de
$u \mapsto u^n$, croissante sur cet intervalle.

Montrons par récurrence que, pour tout $n \geq 1$, $b_n$ est compris entre $a_n$ et $c_n$ (au sens
large, dans un ordre ou dans l'autre). C'est vrai pour $n = 1$ car $\alpha \leq \beta \leq \gamma$.
Si c'est vrai au rang $n$, par exemple $a_n \leq b_n \leq c_n$, alors la décroissance de $f_n$ donne
$f_n(c_n) \leq f_n(b_n) \leq f_n(a_n)$, c'est-à-dire $c_{n+1} \leq b_{n+1} \leq a_{n+1}$ ; le cas
$c_n \leq b_n \leq a_n$ est symétrique. C'est donc vrai au rang $n + 1$.

Comme $\alpha$ et $\gamma$ sont explosifs, la question 2. d) donne, pour tout $n \geq 8$,
$y_{n-1} \leq a_n \leq \frac{n}{\ln(y_n)}$ et $y_{n-1} \leq c_n \leq \frac{n}{\ln(y_n)}$. Le nombre
$b_n$, compris entre $a_n$ et $c_n$, vérifie donc aussi
$y_{n-1} \leq b_n \leq \frac{n}{\ln(y_n)}$ pour tout $n \geq 8$. D'après 2. d), **$\beta$ est
explosif**.

**Bilan.** Un réel $\alpha > 0$ est explosif exactement quand, à partir du rang $8$, chaque terme
$x_n$ de sa suite reste dans l'intervalle $\left[ y_{n-1} ; \frac{n}{\ln(y_n)} \right]$ : s'il en sort
une seule fois, la suite retombe sous $\mathrm{e}$ une infinité de fois. On en déduit que l'ensemble
des nombres explosifs n'a pas de trou : si deux nombres sont explosifs, tous ceux qui sont entre les
deux le sont aussi.

## Going further

- Les deux bornes de l'intervalle sont toutes deux de l'ordre de $\frac{n}{\ln n}$ quand $n$ est
  grand : une suite explosive grandit lentement. À la calculatrice, prenez
  $\alpha = \text{1,1874523}$ et vérifiez que $x_n$ reste entre $y_{n-1}$ et $\frac{n}{\ln(y_n)}$
  pour $n$ de $8$ à $25$. Que se passe-t-il ensuite, et pourquoi ?
- Ce critère ne dit pas s'il existe un nombre explosif. Dans la suite du sujet, on montrait qu'il en
  existe un, et un seul : voir les exercices 40728 et 40729.
