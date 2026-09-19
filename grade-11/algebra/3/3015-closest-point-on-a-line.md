---
id: "3015"
title: "Le plus petit x² + y² sur la droite 5x + 12y = 60"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [minimum, second degre, forme canonique, distance]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Inequalities I: AM-GM"
  reference: "Handout-3199-2749.pdf, exercice 8 (AHSME 1961 ; réponse dans Handout-3200-2749.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3199-2749.pdf"
---

## Statement

Les réels $x$ et $y$ vérifient

$$5x + 12y = 60.$$

Quelle est la plus petite valeur possible de $\sqrt{x^2 + y^2}$ ?

## Hints

1. La racine carrée est croissante : minimiser $\sqrt{x^2+y^2}$ revient à minimiser $x^2 + y^2$.
2. La contrainte permet d'exprimer $y$ en fonction de $x$. Remplace, et tu obtiens un trinôme du second degré en $x$.
3. Un trinôme $ax^2 + bx + c$ avec $a > 0$ atteint son minimum en $x = -\dfrac{b}{2a}$.
4. Autre regard : $\sqrt{x^2+y^2}$ est la distance de l'origine au point $M(x \, ; y)$, et les points $M$ décrivent une droite. Tu cherches donc la distance de l'origine à cette droite.

## Solution

**Se ramener à une seule inconnue.**

La fonction racine carrée est croissante : il suffit de minimiser $x^2 + y^2$.

De $5x + 12y = 60$ on tire $y = \dfrac{60 - 5x}{12}$. Alors

$$x^2 + y^2 = x^2 + \frac{(60 - 5x)^2}{144}
= \frac{144x^2 + 3600 - 600x + 25x^2}{144}
= \frac{169x^2 - 600x + 3600}{144}.$$

**Minimiser le trinôme.**

Le trinôme $g(x) = 169x^2 - 600x + 3600$ a un coefficient dominant $169 > 0$ : il atteint
son minimum en

$$x = \frac{600}{2 \times 169} = \frac{300}{169}.$$

Sa valeur minimale est

$$g\!\left(\frac{300}{169}\right) = 169 \times \frac{300^2}{169^2} - 600 \times \frac{300}{169} + 3600
= \frac{90\,000}{169} - \frac{180\,000}{169} + 3600$$
$$= \frac{-90\,000 + 608\,400}{169} = \frac{518\,400}{169}.$$

Donc

$$x^2 + y^2 \geq \frac{1}{144} \times \frac{518\,400}{169} = \frac{3600}{169},$$

et enfin

$$\sqrt{x^2 + y^2} \geq \sqrt{\frac{3600}{169}} = \frac{60}{13}.$$

**Le point où le minimum est atteint.**

Pour $x = \dfrac{300}{169}$, on obtient $y = \dfrac{60 - 5x}{12} = \dfrac{720}{169}$.

**Conclusion.**

La plus petite valeur de $\sqrt{x^2+y^2}$ est

$$\frac{60}{13} \approx \text{4,62}.$$

## Going further

Géométriquement, les points $M(x \, ; y)$ tels que $5x + 12y = 60$ forment une droite, et
$\sqrt{x^2+y^2}$ est la distance $OM$. La plus petite distance est celle du pied de la
perpendiculaire issue de $O$. La formule de la distance d'un point à une droite d'équation
$ax + by + c = 0$ donne directement

$$d = \frac{|5 \times 0 + 12 \times 0 - 60|}{\sqrt{5^2 + 12^2}} = \frac{60}{13}.$$

On reconnaît le triplet pythagoricien $(5, 12, 13)$, qui est exactement pourquoi l'énoncé a
choisi ces coefficients.
