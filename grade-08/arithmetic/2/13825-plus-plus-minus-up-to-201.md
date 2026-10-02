---
id: "13825"
title: "Plus, plus, moins jusqu'à 201"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [somme, somme des premiers entiers, regroupement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices communs, exercice 9 ; corrigé dans le même fichier, solution 9 (inspirée des Olympiades mathématiques belges, éliminatoire miDi 2000, Q26)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Calculer

$$1 + 2 - 3 + 4 + 5 - 6 + 7 + 8 - 9 + \cdots + 199 + 200 - 201 - 6000.$$

Les signes se répètent par groupes de trois : deux signes $+$, puis un signe $-$.

## Hints

1. Regroupe les termes trois par trois : $1 + 2 - 3$, puis $4 + 5 - 6$, et ainsi de suite.
   Que vaut chaque groupe ?
2. Combien y a-t-il de groupes, et que vaut le dernier ?
3. Pour additionner $1 + 2 + \cdots + 66$, écris la somme une deuxième fois à l'envers, sous la
   première, et additionne colonne par colonne.

## Solution

**Les groupes de trois.** Regroupons les nombres de $1$ à $201$ trois par trois :

$$(1 + 2 - 3) + (4 + 5 - 6) + (7 + 8 - 9) + \cdots + (199 + 200 - 201).$$

Le premier groupe vaut $0$, le deuxième $3$, le troisième $6$. En général, le groupe qui
commence par $3k + 1$ vaut $(3k + 1) + (3k + 2) - (3k + 3) = 3k$. Le dernier groupe commence par
$199 = 3 \times 66 + 1$, donc $k$ va de $0$ à $66$, et le dernier groupe vaut $198$. La somme des
groupes est

$$0 + 3 + 6 + \cdots + 198 = 3 \times (1 + 2 + \cdots + 66).$$

**La somme de $1$ à $66$.** Notons $S = 1 + 2 + \cdots + 66$. En écrivant $S$ une fois dans
l'ordre et une fois à l'envers, puis en additionnant terme à terme, on trouve
$(1 + 66) + (2 + 65) + \cdots + (66 + 1)$, soit $66$ fois $67$. Donc $2S = 66 \times 67$ et

$$S = 33 \times 67 = 2211.$$

**Le résultat.** Les groupes valent en tout $3 \times 2211 = 6633$, et il reste à retirer
$6000$ :

$$6633 - 6000 = 633.$$

**Le résultat du calcul est $633$.**
