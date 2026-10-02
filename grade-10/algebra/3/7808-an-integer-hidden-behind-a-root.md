---
id: "7808"
title: "Deux entiers cachés derrière une racine"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [racine-carree, irrationnel, identification, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers tels que
$$\left(a + b\sqrt{2}\right)^2 = 41 + 24\sqrt{2}.$$

Déterminer la valeur de $a^2 + b^2$.

## Hints

1. Commence par développer le membre de gauche avec l'identité $(u+v)^2 = u^2 + 2uv + v^2$, en
   prenant $u = a$ et $v = b\sqrt2$. N'oublie pas que $\left(\sqrt2\right)^2 = 2$.
2. Tu obtiens quelque chose de la forme $\text{(un entier)} + \text{(un entier)} \times \sqrt2$.
   Comme $\sqrt2$ est irrationnel, deux écritures de cette forme ne peuvent être égales que si
   les entiers se correspondent deux à deux.
3. Tu arrives à deux équations : $a^2 + 2b^2 = 41$ et $ab = 12$. Liste les façons d'écrire $12$
   comme produit de deux entiers positifs, et teste-les dans la première équation.

## Solution

**Étape 1 : on développe.**

$$\left(a + b\sqrt{2}\right)^2 = a^2 + 2 \times a \times b\sqrt2 + \left(b\sqrt2\right)^2
 = a^2 + 2b^2 + 2ab\,\sqrt2 .$$

L'égalité de l'énoncé devient donc
$$\left(a^2 + 2b^2\right) + 2ab\,\sqrt2 = 41 + 24\sqrt2 .$$

**Étape 2 : on identifie.**

Posons $A = a^2 + 2b^2 - 41$ et $B = 2ab - 24$ : ce sont deux entiers, et l'égalité s'écrit
$A + B\sqrt2 = 0$.

Si $B$ n'était pas nul, on pourrait écrire $\sqrt2 = -\dfrac{A}{B}$, donc $\sqrt2$ serait un
quotient de deux entiers. Or $\sqrt2$ est irrationnel. Donc $B = 0$, et alors $A = 0$ aussi.

On obtient ainsi les deux équations
$$a^2 + 2b^2 = 41 \qquad \text{et} \qquad 2ab = 24, \text{ c'est-à-dire } ab = 12.$$

**Étape 3 : on résout.**

Comme $ab = 12 > 0$, les entiers $a$ et $b$ ont le même signe, et on peut d'abord les chercher
positifs (le couple opposé donnera le même $a^2 + b^2$).

Les façons d'écrire $12 = a \times b$ avec $a, b$ entiers positifs sont
$$(1, 12), \quad (2, 6), \quad (3, 4), \quad (4, 3), \quad (6, 2), \quad (12, 1).$$

On teste chacune dans $a^2 + 2b^2 = 41$ :

| $(a,b)$ | $a^2 + 2b^2$ |
|---|---|
| $(1,12)$ | $1 + 288 = 289$ |
| $(2,6)$ | $4 + 72 = 76$ |
| $(3,4)$ | $9 + 32 = 41$ |
| $(4,3)$ | $16 + 18 = 34$ |
| $(6,2)$ | $36 + 8 = 44$ |
| $(12,1)$ | $144 + 2 = 146$ |

Seul le couple $(a, b) = (3, 4)$ convient. (Le couple $(-3, -4)$ convient également.)

**Conclusion.**

$$a^2 + b^2 = 3^2 + 4^2 = 9 + 16 = \boxed{25}.$$

*Vérification.* $\left(3 + 4\sqrt2\right)^2 = 9 + 24\sqrt2 + 32 = 41 + 24\sqrt2$.
