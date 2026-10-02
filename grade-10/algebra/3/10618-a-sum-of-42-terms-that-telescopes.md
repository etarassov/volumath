---
id: "10618"
title: "Une somme de 42 termes qui se télescope"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [racine-carree, identites-remarquables, telescopage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 11 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Pour tout entier $n \geqslant 0$, on pose

$$U_n = \frac{2n + 1 - 2\sqrt{n(n + 1)}}{\sqrt{n + 1} - \sqrt{n}}$$

Calculer $(U_0 + U_1 + \cdots + U_{41})^2$.

## Hints

1. Calcule $U_0$ et $U_1$, et essaie de simplifier $U_1$ en multipliant le numérateur et le dénominateur par $\sqrt{2} + 1$.
2. Développe $\left(\sqrt{n + 1} - \sqrt{n}\right)^2$. Que reconnais-tu ?
3. Une fois $U_n$ simplifié, écris la somme en entier : presque tout disparaît.

## Solution

**Étape 1. Le numérateur est un carré.**

Pour tout entier $n \geqslant 0$, l'identité $(u - v)^2 = u^2 - 2uv + v^2$ donne

$$\left(\sqrt{n + 1} - \sqrt{n}\right)^2 = (n + 1) - 2\sqrt{n + 1}\,\sqrt{n} + n = 2n + 1 - 2\sqrt{n(n + 1)}$$

C'est exactement le numérateur de $U_n$.

**Étape 2. Une formule simple pour $U_n$.**

Le dénominateur $\sqrt{n + 1} - \sqrt{n}$ n'est pas nul, car $n + 1 > n$. En simplifiant :

$$U_n = \frac{\left(\sqrt{n + 1} - \sqrt{n}\right)^2}{\sqrt{n + 1} - \sqrt{n}} = \sqrt{n + 1} - \sqrt{n}$$

Par exemple $U_0 = 1 - 0 = 1$ et $U_1 = \sqrt{2} - 1$.

**Étape 3. La somme se télescope.**

$$U_0 + U_1 + \cdots + U_{41} = \left(\sqrt{1} - \sqrt{0}\right) + \left(\sqrt{2} - \sqrt{1}\right) + \cdots + \left(\sqrt{42} - \sqrt{41}\right)$$

Chaque $\sqrt{k}$, pour $k$ allant de $1$ à $41$, apparaît une fois avec le signe $+$ et une fois avec le signe $-$. Il ne reste que $\sqrt{42} - \sqrt{0} = \sqrt{42}$.

**Conclusion : $(U_0 + U_1 + \cdots + U_{41})^2 = \left(\sqrt{42}\right)^2 = 42$.**
