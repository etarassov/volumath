---
id: "12893"
title: "Le plus grand b tel que a/x² + b/(xy) + c/y² reste positif"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, maximum, identites-remarquables, racine-carree, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test junior, exercice 1 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (première solution du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Soient $a$ et $c$ deux réels strictement positifs tels que $ac = 9$. Déterminer le plus grand réel $b$ qui a la propriété suivante : pour tous réels $x$ et $y$ non nuls (pas forcément positifs),

$$\frac{a}{x^2} + \frac{b}{xy} + \frac{c}{y^2} \geq 0.$$

## Hints

1. Essayez $a = 1$, $c = 9$, $x = 1$ et $y = -3$. Quelle condition obtenez-vous sur $b$ ?
2. Développez $\left(\sqrt{a}/x + \sqrt{c}/y\right)^2$, en utilisant $\sqrt{a}\,\sqrt{c} = \sqrt{ac} = 3$.
3. Pour montrer qu'un réel $b > 6$ ne convient pas, choisissez $x$ et $y$ de façon que cette parenthèse soit nulle.

## Solution

La réponse : **le plus grand réel $b$ qui convient est $b = 6$.**

Attention, $a$ et $c$ sont donnés : on ne peut pas les choisir. Il faut donc montrer que $b = 6$ convient pour tous les $a$ et $c$ possibles, et qu'un réel $b > 6$ ne convient pas, quels que soient $a$ et $c$.

### Une écriture avec un carré

On a $\sqrt{a}\,\sqrt{c} = \sqrt{ac} = \sqrt{9} = 3$. Donc, pour tous réels $x$ et $y$ non nuls,

$$\left(\frac{\sqrt{a}}{x} + \frac{\sqrt{c}}{y}\right)^2 = \frac{a}{x^2} + \frac{2\sqrt{a}\,\sqrt{c}}{xy} + \frac{c}{y^2} = \frac{a}{x^2} + \frac{6}{xy} + \frac{c}{y^2}.$$

On en déduit

$$\frac{a}{x^2} + \frac{b}{xy} + \frac{c}{y^2} = \left(\frac{\sqrt{a}}{x} + \frac{\sqrt{c}}{y}\right)^2 + \frac{b - 6}{xy}.$$

### b = 6 convient

Pour $b = 6$, le dernier terme est nul, et l'expression est un carré : elle est positive ou nulle pour tous $x$ et $y$ non nuls.

### Un réel b plus grand que 6 ne convient pas

Soit $b > 6$. On choisit $x = 1$ et $y = -\sqrt{c}/\sqrt{a}$, qui n'est pas nul. Alors

$$\frac{\sqrt{a}}{x} + \frac{\sqrt{c}}{y} = \sqrt{a} - \sqrt{c} \times \frac{\sqrt{a}}{\sqrt{c}} = \sqrt{a} - \sqrt{a} = 0.$$

L'expression vaut donc $(b - 6)/(xy)$. Ici $b - 6 > 0$ et $xy = -\sqrt{c}/\sqrt{a} < 0$, donc l'expression est strictement négative. Le réel $b$ n'a pas la propriété.

Par exemple, pour $a = 1$ et $c = 9$, on prend $x = 1$ et $y = -3$, et l'expression vaut $1 - b/3 + 1 = 2 - b/3$, qui est négative dès que $b > 6$.

### Conclusion

**Le réel $b = 6$ a la propriété, et aucun réel plus grand ne l'a : le plus grand réel $b$ qui convient est $6$.**

## Going further

1. Montrez de la même façon que le plus petit réel $b$ qui a la propriété est $-6$. (Développez $\left(\sqrt{a}/x - \sqrt{c}/y\right)^2$.)
2. En posant $u = 1/x$ et $v = 1/y$, l'expression devient $au^2 + buv + cv^2$. Pour $v$ fixé non nul, c'est un polynôme du second degré en $u$. Retrouvez le résultat avec son discriminant.
3. Que devient la réponse si l'on suppose seulement $ac = 16$ ?
