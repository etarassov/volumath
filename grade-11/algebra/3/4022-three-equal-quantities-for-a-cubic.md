---
id: "4022"
title: "Trois quantités égales pour un polynôme de degré 3"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [polynome, racines, coefficients, developpement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 19 (réponse −11 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Le polynôme

$$P(x) = x^3 + ax^2 + bx + c$$

admet trois racines réelles $r$, $s$ et $t$, non nécessairement distinctes, de sorte que

$$P(x) = (x - r)(x - s)(x - t).$$

On sait que trois quantités sont égales entre elles :

- la moyenne des trois racines,
- le produit des trois racines,
- la somme des coefficients de $P$.

On sait de plus que la courbe représentative de $P$ coupe l'axe des ordonnées au point
d'ordonnée $2$.

Que vaut $b$ ?

## Hints

1. L'ordonnée du point d'intersection avec l'axe des ordonnées, c'est $P(0)$. Que vaut $P(0)$ en fonction de $a$, $b$, $c$ ?
2. Développe $(x-r)(x-s)(x-t)$ et compare les coefficients avec ceux de $x^3 + ax^2 + bx + c$. Tu obtiendras trois relations entre $a$, $b$, $c$ et $r$, $s$, $t$.
3. La somme des coefficients de $P$ se calcule sans effort : c'est $P(1)$.
4. Tu connais $c$. Sers-t'en pour trouver d'abord le produit des racines, puis $a$, puis $b$.

## Solution

**Étape 1. Traduire l'ordonnée à l'origine.**

La courbe coupe l'axe des ordonnées en $x = 0$, donc $P(0) = 2$. Or

$$P(0) = 0 + 0 + 0 + c = c.$$

Donc $c = 2$.

**Étape 2. Relier les racines aux coefficients.**

Développons :

$$(x-r)(x-s)(x-t) = x^3 - (r+s+t)\,x^2 + (rs + rt + st)\,x - rst .$$

En identifiant avec $x^3 + ax^2 + bx + c$ :

$$a = -(r+s+t), \qquad b = rs + rt + st, \qquad c = -rst .$$

**Étape 3. Écrire les trois quantités.**

- Produit des racines : $rst = -c = -2$.
- Moyenne des racines : $\dfrac{r+s+t}{3} = \dfrac{-a}{3}$.
- Somme des coefficients : $1 + a + b + c$. (C'est aussi $P(1)$.)

**Étape 4. Utiliser les égalités.**

Les trois quantités sont égales, et l'une d'elles est déjà connue : le produit vaut $-2$.
Donc les trois valent $-2$.

*De la moyenne :*

$$\frac{-a}{3} = -2, \qquad \text{donc} \qquad a = 6.$$

*De la somme des coefficients :*

$$1 + a + b + c = -2,$$
$$1 + 6 + b + 2 = -2,$$
$$9 + b = -2, \qquad \text{donc} \qquad b = -11.$$

**Vérification.** On obtient $P(x) = x^3 + 6x^2 - 11x + 2$. Alors :

- $P(0) = 2$ : l'ordonnée à l'origine est bien $2$ ;
- produit des racines $= -c = -2$ ;
- moyenne des racines $= \dfrac{-a}{3} = -2$ ;
- somme des coefficients $= 1 + 6 - 11 + 2 = -2$.

Les trois quantités valent bien $-2$.

**Réponse : $b = -11$.**

## Going further

Ce polynôme a bien trois racines réelles, comme l'énoncé le supposait : $P(0) = 2 > 0$,
$P(1) = -2 < 0$, $P(2) = 12 > 0$ et $P(-7) = 30 > 0$, $P(-8) = -38 < 0$. Le théorème des
valeurs intermédiaires donne donc une racine dans $]-8 \, ; -7[$, une dans $]0 \, ; 1[$ et
une dans $]1 \, ; 2[$ : cela fait trois racines, et un polynôme de degré $3$ n'en a pas
davantage.
