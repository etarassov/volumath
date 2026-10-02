---
id: "5016"
title: "Trois équations du second degré modulo 11"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [congruences, second-degre, discriminant, carres-modulo-p]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Introduction to Finite Systems: Z6 and Z7 », Harold Reiter, Teachers' Circle Workshop"
  reference: "HReiterZ6andZ7.pdf, section « Problems », questions 4 et 5"
  url: "https://mathcircles.org/activity/introduction-to-finite-systems-z6-and-z7/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterZ6andZ7.pdf"
---

## Statement

On travaille modulo $11$, c'est-à-dire qu'on ne s'intéresse qu'aux restes dans la division par
$11$.

1. Dresser la liste des restes possibles de $x^2$ modulo $11$. On dira qu'un reste qui apparaît
   dans cette liste est un **carré modulo 11**.
2. Soient $a$, $b$, $c$ des entiers avec $a$ non divisible par $11$. Démontrer que

   $$a x^2 + b x + c \equiv 0 \pmod{11} \iff (2ax + b)^2 \equiv b^2 - 4ac \pmod{11} .$$

   En déduire un critère : l'équation a des solutions si et seulement si le discriminant
   $\Delta = b^2 - 4ac$ est un carré modulo $11$.
3. Résoudre modulo $11$ les trois équations suivantes :

   (a) $2x^2 - 3x + 4 \equiv 0$

   (b) $3x^2 - 4x + 2 \equiv 0$

   (c) $4x^2 + 2x - 3 \equiv 0$

## Hints

1. Pour la question 1, il suffit de calculer $x^2$ pour $x$ allant de $0$ à $10$. Remarque que
   $(11 - x)^2 \equiv x^2$, ce qui divise le travail par deux.
2. Pour la question 2, repars de la démonstration de la forme canonique dans les réels : on
   multiplie par $4a$ pour pouvoir compléter le carré sans diviser par $2$.
3. Il faut justifier que multiplier par $4a$ ne fait ni perdre ni gagner de solutions. Quelle
   hypothèse te le garantit ?
4. Pour la question 3, calcule d'abord les trois discriminants et réduis-les modulo $11$ avant
   de conclure.
5. Quand le discriminant est un carré, il te faudra résoudre une équation du premier degré
   modulo $11$, donc inverser un nombre : cherche $u$ tel que $6u \equiv 1 \pmod{11}$.

## Solution

### 1. Les carrés modulo 11

La dernière ligne donne le reste de $x^2$ dans la division par $11$.

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $x^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $25$ | $36$ | $49$ | $64$ | $81$ | $100$ |
| reste | $0$ | $1$ | $4$ | $9$ | $5$ | $3$ | $3$ | $5$ | $9$ | $4$ | $1$ |

La liste se replie sur elle-même, comme prévu, puisque $(11-x)^2 = 121 - 22x + x^2 \equiv x^2$.

$$\text{Les carrés modulo } 11 \text{ sont } \{0,\ 1,\ 3,\ 4,\ 5,\ 9\} .$$

Les restes $2$, $6$, $7$, $8$ et $10$ ne sont **pas** des carrés modulo $11$. Il y a donc cinq
carrés non nuls et cinq non-carrés, ce qui n'est pas un hasard : chaque carré non nul provient
d'exactement deux valeurs de $x$, opposées l'une de l'autre.

### 2. La forme canonique modulo 11

Soit $a$ non divisible par $11$.

**Sens direct.** Si $ax^2 + bx + c \equiv 0$, multiplions par $4a$ :

$$4a^2x^2 + 4abx + 4ac \equiv 0 .$$

Or $(2ax + b)^2 = 4a^2x^2 + 4abx + b^2$, donc $4a^2x^2 + 4abx = (2ax+b)^2 - b^2$, d'où

