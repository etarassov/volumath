---
id: "40926"
title: "uₙ₊₂ = uₙ₊₁² − αuₙ⁴ : bornée pour α dans [0, 1], pas pour α < 0 ni pour α > 2"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [suite-recurrente, suite-bornee, suite-non-bornee, recurrence, valeur-absolue, raisonnement-par-l-absurde, limite, parametre]
adapted_from: null
see_also: ["40925", "40927", "40928", "40929"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 2 « Suite positive et suite bornée », partie 2 « Propriété B », questions 4 et 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Pour tout réel $\alpha$, on appelle *suite associée à $\alpha$* la suite $(u_n)$ définie par
$u_0 = u_1 = 1$ et, pour tout entier $n \geq 0$,
$$u_{n+2} = u_{n+1}^2 - \alpha u_n^4 .$$
On dit que $\alpha$ *vérifie la propriété $\mathcal{B}$* si la suite associée à $\alpha$ est
bornée.

1. Quels sont les réels $\alpha$ qui vérifient la propriété $\mathcal{B}$ et qui appartiennent
   a) à l'intervalle $]-\infty ; 0[$ ?
   b) à l'intervalle $[0 ; 1]$ ?
2. Soient $\alpha$ un réel de l'intervalle $]2 ; +\infty[$ et $(u_n)$ la suite associée. Pour
   tout $n \geq 0$, on note $v_n$ le plus grand des réels $|u_0|, |u_1|, \ldots, |u_n|$ :
   $$v_n = \max(|u_0|, |u_1|, \ldots, |u_n|) .$$
   a) Démontrer que pour tout entier $n \geq 1$, on a $v_n = |u_{n-1}|$ ou $v_n = |u_n|$.
   b) Le réel $\alpha$ vérifie-t-il la propriété $\mathcal{B}$ ?

## Hints

1. **Question 1 a).** Montrer que $u_n \geq 1$ pour tout $n$, puis que $u_{n+2} \geq u_{n+1} - \alpha$.
2. **Question 1 b).** Montrer par récurrence que $|u_n| \leq 1$ et $|u_{n+1}| \leq 1$. Dans quel
   intervalle se trouve $u_{n+1}^2 - \alpha u_n^4$ ?
3. **Question 2 a).** Par récurrence. Le seul cas gênant est celui où le maximum $v_n$ est
   atteint en $u_{n-1}$ : montrer qu'alors $|u_{n+1}|$ le dépasse. Remarquer que $v_n \geq 1$.
4. **Question 2 a).** $|u_{n+1}| \geq \alpha u_{n-1}^4 - u_n^2$.
5. **Question 2 b).** Raisonner par l'absurde. Si la suite est bornée, la suite $(v_n)$ est
   croissante et majorée : elle converge vers un réel $V \geq 1$ qui majore tous les $|u_k|$.
6. **Question 2 b).** Prendre $n$ tel que $\alpha v_n^4 > 2V^4$ et $k \in \{n-1, n\}$ avec
   $|u_k| = v_n$. Minorer $|u_{k+2}|$.

## Solution

**1. a)** Soit $\alpha < 0$, et posons $\beta = -\alpha > 0$, de sorte que
$u_{n+2} = u_{n+1}^2 + \beta u_n^4$. Par récurrence, tous les termes sont supérieurs ou égaux à
$1$ : c'est vrai pour $u_0$ et $u_1$, et si $u_n \geq 1$ et $u_{n+1} \geq 1$, alors
$u_{n+2} \geq u_{n+1}^2 + \beta \geq 1$. Ensuite, comme $u_{n+1} \geq 1$, on a
$u_{n+1}^2 \geq u_{n+1}$, et comme $u_n \geq 1$, $\beta u_n^4 \geq \beta$. Donc
$u_{n+2} \geq u_{n+1} + \beta$ pour tout $n$, et par récurrence $u_n \geq 1 + (n - 1)\beta$ pour
tout $n \geq 1$. Cette quantité tend vers $+\infty$ : la suite n'est pas bornée.

