---
id: "10670"
title: "Trois racines carrées dont la somme ne dépasse pas 9"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, racine-carree, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 2 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. L'inégalité de Cauchy-Schwarz citée par le corrigé est remplacée ici par un lemme démontré avec des carrés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Montrer que, pour tout réel $x$ de l'intervalle $\left[1, \frac{19}{3}\right]$,

$$\sqrt{x - 1} + \sqrt{2x + 9} + \sqrt{19 - 3x} \leqslant 9$$

## Hints

1. Pose $u = \sqrt{x - 1}$, $v = \sqrt{2x + 9}$ et $w = \sqrt{19 - 3x}$. Calcule $u^2 + v^2 + w^2$ : le résultat ne dépend pas de $x$.
2. Il reste à comparer $(u + v + w)^2$ et $u^2 + v^2 + w^2$. Développe $(u - v)^2 + (v - w)^2 + (w - u)^2$.

## Solution

Pour $1 \leqslant x \leqslant \frac{19}{3}$, les trois nombres $x - 1$, $2x + 9$ et $19 - 3x$ sont positifs ou nuls, donc les trois racines existent. Posons

$$u = \sqrt{x - 1}, \qquad v = \sqrt{2x + 9}, \qquad w = \sqrt{19 - 3x}$$

**Étape 1. La somme des carrés est constante.**

$$u^2 + v^2 + w^2 = (x - 1) + (2x + 9) + (19 - 3x) = 27$$

Les termes en $x$ se simplifient : cette somme vaut $27$ pour tout $x$ de l'intervalle.

**Étape 2. Un lemme.**

*Lemme.* Pour tous réels $u$, $v$, $w$, on a $(u + v + w)^2 \leqslant 3\,(u^2 + v^2 + w^2)$.

*Preuve.* Développons les deux membres :

$$3\,(u^2 + v^2 + w^2) - (u + v + w)^2 = 3u^2 + 3v^2 + 3w^2 - (u^2 + v^2 + w^2 + 2uv + 2vw + 2wu)$$

$$= 2u^2 + 2v^2 + 2w^2 - 2uv - 2vw - 2wu = (u - v)^2 + (v - w)^2 + (w - u)^2$$

Une somme de carrés est positive ou nulle, ce qui prouve le lemme.

**Étape 3. Conclure.**

Par le lemme et l'étape 1, $(u + v + w)^2 \leqslant 3 \times 27 = 81$. Comme $u + v + w \geqslant 0$, on en déduit $u + v + w \leqslant \sqrt{81} = 9$.

**Conclusion : pour tout $x$ de $\left[1, \frac{19}{3}\right]$, on a $\sqrt{x - 1} + \sqrt{2x + 9} + \sqrt{19 - 3x} \leqslant 9$.**

## Going further

Montre que l'inégalité est en fait toujours stricte. Pour avoir l'égalité, il faudrait $u = v = w$ : est-ce possible pour un $x$ de l'intervalle ?