$$(2ax + b)^2 - b^2 + 4ac \equiv 0, \qquad \text{c'est-à-dire} \qquad (2ax+b)^2 \equiv b^2 - 4ac .$$

**Sens réciproque.** Si $(2ax+b)^2 \equiv b^2 - 4ac$, on remonte les mêmes égalités et on
obtient $4a\,(ax^2+bx+c) \equiv 0$. Comme $11$ est premier et ne divise ni $4$ ni $a$, il ne
divise pas $4a$ ; le lemme d'Euclide donne alors $11 \mid ax^2+bx+c$, c'est-à-dire
$ax^2+bx+c \equiv 0$.

**Le critère.** Posons $\Delta = b^2 - 4ac$ et $y = 2ax + b$. Quand $x$ parcourt les onze restes,
$y$ les parcourt aussi tous, une fois chacun : en effet $2a$ est inversible modulo $11$, donc
$x \mapsto 2ax + b$ est une bijection. L'équation de départ a donc des solutions si et seulement
si l'équation $y^2 \equiv \Delta$ en a, c'est-à-dire **si et seulement si $\Delta$ est un carré
modulo $11$**.

Le compte des solutions suit : deux si $\Delta$ est un carré non nul, une si $\Delta \equiv 0$,
aucune sinon. Exactement comme dans les nombres réels.

### 3. Les trois équations

**(a) $2x^2 - 3x + 4 \equiv 0$.**

$$\Delta = (-3)^2 - 4 \times 2 \times 4 = 9 - 32 = -23, \qquad \text{et } -23 + 33 = 10, \text{ donc } \Delta \equiv 10 \pmod{11}.$$

Or $10$ n'est pas un carré modulo $11$. **Cette équation n'a aucune solution.**

**(b) $3x^2 - 4x + 2 \equiv 0$.**

$$\Delta = (-4)^2 - 4 \times 3 \times 2 = 16 - 24 = -8, \qquad \text{et } -8 + 11 = 3, \text{ donc } \Delta \equiv 3 \pmod{11}.$$

Le reste $3$ est un carré : d'après le tableau, $5^2 \equiv 3$ et $6^2 \equiv 3$, et $6 \equiv -5$.
L'équation devient, avec $2ax + b = 6x - 4$,

$$(6x - 4)^2 \equiv 3 \quad \Longleftrightarrow \quad 6x - 4 \equiv 5 \ \text{ ou } \ 6x - 4 \equiv -5 .$$

Il faut inverser $6$ modulo $11$ : comme $6 \times 2 = 12 \equiv 1$, l'inverse de $6$ est $2$.

- $6x \equiv 9$, donc $x \equiv 2 \times 9 = 18 \equiv 7$ ;
- $6x \equiv -1 \equiv 10$, donc $x \equiv 2 \times 10 = 20 \equiv 9$.

$$\boxed{x \equiv 7 \ \text{ ou } \ x \equiv 9 \pmod{11}}$$

*Vérification.* $3 \times 49 - 4 \times 7 + 2 = 147 - 28 + 2 = 121 = 11^2$, et
$3 \times 81 - 4 \times 9 + 2 = 243 - 36 + 2 = 209 = 11 \times 19$. Les deux sont bien des
multiples de $11$.

**(c) $4x^2 + 2x - 3 \equiv 0$.**

$$\Delta = 2^2 - 4 \times 4 \times (-3) = 4 + 48 = 52, \qquad \text{et } 52 - 44 = 8, \text{ donc } \Delta \equiv 8 \pmod{11}.$$

Or $8$ n'est pas un carré modulo $11$. **Cette équation n'a aucune solution.**

### Résumé

| équation | $\Delta \bmod 11$ | carré modulo $11$ ? | solutions |
|---|---|---|---|
| $2x^2 - 3x + 4 \equiv 0$ | $10$ | non | aucune |
| $3x^2 - 4x + 2 \equiv 0$ | $3$ | oui | $x \equiv 7$, $x \equiv 9$ |
| $4x^2 + 2x - 3 \equiv 0$ | $8$ | non | aucune |

## Going further

Tout ce raisonnement repose sur le fait que $11$ est **premier**. Deux points s'en servent : la
division par $4a$ (possible car $4a$ est inversible) et le passage de $(2ax+b)^2 \equiv \Delta$
aux deux racines carrées seulement.

Essaie la même chose modulo $6$ et tout s'effondre. L'équation $3x^2 + 3 \equiv 0 \pmod 6$, par
exemple, a **trois** solutions, $x \equiv 1$, $x \equiv 3$, $x \equiv 5$, ce qu'aucune équation
du second degré ne peut faire dans les réels. Et $x^2 \equiv 4 \pmod 6$ en a deux, $x \equiv 2$
et $x \equiv 4$, tandis que $x^2 \equiv 2 \pmod 6$ n'en a aucune : modulo $6$, certains restes
ont deux racines carrées, d'autres une seule, d'autres aucune, sans règle simple.

Savoir décider rapidement si un nombre est un carré modulo $p$, sans dresser la table, est une
question profonde. La réponse est la **loi de réciprocité quadratique**, démontrée par Gauss à
dix-neuf ans, et qu'il considérait comme son plus beau théorème.
