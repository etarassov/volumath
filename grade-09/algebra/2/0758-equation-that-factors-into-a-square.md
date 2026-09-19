---
id: "0758"
title: "Une équation qui se factorise"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [identite-remarquable, factorisation, equation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 13"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Résous l'équation

$$20x^2 + 60x + 45 = 0.$$

## Hints

1. Les trois coefficients $20$, $60$ et $45$ ont un diviseur commun. Commence par le mettre en facteur.
2. Il reste $4x^2 + 12x + 9$. Reconnais-tu une identité remarquable ? Remarque que $4x^2 = (2x)^2$ et que $9 = 3^2$.
3. Une fois l'équation écrite sous la forme $5(2x+3)^2 = 0$, souviens-toi qu'un produit est nul seulement si l'un de ses facteurs est nul.

## Solution

**On met $5$ en facteur.** Les trois coefficients sont des multiples de $5$ :

$$20x^2 + 60x + 45 = 5\,(4x^2 + 12x + 9).$$

**On reconnaît une identité remarquable.** On a $4x^2 = (2x)^2$, $9 = 3^2$, et le terme du milieu est bien le double produit :

$$2 \times (2x) \times 3 = 12x.$$

Donc

$$4x^2 + 12x + 9 = (2x + 3)^2,$$

et l'équation s'écrit

$$5\,(2x+3)^2 = 0.$$

**On résout.** Comme $5 \neq 0$, cette égalité équivaut à $(2x+3)^2 = 0$, donc à

$$2x + 3 = 0, \qquad \text{c'est-à-dire} \qquad x = -\frac{3}{2} = -\text{1,5}.$$

Un carré n'est nul que si le nombre élevé au carré est nul : l'équation n'a donc **qu'une seule solution**.

**Vérification.** Pour $x = -\dfrac{3}{2}$ :

$$20 \times \frac{9}{4} - 60 \times \frac{3}{2} + 45 = 45 - 90 + 45 = 0.$$

**Réponse.** $x = -\dfrac{3}{2}$, et c'est la seule solution.
