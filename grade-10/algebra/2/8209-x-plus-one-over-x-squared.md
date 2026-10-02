---
id: "8209"
title: "De x + 1/x à x² + 1/x²"
grade: 10
theme: algebra
difficulty: 2
duration_min: 10
tags: [identites-remarquables, calcul-algebrique, inverse]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 4. Le même exercice, avec √2020, figure aussi dans Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 6."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que

$$x + \frac{1}{x} = \sqrt{2019} .$$

Que vaut $x^2 + \dfrac{1}{x^2}$ ?

On ne cherchera pas à calculer $x$.

## Hints

1. On te demande le carré de quelque chose, ou presque. Essaie d'élever au carré l'égalité qu'on te donne.
2. Développe $\left(x + \dfrac{1}{x}\right)^2$ avec l'identité $(u+v)^2 = u^2 + 2uv + v^2$. Que vaut le double produit ?

## Solution

L'astuce tient en une ligne : on élève au carré l'égalité de l'énoncé.

$$\left(x + \frac{1}{x}\right)^2 = x^2 + 2 \times x \times \frac{1}{x} + \frac{1}{x^2} = x^2 + 2 + \frac{1}{x^2} .$$

Le double produit se simplifie parfaitement : $x \times \dfrac1x = 1$, donc il vaut simplement $2$. C'est tout l'intérêt de la forme $x + \dfrac1x$.

D'un autre côté,

$$\left(x + \frac{1}{x}\right)^2 = \left(\sqrt{2019}\right)^2 = 2019 .$$

En comparant les deux résultats :

$$x^2 + 2 + \frac{1}{x^2} = 2019 ,$$

d'où

$$\boxed{x^2 + \frac{1}{x^2} = 2017} .$$

**Remarque.** On n'a jamais eu besoin de connaître $x$. C'est heureux, car il y a deux valeurs possibles de $x$ (les deux solutions de $x^2 - \sqrt{2019}\,x + 1 = 0$), et elles donnent bien sûr le même résultat : ce sont deux nombres inverses l'un de l'autre, et échanger $x$ et $\tfrac1x$ ne change pas $x^2 + \tfrac1{x^2}$.

## Going further

Avec la même hypothèse, calculer $x^3 + \dfrac{1}{x^3}$. *Indication : développer $\left(x + \dfrac1x\right)^3$ et reconnaître ce qui reste.*
