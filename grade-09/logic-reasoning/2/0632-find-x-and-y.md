---
id: "0632"
title: "Retrouver X et Y"
grade: 9
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [ensembles, union, intersection, produit-cartesien, couples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 17, section « Ensembles »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

On rappelle que le **produit cartésien** de deux ensembles $A$ et $B$, noté $A \times B$, est l'ensemble de tous les couples $(a, b)$ où $a$ est un élément de $A$ et $b$ un élément de $B$. Par exemple

$$\{1, 2\} \times \{5\} = \{(1, 5),\ (2, 5)\}.$$

Déterminer les ensembles $X$ et $Y$ qui vérifient les deux propriétés suivantes :

1. $X \cup Y = \{1, 2, 3, 4, 5, 6, 7\}$ ;
2. $(X \setminus Y) \times (Y \setminus X) = \{(2, 6),\ (2, 7),\ (3, 6),\ (3, 7),\ (4, 6),\ (4, 7)\}$.

## Hints

1. Dans un couple $(a, b)$ du produit cartésien, d'où vient le premier nombre ? Et le deuxième ?
2. Fais la liste des nombres qui apparaissent en première position dans les six couples donnés, puis la liste de ceux qui apparaissent en deuxième position.
3. Tu connais maintenant $X \setminus Y$ et $Y \setminus X$. Combien de nombres de l'ensemble $\{1, \ldots, 7\}$ n'y figurent pas ? Où sont-ils passés ?
4. Un élément de $X \cup Y$ est soit dans $X$ seulement, soit dans $Y$ seulement, soit dans les deux. Il n'y a pas d'autre possibilité.

## Solution

**Lire le produit cartésien à l'envers.**

Dans le produit $(X \setminus Y) \times (Y \setminus X)$, le premier nombre de chaque couple vient de $X \setminus Y$ et le second de $Y \setminus X$.

Les premiers nombres des six couples donnés sont $2$, $3$ et $4$ ; les seconds sont $6$ et $7$. Donc

$$X \setminus Y = \{2, 3, 4\} \qquad \text{et} \qquad Y \setminus X = \{6, 7\}.$$

Vérifions que ces deux ensembles conviennent : $\{2,3,4\} \times \{6,7\}$ contient $3 \times 2 = 6$ couples, ce sont exactement les six couples de l'énoncé. C'est bien cela.

**Le reste de l'union.**

Tout élément de $X \cup Y$ est dans un et un seul des trois ensembles suivants :

$$X \setminus Y \ (\text{dans } X \text{ seulement}), \qquad Y \setminus X \ (\text{dans } Y \text{ seulement}), \qquad X \cap Y \ (\text{dans les deux}).$$

Comme $X \cup Y = \{1, 2, 3, 4, 5, 6, 7\}$ et que $\{2,3,4\}$ et $\{6,7\}$ occupent déjà cinq de ces sept nombres, il reste

$$X \cap Y = \{1, 5\}.$$

**Les deux ensembles.**

$$X = (X \setminus Y) \cup (X \cap Y) = \{1, 2, 3, 4, 5\},$$

$$Y = (Y \setminus X) \cup (X \cap Y) = \{1, 5, 6, 7\}.$$

**Vérification.**

- $X \cup Y = \{1,2,3,4,5,6,7\}$ ✔
- $X \setminus Y = \{2,3,4\}$ et $Y \setminus X = \{6,7\}$, donc le produit cartésien est bien
$$\{(2,6), (2,7), (3,6), (3,7), (4,6), (4,7)\}. \ ✔$$

**Conclusion.** $X = \{1, 2, 3, 4, 5\}$ et $Y = \{1, 5, 6, 7\}$, et c'est l'unique solution : chaque étape du raisonnement était forcée.

## Going further

1. Que se passerait-il si l'un des deux ensembles $X \setminus Y$ ou $Y \setminus X$ était vide ? À quoi ressemblerait alors le produit cartésien ?
2. Si $\mathrm{card}(A) = p$ et $\mathrm{card}(B) = q$, combien de couples contient $A \times B$ ?
3. Les couples $(2, 6)$ et $(6, 2)$ sont-ils le même objet ? Le produit $A \times B$ est-il le même ensemble que $B \times A$ ?
