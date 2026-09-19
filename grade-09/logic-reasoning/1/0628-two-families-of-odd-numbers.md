---
id: "0628"
title: "Deux familles de nombres impairs"
grade: 9
theme: logic-reasoning
difficulty: 1
duration_min: 15
tags: [ensembles, union, intersection, cardinal, nombres-impairs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 18, section « Ensembles »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

On considère les deux ensembles

$$A = \{\, x \mid x = 2n - 1,\ n \in \mathbb{N},\ n < 9 \,\}
\qquad \text{et} \qquad
B = \{\, x \mid x = 2m + 5,\ m \in \mathbb{N},\ m \leqslant 11 \,\}.$$

(On rappelle que $0$ est un entier naturel : $n$ et $m$ peuvent valoir $0$.)

1. Écrire en extension, c'est-à-dire en donnant la liste de leurs éléments, les ensembles

$$A, \quad B, \quad A \cup B, \quad A \cap B, \quad A \setminus B, \quad B \setminus A.$$

2. Calculer $\mathrm{card}(A \cup B) - \mathrm{card}(A \cap B)$.

## Hints

1. Pour écrire $A$, fais simplement la liste : prends $n = 0$, puis $n = 1$, puis $n = 2$, jusqu'à la dernière valeur autorisée. Attention à cette dernière valeur, elle n'est pas la même pour $A$ et pour $B$.
2. $A \cup B$ est la liste des nombres qui sont dans $A$ **ou** dans $B$ ; $A \cap B$ celle des nombres qui sont dans les **deux** ; $A \setminus B$ celle des nombres de $A$ qui ne sont **pas** dans $B$.
3. Écris les deux listes l'une sous l'autre, en alignant les nombres égaux. Tout devient visible d'un coup d'œil.

## Solution

**Les deux listes.**

Pour $A$, la condition est $n \in \mathbb{N}$ et $n < 9$, donc $n$ prend les $9$ valeurs $0, 1, 2, \ldots, 8$ :

$$A = \{-1,\ 1,\ 3,\ 5,\ 7,\ 9,\ 11,\ 13,\ 15\}, \qquad \mathrm{card}(A) = 9.$$

Pour $B$, la condition est $m \in \mathbb{N}$ et $m \leqslant 11$, donc $m$ prend les $12$ valeurs $0, 1, 2, \ldots, 11$ :

$$B = \{5,\ 7,\ 9,\ 11,\ 13,\ 15,\ 17,\ 19,\ 21,\ 23,\ 25,\ 27\}, \qquad \mathrm{card}(B) = 12.$$

**On aligne les deux listes.**

| $A$ | $-1$ | $1$ | $3$ | $5$ | $7$ | $9$ | $11$ | $13$ | $15$ | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $B$ | | | | $5$ | $7$ | $9$ | $11$ | $13$ | $15$ | $17$ | $19$ | $21$ | $23$ | $25$ | $27$ |

La partie commune saute aux yeux : elle va de $5$ à $15$.

**Les quatre ensembles demandés.**

$$A \cup B = \{-1,\ 1,\ 3,\ 5,\ 7,\ 9,\ 11,\ 13,\ 15,\ 17,\ 19,\ 21,\ 23,\ 25,\ 27\}, \qquad \mathrm{card}(A \cup B) = 15.$$

$$A \cap B = \{5,\ 7,\ 9,\ 11,\ 13,\ 15\}, \qquad \mathrm{card}(A \cap B) = 6.$$

$$A \setminus B = \{-1,\ 1,\ 3\}, \qquad B \setminus A = \{17,\ 19,\ 21,\ 23,\ 25,\ 27\}.$$

**Le calcul demandé.**

$$\mathrm{card}(A \cup B) - \mathrm{card}(A \cap B) = 15 - 6 = 9.$$

**Conclusion.** La différence demandée vaut $9$.

**Vérification.** Les éléments de $A \cup B$ qui ne sont pas dans $A \cap B$ sont exactement ceux de $A \setminus B$ et ceux de $B \setminus A$. On doit donc retrouver

$$\mathrm{card}(A \setminus B) + \mathrm{card}(B \setminus A) = 3 + 6 = 9. \quad \checkmark$$

## Going further

1. Démontre que pour deux ensembles finis quelconques,
$$\mathrm{card}(A \cup B) = \mathrm{card}(A) + \mathrm{card}(B) - \mathrm{card}(A \cap B).$$
Vérifie la formule sur les ensembles ci-dessus.
2. Les éléments de $A$ et ceux de $B$ sont tous impairs. Pourquoi était-ce prévisible avant de calculer quoi que ce soit ?
3. Jusqu'à quelle valeur faudrait-il laisser monter $n$ pour que $A$ contienne $B$ tout entier ?
