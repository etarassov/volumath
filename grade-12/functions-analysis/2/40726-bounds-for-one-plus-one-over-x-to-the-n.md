---
id: "40726"
title: "Un encadrement de (1 + 1/x)ⁿ, et une suite qui n'est jamais bornée"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 30
tags: [integrale, logarithme, exponentielle, encadrement, suites, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40727", "40728", "40729"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 2 « Un nombre explosif », partie I « Un encadrement de f_n(x) », questions 1 à 3, et partie II, question 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $f_n$ la fonction définie sur $]0 ; +\infty[$ par

$$f_n(x) = \left( 1 + \frac{1}{x} \right)^n.$$

Soit $x$ un réel strictement positif.

1. Démontrer que
   $$\frac{1}{x+1} \leq \int_x^{x+1} \frac{1}{t}\,\mathrm{d}t \leq \frac{1}{x}.$$
2. En déduire que
   $$\frac{1}{x+1} \leq \ln\left( 1 + \frac{1}{x} \right) \leq \frac{1}{x}.$$
3. En déduire que, pour tout entier $n \geq 1$,
   $$\exp\left( \frac{n}{x+1} \right) \leq f_n(x) \leq \exp\left( \frac{n}{x} \right).$$

Soit maintenant $\alpha$ un réel strictement positif. On définit la suite $(x_n)$ par $x_1 = \alpha$
et, pour tout entier $n \geq 1$,

$$x_{n+1} = \left( 1 + \frac{1}{x_n} \right)^n = f_n(x_n).$$

4. La suite $(x_n)$ peut-elle être majorée ? Peut-elle être convergente ?

## Hints

1. **Question 1.** Encadrer $\frac{1}{t}$ quand $t$ parcourt l'intervalle $[x ; x+1]$, puis intégrer
   cet encadrement sur un intervalle de longueur $1$.
2. **Question 2.** Calculer l'intégrale avec une primitive de $\frac{1}{t}$.
3. **Question 3.** Multiplier par $n$, puis appliquer la fonction exponentielle.
4. **Question 4.** Supposer que $x_n \leq M$ pour tout $n$, et minorer $x_{n+1}$ grâce à la
   question 3.

## Solution

**1.** Pour $t$ dans $[x ; x+1]$, on a $0 < x \leq t \leq x + 1$, et la fonction inverse est
décroissante sur $]0 ; +\infty[$, donc

$$\frac{1}{x+1} \leq \frac{1}{t} \leq \frac{1}{x}.$$

Par positivité de l'intégrale (les bornes sont dans le bon ordre, $x < x+1$), on peut intégrer cet
encadrement de $x$ à $x+1$. Les deux membres extrêmes sont des constantes, et l'intervalle est de
longueur $1$, d'où

$$\frac{1}{x+1} \leq \int_x^{x+1} \frac{1}{t}\,\mathrm{d}t \leq \frac{1}{x}.$$

**2.** La fonction $\ln$ est une primitive de $t \mapsto \frac{1}{t}$ sur $]0 ; +\infty[$, donc

$$\int_x^{x+1} \frac{1}{t}\,\mathrm{d}t = \ln(x+1) - \ln(x) = \ln\left( \frac{x+1}{x} \right) = \ln\left( 1 + \frac{1}{x} \right).$$

L'encadrement de la question 1 donne celui demandé.

**3.** Soit $n \geq 1$. En multipliant l'encadrement de la question 2 par $n > 0$, on obtient

$$\frac{n}{x+1} \leq n \ln\left( 1 + \frac{1}{x} \right) \leq \frac{n}{x}.$$

Or $n \ln\left( 1 + \frac{1}{x} \right) = \ln\left( \left( 1 + \frac{1}{x} \right)^n \right) = \ln(f_n(x))$.
La fonction exponentielle est croissante, et $\exp(\ln(f_n(x))) = f_n(x)$, d'où

$$\exp\left( \frac{n}{x+1} \right) \leq f_n(x) \leq \exp\left( \frac{n}{x} \right).$$

**4.** Remarquons d'abord que tous les termes sont strictement positifs : $x_1 = \alpha > 0$, et si
$x_n > 0$, alors $x_{n+1} = \left( 1 + \frac{1}{x_n} \right)^n > 0$. La suite est donc bien définie.

*La suite n'est pas majorée.* Supposons par l'absurde qu'il existe un réel $M$ tel que $x_n \leq M$
pour tout $n \geq 1$. Alors $M > 0$, et pour tout $n \geq 1$, $x_n + 1 \leq M + 1$, donc
$\frac{n}{x_n + 1} \geq \frac{n}{M+1}$. D'après la question 3 appliquée à $x = x_n$, et par
croissance de l'exponentielle,

$$x_{n+1} = f_n(x_n) \geq \exp\left( \frac{n}{x_n + 1} \right) \geq \exp\left( \frac{n}{M+1} \right).$$

Quand $n$ tend vers $+\infty$, $\frac{n}{M+1}$ tend vers $+\infty$, donc
$\exp\left( \frac{n}{M+1} \right)$ aussi. Ce nombre finit donc par dépasser $M$, et alors
$x_{n+1} > M$ : c'est une contradiction. **La suite $(x_n)$ n'est jamais majorée**, quel que soit
$\alpha$.

*La suite ne converge pas.* Une suite convergente est bornée, donc majorée. Comme $(x_n)$ n'est pas
majorée, **elle ne peut pas converger**.

**Bilan.** On a encadré $\left( 1 + \frac{1}{x} \right)^n$ entre $\exp\left( \frac{n}{x+1} \right)$
et $\exp\left( \frac{n}{x} \right)$. Il en résulte que la suite définie par $x_{n+1} = \left( 1 + \frac{1}{x_n} \right)^n$
n'est jamais majorée, donc jamais convergente, quel que soit son premier terme $\alpha > 0$.

## Going further

- Non majorée ne veut pas dire « tend vers $+\infty$ ». Calculez à la calculatrice les vingt premiers
  termes pour $\alpha = 1$ : à partir d'un moment, la suite alterne entre des termes énormes et
  des termes très proches de $1$. Pouvez-vous
  expliquer pourquoi un terme très grand est forcément suivi d'un terme proche de $1$ ?
- Le sujet appelait $\alpha$ *explosif* quand la suite tend vers $+\infty$, et démontrait qu'il
  existe un seul nombre explosif, environ $\text{1,19}$. La suite est dans les exercices 40727 (un
  critère pour être explosif), 40728 (l'existence) et 40729 (l'unicité).
