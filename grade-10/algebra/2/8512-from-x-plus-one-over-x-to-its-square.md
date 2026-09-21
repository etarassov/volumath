---
id: "8512"
title: "De x + 1/x à x² + 1/x²"
grade: 10
theme: algebra
difficulty: 2
duration_min: 10
tags: [identite-remarquable, inverse, racine-carree]
adapted_from: null
see_also: ["8209"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $x$ un nombre réel strictement positif tel que

$$x + \frac{1}{x} = \sqrt{2020} .$$

Que vaut $x^2 + \dfrac{1}{x^2}$ ?

## Hints

1. On te donne $x + \frac{1}{x}$ et on te demande $x^2 + \frac{1}{x^2}$. Quelle opération fait passer d'une somme à une somme de carrés ?
2. Développe $\left(x + \frac{1}{x}\right)^2$ avec l'identité $(u+v)^2 = u^2 + 2uv + v^2$.
3. Le terme du milieu se simplifie très bien : que vaut $x \times \frac{1}{x}$ ?

## Solution

Élevons au carré l'égalité donnée. En développant avec l'identité remarquable
$(u+v)^2 = u^2 + 2uv + v^2$ :

$$\left(x + \frac{1}{x}\right)^2 = x^2 + 2 \times x \times \frac{1}{x} + \frac{1}{x^2}
= x^2 + 2 + \frac{1}{x^2} .$$

D'autre part, $\left(\sqrt{2020}\right)^2 = 2020$. Donc

$$x^2 + 2 + \frac{1}{x^2} = 2020 ,$$

et finalement

$$x^2 + \frac{1}{x^2} = 2018 .$$

**Conclusion.** $x^2 + \dfrac{1}{x^2} = 2018$.

## Going further

Le nombre $x$ lui-même n'est pas joli : c'est une solution de $x^2 - \sqrt{2020}\,x + 1 = 0$.
On n'a pourtant jamais eu besoin de le calculer. C'est un réflexe utile : quand une question
porte sur une expression où $x$ et $\frac{1}{x}$ jouent le même rôle, on peut presque
toujours travailler avec $s = x + \frac{1}{x}$ sans jamais connaître $x$.
