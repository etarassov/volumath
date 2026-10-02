---
id: "2015"
title: "Un carré caché sous la racine"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [racine-carree, changement-de-variable, second-degre, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$2x^2 + 6 - 2\sqrt{2x^2 - 3x + 2} = 3x + 3 .$$

## Hints

1. Ne cherchez pas tout de suite à élever au carré : la quantité $2x^2 - 3x + 2$ apparaît déjà ailleurs dans l'équation, à peine déguisée.
2. Posez $u = \sqrt{2x^2 - 3x + 2}$. Que vaut $2x^2$ en fonction de $u$ et de $x$ ?
3. De $u^2 = 2x^2 - 3x + 2$ on tire $2x^2 = u^2 + 3x - 2$. Remplacez dans l'équation et regardez ce qui reste.
4. Vous devriez tomber sur $u^2 - 2u + 1 = 0$, c'est-à-dire une identité remarquable.

## Solution

**Le bon changement de variable.** Posons

$$u = \sqrt{2x^2 - 3x + 2}, \qquad \text{donc} \qquad u \geqslant 0 \quad \text{et} \quad u^2 = 2x^2 - 3x + 2 .$$

(Remarquons au passage que $2x^2 - 3x + 2$ a pour discriminant $9 - 16 = -7 < 0$ et un coefficient dominant positif : ce trinôme est donc strictement positif pour tout $x$, et la racine carrée existe toujours.)

De l'égalité $u^2 = 2x^2 - 3x + 2$ on tire

$$2x^2 = u^2 + 3x - 2 .$$

Reportons dans le membre de gauche de l'équation :

$$2x^2 + 6 - 2u = (u^2 + 3x - 2) + 6 - 2u = u^2 - 2u + 3x + 4 .$$

L'équation s'écrit donc

$$u^2 - 2u + 3x + 4 = 3x + 3 .$$

Les termes en $3x$ disparaissent, et il reste

$$u^2 - 2u + 1 = 0, \qquad \text{c'est-à-dire} \qquad (u - 1)^2 = 0 .$$

**Donc $u = 1$.**

**Retour à $x$.** La condition $u = 1$ signifie

$$\sqrt{2x^2 - 3x + 2} = 1 .$$

Les deux membres étant positifs, on peut élever au carré :

$$2x^2 - 3x + 2 = 1, \qquad \text{soit} \qquad 2x^2 - 3x + 1 = 0 .$$

Le discriminant vaut $\Delta = 9 - 8 = 1$, donc

$$x = \frac{3 - 1}{4} = \frac{1}{2} \qquad \text{ou} \qquad x = \frac{3 + 1}{4} = 1 .$$

**Vérification.**

Pour $x = 1$ : $2x^2 - 3x + 2 = 2 - 3 + 2 = 1$, donc le membre de gauche vaut $2 + 6 - 2\sqrt{1} = 6$, et le membre de droite $3 + 3 = 6$. $\checkmark$

Pour $x = \frac12$ : $2x^2 - 3x + 2 = \frac12 - \frac32 + 2 = 1$, donc le membre de gauche vaut $\frac12 + 6 - 2 = \frac92$, et le membre de droite $\frac32 + 3 = \frac92$. $\checkmark$

**Conclusion.** L'équation a exactement deux solutions :

$$x = \frac{1}{2} \qquad \text{et} \qquad x = 1 .$$

## Going further

Toutes les étapes sont ici des équivalences, sauf la dernière élévation au carré, qui est légitime parce que les deux membres sont positifs. La vérification confirme d'ailleurs que les deux candidats conviennent.

La leçon à retenir : avant d'isoler une racine et d'élever au carré (ce qui donnerait ici une équation de degré $4$), il vaut la peine de regarder si l'expression sous la racine n'apparaît pas déjà, sous une autre forme, dans le reste de l'équation.
