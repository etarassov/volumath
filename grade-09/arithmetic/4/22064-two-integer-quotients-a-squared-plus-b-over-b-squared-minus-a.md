---
id: "22064"
title: "Deux quotients entiers"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, encadrement, symetrie, difference-de-carres, disjonction-de-cas]
adapted_from: null
see_also: ["8162"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B (APMO 2002)"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 11 (erreur de la source : son corrigé suppose b ≥ a, puis traite le cas « a = b + 1 », et ne donne que (2, 2), (3, 3), (1, 2), (2, 3) ; il manque les couples symétriques (2, 1) et (3, 2))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers strictement positifs, avec $b^2 \neq a$ et $a^2 \neq b$, tels que les deux nombres
$$\frac{a^2 + b}{b^2 - a} \qquad \text{et} \qquad \frac{b^2 + a}{a^2 - b}$$
soient des entiers (positifs ou négatifs).

## Hints

1. Si l'on échange $a$ et $b$, les deux fractions s'échangent. Cherchez d'abord les solutions avec $a \geq b$.
2. Si $a \geq b$, quel est le signe de $a^2 - b$ ? Si une fraction à numérateur et dénominateur strictement positifs est un entier, comparez le numérateur et le dénominateur.
3. Montrez que $a - b \leq 1$. Il ne reste que deux cas : $a = b$ et $a = b + 1$.

## Solution

**On range les nombres.** Échanger $a$ et $b$ échange les deux fractions. Il suffit donc de trouver les solutions avec $a \geq b$ : les autres s'en déduisent en échangeant $a$ et $b$.

On suppose donc $a \geq b$.

**Étape 1 : $a - b \leq 1$.** On a $a^2 \geq a \geq b$. Si l'on avait $a^2 - b = 0$, ces deux inégalités seraient des égalités, donc $a = b = 1$, et c'est exclu par l'énoncé. Donc $a^2 - b \geq 1$.

La seconde fraction $\frac{b^2 + a}{a^2 - b}$ a alors un numérateur et un dénominateur strictement positifs. C'est un entier strictement positif, donc au moins $1$ :
$$b^2 + a \geq a^2 - b, \qquad \text{c'est-à-dire} \qquad a + b \geq a^2 - b^2 = (a - b)(a + b).$$
En divisant par $a + b > 0$, on obtient $a - b \leq 1$. Il reste deux cas : $a = b$ et $a = b + 1$.

**Étape 2 : le cas $a = b$.** Comme $a = b = 1$ est exclu, $a \geq 2$. Les deux fractions sont égales à
$$\frac{a^2 + a}{a^2 - a} = \frac{a\,(a + 1)}{a\,(a - 1)} = \frac{a + 1}{a - 1} = 1 + \frac{2}{a - 1}.$$
C'est un entier exactement quand $a - 1$ divise $2$, donc pour $a - 1 = 1$ ou $a - 1 = 2$. On trouve $(2, 2)$, où les fractions valent $3$, et $(3, 3)$, où elles valent $2$.

**Étape 3 : le cas $a = b + 1$.** La seconde fraction vaut
$$\frac{b^2 + (b + 1)}{(b + 1)^2 - b} = \frac{b^2 + b + 1}{b^2 + b + 1} = 1,$$
qui est bien un entier. La première vaut
$$\frac{(b + 1)^2 + b}{b^2 - (b + 1)} = \frac{b^2 + 3b + 1}{b^2 - b - 1}.$$

- Pour $b = 1$, elle vaut $\frac{5}{-1} = -5$ : le couple $(2, 1)$ convient.
- Pour $b = 2$, elle vaut $\frac{11}{1} = 11$ : le couple $(3, 2)$ convient.
- Pour $b \geq 3$, le dénominateur $D = b^2 - b - 1$ vaut au moins $5$. On écrit
$$\frac{b^2 + 3b + 1}{D} = \frac{D + (4b + 2)}{D} = 1 + \frac{4b + 2}{D}.$$
Il faut que $D$ divise $4b + 2$, qui est strictement positif, donc $D \leq 4b + 2$, c'est-à-dire $b^2 - 5b - 3 \leq 0$. Or pour $b \geq 6$, on a $b^2 - 5b - 3 = b\,(b - 5) - 3 \geq 6 - 3 > 0$. Il reste à tester $b = 3$, $4$, $5$ : $D$ vaut $5$, $11$, $19$, et $4b + 2$ vaut $14$, $18$, $22$. Aucun ne convient.

**Conclusion.** Les solutions avec $a \geq b$ sont $(2, 2)$, $(3, 3)$, $(2, 1)$ et $(3, 2)$. En échangeant $a$ et $b$, on obtient toutes les solutions :
$$(1, 2), \quad (2, 1), \quad (2, 2), \quad (2, 3), \quad (3, 2), \quad (3, 3).$$

## Going further

Que deviennent les solutions si l'on exige en plus que les deux quotients soient strictement positifs ?
