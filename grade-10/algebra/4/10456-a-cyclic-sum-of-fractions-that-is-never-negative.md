---
id: "10456"
title: "Une somme cyclique de fractions jamais négative"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, carres, somme-cyclique, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Junior, exercice 2 ; corrigé 2019-02_envoi-3-cor.pdf (erreur de la source : l'énoncé prend x₁, …, xₙ ⩾ 0, mais alors un dénominateur xᵢ₊₁ + xᵢ₊₂ peut être nul ; l'énoncé ci-dessous prend des réels strictement positifs. Le corrigé utilise l'inégalité de Cauchy-Schwarz sous forme de fractions ; ici chaque terme est minoré par un carré)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Soient $n \geqslant 3$ un entier et $x_1, x_2, \ldots, x_n$ des réels strictement positifs. Montrer que

$$\frac{x_1(2x_1 - x_2 - x_3)}{x_2 + x_3} + \frac{x_2(2x_2 - x_3 - x_4)}{x_3 + x_4} + \cdots + \frac{x_{n-1}(2x_{n-1} - x_n - x_1)}{x_n + x_1} + \frac{x_n(2x_n - x_1 - x_2)}{x_1 + x_2} \geqslant 0 .$$

Chaque terme est construit sur le même modèle à partir de trois nombres qui se suivent, en revenant à $x_1$ après $x_n$.

## Hints

1. Note $d_i$ le dénominateur du $i$-ème terme. Écris ce terme sous la forme $2x_i^2 / d_i - x_i$.
2. Cherche à minorer chaque terme par une expression sans fraction, de la forme $x_i - d_i / 2$. La différence entre les deux est-elle un carré, à un facteur près ?
3. Que vaut la somme des nombres $x_i - d_i / 2$ pour $i = 1, \ldots, n$ ? Compte combien de fois chaque $x_j$ apparaît dans la somme des $d_i$.

## Solution

**Notations.** Pour lire les indices en tournant, on pose $x_{n+1} = x_1$ et $x_{n+2} = x_2$. Pour $i = 1, \ldots, n$, notons

$$d_i = x_{i+1} + x_{i+2} > 0 \qquad \text{et} \qquad T_i = \frac{x_i(2x_i - d_i)}{d_i} = \frac{2x_i^2}{d_i} - x_i .$$

La somme de l'énoncé est $T_1 + T_2 + \cdots + T_n$.

**Étape 1 : minorer chaque terme.** Montrons que $T_i \geqslant x_i - d_i / 2$. On calcule la différence :

$$T_i - \left( x_i - \frac{d_i}{2} \right) = \frac{2x_i^2}{d_i} - 2x_i + \frac{d_i}{2} = \frac{2}{d_i} \left( x_i^2 - d_i x_i + \frac{d_i^2}{4} \right) = \frac{2}{d_i} \left( x_i - \frac{d_i}{2} \right)^2 .$$

C'est un carré multiplié par le nombre positif $2 / d_i$, donc c'est positif ou nul. Ainsi

$$T_i \geqslant x_i - \frac{d_i}{2} \qquad \text{pour } i = 1, \ldots, n . \qquad (1)$$

**Étape 2 : additionner.** Dans la somme $d_1 + d_2 + \cdots + d_n$, chaque nombre $x_j$ apparaît exactement deux fois : une fois dans $d_{j-1}$ et une fois dans $d_{j-2}$ (indices lus en tournant). Donc

$$d_1 + d_2 + \cdots + d_n = 2(x_1 + x_2 + \cdots + x_n) .$$

En additionnant les $n$ inégalités $(1)$, on obtient

$$T_1 + \cdots + T_n \geqslant (x_1 + \cdots + x_n) - \frac{1}{2} \cdot 2(x_1 + \cdots + x_n) = 0 .$$

**Conclusion.** La somme de l'énoncé est positive ou nulle.

**Cas d'égalité.** Il y a égalité exactement quand chaque inégalité $(1)$ est une égalité, c'est-à-dire quand $2x_i = x_{i+1} + x_{i+2}$ pour tout $i$. C'est le cas si tous les $x_i$ sont égaux. Réciproquement, soit $x_i$ le plus grand des nombres. Comme $x_{i+1} \leqslant x_i$ et $x_{i+2} \leqslant x_i$, l'égalité $x_{i+1} + x_{i+2} = 2x_i$ force $x_{i+1} = x_i$. Le nombre $x_{i+1}$ est donc lui aussi le plus grand, et de proche en proche tous les $x_j$ sont égaux.

## Going further

1. Vérifier l'inégalité à la main pour $n = 3$ et $x_1 = 1$, $x_2 = 2$, $x_3 = 3$.
2. Montrer de la même façon que, pour des réels $a$, $b$, $c$ strictement positifs,

   $$\frac{a^2}{b + c} + \frac{b^2}{c + a} + \frac{c^2}{a + b} \geqslant \frac{a + b + c}{2} .$$
