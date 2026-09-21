---
id: "8457"
title: "Une équation de degré 3 sans solution rationnelle"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [rationnel, fraction irreductible, racine rationnelle, divisibilite, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Existe-t-il un nombre rationnel strictement positif $q$ tel que

$$q^3 - 10q^2 + q - 2021 = 0 \; ?$$

*Indication pour la fin : $45^2 = 2025$.*

## Hints

1. Un rationnel s'écrit $q = \dfrac{a}{b}$ avec $a$ et $b$ entiers strictement positifs **premiers entre eux**. Écris l'équation avec cette fraction, puis multiplie tout par $b^3$ pour n'avoir que des entiers.
2. Dans l'égalité obtenue, isole le terme $a^3$ d'un côté. Que peux-tu mettre en facteur de l'autre côté ?
3. Tu obtiens que $b$ divise $a^3$. Comme $a$ et $b$ n'ont aucun facteur commun, que vaut $b$ ?
4. Recommence dans l'autre sens : isole le terme sans $a$, et déduis-en que $a$ divise $2021$. L'indication sert alors à factoriser $2021$.

## Solution

La réponse est **non** : une telle fraction n'existe pas.

### Étape 1. Mettre l'équation sous forme entière

Supposons qu'un rationnel $q > 0$ soit solution, et écrivons-le sous forme irréductible

$$q = \frac{a}{b}, \qquad a \geqslant 1, \; b \geqslant 1 \text{ entiers}, \qquad \mathrm{PGCD}(a, b) = 1.$$

L'équation devient

$$\frac{a^3}{b^3} - 10\,\frac{a^2}{b^2} + \frac{a}{b} - 2021 = 0.$$

Multiplions tout par $b^3$ :

$$a^3 - 10a^2 b + a b^2 - 2021\, b^3 = 0. \qquad (\star)$$

### Étape 2. Le dénominateur vaut 1

Dans $(\star)$, isolons $a^3$ :

$$a^3 = 10a^2 b - a b^2 + 2021\, b^3 = b\left(10a^2 - ab + 2021 b^2\right).$$

Le facteur entre parenthèses est un entier, donc **$b$ divise $a^3$**.

Or $a$ et $b$ sont premiers entre eux. Si $b$ avait un facteur premier $p$, alors $p$ diviserait $a^3 = a \times a \times a$, donc $p$ diviserait $a$, ce qui contredirait $\mathrm{PGCD}(a,b) = 1$. Donc $b$ n'a aucun facteur premier :

$$b = 1, \qquad \text{c'est-à-dire} \qquad q = a \text{ est un entier.}$$

### Étape 3. Le numérateur divise 2021

Avec $b = 1$, l'équation $(\star)$ devient

$$a^3 - 10a^2 + a - 2021 = 0, \qquad \text{soit} \qquad a\left(a^2 - 10a + 1\right) = 2021.$$

Donc **$a$ divise $2021$**.

Factorisons $2021$ grâce à l'indication :

$$2021 = 2025 - 4 = 45^2 - 2^2 = (45 - 2)(45 + 2) = 43 \times 47.$$

Les nombres $43$ et $47$ sont premiers, donc les diviseurs positifs de $2021$ sont

$$1, \quad 43, \quad 47, \quad 2021.$$

### Étape 4. Aucun des quatre ne convient

Il reste à calculer $a\left(a^2 - 10a + 1\right)$ pour ces quatre valeurs, et à voir si l'on tombe sur $2021$.

| $a$ | $a^2 - 10a + 1$ | $a\left(a^2 - 10a + 1\right)$ |
|---|---|---|
| $1$ | $1 - 10 + 1 = -8$ | $-8$ |
| $43$ | $1849 - 430 + 1 = 1420$ | $61\,060$ |
| $47$ | $2209 - 470 + 1 = 1740$ | $81\,780$ |
| $2021$ | très grand | bien plus que $2021$ |

Aucune valeur ne donne $2021$.

### Conclusion

Il n'existe **aucun** rationnel strictement positif solution de l'équation.

$$\boxed{\text{Non.}}$$

## Going further

Les étapes 2 et 3 forment ensemble ce qu'on appelle le **théorème des racines rationnelles**. Pour une équation à coefficients entiers

$$c_k x^k + c_{k-1} x^{k-1} + \cdots + c_1 x + c_0 = 0,$$

toute racine rationnelle $\dfrac{a}{b}$ écrite sous forme irréductible vérifie : $a$ divise $c_0$ et $b$ divise $c_k$. Ici le coefficient dominant valait $1$, ce qui a forcé $b = 1$ : toute racine rationnelle d'un tel polynôme est automatiquement entière.

On peut d'ailleurs conclure autrement, sans passer par les diviseurs de $2021$, une fois que l'on sait que $q = a$ est un entier. Posons $g(a) = a^3 - 10a^2 + a$, que l'on veut égal à $2021$.

- Pour $1 \leqslant a \leqslant 7$, on calcule $g(1) = -8$, $g(2) = -30$, $g(3) = -60$, $g(4) = -92$, $g(5) = -120$, $g(6) = -138$, $g(7) = -140$ : tous négatifs.
- À partir de $a = 7$, la fonction $g$ est croissante, et $g(16) = 4096 - 2560 + 16 = 1552$ tandis que $g(17) = 4913 - 2890 + 17 = 2040$.

La valeur $2021$ est donc sautée : elle tombe entre $g(16)$ et $g(17)$, sans jamais être atteinte. C'est un peu plus long, mais tout aussi concluant, et cela ne demande pas de savoir factoriser $2021$.
