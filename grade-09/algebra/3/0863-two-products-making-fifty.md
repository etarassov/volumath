---
id: "0863"
title: "Deux produits qui font 50"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, facteur-commun, identites-remarquables, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 28, section « Divers »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Résous l'équation

$$(x+3)(x+2) + (x+3)(x+4) = 50.$$

## Hints

1. Ne développe pas tout de suite : tu obtiendrais une équation du second degré, plus pénible à résoudre. Regarde d'abord ce que les deux produits ont en commun.
2. Le facteur $(x+3)$ apparaît dans les deux produits. Factorise-le.
3. Il reste à réduire $(x+2) + (x+4)$. Que trouves-tu ? Compare ce résultat avec $(x+3)$.
4. L'équation prend la forme $2(x+3)^2 = 50$, donc $(x+3)^2 = 25$. Attention : il y a **deux** nombres dont le carré vaut $25$.

## Solution

**L'idée : factoriser au lieu de développer.**

Les deux produits ont le facteur $(x+3)$ en commun. On le met en évidence :

$$(x+3)(x+2) + (x+3)(x+4) = (x+3)\big[(x+2) + (x+4)\big] = (x+3)(2x+6).$$

Or $2x + 6 = 2(x+3)$, donc

$$(x+3)(2x+6) = 2(x+3)(x+3) = 2(x+3)^2.$$

**L'équation devient**

$$2(x+3)^2 = 50, \qquad \text{donc} \qquad (x+3)^2 = 25.$$

**Deux cas.** Un nombre dont le carré vaut $25$ est $5$ ou $-5$ :

$$x + 3 = 5 \quad \text{donne} \quad x = 2,$$
$$x + 3 = -5 \quad \text{donne} \quad x = -8.$$

**Vérification.**

Pour $x = 2$ : $(2+3)(2+2) + (2+3)(2+4) = 5 \times 4 + 5 \times 6 = 20 + 30 = 50$. $\checkmark$

Pour $x = -8$ : $(-8+3)(-8+2) + (-8+3)(-8+4) = (-5) \times (-6) + (-5) \times (-4) = 30 + 20 = 50$. $\checkmark$

**Conclusion.** L'équation a deux solutions : $x = \mathbf{2}$ et $x = \mathbf{-8}$.

## Going further

1. Résous la même équation avec $2$ à la place de $50$. Puis avec $0$. Combien de solutions dans chaque cas ?
2. Que se passe-t-il si on remplace $50$ par $-2$ ? Explique sans calculer.
3. Développe quand même l'équation de départ pour obtenir $2x^2 + 12x + 18 = 50$, et retrouve les deux solutions. Compare la longueur des deux méthodes.
