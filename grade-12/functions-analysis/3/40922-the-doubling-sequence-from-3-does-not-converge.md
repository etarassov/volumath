---
id: "40922"
title: "La suite xₙ₊₁ = (xₙ² − 1)/(2xₙ) partant de 3 ne converge pas"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [suite-recurrente, parabole, irrationnel, recurrence, passage-a-la-limite, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40921", "40923", "40924"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 1 « Addition sur une parabole », partie 2, question 4 (a et b). La formule de la partie 1 est rappelée dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé. Soient $\mathcal{P}$ la parabole d'équation $y = x^2$,
$O$ l'origine et $\Delta$ la droite d'équation $y = -1$. Pour un point $A$ de $\mathcal{P}$
distinct de $O$, on note $A \oplus A$ le point de $\mathcal{P}$ qui a la même abscisse que le
point d'intersection de $\Delta$ et de la tangente à $\mathcal{P}$ en $A$. On admet que si $A$ a
pour abscisse $a \neq 0$, alors $A \oplus A$ a pour abscisse
$$\frac{a^2 - 1}{2a} .$$

On part du point $A_0 = A$ de coordonnées $(3 ; 9)$ et on définit une suite de points $(A_n)$
par : pour tout entier $n \geq 0$, $A_{n+1} = A_n \oplus A_n$ si l'abscisse de $A_n$ n'est pas
nulle, et $A_{n+1} = O$ sinon. On note $x_n$ l'abscisse de $A_n$.

1. Démontrer que $x_n \neq 0$ pour tout entier naturel $n$.
2. Démontrer que la suite $(x_n)$ ne converge pas.

## Hints

1. **Question 1.** Calculer $x_1$, $x_2$, $x_3$. Quelle sorte de nombres obtient-on ?
2. **Question 1.** Pour que $x_{n+1}$ soit nul, que faut-il pour $x_n$ ? Et pour que $x_n$ soit
   égal à $1$ ou à $-1$, que faut-il pour $x_{n-1}$ ?
3. **Question 1.** Démontrer par récurrence que $x_n$ est un rationnel différent de $-1$, $0$ et
   $1$. L'irrationalité de $\sqrt{2}$ sert à l'hérédité.
4. **Question 2.** Raisonner par l'absurde : si $(x_n)$ converge vers $\ell$, distinguer
   $\ell \neq 0$ et $\ell = 0$.
5. **Question 2.** Si $\ell = 0$, que devient $\frac{x_n^2 - 1}{2x_n}$ quand $n$ est grand ?

## Solution

Tant que $x_n \neq 0$, on a $x_{n+1} = \frac{x_n^2 - 1}{2x_n}$.

**1.** Montrons par récurrence la propriété $\mathcal{H}_n$ : « $x_n$ est un nombre rationnel
différent de $-1$, $0$ et $1$ ».

*Initialisation.* $x_0 = 3$ convient.

*Hérédité.* Supposons $\mathcal{H}_n$ vraie. Comme $x_n \neq 0$,
$x_{n+1} = \frac{x_n^2 - 1}{2x_n}$, qui est rationnel comme quotient de deux rationnels.

- $x_{n+1} = 0$ demanderait $x_n^2 = 1$, c'est-à-dire $x_n = \pm 1$ : c'est exclu.
- $x_{n+1} = 1$ demanderait $x_n^2 - 1 = 2x_n$, soit $(x_n - 1)^2 = 2$, soit
  $x_n = 1 + \sqrt{2}$ ou $x_n = 1 - \sqrt{2}$. Ces deux nombres sont irrationnels, car
  $\sqrt{2}$ l'est, alors que $x_n$ est rationnel : c'est exclu.
- $x_{n+1} = -1$ demanderait $x_n^2 - 1 = -2x_n$, soit $(x_n + 1)^2 = 2$, soit
  $x_n = -1 \pm \sqrt{2}$, irrationnel : c'est exclu aussi.

Donc $\mathcal{H}_{n+1}$ est vraie.

**Conclusion :** pour tout $n$, $x_n \neq 0$. En particulier, la suite est toujours définie par
$x_{n+1} = \frac{x_n^2 - 1}{2x_n}$. Ses premiers termes sont $3$, $\frac{4}{3}$,
$\frac{7}{24}$, $-\frac{527}{336}$.

**2.** Supposons par l'absurde que $(x_n)$ converge vers un réel $\ell$.

*Cas $\ell \neq 0$.* Alors $x_n^2 - 1 \to \ell^2 - 1$ et $2x_n \to 2\ell \neq 0$, donc
$x_{n+1} \to \frac{\ell^2 - 1}{2\ell}$. Mais $(x_{n+1})$ converge aussi vers $\ell$. Par unicité de
la limite, $\ell = \frac{\ell^2 - 1}{2\ell}$, soit $2\ell^2 = \ell^2 - 1$, soit $\ell^2 = -1$. C'est
impossible.

*Cas $\ell = 0$.* Alors $x_n^2 - 1 \to -1$ et $|2x_n| \to 0$, donc
$$|x_{n+1}| = \frac{|x_n^2 - 1|}{2|x_n|} \to +\infty .$$
Mais $(x_{n+1})$ converge vers $0$ : c'est impossible aussi.

**Conclusion :** la suite $(x_n)$ ne converge pas.

**Bilan.** En doublant sans cesse le point $(3 ; 9)$ sur la parabole, on ne tombe jamais sur
l'origine, et l'abscisse $x_n$ ne converge pas : elle n'a aucune limite finie.

## Going further

- Pour le club : si $x_0 = \frac{\cos \theta}{\sin \theta}$, alors
  $x_n = \frac{\cos(2^n \theta)}{\sin(2^n \theta)}$, car
  $\frac{c^2 - 1}{2c}$ est la formule de duplication de la cotangente. La suite saute donc d'un
  bout à l'autre de la droite réelle au gré des angles $2^n \theta$.
- Dans la suite du sujet, on mesurait la « taille » du rationnel $x_n$ par le plus grand des
  entiers $|a|$ et $|b|$ quand $x_n = \frac{a}{b}$ est irréductible, et on montrait que son
  logarithme, divisé par $2^n$, converge : voir les exercices 40923 et 40924.
