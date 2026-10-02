---
id: "10846"
title: "n²m⁶ = 180t + 2"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [carre-parfait, parite, divisibilite, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Juniors, exercice 1 ; corrigé 2018-12_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Combien y a-t-il de triplets $(n, m, t)$ d'entiers positifs tels que

$$n^2\,m^6 = 180\,t + 2 \;?$$

## Hints

1. Écris le membre de gauche comme le carré d'un seul nombre entier.
2. Le membre de droite est-il pair ? Est-il un multiple de $4$ ?
3. Si le carré d'un entier est pair, que peut-on dire de cet entier ? Et donc de son carré ?

## Solution

**Réponse : il n'y en a aucun.**

*Le membre de gauche est un carré.* On a $m^6 = \left(m^3\right)^2$, donc
$$n^2\,m^6 = \left(n\,m^3\right)^2 .$$
C'est le carré de l'entier $k = n\,m^3$.

*Le membre de droite est pair, mais n'est pas un multiple de $4$.* On a
$$180\,t + 2 = 2 \times (90\,t + 1) .$$
Le nombre $90\,t$ est pair, donc $90\,t + 1$ est impair. Ainsi $180\,t + 2$ est pair. Mais ce n'est pas un multiple de $4$ : sinon, en divisant par $2$, le nombre impair $90\,t + 1$ serait un multiple de $2$.

*Un carré pair est un multiple de $4$.* Si $k$ est impair, alors $k^2 = k \times k$ est impair (impair fois impair). Donc si $k^2$ est pair, $k$ est pair : on peut écrire $k = 2j$, et alors $k^2 = 4j^2$ est un multiple de $4$.

*Conclusion.* Si l'on avait $k^2 = 180\,t + 2$, ce nombre serait pair, donc un multiple de $4$ d'après ce qui précède. Or $180\,t + 2$ n'est pas un multiple de $4$. C'est impossible.

**L'équation n'a donc aucune solution : il y a $0$ triplet.**

## Going further

1. Montre que le reste de la division d'un carré par $4$ est toujours $0$ ou $1$.
2. L'équation $n^2 = 180\,t + 3$ a-t-elle des solutions entières ? Et l'équation $n^2 = 180\,t + 4$ ?
