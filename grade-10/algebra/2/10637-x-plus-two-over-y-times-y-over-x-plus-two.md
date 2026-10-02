---
id: "10637"
title: "(x + 2/y)(y/x + 2) ≥ 8"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, identites-remarquables, carre-positif, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 1 ; corrigé 2023-01_corrige-envoi-2.pdf. Le corrigé utilise l'inégalité entre moyennes arithmétique et géométrique ; la solution ci-dessous développe et se ramène à des carrés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $x$ et $y$ deux réels strictement positifs. Montrer que

$$\left(x + \frac{2}{y}\right)\left(\frac{y}{x} + 2\right) \geqslant 8$$

Dans quels cas a-t-on égalité ?

## Hints

1. Développe le produit. Tu obtiens quatre termes : regroupe ceux qui contiennent $y$ d'une part, et ceux qui contiennent $x$ d'autre part.
2. Montre que $y + \frac{4}{y} \geqslant 4$ en écrivant la différence $y + \frac{4}{y} - 4$ sous la forme d'une seule fraction.
3. Reconnais une identité remarquable au numérateur.

## Solution

**Étape 1. On développe.**

$$\left(x + \frac{2}{y}\right)\left(\frac{y}{x} + 2\right) = x \cdot \frac{y}{x} + 2x + \frac{2}{y} \cdot \frac{y}{x} + \frac{4}{y} = y + 2x + \frac{2}{x} + \frac{4}{y}$$

On regroupe : le produit vaut $\left(y + \frac{4}{y}\right) + \left(2x + \frac{2}{x}\right)$.

**Étape 2. Le premier groupe vaut au moins $4$.**

$$y + \frac{4}{y} - 4 = \frac{y^2 - 4y + 4}{y} = \frac{(y - 2)^2}{y}$$

Un carré est positif ou nul et $y > 0$, donc cette fraction est positive ou nulle : $y + \frac{4}{y} \geqslant 4$, avec égalité seulement si $y = 2$.

**Étape 3. Le second groupe vaut au moins $4$.**

$$2x + \frac{2}{x} - 4 = \frac{2x^2 - 4x + 2}{x} = \frac{2(x - 1)^2}{x}$$

Pour la même raison, $2x + \frac{2}{x} \geqslant 4$, avec égalité seulement si $x = 1$.

**Étape 4. Conclusion.**

En ajoutant les deux inégalités, le produit vaut au moins $4 + 4 = 8$. Il y a égalité seulement si les deux inégalités sont des égalités, c'est-à-dire si $x = 1$ et $y = 2$. Réciproquement, pour $x = 1$ et $y = 2$, le produit vaut $(1 + 1)(2 + 2) = 8$.

**Conclusion : le produit vaut toujours au moins $8$, et il vaut exactement $8$ seulement pour $x = 1$ et $y = 2$.**

## Going further

On peut aussi éviter de développer. Pour deux réels positifs $u$ et $v$, on a $u + v \geqslant 2\sqrt{uv}$, car la différence vaut $\left(\sqrt{u} - \sqrt{v}\right)^2$. Applique-le à chacune des deux parenthèses, puis multiplie les deux inégalités obtenues.