**Conclusion :** aucun réel de $]-\infty ; 0[$ ne vérifie $\mathcal{B}$.

**1. b)** Soit $0 \leq \alpha \leq 1$. Montrons par récurrence que $|u_n| \leq 1$ et
$|u_{n+1}| \leq 1$. C'est vrai pour $n = 0$. Si c'est vrai au rang $n$, alors
$0 \leq u_{n+1}^2 \leq 1$ et $0 \leq \alpha u_n^4 \leq 1$, donc
$$-1 \leq u_{n+2} = u_{n+1}^2 - \alpha u_n^4 \leq 1 .$$

**Conclusion :** tous les réels de $[0 ; 1]$ vérifient $\mathcal{B}$ : la suite reste entre $-1$
et $1$.

**2. a)** Remarquons d'abord que $v_n \geq |u_0| = 1$ pour tout $n$, et que
$v_{n+1} = \max(v_n, |u_{n+1}|)$.

Pour $n = 1$ : $v_1 = 1 = |u_0|$. Supposons que $v_n = |u_{n-1}|$ ou $v_n = |u_n|$, et montrons
que $v_{n+1} = |u_n|$ ou $v_{n+1} = |u_{n+1}|$.

- Si $|u_{n+1}| \geq v_n$, alors $v_{n+1} = |u_{n+1}|$.
- Si $|u_{n+1}| < v_n$ et $v_n = |u_n|$, alors $v_{n+1} = v_n = |u_n|$.
- Reste le cas $|u_{n+1}| < v_n$ et $v_n = |u_{n-1}|$. Montrons qu'il est impossible. Comme
  $|u_n| \leq v_n$ et $v_n \geq 1$,
  $$|u_{n+1}| = |u_n^2 - \alpha u_{n-1}^4| \geq \alpha u_{n-1}^4 - u_n^2 \geq \alpha v_n^4 - v_n^2 > 2v_n^4 - v_n^2 \geq v_n^4 \geq v_n ,$$
  car $v_n^4 \geq v_n^2$ et $v_n^4 \geq v_n$ quand $v_n \geq 1$. Cela contredit $|u_{n+1}| < v_n$.

La propriété est donc vraie pour tout $n \geq 1$.

**2. b)** Supposons par l'absurde que $(u_n)$ est bornée. La suite $(v_n)$ est croissante et
majorée, donc elle converge vers un réel $V$, avec $v_n \leq V$ pour tout $n$. Ainsi $V \geq 1$ et
$|u_k| \leq V$ pour tout $k$.

Comme $\alpha > 2$, on a $\frac{2}{\alpha} < 1$, donc $\alpha V^4 > 2V^4$. Puisque
$\alpha v_n^4 \to \alpha V^4$, il existe un rang $n \geq 1$ tel que $\alpha v_n^4 > 2V^4$.
D'après la question a), il existe $k \in \{n - 1, n\}$ tel que $|u_k| = v_n$. Alors
$$|u_{k+2}| = |u_{k+1}^2 - \alpha u_k^4| \geq \alpha u_k^4 - u_{k+1}^2 \geq \alpha v_n^4 - V^2 > 2V^4 - V^2 \geq V^4 \geq V ,$$
car $V \geq 1$. C'est absurde, puisque $|u_{k+2}| \leq V$.

**Conclusion :** aucun réel $\alpha > 2$ ne vérifie la propriété $\mathcal{B}$.

**Bilan.** La suite associée à $\alpha$ est bornée pour tout $\alpha \in [0 ; 1]$ (elle reste
entre $-1$ et $1$), et elle ne l'est pas pour $\alpha < 0$ ni pour $\alpha > 2$. Pour
$\alpha > 2$, le terme $\alpha u_k^4$ l'emporte toujours, deux rangs plus tard, sur le plus grand
terme déjà atteint.

## Going further

- Calculer la suite pour $\alpha = 2$. Est-elle bornée ? Pourquoi le raisonnement de la
  question 2 ne s'applique-t-il pas ?
- Dans la suite du sujet, on montrait que la suite n'est pas bornée non plus pour
  $1 < \alpha < 2$ : voir les exercices 40927, 40928 et 40929. Finalement, $\alpha$ vérifie
  $\mathcal{B}$ si et seulement si $\alpha \in [0 ; 1]$ ou $\alpha = 2$.
