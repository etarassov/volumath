---
id: "40925"
title: "uₙ₊₂ = uₙ₊₁² − αuₙ⁴ : quand tous les termes sont-ils positifs ?"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [suite-recurrente, recurrence, suite-decroissante, passage-a-la-limite, derivee, maximum, parametre]
adapted_from: null
see_also: ["40926", "40927", "40928", "40929"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 2 « Suite positive et suite bornée », partie 1 « Propriété P », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Pour tout réel $\alpha$, on appelle *suite associée à $\alpha$* la suite $(u_n)$ définie par
$u_0 = u_1 = 1$ et, pour tout entier $n \geq 0$,
$$u_{n+2} = u_{n+1}^2 - \alpha u_n^4 .$$
On dit que $\alpha$ *vérifie la propriété $\mathcal{P}$* si tous les termes de la suite associée
à $\alpha$ sont strictement positifs.

1. Quels sont les réels $\alpha$ qui vérifient la propriété $\mathcal{P}$ et qui appartiennent
   a) à l'intervalle $[1 ; +\infty[$ ?
   b) à l'intervalle $]-\infty ; 0]$ ?
2. Dans cette question, $\alpha$ est un réel de l'intervalle $]0 ; 1[$ qui vérifie la propriété
   $\mathcal{P}$, et $(u_n)$ est la suite associée.
   a) Démontrer que $0 < u_{n+1} \leq u_n \leq 1$ pour tout entier $n \geq 0$.
   b) Quelle est la limite de la suite $(u_n)$ ?
   c) Pour tout entier $n \geq 0$, on pose $x_n = \frac{u_{n+1}}{u_n^2}$. Exprimer $x_{n+1}$ en
   fonction de $\alpha$ et de $x_n$.
   d) Démontrer que la suite $(x_n)$ a une limite finie, que l'on notera $x_\infty$, et exprimer
   $x_\infty^2 (1 - x_\infty)$ en fonction de $\alpha$.
   e) En déduire que $\alpha \leq \frac{4}{27}$.
3. Quels sont les réels $\alpha$ qui vérifient la propriété $\mathcal{P}$ ?

## Hints

1. **Question 1.** Calculer $u_2$.
2. **Question 1 b).** Si $\alpha \leq 0$, le terme $-\alpha u_n^4$ est positif ou nul.
3. **Question 2 a).** Par récurrence. Si $0 < u_{n+1} \leq 1$, comparer $u_{n+1}^2$ et $u_{n+1}$.
4. **Question 2 b).** Une suite décroissante et minorée converge. Pour trouver sa limite $\ell$,
   remarquer que $u_n \leq u_2 = 1 - \alpha < 1$ dès que $n \geq 2$.
5. **Question 2 d).** La fonction $f : x \mapsto 1 - \frac{\alpha}{x^2}$ est croissante sur
   $]0 ; +\infty[$. Comparer $x_1$ et $x_0$.
6. **Question 2 d).** Pour passer à la limite, il faut savoir que $x_\infty \neq 0$. Que se
   passerait-il si $x_n$ tendait vers $0$ ?
7. **Question 2 e).** Étudier la fonction $x \mapsto x^2(1 - x)$ sur $[0 ; 1]$.
8. **Question 3.** Pour $0 < \alpha \leq \frac{4}{27}$, montrer par récurrence que
   $x_n \geq \frac{2}{3}$. Que vaut $f\left(\frac{2}{3}\right)$ quand $\alpha = \frac{4}{27}$ ?

## Solution

Les premiers termes sont $u_0 = u_1 = 1$, $u_2 = 1 - \alpha$, $u_3 = (1 - \alpha)^2 - \alpha$.

**1. a)** Si $\alpha \geq 1$, alors $u_2 = 1 - \alpha \leq 0$. Aucun réel de $[1 ; +\infty[$ ne
vérifie $\mathcal{P}$.

**1. b)** Soit $\alpha \leq 0$. Montrons par récurrence que $u_n > 0$ et $u_{n+1} > 0$. C'est
vrai pour $n = 0$. Si c'est vrai au rang $n$, alors
$u_{n+2} = u_{n+1}^2 + (-\alpha)u_n^4 \geq u_{n+1}^2 > 0$, donc c'est vrai au rang $n + 1$. Tous
les réels de $]-\infty ; 0]$ vérifient $\mathcal{P}$.

**2. a)** Par récurrence. Pour $n = 0$ : $0 < u_1 = 1 \leq u_0 = 1 \leq 1$. Supposons
$0 < u_{n+1} \leq u_n \leq 1$. Comme $\alpha > 0$ et $u_n > 0$,
$$u_{n+2} = u_{n+1}^2 - \alpha u_n^4 < u_{n+1}^2 \leq u_{n+1} ,$$
la dernière inégalité parce que $0 < u_{n+1} \leq 1$. Et $u_{n+2} > 0$ puisque $\alpha$ vérifie
$\mathcal{P}$. Donc $0 < u_{n+2} \leq u_{n+1} \leq 1$.

