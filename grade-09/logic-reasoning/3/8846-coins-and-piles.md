---
id: "8846"
title: "Des pièces et des tas"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, processus, raisonnement par labsurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 2, p. 123"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Sur la table, un unique tas de $100$ pièces. On peut répéter autant de fois qu'on veut l'une des deux opérations suivantes :

- **opération A :** choisir un tas d'au moins $3$ pièces, en retirer une pièce (qui disparaît), et séparer le reste du tas en deux tas non vides ;
- **opération B :** supprimer un tas qui ne contient qu'une seule pièce.

Peut-on arriver à une situation où il ne reste plus aucune pièce sur la table ?

## Hints

1. Cherche une quantité qui ne change pas, ou dont la parité ne change pas, à chaque opération.
2. Essaie la somme : (nombre de pièces) + (nombre de tas). Comment varie-t-elle avec l'opération A ? Et avec l'opération B ?
3. Calcule la valeur de cette somme au départ, puis celle qu'elle aurait à l'arrivée voulue.

## Solution

### L'invariant

Posons
$$S = (\text{nombre de pièces sur la table}) + (\text{nombre de tas sur la table}).$$

Regardons comment $S$ varie.

- **Opération A.** On perd $1$ pièce, et un tas devient deux tas, donc le nombre de tas augmente de $1$. Au total, $S$ ne change pas : $-1 + 1 = 0$.
- **Opération B.** On perd $1$ pièce et $1$ tas. Donc $S$ diminue de $2$.

Dans les deux cas, **la parité de $S$ ne change jamais**.

### On calcule

Au départ : $100$ pièces et $1$ tas, donc
$$S = 100 + 1 = 101 ,$$
qui est **impair**.

Si l'on arrivait à ne plus avoir aucune pièce, il n'y aurait plus de tas non plus (un tas contient au moins une pièce), donc on aurait
$$S = 0 + 0 = 0 ,$$
qui est **pair**.

C'est impossible, puisque la parité de $S$ ne change jamais.

**Conclusion.** On ne peut pas vider la table.

### Ce qu'il faut retenir

Un invariant n'a pas besoin d'être une quantité qui ne bouge pas du tout : il suffit qu'une de ses propriétés (ici sa parité) soit préservée. C'est souvent plus facile à trouver, et tout aussi efficace.

## Going further

En partant de $101$ pièces au lieu de $100$, peut-on vider la table ? Si oui, donner une suite d'opérations qui y parvient.
