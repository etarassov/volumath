---
id: "8850"
title: "Six secteurs autour d'un cercle"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [invariant, somme alternee, cercle, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 6, p. 123"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Un disque est partagé en six secteurs. On écrit dans les secteurs, dans le sens des aiguilles d'une montre, les nombres
$$1, \; 0, \; 1, \; 0, \; 0, \; 0 .$$

À chaque étape, on choisit **deux secteurs voisins** et on augmente de $1$ le nombre écrit dans chacun des deux.

Peut-on, après un nombre fini d'étapes, obtenir le même nombre dans les six secteurs ?

## Hints

1. Numérote les secteurs de $1$ à $6$ en tournant, et cherche une quantité qui ne bouge pas quand on ajoute $1$ à deux secteurs voisins.
2. Deux secteurs voisins portent des numéros de parités différentes. Cela suggère de compter les secteurs pairs négativement.
3. Calcule cette quantité au départ, puis ce qu'elle vaudrait si les six nombres étaient égaux.

## Solution

### L'invariant

Numérotons les secteurs $1, 2, 3, 4, 5, 6$ dans le sens des aiguilles d'une montre, et notons $a_1, \dots, a_6$ les nombres écrits. Considérons la **somme alternée**
$$S = a_1 - a_2 + a_3 - a_4 + a_5 - a_6 .$$

Deux secteurs voisins portent toujours des numéros consécutifs (le secteur $6$ étant voisin du secteur $1$), donc l'un a un numéro pair et l'autre un numéro impair. Dans $S$, l'un apparaît avec le signe $+$ et l'autre avec le signe $-$.

Quand on ajoute $1$ à ces deux secteurs, $S$ varie donc de
$$+1 - 1 = 0 .$$

**La quantité $S$ ne change jamais** : c'est un invariant.

### On calcule

Au départ, $(a_1, \dots, a_6) = (1, 0, 1, 0, 0, 0)$, donc
$$S = 1 - 0 + 1 - 0 + 0 - 0 = 2 .$$

Si les six nombres étaient tous égaux à une même valeur $v$, on aurait
$$S = v - v + v - v + v - v = 0 .$$

Comme $S$ vaut toujours $2$, cette situation est inatteignable.

**Conclusion.** Non, on ne peut pas égaliser les six secteurs.

### Pourquoi la somme alternée fonctionne ici

L'opération touche toujours exactement un secteur de chaque parité : c'est précisément ce qui rend la somme alternée insensible à l'opération. Ce raisonnement demande un nombre **pair** de secteurs, sans quoi les signes ne se refermeraient pas correctement autour du cercle.

## Going further

1. Avec la configuration de départ $1, 0, 0, 1, 0, 0$, peut-on égaliser les six secteurs ?
2. Avec **cinq** secteurs au lieu de six, l'invariant ci-dessus n'existe plus. En partant de $1, 0, 0, 0, 0$, peut-on égaliser ?
