---
id: "40762"
title: "uₙ₊₁ = exp(uₙ)/(n + 1) : partie de 0 elle s'éteint, partie de 1 elle explose"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 40
tags: [suites, suite-recurrente, exponentielle, recurrence, monotonie, derivee, limite, intervalle]
adapted_from: null
see_also: ["40761", "40763"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 1 « Le début justifie la fin », questions 4 à 7"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Pour tout réel $x$, on note $u(x)$ la suite définie par

$$u_0(x) = x \quad \text{et} \quad u_{n+1}(x) = \frac{\exp(u_n(x))}{n+1} \quad \text{pour tout entier } n \geqslant 0.$$

Ainsi $u_1(x) = \exp(x)$. On note $E_0$ l'ensemble des réels $x$ pour lesquels la suite $u(x)$ converge vers $0$, et $E_\infty$ l'ensemble des réels $x$ pour lesquels elle diverge vers $+\infty$.

On admet les deux résultats suivants, valables pour toute suite $(u_n)$ qui vérifie la relation $u_{n+1} = \frac{\exp(u_n)}{n+1}$ :

- ses termes sont strictement positifs à partir du rang $1$ ;
- s'il existe un rang $N \geqslant 2$ tel que $u_N \leqslant 1$, alors elle converge vers $0$.

1. Démontrer que $0 \in E_0$. On pourra utiliser la calculatrice.
2. a) Démontrer, pour tout entier $n \geqslant 0$, que la fonction $x \mapsto u_n(x)$ est strictement croissante sur $\mathbb{R}$.

   b) En déduire que, si $x$ appartient à $E_0$, alors l'intervalle $]-\infty, x]$ est inclus dans $E_0$.
3. a) Démontrer que la fonction $x \mapsto \exp(x) - x(x+1)$ est strictement positive sur l'intervalle $[2, +\infty[$.

   b) Soit $(u_n)$ une suite qui vérifie $u_{n+1} = \frac{\exp(u_n)}{n+1}$ pour tout $n \geqslant 0$. Démontrer que, s'il existe un rang $N \geqslant 1$ tel que $u_N \geqslant N + 1$, alors $(u_n)$ diverge vers $+\infty$.

   c) Démontrer que $1 \in E_\infty$.
4. Démontrer que, si $x$ appartient à $E_\infty$, alors l'intervalle $[x, +\infty[$ est inclus dans $E_\infty$.

## Hints

1. **Question 1.** Calculer les premiers termes de $u(0)$ jusqu'à en trouver un, d'indice au moins $2$, qui soit inférieur ou égal à $1$.
2. **Question 2.** Raisonner par récurrence sur $n$, en utilisant que la fonction exponentielle est strictement croissante.
3. **Question 3.** Pour a), étudier le signe de la dérivée, quitte à dériver une deuxième fois.
4. **Question 3.** Pour b), montrer par récurrence que $u_n \geqslant n + 1$ pour tout $n \geqslant N$, en appliquant a) au nombre $u_n$.

## Solution

**1.** On calcule les termes de la suite $u(0)$ :

$$u_0 = 0, \quad u_1 = \exp(0) = 1, \quad u_2 = \frac{\mathrm{e}}{2} \approx \text{1,359}, \quad u_3 = \frac{\exp(\mathrm{e}/2)}{3} \approx \text{1,298}, \quad u_4 = \frac{\exp(u_3)}{4} \approx \text{0,915}.$$

Ainsi $u_4 \leqslant 1$, avec $4 \geqslant 2$, donc la suite $u(0)$ converge vers $0$ : $0 \in E_0$.

On peut rendre le calcul de $u_4$ incontestable. On a $u_4 \leqslant 1$ si et seulement si $\exp(u_3) \leqslant 4$, c'est-à-dire $u_3 \leqslant \ln 4$, c'est-à-dire $\exp(\mathrm{e}/2) \leqslant 3 \ln 4$, c'est-à-dire $\frac{\mathrm{e}}{2} \leqslant \ln(3 \ln 4)$. Or $\frac{\mathrm{e}}{2} \approx \text{1,359}$ et $\ln(3 \ln 4) \approx \text{1,425}$ : l'écart est bien plus grand que les erreurs d'arrondi.

