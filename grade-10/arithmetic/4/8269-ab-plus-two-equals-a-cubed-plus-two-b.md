---
id: "8269"
title: "ab + 2 = a³ + 2b"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation diophantienne, divisibilite, division euclidienne de polynomes, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 20 (niveau 1). La Muraille ne publie pas de solutions ; les six couples ci-dessous ont été vérifiés par recherche exhaustive."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(a, b)$ tels que

$$ab + 2 = a^3 + 2b .$$

(On rappelle que les entiers naturels sont $0, 1, 2, 3, \ldots$)

## Hints

1. Une seule des deux inconnues apparaît à une puissance : range l'équation pour isoler $b$.
2. Regroupe les termes en $b$ d'un côté : tu obtiens $b(a-2) = a^3 - 2$.
3. Le cas $a = 2$ doit être traité à part. Que donne-t-il ?
4. Pour $a \ne 2$, il faut que $a - 2$ divise $a^3 - 2$. Écris $a^3 - 2$ sous la forme
   $(a-2) \times (\text{quelque chose}) + (\text{reste})$. Indication : $a^3 - 8$ se factorise.
5. Tu arrives à « $a-2$ divise $6$ ». Liste les possibilités, sans oublier les valeurs
   négatives de $a - 2$.

## Solution

**Réponse : six couples, $(0,1)$, $(1,1)$, $(3,25)$, $(4,31)$, $(5,41)$ et $(8,85)$.**

**On isole $b$.**

L'équation $ab + 2 = a^3 + 2b$ se réécrit

$$ab - 2b = a^3 - 2, \qquad \text{c'est-à-dire} \qquad b\,(a - 2) = a^3 - 2 .$$

**Le cas $a = 2$.**

Le membre de gauche devient $0$, et le membre de droite vaut $8 - 2 = 6 \ne 0$. Il n'y a donc
pas de solution avec $a = 2$.

**Le cas $a \ne 2$.**

On peut alors diviser :

$$b = \frac{a^3 - 2}{a - 2} .$$

Pour que $b$ soit entier, il faut que $a - 2$ divise $a^3 - 2$. Pour voir ce que cela impose,
utilisons la factorisation $a^3 - 8 = (a-2)(a^2 + 2a + 4)$ :

$$a^3 - 2 = (a^3 - 8) + 6 = (a-2)(a^2 + 2a + 4) + 6 .$$

Donc

$$b = a^2 + 2a + 4 + \frac{6}{a-2} .$$

Comme $a^2 + 2a + 4$ est un entier, $b$ est entier **si et seulement si** $a - 2$ divise $6$.

**On liste les possibilités.**

$a$ est un entier naturel, donc $a - 2 \ge -2$. Les diviseurs de $6$ qui sont $\ge -2$ et
différents de $0$ sont

$$-2, \quad -1, \quad 1, \quad 2, \quad 3, \quad 6 .$$

(Les diviseurs $-3$ et $-6$ donneraient $a = -1$ et $a = -4$, qui ne sont pas des entiers
naturels.)

| $a-2$ | $a$ | $b = a^2+2a+4+\dfrac{6}{a-2}$ | vérification $ab+2 = a^3+2b$ |
|---|---|---|---|
| $-2$ | $0$ | $0 + 0 + 4 - 3 = 1$ | $0 + 2 = 2$ et $0 + 2 = 2$ ✓ |
| $-1$ | $1$ | $1 + 2 + 4 - 6 = 1$ | $1 + 2 = 3$ et $1 + 2 = 3$ ✓ |
| $1$ | $3$ | $9 + 6 + 4 + 6 = 25$ | $75 + 2 = 77$ et $27 + 50 = 77$ ✓ |
| $2$ | $4$ | $16 + 8 + 4 + 3 = 31$ | $124 + 2 = 126$ et $64 + 62 = 126$ ✓ |
| $3$ | $5$ | $25 + 10 + 4 + 2 = 41$ | $205 + 2 = 207$ et $125 + 82 = 207$ ✓ |
| $6$ | $8$ | $64 + 16 + 4 + 1 = 85$ | $680 + 2 = 682$ et $512 + 170 = 682$ ✓ |

Toutes les valeurs de $b$ obtenues sont bien des entiers naturels, et les six couples vérifient
l'équation.

**Conclusion.**

$$\boxed{(a,b) \in \{(0,1),\ (1,1),\ (3,25),\ (4,31),\ (5,41),\ (8,85)\}}$$

## Going further

1. Combien y a-t-il de solutions si l'on autorise $a$ et $b$ à être des entiers **relatifs** ?
2. Où intervient exactement le nombre $6$ ? Refaire le raisonnement avec
   $ab + 3 = a^3 + 3b$ : quel nombre remplace $6$, et combien de solutions obtient-on ?
3. Pourquoi la méthode marcherait-elle beaucoup moins bien avec $ab + 2 = a^3 + 2b^2$ ?
