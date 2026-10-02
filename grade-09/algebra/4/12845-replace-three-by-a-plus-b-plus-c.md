---
id: "12845"
title: "Remplacer 3 par a + b + c"
grade: 9
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, fractions, identites-remarquables, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test junior, exercice 2 ; corrigé 2025-01_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

Soit $a$, $b$ et $c$ des réels tels que $a \geq b \geq 1 \geq c \geq 0$ et $a + b + c = 3$. Démontrer que

$$3\left(\frac{a}{b} + \frac{b}{a}\right) \geq 4c^2 + \frac{a^2}{b} + \frac{b^2}{a}.$$

## Hints

1. Le nombre $3$ apparaît à la fois dans l'hypothèse et dans l'inégalité. Remplacez-le par $a + b + c$, puis développez le membre de gauche.
2. Après simplification, la différence entre les deux membres ne contient plus $a^2/b$ ni $b^2/a$. Il y reste $a/b + b/a$, multiplié par $c$.
3. Montrez que $a/b + b/a \geq 2$ en réduisant $a/b + b/a - 2$ au même dénominateur.

## Solution

Les réels $a$ et $b$ sont au moins égaux à $1$, donc strictement positifs, et toutes les fractions ont un sens.

### Faire disparaître le 3

Comme $a + b + c = 3$, il suffit de montrer que la différence

$$\Delta = (a + b + c)\left(\frac{a}{b} + \frac{b}{a}\right) - 4c^2 - \frac{a^2}{b} - \frac{b^2}{a}$$

est positive ou nulle. Développons le produit :

$$(a + b + c)\left(\frac{a}{b} + \frac{b}{a}\right) = \frac{a^2}{b} + a + \frac{ca}{b} + b + \frac{b^2}{a} + \frac{cb}{a}.$$

Les termes $a^2/b$ et $b^2/a$ se simplifient, et il reste

$$\Delta = a + b + c\left(\frac{a}{b} + \frac{b}{a}\right) - 4c^2 = 3 - c + c\left(\frac{a}{b} + \frac{b}{a}\right) - 4c^2,$$

en utilisant encore $a + b = 3 - c$.

### Une inégalité classique

Pour tous réels $a, b > 0$,

$$\frac{a}{b} + \frac{b}{a} - 2 = \frac{a^2 + b^2 - 2ab}{ab} = \frac{(a - b)^2}{ab} \geq 0, \qquad \text{donc} \qquad \frac{a}{b} + \frac{b}{a} \geq 2.$$

### Conclusion

Comme $c \geq 0$, on peut multiplier cette inégalité par $c$ : $c\,(a/b + b/a) \geq 2c$. Donc

$$\Delta \geq 3 - c + 2c - 4c^2 = 3 + c - 4c^2 = (1 - c)(3 + 4c).$$

La dernière égalité se vérifie en développant : $(1 - c)(3 + 4c) = 3 + 4c - 3c - 4c^2 = 3 + c - 4c^2$.

Or $1 - c \geq 0$, car $c \leq 1$, et $3 + 4c > 0$. Donc $\Delta \geq 0$, **ce qui démontre l'inégalité.**

Il y a égalité seulement si $(1 - c)(3 + 4c) = 0$, donc $c = 1$, et alors $a + b = 2$ avec $a \geq b \geq 1$, donc $a = b = 1$. Pour $a = b = c = 1$, les deux membres valent bien $6$.

## Going further

1. Où a-t-on utilisé l'hypothèse $a \geq b \geq 1$ ? Montrez que l'inégalité reste vraie pour tous réels $a, b > 0$ et $0 \leq c \leq 1$ tels que $a + b + c = 3$.
2. L'inégalité reste-t-elle vraie si l'on autorise $c > 1$ ? Essayez $a = b = \text{0,5}$ et $c = 2$.
