---
id: "8019"
title: "Une relation de récurrence pour 17ⁿ(n + 2)"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [suites, recurrence-lineaire, identification, systeme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On définit, pour tout entier $n \geqslant 1$,

$$u_n = 17^n \times (n + 2).$$

Ainsi $u_1 = 17 \times 3 = 51$, $u_2 = 17^2 \times 4 = 1156$, et ainsi de suite.

Déterminer deux nombres réels $a$ et $b$ tels que

$$u_{n+2} = a\,u_{n+1} + b\,u_n \qquad \text{pour tout entier } n \geqslant 1.$$

## Hints

1. Écris l'égalité voulue en remplaçant $u_n$, $u_{n+1}$ et $u_{n+2}$ par leur expression.
2. Les trois termes contiennent une puissance de $17$. Divise tout par la plus petite.
3. Il te reste une égalité entre deux expressions du premier degré en $n$, qui doit être vraie
   pour tout $n$. Que cela impose-t-il ?
4. Tu obtiens un système de deux équations à deux inconnues.

## Solution

**On écrit ce que l'on veut.** L'égalité $u_{n+2} = a\,u_{n+1} + b\,u_n$ s'écrit

$$17^{n+2}\,(n + 4) = a \times 17^{n+1}\,(n + 3) + b \times 17^n\,(n + 2).$$

**On simplifie par $17^n$.** Ce facteur est non nul et apparaît partout. En divisant :

$$17^2\,(n + 4) = 17a\,(n + 3) + b\,(n + 2),$$

c'est-à-dire

$$289\,n + 1156 = (17a + b)\,n + (51a + 2b).$$

**On identifie.** Cette égalité doit être vraie pour tout entier $n \geqslant 1$. De chaque
côté se trouve une expression du premier degré en $n$ ; deux telles expressions coïncident pour
tout $n$ si et seulement si elles ont le même coefficient devant $n$ et le même terme
constant. On obtient donc

$$17a + b = 289 \qquad \text{et} \qquad 51a + 2b = 1156 .$$

**On résout.** La première équation donne $b = 289 - 17a$. En remplaçant dans la seconde :

$$51a + 2\,(289 - 17a) = 1156, \qquad \text{soit} \qquad 51a + 578 - 34a = 1156,$$

donc $17a = 578$ et

$$a = 34, \qquad b = 289 - 17 \times 34 = 289 - 578 = -289 .$$

**Vérification.** Avec $a = 34$ et $b = -289$, le membre de droite vaut

$$17a\,(n+3) + b\,(n+2) = 578\,(n+3) - 289\,(n+2) = 578n + 1734 - 289n - 578 = 289n + 1156,$$

qui est bien le membre de gauche. L'égalité est donc vraie pour tout $n$.

On peut aussi contrôler sur les premiers termes : $u_3 = 17^3 \times 5 = 24\,565$, et

$$34\,u_2 - 289\,u_1 = 34 \times 1156 - 289 \times 51 = 39\,304 - 14\,739 = 24\,565 .$$

**On a $a = 34$ et $b = -289$, c'est-à-dire $u_{n+2} = 34\,u_{n+1} - 289\,u_n$.**

## Going further

Les deux nombres trouvés ne sont pas quelconques : $34 = 2 \times 17$ et $-289 = -17^2$. La
relation s'écrit donc

$$u_{n+2} = 2 \times 17\,u_{n+1} - 17^2\,u_n .$$

C'est la relation de récurrence dont l'équation caractéristique $x^2 - 34x + 289 = 0$ a la
racine double $x = 17$. Les suites qui la vérifient sont exactement celles de la forme
$(\alpha n + \beta)\,17^n$, et notre suite $u_n = (n+2)\,17^n$ en fait partie.
