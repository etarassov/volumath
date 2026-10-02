---
id: "10674"
title: "ab/(c − 1) + bc/(a − 1) + ca/(b − 1) ⩾ 12"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, changement-de-variable, racines-carrees, produit-egal-a-un, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 6 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé applique l'inégalité arithmético-géométrique à douze termes ; elle est remplacée ici par deux lemmes démontrés dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement plus grands que $1$. Montrer que

$$\frac{ab}{c - 1} + \frac{bc}{a - 1} + \frac{ca}{b - 1} \geqslant 12$$

Quand y a-t-il égalité ?

## Hints

1. Pose $x = a - 1$, $y = b - 1$, $z = c - 1$. Ce sont des réels strictement positifs, et $a = x + 1$.
2. Développe $\left(\sqrt{x} - 1\right)^2$ pour montrer que $x + 1 \geqslant 2\sqrt{x}$. Déduis-en une minoration de $ab$.
3. Tu dois arriver à une somme $\frac{\sqrt{xy}}{z} + \frac{\sqrt{yz}}{x} + \frac{\sqrt{zx}}{y}$. Que vaut le produit de ces trois termes ?
4. Trois réels strictement positifs de produit $1$ ont une somme au moins égale à $3$. Pour le prouver, regarde le plus grand et le plus petit des trois.

## Solution

**Étape 1. Changer de variables.**

Posons $x = a - 1$, $y = b - 1$ et $z = c - 1$. Ces trois nombres sont strictement positifs, et la somme à étudier s'écrit

$$S = \frac{(x + 1)(y + 1)}{z} + \frac{(y + 1)(z + 1)}{x} + \frac{(z + 1)(x + 1)}{y}$$

**Étape 2. Premier lemme.**

*Lemme 1.* Pour tout réel $t \geqslant 0$, on a $t + 1 \geqslant 2\sqrt{t}$, avec égalité seulement si $t = 1$.

*Preuve.* $t + 1 - 2\sqrt{t} = \left(\sqrt{t} - 1\right)^2 \geqslant 0$, et ce carré est nul seulement si $\sqrt{t} = 1$.

Par le lemme 1, $x + 1 \geqslant 2\sqrt{x}$ et $y + 1 \geqslant 2\sqrt{y}$. Ce sont des nombres positifs, on peut multiplier : $(x + 1)(y + 1) \geqslant 4\sqrt{xy}$. En faisant de même pour les deux autres numérateurs,

$$S \geqslant 4\left(\frac{\sqrt{xy}}{z} + \frac{\sqrt{yz}}{x} + \frac{\sqrt{zx}}{y}\right)$$

**Étape 3. Second lemme.**

*Lemme 2.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, on peut supposer que $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ : sinon les trois nombres seraient strictement plus petits que $1$, et leur produit aussi. De même $q \leqslant 1$. Donc $(p - 1)(1 - q) \geqslant 0$, ce qui s'écrit $p + q \geqslant 1 + pq$. Posons $t = pq > 0$. Comme $pqr = 1$, on a $r = \frac{1}{t}$, donc

$$p + q + r \geqslant 1 + t + \frac{1}{t}$$

Or $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$, donc $p + q + r \geqslant 3$.

**Étape 4. Conclure.**

Posons $p = \frac{\sqrt{xy}}{z}$, $q = \frac{\sqrt{yz}}{x}$ et $r = \frac{\sqrt{zx}}{y}$. Ils sont strictement positifs, et

$$pqr = \frac{\sqrt{xy} \times \sqrt{yz} \times \sqrt{zx}}{xyz} = \frac{\sqrt{x^2y^2z^2}}{xyz} = \frac{xyz}{xyz} = 1$$

Par le lemme 2, $p + q + r \geqslant 3$, donc $S \geqslant 4 \times 3 = 12$.

**Étape 5. Le cas d'égalité.**

Supposons $S = 12$. Alors chacune des trois minorations de l'étape 2 est une égalité : si l'une était stricte, on aurait $S > 4(p + q + r) \geqslant 12$. En particulier $(x + 1)(y + 1) = 4\sqrt{xy}$, ce qui impose $x + 1 = 2\sqrt{x}$ et $y + 1 = 2\sqrt{y}$ (si l'une de ces deux minorations entre nombres positifs était stricte, le produit le serait aussi). Par le lemme 1, $x = 1$ et $y = 1$. De même $z = 1$. Donc $a = b = c = 2$.

Réciproquement, pour $a = b = c = 2$, chaque fraction vaut $\frac{4}{1} = 4$, et $S = 12$.

**Conclusion : on a toujours $\frac{ab}{c - 1} + \frac{bc}{a - 1} + \frac{ca}{b - 1} \geqslant 12$, avec égalité seulement pour $a = b = c = 2$.**
