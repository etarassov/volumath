---
id: "8540"
title: "n + 2 divise n³ + 3n + 29"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, diviseurs, polynome]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 17"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les entiers strictement positifs $n$ tels que $n + 2$ divise $n^3 + 3n + 29$.

## Hints

1. Si $n+2$ divise $n^3 + 3n + 29$, il divise aussi toute combinaison de ce nombre avec des multiples de $n+2$. Essaie de faire baisser le degré petit à petit.
2. Plus rapide : quand on travaille « modulo $n+2$ », le nombre $n$ se comporte comme $-2$. Que devient alors $n^3 + 3n + 29$ ?
3. Tu devrais trouver que $n+2$ divise un nombre fixe, indépendant de $n$. Il ne reste qu'à lister ses diviseurs.
4. N'oublie pas de vérifier les candidats à la fin.

## Solution

**L'idée.** On cherche à remplacer $n^3 + 3n + 29$ par un nombre qui ne dépend plus de $n$,
tout en gardant la même divisibilité par $n+2$.

**Le calcul.** Retranchons des multiples de $n+2$ :

$$n^3 + 3n + 29 = n^3 + 2n^2 - 2n^2 + 3n + 29 = n^2(n+2) - 2n^2 + 3n + 29 .$$

Donc $n+2$ divise $n^3 + 3n + 29$ si et seulement si $n+2$ divise $-2n^2 + 3n + 29$.
On recommence :

$$-2n^2 + 3n + 29 = -2n(n+2) + 4n + 3n + 29 = -2n(n+2) + 7n + 29 ,$$

puis

$$7n + 29 = 7(n+2) + 15 .$$

En résumé,

$$n + 2 \text{ divise } n^3 + 3n + 29 \iff n + 2 \text{ divise } 15 .$$

*(Plus rapidement : modulo $n+2$, on a $n \equiv -2$, donc
$n^3 + 3n + 29 \equiv (-2)^3 + 3 \times (-2) + 29 = -8 - 6 + 29 = 15$.)*

**Les valeurs possibles.** Les diviseurs positifs de $15$ sont $1$, $3$, $5$ et $15$.
Comme $n \geqslant 1$, on a $n + 2 \geqslant 3$, donc

$$n + 2 \in \{3, 5, 15\}, \qquad \text{c'est-à-dire} \qquad n \in \{1, 3, 13\} .$$

**Vérification.**

- $n = 1$ : $n^3 + 3n + 29 = 1 + 3 + 29 = 33$ et $n + 2 = 3$. Or $33 = 3 \times 11$. C'est bon.
- $n = 3$ : $27 + 9 + 29 = 65$ et $n + 2 = 5$. Or $65 = 5 \times 13$. C'est bon.
- $n = 13$ : $2197 + 39 + 29 = 2265$ et $n + 2 = 15$. Or $2265 = 15 \times 151$. C'est bon.

**Conclusion.** Les entiers cherchés sont $n = 1$, $n = 3$ et $n = 13$.
