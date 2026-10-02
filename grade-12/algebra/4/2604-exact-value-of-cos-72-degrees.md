---
id: "2604"
title: "La valeur exacte de cos(72°)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [nombres-complexes, racines-de-lunite, trigonometrie, second-degre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, Roots of Unity (Prof. Kent Merryfield, CSULB)"
  reference: "Handout-556-674.pdf, problem set 2, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-556-674.pdf"
---

## Statement

On pose
$$\zeta = e^{2i\pi/5}.$$

1. Vérifier que $\zeta^5 = 1$ et que $1 + \zeta + \zeta^2 + \zeta^3 + \zeta^4 = 0$.
2. On pose $x = \zeta + \overline{\zeta}$. Calculer $x^2 + x$.
3. En déduire la valeur exacte de $\cos\left(\dfrac{2\pi}{5}\right) = \cos(72°)$.

## Hints

1. Pour la somme, reconnais une somme de termes consécutifs d'une suite géométrique de raison $\zeta$, et n'oublie pas que $\zeta \neq 1$.
2. $\zeta$ est de module $1$, donc $\overline{\zeta} = \dfrac{1}{\zeta}$. Exprime $\overline{\zeta}$ comme une puissance de $\zeta$.
3. Développe $x^2 = (\zeta + \overline{\zeta})^2$ et remplace chaque puissance de $\zeta$ par celle des cinq nombres $1, \zeta, \zeta^2, \zeta^3, \zeta^4$ qui lui est égale.
4. Tu obtiens une équation du second degré vérifiée par $x$. Elle a deux solutions : laquelle est la bonne ? Regarde le signe de $\cos(72°)$.

## Solution

**1. Les cinq racines cinquièmes de l'unité.**

Par définition, $\zeta = e^{2i\pi/5}$, donc
$$\zeta^5 = e^{2i\pi} = 1.$$

De plus $\zeta \neq 1$, car $\dfrac{2\pi}{5}$ n'est pas un multiple de $2\pi$. La somme $1 + \zeta + \zeta^2 + \zeta^3 + \zeta^4$ est la somme des cinq premiers termes d'une suite géométrique de raison $\zeta \neq 1$ :
$$1 + \zeta + \zeta^2 + \zeta^3 + \zeta^4 = \frac{\zeta^5 - 1}{\zeta - 1} = \frac{1 - 1}{\zeta - 1} = 0.$$

**2. Le calcul de $x^2 + x$.**

Comme $|\zeta| = 1$, on a $\overline{\zeta} = \dfrac{1}{\zeta}$. Et puisque $\zeta^5 = 1$, on a $\dfrac{1}{\zeta} = \zeta^4$. Donc
$$x = \zeta + \overline{\zeta} = \zeta + \zeta^4 .$$

Calculons le carré :
$$x^2 = (\zeta + \zeta^4)^2 = \zeta^2 + 2\zeta^5 + \zeta^8 .$$

Or $\zeta^5 = 1$ et $\zeta^8 = \zeta^5 \cdot \zeta^3 = \zeta^3$. Donc
$$x^2 = \zeta^2 + \zeta^3 + 2 .$$

En ajoutant $x = \zeta + \zeta^4$ :
$$x^2 + x = \zeta^2 + \zeta^3 + 2 + \zeta + \zeta^4 = \underbrace{\left(\zeta + \zeta^2 + \zeta^3 + \zeta^4\right)}_{= \,-1 \text{ d'après la question 1}} + \, 2 = -1 + 2 = 1.$$

Donc
$$\boxed{x^2 + x = 1.}$$

**3. La valeur de $\cos(72°)$.**

D'une part, pour tout complexe $z$ on a $z + \overline{z} = 2\,\mathrm{Re}(z)$, donc
$$x = 2\,\mathrm{Re}(\zeta) = 2\cos\left(\frac{2\pi}{5}\right).$$

D'autre part, $x$ vérifie $x^2 + x - 1 = 0$. Le discriminant vaut $\Delta = 1 + 4 = 5$, d'où les deux solutions
$$x = \frac{-1 - \sqrt{5}}{2} \qquad \text{ou} \qquad x = \frac{-1 + \sqrt{5}}{2}.$$

Laquelle est la bonne ? L'angle $\dfrac{2\pi}{5} = 72°$ est compris entre $0$ et $90°$, donc $\cos(72°) > 0$, donc $x > 0$. La première solution est négative, il reste
$$x = \frac{\sqrt{5} - 1}{2}.$$

Enfin $\cos\left(\dfrac{2\pi}{5}\right) = \dfrac{x}{2}$, ce qui donne

$$\boxed{\cos(72°) = \frac{\sqrt{5} - 1}{4}.}$$

**Vérification numérique.** $\dfrac{\sqrt{5}-1}{4} \approx \dfrac{\text{2,236} - 1}{4} \approx \text{0,309}$, et la calculatrice donne bien $\cos(72°) \approx \text{0,309}$.

## Going further

Le nombre $\dfrac{\sqrt 5 - 1}{2}$ est l'inverse du nombre d'or. Ce n'est pas un hasard : c'est cette valeur de $\cos(72°)$ qui permet de construire le pentagone régulier à la règle et au compas, et qui fait apparaître le nombre d'or dans toutes ses diagonales.
