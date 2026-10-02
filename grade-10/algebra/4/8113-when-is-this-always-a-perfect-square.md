---
id: "8113"
title: "Quand 4n² + kn + 9 est-il toujours un carré ?"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [carre-parfait, identites-remarquables, entiers, difference-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 6. Le polycopié demande seulement une valeur de k et donne k = 12 ; l'énoncé ci-dessous demande toutes les valeurs, et il y en a deux."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les entiers $k$ tels que, **pour tout** entier $n$, le nombre

$$4n^2 + kn + 9$$

soit le carré d'un entier.

## Hints

1. Commence par chercher une valeur de $k$ qui marche. L'expression ressemble beaucoup à un carré du type $(2n + c)^2$.
2. Développe $(2n+c)^2$ et compare avec $4n^2 + kn + 9$. Combien de valeurs de $c$ conviennent ?
3. Pour montrer qu'il n'y en a pas d'autres, il faut travailler. Écris $4n^2 + kn + 9 = m^2$ et essaie de faire apparaître une différence de deux carrés.
4. Multiplie l'égalité par $16$. À gauche tu obtiens $(4m)^2$ ; à droite, complète $64n^2 + 16kn$ en un carré parfait.
5. Tu arrives à $(4m)^2 - (8n+k)^2 = 144 - k^2$. Le membre de droite ne dépend pas de $n$, alors que le membre de gauche est un produit dont un facteur devient énorme. Qu'est-ce que cela impose ?

## Solution

**Deux valeurs qui conviennent.**

Développons $(2n+3)^2 = 4n^2 + 12n + 9$. Donc $k = 12$ convient : pour tout entier $n$, $4n^2 + 12n + 9$ est le carré de l'entier $2n+3$.

De même $(2n-3)^2 = 4n^2 - 12n + 9$, donc $k = -12$ convient aussi.

**Il n'y en a pas d'autres.**

Supposons que $k$ soit un entier tel que $4n^2 + kn + 9$ soit un carré pour tout entier $n$. Pour chaque $n$, notons $m$ un entier positif ou nul tel que

$$4n^2 + kn + 9 = m^2.$$

Multiplions par $16$ :

$$64n^2 + 16kn + 144 = 16m^2 = (4m)^2.$$

À gauche, complétons le carré. Comme $(8n + k)^2 = 64n^2 + 16kn + k^2$, on a

$$64n^2 + 16kn + 144 = (8n+k)^2 - k^2 + 144.$$

Posons $A = 4m$ et $B = 8n + k$. L'égalité devient

$$A^2 - B^2 = 144 - k^2, \qquad \text{c'est-à-dire} \qquad (A - B)(A + B) = 144 - k^2.$$

Notons $C = |144 - k^2|$ et supposons, pour aboutir à une contradiction, que $C \neq 0$, donc $C \geq 1$.

Le membre de droite $144 - k^2$ ne dépend pas de $n$ : il est fixé une fois pour toutes. Choisissons maintenant $n$ assez grand pour que

$$B = 8n + k > C.$$

C'est possible, puisque $8n+k$ devient aussi grand que l'on veut. Deux cas, et les deux sont impossibles.

- Si $A = B$, alors $A^2 - B^2 = 0$, donc $144 - k^2 = 0$, ce qui contredit $C \neq 0$.
- Si $A \neq B$, alors $|A - B| \geq 1$ car $A$ et $B$ sont des entiers. Comme $A = 4m \geq 0$ et $B > 0$, on a $A + B \geq B > 0$, d'où

$$C = |A-B| \times (A+B) \geq 1 \times B > C.$$

C'est absurde.

Donc $C = 0$, c'est-à-dire $k^2 = 144$, soit $k = 12$ ou $k = -12$.

**Conclusion : les seules valeurs sont $k = 12$ et $k = -12$**, et l'on a alors respectivement $4n^2+12n+9 = (2n+3)^2$ et $4n^2-12n+9 = (2n-3)^2$.