**2. a)** Récurrence sur $n$. Pour $n = 0$, $u_0(x) = x$ : la fonction est strictement croissante. Supposons $x \mapsto u_n(x)$ strictement croissante, et soit $x < y$. Alors $u_n(x) < u_n(y)$, donc $\exp(u_n(x)) < \exp(u_n(y))$ car l'exponentielle est strictement croissante, et en divisant par $n + 1 > 0$ : $u_{n+1}(x) < u_{n+1}(y)$.

**b)** Soit $x \in E_0$ et $y \leqslant x$. Pour tout $n \geqslant 1$, d'après a) et la positivité des termes,

$$0 < u_n(y) \leqslant u_n(x).$$

Comme $u_n(x)$ tend vers $0$, le théorème des gendarmes montre que $u_n(y)$ tend vers $0$ : $y \in E_0$. Donc $]-\infty, x] \subset E_0$.

**3. a)** Posons $\varphi(x) = \exp(x) - x^2 - x$. Alors $\varphi'(x) = \exp(x) - 2x - 1$ et $\varphi''(x) = \exp(x) - 2$. Pour $x \geqslant 2$, $\exp(x) \geqslant \mathrm{e}^2 > 2$, donc $\varphi'' > 0$ et $\varphi'$ est strictement croissante sur $[2, +\infty[$. Comme $\varphi'(2) = \mathrm{e}^2 - 5 \approx \text{2,39} > 0$, on a $\varphi' > 0$ sur $[2, +\infty[$, donc $\varphi$ y est strictement croissante. Enfin $\varphi(2) = \mathrm{e}^2 - 6 \approx \text{1,39} > 0$, donc $\varphi(x) > 0$ pour tout $x \geqslant 2$.

**b)** Montrons par récurrence que $u_n \geqslant n + 1$ pour tout $n \geqslant N$. C'est vrai pour $n = N$. Supposons $u_n \geqslant n + 1$ pour un $n \geqslant N$. Comme $n \geqslant 1$, on a $u_n \geqslant 2$, et a) donne

$$\exp(u_n) > u_n\,(u_n + 1) \geqslant (n+1)(n+2),$$

car $u_n \geqslant n + 1$ et $u_n + 1 \geqslant n + 2$ sont des nombres positifs. En divisant par $n + 1$, on obtient $u_{n+1} > n + 2$.

Donc $u_n \geqslant n + 1$ pour tout $n \geqslant N$, et comme $n + 1$ tend vers $+\infty$, la suite $(u_n)$ diverge vers $+\infty$.

**c)** Pour $x = 1$, on a $u_1(1) = \mathrm{e} \approx \text{2,718} \geqslant 2 = 1 + 1$. La question b) avec $N = 1$ montre que $u(1)$ diverge vers $+\infty$ : $1 \in E_\infty$.

**4.** Soit $x \in E_\infty$ et $y \geqslant x$. D'après la question 2 a), $u_n(y) \geqslant u_n(x)$ pour tout $n$, et $u_n(x)$ tend vers $+\infty$, donc $u_n(y)$ aussi (par comparaison) : $y \in E_\infty$. Donc $[x, +\infty[ \subset E_\infty$.

**Bilan.** La suite partie de $0$ converge vers $0$ et la suite partie de $1$ diverge vers $+\infty$. Plus la valeur de départ est grande, plus tous les termes sont grands : si un départ $x$ mène à $0$, tout départ plus petit aussi ; si un départ mène à $+\infty$, tout départ plus grand aussi.

## Going further

- Dans la suite du sujet, on montrait qu'il existe un seuil $\delta$ entre $0$ et $1$ tel que $]-\infty, \delta[ = E_0$ et $[\delta, +\infty[ = E_\infty$ (exercice 40763). Par dichotomie à la calculatrice, pouvez-vous trouver les deux premières décimales de $\delta$ ? (On trouve $\delta \approx \text{0,3133}$.)
- Le sujet montrait aussi qu'une telle suite qui ne tend pas vers $0$ tend forcément vers $+\infty$ (exercice 40761). Les ensembles $E_0$ et $E_\infty$ se partagent donc tout $\mathbb{R}$.
