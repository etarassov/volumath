---
id: "8867"
title: "Autant de clubs que d'élèves"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [double comptage, denombrement, inscriptions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Double comptage » (Noé)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Double comptage », exercice 2, p. 233"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans un collège, il existe plusieurs clubs. Chaque club compte exactement $3$ membres, et chaque élève du collège est membre d'exactement $3$ clubs.

Montrer qu'il y a autant de clubs que d'élèves.

## Hints

1. Appelle **inscription** le fait qu'un élève donné soit membre d'un club donné. Combien y a-t-il d'inscriptions en tout ?
2. Compte les inscriptions en parcourant les clubs : chaque club en apporte combien ?
3. Compte-les maintenant en parcourant les élèves.
4. Les deux comptages portent sur la même chose, donc ils donnent le même nombre.

## Solution

Notons $C$ le nombre de clubs et $E$ le nombre d'élèves.

Appelons **inscription** un couple (élève, club) tel que cet élève soit membre de ce club, et notons $N$ le nombre total d'inscriptions. On va calculer $N$ de deux façons.

### Premier comptage : club par club

Chaque club compte exactement $3$ membres, donc chaque club apporte exactement $3$ inscriptions. Comme il y a $C$ clubs,
$$N = 3C .$$

### Second comptage : élève par élève

Chaque élève est membre d'exactement $3$ clubs, donc chaque élève apporte exactement $3$ inscriptions. Comme il y a $E$ élèves,
$$N = 3E .$$

### Conclusion

On a compté la **même** chose des deux façons, donc
$$3C = 3E ,$$
et en divisant par $3$ :
$$C = E .$$

Il y a bien autant de clubs que d'élèves.

### Attention à ne pas se tromper de quantité

L'erreur classique est de vouloir comparer directement les clubs et les élèves, par exemple en essayant d'associer à chaque club un élève. Cela ne marche pas : un élève appartient à trois clubs, donc il n'y a pas d'association naturelle un pour un. Ce qu'on compte ici, ce ne sont ni les clubs ni les élèves, mais les **liens** entre les deux, et c'est ce troisième objet qui fait le pont.

## Going further

1. Reprendre l'exercice avec $a$ membres par club et $b$ clubs par élève. Quelle relation obtient-on entre $C$ et $E$ ?
2. Dans un autre collège, chaque club compte $5$ membres et chaque élève est dans $2$ clubs. S'il y a $30$ élèves, combien y a-t-il de clubs ?
3. Peut-on avoir un collège où chaque club compte $4$ membres, chaque élève est dans $3$ clubs, et où il y a $10$ élèves ?
