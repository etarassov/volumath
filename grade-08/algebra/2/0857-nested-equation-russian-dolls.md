---
id: "0857"
title: "Une équation en poupées russes"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, parentheses emboitees, quotient]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 26, section « Divers »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Résous l'équation

$$1 + 2 \times \left( 3 + 4 \times \left( 5 + \frac{6}{7 - x} \right) \right) = 63.$$

## Hints

1. Surtout ne développe pas. Les parenthèses sont emboîtées les unes dans les autres comme des poupées russes : on les ouvre de l'extérieur vers l'intérieur.
2. Appelle $A$ le contenu de la grande parenthèse. L'équation dit simplement $1 + 2A = 63$. Que vaut $A$ ?
3. Recommence : appelle $B$ le contenu de la parenthèse suivante. Tu sais maintenant que $3 + 4B = A$.
4. À la fin, il ne reste qu'une égalité entre fractions : $\dfrac{6}{7-x} = 2$. Par quel nombre faut-il diviser $6$ pour trouver $2$ ?

## Solution

**L'idée : enlever les couches une par une, de l'extérieur vers l'intérieur.**

**Première couche.** Posons $A = 3 + 4 \times \left( 5 + \dfrac{6}{7-x} \right)$. L'équation s'écrit

$$1 + 2A = 63, \qquad \text{donc} \qquad 2A = 62, \qquad \text{donc} \qquad A = 31.$$

**Deuxième couche.** Posons $B = 5 + \dfrac{6}{7-x}$. On vient de voir que $3 + 4B = 31$, donc

$$4B = 28, \qquad \text{donc} \qquad B = 7.$$

**Troisième couche.**

$$5 + \frac{6}{7-x} = 7, \qquad \text{donc} \qquad \frac{6}{7-x} = 2.$$

**Dernière couche.** Un quotient vaut $2$ lorsque le dénominateur est la moitié du numérateur :

$$7 - x = \frac{6}{2} = 3, \qquad \text{donc} \qquad x = 7 - 3 = 4.$$

**Conclusion.** La solution est $x = \mathbf{4}$.

**Vérification.** Avec $x = 4$ :

$$7 - 4 = 3, \quad \frac{6}{3} = 2, \quad 5 + 2 = 7, \quad 4 \times 7 = 28, \quad 3 + 28 = 31, \quad 2 \times 31 = 62, \quad 1 + 62 = 63. \qquad \checkmark$$

(On remarque au passage que $x = 7$ est interdit : le dénominateur $7-x$ ne doit pas être nul.)

## Going further

1. Même équation, mais avec $35$ à la place de $63$. La méthode est identique, et la solution n'est plus entre $0$ et $7$. (Réponse : $x = 11$.)
2. Invente une équation emboîtée de ce type dont la solution est $x = 2$, puis donne-la à résoudre à un camarade.
