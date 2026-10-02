---
id: "8220"
title: "n + 2 divise n³ + 3n + 29"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, combinaisons lineaires, diviseurs, verification]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les entiers $n \ge 0$ tels que $n + 2$ divise $n^3 + 3n + 29$.

On pensera à vérifier, à la fin, que les $n$ trouvés sont bien solutions.

## Hints

1. Outil de base : si $d$ divise $A$ et $d$ divise $B$, alors $d$ divise $A - B$, et plus généralement $d$ divise $A - kB$ pour tout entier $k$.
2. Ici $d = n+2$ divise évidemment tous les multiples de $n+2$. Choisis un multiple de $n+2$ dont le terme de plus haut degré est $n^3$, et soustrais-le.
3. Le bon multiple est $n^2(n+2) = n^3 + 2n^2$. Soustrais-le et regarde le degré de ce qui reste.
4. Recommence : le nouveau reste est de degré $2$, élimine-le de la même façon, puis le terme de degré $1$.
5. Tu vas finir sur une **constante**. Les diviseurs d'une constante sont en nombre fini : la liste des $n$ possibles est alors courte.
6. Attention : la méthode donne les $n$ **possibles**, pas forcément des solutions. La vérification est obligatoire.

## Solution

**Descendre en degré.**

On suppose que $n + 2$ divise $n^3 + 3n + 29$. On va soustraire, un à un, des multiples de $n+2$, ce qui ne change pas la divisibilité.

*Éliminer le terme de degré $3$.* Comme $n+2$ divise $n^2(n+2) = n^3 + 2n^2$, il divise aussi la différence :

$$\left(n^3 + 3n + 29\right) - \left(n^3 + 2n^2\right) = -2n^2 + 3n + 29 .$$

*Éliminer le terme de degré $2$.* Comme $n+2$ divise $2n(n+2) = 2n^2 + 4n$, il divise

$$\left(-2n^2 + 3n + 29\right) + \left(2n^2 + 4n\right) = 7n + 29 .$$

*Éliminer le terme de degré $1$.* Comme $n+2$ divise $7(n+2) = 7n + 14$, il divise

$$\left(7n + 29\right) - \left(7n + 14\right) = 15 .$$

**La liste des candidats.**

Donc $n + 2$ divise $15$. Comme $n \ge 0$, on a $n + 2 \ge 2$, et les diviseurs de $15$ supérieurs ou égaux à $2$ sont

$$3, \quad 5, \quad 15 .$$

Cela donne trois candidats :

$$n = 1, \qquad n = 3, \qquad n = 13 .$$

**La vérification.**

La chaîne de raisonnement ci-dessus part de « $n+2$ divise $n^3+3n+29$ » et en tire « $n+2$ divise $15$ ». Rien ne garantit a priori la réciproque, il faut donc essayer les trois valeurs.

| $n$ | $n+2$ | $n^3 + 3n + 29$ | quotient |
|---|---|---|---|
| $1$ | $3$ | $1 + 3 + 29 = 33$ | $33 = 3 \times 11$ ✓ |
| $3$ | $5$ | $27 + 9 + 29 = 65$ | $65 = 5 \times 13$ ✓ |
| $13$ | $15$ | $2197 + 39 + 29 = 2265$ | $2265 = 15 \times 151$ ✓ |

Les trois candidats sont bien des solutions.

**Conclusion.**

$$\boxed{n = 1, \quad n = 3, \quad n = 13 .}$$

**Pourquoi la réciproque marche-t-elle ici ?** En remontant la chaîne, on voit que

$$n^3 + 3n + 29 = (n+2)\left(n^2 - 2n + 7\right) + 15 .$$

Donc $n+2$ divise $n^3+3n+29$ **si et seulement si** $n+2$ divise $15$ : les implications sont en fait des équivalences. La vérification confirme ce qu'on pouvait prévoir, mais il fallait l'écrire.

## Going further

Trouver tous les entiers $n \ge 0$ tels que $n - 3$ divise $n^3 + 4$. Attention : cette fois $n-3$ peut être négatif ou nul, il faudra traiter ces cas à part.
