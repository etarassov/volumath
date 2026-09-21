---
id: "8624"
title: "Cinq points à coordonnées entières"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [tiroirs, parite, coordonnees, milieu]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On choisit cinq points distincts du plan, tous à coordonnées entières.

Montrer qu'il en existe deux dont le milieu du segment qui les relie est lui aussi à coordonnées entières.

## Hints

1. Écris les coordonnées du milieu de deux points $(x_1, y_1)$ et $(x_2, y_2)$.
2. Une fraction $\dfrac{x_1 + x_2}{2}$ est un entier exactement quand $x_1 + x_2$ est pair. Quand cela arrive-t-il ?
3. Il faut que la condition soit vérifiée **en même temps** pour les abscisses et pour les ordonnées. Chaque point est donc caractérisé par deux parités.
4. Combien y a-t-il de couples de parités possibles ?

## Solution

**La condition sur le milieu.** Le milieu du segment reliant $(x_1, y_1)$ à $(x_2, y_2)$ a pour coordonnées

$$\left( \frac{x_1 + x_2}{2} , \; \frac{y_1 + y_2}{2} \right) .$$

Ce milieu est à coordonnées entières si et seulement si $x_1 + x_2$ et $y_1 + y_2$ sont tous les deux pairs, c'est-à-dire si et seulement si

$$x_1 \text{ et } x_2 \text{ ont la même parité} \qquad \text{et} \qquad y_1 \text{ et } y_2 \text{ ont la même parité} .$$

**Les tiroirs.** À chaque point $(x, y)$ associons le **couple de parités** de ses deux coordonnées. Il y a quatre couples possibles :

$$(\text{pair}, \text{pair}), \quad (\text{pair}, \text{impair}), \quad (\text{impair}, \text{pair}), \quad (\text{impair}, \text{impair}) .$$

Ce sont nos quatre tiroirs, et nos cinq points sont les objets à ranger.

**Le principe des tiroirs.** Comme $5 > 4$, deux de nos points tombent dans le même tiroir : ils ont la même parité d'abscisse **et** la même parité d'ordonnée.

**Conclusion.** Pour ces deux points, les deux conditions du premier paragraphe sont remplies : le milieu du segment qui les relie est à coordonnées entières.

## Going further

Quatre points ne suffisent pas : prends $(0,0)$, $(0,1)$, $(1,0)$ et $(1,1)$. Chacun occupe un tiroir différent, et aucun des six milieux n'est à coordonnées entières. La valeur $5$ de l'énoncé est donc la bonne.

Le même raisonnement fonctionne dans l'espace, avec trois coordonnées. Combien de points faut-il alors prendre ?
