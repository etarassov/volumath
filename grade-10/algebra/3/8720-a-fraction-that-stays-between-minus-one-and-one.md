---
id: "8720"
title: "Une fraction qui reste entre −1 et 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalites, equivalence, factorisation, signe-d-un-produit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Inégalités 1 » (Maena), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $x$ et $y$ deux réels tels que $-1 < x < 1$ et $-1 < y < 1$.

Montrer que

$$-1 \;<\; \frac{x+y}{1+xy} \;<\; 1 .$$

## Hints

1. Avant tout : pourquoi le dénominateur $1+xy$ n'est-il jamais nul ? Encadre le produit $xy$.
2. Une fois le signe du dénominateur connu, tu peux multiplier l'inégalité par $1+xy$ sans changer de sens. Les fractions disparaissent.
3. Tu dois alors démontrer deux inégalités séparément. Pour chacune, passe tout du même côté et **factorise**.
4. La factorisation fait apparaître un produit de la forme $(x \pm 1)(y \pm 1)$. Le signe de chaque facteur est donné par l'hypothèse.
5. Attention : ici on part de ce qu'on veut montrer pour arriver à quelque chose de connu. Il faut que **chaque étape soit une équivalence**, sinon la démonstration ne prouve rien.

## Solution

### Le dénominateur n'est jamais nul, et il est positif

Comme $-1 < x < 1$ et $-1 < y < 1$, on a $|x| < 1$ et $|y| < 1$, donc $|xy| < 1$, c'est-à-dire

$$-1 < xy < 1 .$$

En ajoutant $1$ :

$$0 < 1 + xy < 2 .$$

Le dénominateur est donc **strictement positif**. On peut multiplier une inégalité par lui sans en changer le sens.

### On enlève la fraction

L'encadrement à démontrer,

$$-1 < \frac{x+y}{1+xy} < 1 ,$$

est donc équivalent, après multiplication par $1+xy > 0$, à

$$-(1+xy) \;<\; x+y \;<\; 1+xy .$$

Traitons les deux inégalités l'une après l'autre.

### Inégalité de gauche

$$-(1+xy) < x+y
\iff 0 < x + y + 1 + xy
\iff 0 < (x+1)(y+1) .$$

(On a factorisé : $x + y + 1 + xy = x(1+y) + (1+y) = (x+1)(y+1)$.)

Or $x > -1$ donne $x+1 > 0$, et $y > -1$ donne $y+1 > 0$. Le produit de deux nombres strictement positifs est strictement positif, donc $(x+1)(y+1) > 0$.

L'inégalité de gauche est démontrée.

### Inégalité de droite

$$x + y < 1 + xy
\iff x + y - 1 - xy < 0
\iff -(x-1)(y-1) < 0
\iff (x-1)(y-1) > 0 .$$

(On a factorisé : $x + y - 1 - xy = -\left(xy - x - y + 1\right) = -(x-1)(y-1)$.)

Or $x < 1$ donne $x - 1 < 0$, et $y < 1$ donne $y-1 < 0$. Le produit de deux nombres strictement négatifs est strictement positif, donc $(x-1)(y-1) > 0$.

L'inégalité de droite est démontrée.

### Conclusion

$$\boxed{\ -1 < \frac{x+y}{1+xy} < 1 \ }$$

*Sur la méthode.* Toutes les étapes ci-dessus sont des **équivalences**, signalées par le symbole $\iff$. C'est indispensable : on part de ce qu'on veut démontrer et on arrive à quelque chose de vrai. Si une seule étape n'était qu'une implication dans le mauvais sens, on n'aurait rien démontré du tout. En cas de doute, il vaut mieux écrire la démonstration à l'envers, en partant du fait connu.

## Going further

1. Cette formule n'est pas tombée du ciel. Si $x = \tan a$ et $y = \tan b$, alors $\dfrac{x+y}{1+xy}$ ressemble beaucoup à une formule d'addition connue — laquelle ? Et en physique, c'est la formule de composition des vitesses en relativité restreinte, avec la vitesse de la lumière prise comme unité : deux vitesses inférieures à celle de la lumière se composent en une vitesse encore inférieure à celle de la lumière.

2. Que se passe-t-il si l'on autorise $x = 1$ ? Calcule $\dfrac{1+y}{1+y}$.

3. Montre de la même façon que si $0 \leqslant x < 1$ et $0 \leqslant y < 1$, alors $\dfrac{x+y}{1+xy} \geqslant \dfrac{x+y}{2}$.
