---
id: "5409"
title: "Dix lettres, dix chiffres"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [cryptarithme, chiffres, deduction, unicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « It's All Logical », problème 2"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

Dans les huit égalités ci-dessous, chaque lettre représente un chiffre. La même lettre représente toujours le même chiffre, et deux lettres différentes représentent deux chiffres différents.

Comme il y a dix lettres, $A$, $C$, $D$, $G$, $H$, $L$, $M$, $O$, $R$ et $W$, chacun des dix chiffres de $0$ à $9$ est utilisé exactement une fois.

$$O + W = D \qquad\qquad D - G = R \qquad\qquad W : O = G \qquad\qquad C + M = C$$

$$H \times A = H \qquad\qquad O + O = W \qquad\qquad O - G = A \qquad\qquad H \times G = L$$

Retrouver le chiffre caché derrière chaque lettre.

## Hints

1. Toutes les égalités ne sont pas aussi bavardes. Cherchez celles qui parlent d'une seule lettre, ou presque.
2. L'égalité $C + M = C$ donne tout de suite un chiffre.
3. L'égalité $H \times A = H$ laisse deux possibilités. L'une d'elles est déjà prise par une autre lettre.
4. Les égalités $O + O = W$ et $W : O = G$ parlent des mêmes lettres : rapprochez-les.
5. Une fois $G$ connu, l'égalité $O - G = A$ donne $O$, puis tout s'enchaîne.
6. À la fin, il ne reste que trois chiffres à placer, et une égalité pour les départager.

## Solution

Avançons égalité par égalité, en notant à chaque fois pourquoi le chiffre est forcé.

**1) $C + M = C$.** En retirant $C$ des deux côtés, il reste $M = 0$.

**2) $H \times A = H$.** Cette égalité s'écrit $H \times (A - 1) = 0$, donc $H = 0$ ou $A = 1$. Mais $M$ vaut déjà $0$ et deux lettres différentes ont des chiffres différents, donc $H \ne 0$. Il reste

$$A = 1 .$$

**3) $O + O = W$ et $W : O = G$.** La première donne $W = 2 \times O$. En reportant dans la seconde :

$$G = \frac{W}{O} = \frac{2 \times O}{O} = 2 .$$

(La division a bien un sens : $O \ne 0$, puisque $M = 0$.)

**4) $O - G = A$.** On connaît $G = 2$ et $A = 1$, donc $O - 2 = 1$, c'est-à-dire

$$O = 3, \qquad \text{puis} \qquad W = 2 \times 3 = 6 .$$

**5) $O + W = D$.** Donc $D = 3 + 6 = 9$.

**6) $D - G = R$.** Donc $R = 9 - 2 = 7$.

**Où en sommes-nous ?** Sept lettres sont trouvées :

$$M = 0, \quad A = 1, \quad G = 2, \quad O = 3, \quad W = 6, \quad R = 7, \quad D = 9 .$$

Les chiffres encore libres sont $4$, $5$ et $8$, pour les lettres $C$, $H$ et $L$.

**7) $H \times G = L$**, c'est-à-dire $L = 2 \times H$. Essayons les trois valeurs possibles de $H$ :

- $H = 4$ donne $L = 8$ : les deux chiffres sont libres, cela convient ;
- $H = 5$ donne $L = 10$, qui n'est pas un chiffre ;
- $H = 8$ donne $L = 16$, qui n'est pas un chiffre.

Donc $H = 4$ et $L = 8$, et il ne reste plus que $C = 5$.

**La solution.**

| lettre | $A$ | $C$ | $D$ | $G$ | $H$ | $L$ | $M$ | $O$ | $R$ | $W$ |
|---|---|---|---|---|---|---|---|---|---|---|
| chiffre | $1$ | $5$ | $9$ | $2$ | $4$ | $8$ | $0$ | $3$ | $7$ | $6$ |

**Vérification des huit égalités :**

$$3 + 6 = 9 \quad ; \quad 9 - 2 = 7 \quad ; \quad 6 : 3 = 2 \quad ; \quad 5 + 0 = 5$$

$$4 \times 1 = 4 \quad ; \quad 3 + 3 = 6 \quad ; \quad 3 - 2 = 1 \quad ; \quad 4 \times 2 = 8$$

Tout est correct, et les dix chiffres sont bien utilisés une fois chacun.

**Conclusion.** La solution existe et elle est unique : à chaque étape, le chiffre trouvé était le seul possible.

## Going further

1. Quelle égalité était la plus utile ? Que se passerait-il si on retirait $C + M = C$ de la liste : la solution serait-elle encore unique ?
2. Fabriquez votre propre énigme du même genre avec cinq lettres, et faites-la résoudre à un camarade.
