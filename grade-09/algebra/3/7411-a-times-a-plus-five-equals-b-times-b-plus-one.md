---
id: "7411"
title: "a(a + 5) = b(b + 1)"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation, entiers, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : arithmétique"
  reference: "stage_ete_2011.pdf, « Seconde période », incontournable arithmétique, test, exercice 2 (le corrigé imprimé étiquette « b = a + 1 » le troisième cas, qui est en réalité « b = a + 3 » ; le résultat final est correct)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(a \,;\, b)$ tels que
$$a(a+5) = b(b+1).$$

## Hints

1. Cherche d'abord des solutions à la main, en essayant $a = 0, 1, 2, 3, \ldots$ et en regardant
   si $a(a+5)$ est de la forme $b(b+1)$.
2. Suppose $a \geq 1$. Compare $b$ et $a$ : si $b$ était plus petit ou égal à $a$, que dirais-tu
   des deux produits ?
3. Compare maintenant $b + 1$ et $a + 5$. Tu obtiendras un encadrement de $b$ qui ne laisse que
   trois valeurs à tester.

## Solution

**Le cas $a = 0$.**

L'équation devient $0 = b(b+1)$, donc $b = 0$ (le cas $b = -1$ est exclu, on cherche des entiers
naturels). Le couple $(0 \,;\, 0)$ est solution.

**On suppose maintenant $a \geq 1$, donc $b \geq 1$.**

*Une borne inférieure pour $b$.* Supposons $b \leq a$. Alors $b + 1 \leq a + 1 < a + 5$, donc
$$b(b+1) < a(a+5),$$
ce qui contredit l'égalité. Donc $b \geq a + 1$.

*Une borne supérieure pour $b$.* Supposons $b \geq a + 4$. Alors $b \geq a+4 > a$ et
$b + 1 \geq a + 5$, donc
$$b(b+1) \geq (a+4)(a+5) > a(a+5),$$
ce qui contredit encore l'égalité. Donc $b \leq a + 3$.

**Il reste donc trois cas :** $b = a+1$, $b = a+2$ ou $b = a+3$.

**Cas $b = a + 1$.**
$$a(a+5) = (a+1)(a+2) \iff a^2 + 5a = a^2 + 3a + 2 \iff 2a = 2 \iff a = 1.$$
On obtient $a = 1$ et $b = 2$. Vérification : $1 \times 6 = 6$ et $2 \times 3 = 6$. C'est bien une
solution.

**Cas $b = a + 2$.**
$$a(a+5) = (a+2)(a+3) \iff a^2 + 5a = a^2 + 5a + 6 \iff 0 = 6,$$
ce qui est faux : pas de solution.

**Cas $b = a + 3$.**
$$a(a+5) = (a+3)(a+4) \iff a^2 + 5a = a^2 + 7a + 12 \iff -2a = 12 \iff a = -6,$$
qui n'est pas un entier naturel : pas de solution.

**Conclusion.** Les seuls couples d'entiers naturels solutions sont
$$(a \,;\, b) = (0 \,;\, 0) \quad \text{et} \quad (a \,;\, b) = (1 \,;\, 2).$$

## Going further

Résoudre de la même façon $a(a+7) = b(b+1)$ dans les entiers naturels. Combien de cas faut-il
examiner cette fois ?
