---
id: "40761"
title: "uₙ₊₁ = exp(uₙ)/(n + 1) : la suite tend vers 0 ou vers +∞"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [suites, suite-recurrente, exponentielle, logarithme, limite, encadrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40762", "40763"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 1 « Le début justifie la fin », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

On considère les suites réelles $(u_n)_{n \geqslant 0}$ qui vérifient

$$u_{n+1} = \frac{\exp(u_n)}{n+1} \quad \text{pour tout entier } n \geqslant 0.$$

Le premier terme $u_0$ peut être n'importe quel nombre réel.

1. Démontrer qu'une telle suite est strictement positive à partir du rang $1$.
2. Démontrer que, s'il existe un rang $N \geqslant 2$ tel que $u_N \leqslant 1$, alors la suite
   $(u_n)$ converge vers $0$.
3. Démontrer que, si la suite $(u_n)$ ne converge pas vers $0$, alors elle diverge vers $+\infty$.

## Hints

1. **Question 2.** Si $u_N \leqslant 1$, que peut-on dire de $u_{N+1}$ ? Comparer $\mathrm{e}$ et $N + 1$.
2. **Question 2.** Montrer par récurrence que $u_n \leqslant 1$ pour tout $n \geqslant N$, puis encadrer $u_{n+1}$ entre $0$ et une quantité qui tend vers $0$.
3. **Question 3.** Utiliser la question 2 « à l'envers » : si la suite ne tend pas vers $0$, que sait-on de chacun des termes $u_n$ pour $n \geqslant 2$ ?
4. **Question 3.** Écrire que $u_{n+1} > 1$ à l'aide de la relation de récurrence, puis prendre le logarithme.

## Solution

**1.** Pour tout $n \geqslant 0$, $\exp(u_n) > 0$ et $n + 1 > 0$, donc $u_{n+1} > 0$. Ainsi $u_n > 0$ pour tout $n \geqslant 1$.

**2.** Supposons $u_N \leqslant 1$ pour un rang $N \geqslant 2$. Montrons par récurrence que $u_n \leqslant 1$ pour tout $n \geqslant N$.

C'est vrai pour $n = N$. Si $u_n \leqslant 1$ avec $n \geqslant N \geqslant 2$, la fonction exponentielle étant croissante,

$$u_{n+1} = \frac{\exp(u_n)}{n+1} \leqslant \frac{\mathrm{e}}{n+1} \leqslant \frac{\mathrm{e}}{3} < 1.$$

Donc $u_n \leqslant 1$ pour tout $n \geqslant N$. On en déduit, pour tout $n \geqslant N$, en utilisant aussi la question 1 :

$$0 < u_{n+1} \leqslant \frac{\mathrm{e}}{n+1}.$$

Comme $\frac{\mathrm{e}}{n+1}$ tend vers $0$, le théorème des gendarmes donne : $(u_n)$ converge vers $0$.

**3.** Supposons que $(u_n)$ ne converge pas vers $0$. D'après la question 2, il n'existe aucun rang $N \geqslant 2$ tel que $u_N \leqslant 1$ : on a donc $u_n > 1$ pour tout $n \geqslant 2$.

Soit $n \geqslant 1$. Alors $n + 1 \geqslant 2$, donc $u_{n+1} > 1$, c'est-à-dire $\exp(u_n) > n + 1$. La fonction logarithme étant croissante,

$$u_n > \ln(n+1) \quad \text{pour tout } n \geqslant 1.$$

Comme $\ln(n+1)$ tend vers $+\infty$, la suite $(u_n)$ diverge vers $+\infty$ (par comparaison).

**Bilan.** Quel que soit son premier terme, une suite qui vérifie $u_{n+1} = \frac{\exp(u_n)}{n+1}$ n'a que deux comportements possibles : soit elle converge vers $0$, soit elle diverge vers $+\infty$. Elle converge vers $0$ exactement quand l'un de ses termes d'indice au moins $2$ est inférieur ou égal à $1$.

## Going further

- Dans la suite du sujet, on montrait que tout dépend du premier terme $x = u_0$ : il existe un seuil $\delta$ tel que la suite converge vers $0$ quand $x < \delta$ et diverge vers $+\infty$ quand $x \geqslant \delta$ (exercices 40762 et 40763). Pouvez-vous deviner, à la calculatrice, le comportement de la suite pour $u_0 = 0$ et pour $u_0 = 1$ ?
- Pour la suite partie de $0$, combien de termes faut-il calculer avant de pouvoir appliquer la question 2 ?