**2. b)** La suite $(u_n)$ est décroissante et minorée par $0$, donc elle converge vers un réel
$\ell \geq 0$. Pour $n \geq 2$, $u_n \leq u_2 = 1 - \alpha$, donc $\ell \leq 1 - \alpha < 1$. En
passant à la limite dans la relation de récurrence, $\ell = \ell^2 - \alpha \ell^4$. Si on avait
$\ell > 0$, on aurait $\ell = \ell^2 - \alpha\ell^4 < \ell^2$, donc $\ell > 1$ en divisant par
$\ell$ : impossible.

**Conclusion :** $(u_n)$ tend vers $0$.

**2. c)** Les termes sont strictement positifs, donc $x_n$ est bien défini et
$$x_{n+1} = \frac{u_{n+2}}{u_{n+1}^2} = \frac{u_{n+1}^2 - \alpha u_n^4}{u_{n+1}^2} = 1 - \alpha \frac{u_n^4}{u_{n+1}^2} = 1 - \frac{\alpha}{x_n^2} .$$

**2. d)** Posons $f(x) = 1 - \frac{\alpha}{x^2}$ pour $x > 0$. Comme $\alpha > 0$, $f$ est
croissante sur $]0 ; +\infty[$. Tous les $x_n$ sont strictement positifs, et $x_0 = 1$,
$x_1 = 1 - \alpha < x_0$. Si $x_{n+1} \leq x_n$, alors $f(x_{n+1}) \leq f(x_n)$, c'est-à-dire
$x_{n+2} \leq x_{n+1}$. Par récurrence, $(x_n)$ est décroissante. Elle est minorée par $0$, donc
elle converge vers un réel $x_\infty \geq 0$, et $x_\infty \leq x_0 = 1$.

Si on avait $x_\infty = 0$, alors $\frac{\alpha}{x_n^2} \to +\infty$ et
$x_{n+1} = 1 - \frac{\alpha}{x_n^2} \to -\infty$, ce qui contredit $x_{n+1} > 0$. Donc
$x_\infty > 0$, et en passant à la limite, $x_\infty = 1 - \frac{\alpha}{x_\infty^2}$.

**Conclusion :** $x_\infty^2 (1 - x_\infty) = \alpha$.

**2. e)** Posons $g(x) = x^2(1 - x) = x^2 - x^3$ sur $[0 ; 1]$. On a
$g'(x) = 2x - 3x^2 = x(2 - 3x)$, positive sur $[0 ; \frac{2}{3}]$ et négative sur
$[\frac{2}{3} ; 1]$. Le maximum de $g$ sur $[0 ; 1]$ est donc
$g\left(\frac{2}{3}\right) = \frac{4}{9} \times \frac{1}{3} = \frac{4}{27}$. Comme
$x_\infty \in [0 ; 1]$, on obtient $\alpha = g(x_\infty) \leq \frac{4}{27}$.

**3.** D'après les questions 1 et 2, un réel qui vérifie $\mathcal{P}$ est soit négatif ou nul,
soit dans $]0 ; \frac{4}{27}]$. Montrons que tous les réels de
$]0 ; \frac{4}{27}]$ vérifient $\mathcal{P}$.

Soit $0 < \alpha \leq \frac{4}{27}$. Montrons par récurrence la propriété : « $u_n > 0$,
$u_{n+1} > 0$ et $x_n = \frac{u_{n+1}}{u_n^2} \geq \frac{2}{3}$ ». Pour $n = 0$ : $u_0 = u_1 = 1$
et $x_0 = 1$. Supposons-la vraie au rang $n$. Le calcul de la question 2 c) n'utilisait que
$u_n \neq 0$ et $u_{n+1} \neq 0$, donc
$$u_{n+2} = u_{n+1}^2 \left(1 - \frac{\alpha}{x_n^2}\right) \qquad \text{et} \qquad 1 - \frac{\alpha}{x_n^2} \geq 1 - \frac{4/27}{4/9} = 1 - \frac{1}{3} = \frac{2}{3} .$$
Donc $u_{n+2} > 0$ et $x_{n+1} = 1 - \frac{\alpha}{x_n^2} \geq \frac{2}{3}$ : la propriété est
vraie au rang $n + 1$.

**Conclusion :** $\alpha$ vérifie la propriété $\mathcal{P}$ si et seulement si
$\alpha \leq \frac{4}{27}$.

**Bilan.** Tous les termes de la suite $u_{n+2} = u_{n+1}^2 - \alpha u_n^4$ (avec
$u_0 = u_1 = 1$) sont strictement positifs exactement quand $\alpha \leq \frac{4}{27}$. Le seuil
$\frac{4}{27}$ est le maximum de $x^2(1 - x)$ : c'est la plus grande valeur de $\alpha$ pour
laquelle le rapport $\frac{u_{n+1}}{u_n^2}$ peut se stabiliser à une valeur positive.

## Going further

- À la calculatrice, prendre $\alpha = \text{0,15}$, légèrement au-dessus de $\frac{4}{27}$, et
  calculer les $x_n$ : au bout de combien de termes l'un d'eux devient-il négatif ?
- Dans la suite du sujet, on cherchait les $\alpha$ pour lesquels la suite est bornée : voir les
  exercices 40926 à 40929. La réponse finale réserve une surprise pour $\alpha = 2$.
