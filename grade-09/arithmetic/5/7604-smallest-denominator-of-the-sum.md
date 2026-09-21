---
id: "7604"
title: "Le plus petit dénominateur possible de la somme"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [fractions, pgcd, decomposition en facteurs premiers, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de sélection"
  reference: "stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On prend deux fractions **irréductibles**. Le dénominateur de la première est $600$, celui de la seconde est $700$.

On les additionne, et on écrit le résultat sous forme de fraction irréductible.

Quelle est la **plus petite** valeur que peut prendre le dénominateur de cette somme ?

*Rappel : une fraction est irréductible lorsque son numérateur et son dénominateur n'ont pas d'autre diviseur commun positif que $1$.*

## Hints

1. Appelez $a$ et $b$ les numérateurs, et mettez la somme $\dfrac{a}{600} + \dfrac{b}{700}$ sur un dénominateur commun. Lequel choisir ?
2. Décomposez $600$, $700$ et le dénominateur commun en facteurs premiers.
3. « $\dfrac{a}{600}$ est irréductible » veut dire que $a$ et $600$ n'ont aucun facteur premier commun. Par quels nombres premiers $a$ n'est-il donc **pas** divisible ? Même question pour $b$ et $700$.
4. Pour simplifier la fraction obtenue, il faut trouver un diviseur commun au numérateur et au dénominateur. Montrez que ni $2$, ni $3$, ni $7$ ne peuvent servir.
5. Pour la plus petite valeur, il faut aussi un exemple. Essayez $a = 1$ et $b = 3$.

## Solution

**Réponse : $168$.**

Appelons $a$ et $b$ les deux numérateurs, de sorte que la somme cherchée s'écrit

$$\frac{a}{600} + \frac{b}{700} .$$

**Étape 1 : un dénominateur commun.**

Le plus petit dénominateur commun à $600$ et $700$ est $4200$, car

$$600 \times 7 = 4200 \qquad \text{et} \qquad 700 \times 6 = 4200 .$$

Donc

$$\frac{a}{600} + \frac{b}{700} = \frac{7a}{4200} + \frac{6b}{4200} = \frac{7a + 6b}{4200} .$$

Les décompositions en facteurs premiers dont nous aurons besoin sont

$$600 = 2^3 \times 3 \times 5^2, \qquad 700 = 2^2 \times 5^2 \times 7, \qquad 4200 = 2^3 \times 3 \times 5^2 \times 7 .$$

**Étape 2 : ce que l'on sait de $a$ et de $b$.**

La fraction $\dfrac{a}{600}$ est irréductible, donc $a$ et $600$ n'ont aucun diviseur commun autre que $1$. Comme les facteurs premiers de $600$ sont $2$, $3$ et $5$ :

> $a$ n'est divisible ni par $2$, ni par $3$, ni par $5$.

De même, les facteurs premiers de $700$ sont $2$, $5$ et $7$, donc :

> $b$ n'est divisible ni par $2$, ni par $5$, ni par $7$.

**Étape 3 : le numérateur $7a + 6b$ résiste à $2$, à $3$ et à $7$.**

Rappelons un fait qui va servir trois fois : *si un nombre premier $p$ divise l'un de deux entiers mais pas l'autre, alors il ne divise pas leur somme.* (Sinon il diviserait aussi la différence entre la somme et le terme qu'il divise, c'est-à-dire l'autre terme.)

- **Par $2$ :** $6b$ est pair. Et $7a$ est impair, car $7$ et $a$ sont tous deux impairs. Donc $7a + 6b$ n'est pas divisible par $2$.
- **Par $3$ :** $6b$ est un multiple de $3$. Et $7a$ ne l'est pas, car ni $7$ ni $a$ n'est divisible par $3$. Donc $7a + 6b$ n'est pas divisible par $3$.
- **Par $7$ :** $7a$ est un multiple de $7$. Et $6b$ ne l'est pas, car ni $6$ ni $b$ n'est divisible par $7$. Donc $7a + 6b$ n'est pas divisible par $7$.

**Étape 4 : le dénominateur réduit est un multiple de $168$.**

Pour rendre $\dfrac{7a + 6b}{4200}$ irréductible, on divise le haut et le bas par leur PGCD, appelons-le $g$. Ce nombre $g$ divise $4200 = 2^3 \times 3 \times 5^2 \times 7$, donc ses seuls facteurs premiers possibles sont $2$, $3$, $5$ et $7$. Mais $g$ divise aussi $7a + 6b$, dont on vient de voir qu'il n'est divisible ni par $2$, ni par $3$, ni par $7$. Il ne reste que $5$ :

$$g \ \text{divise} \ 5^2 = 25 .$$

Le dénominateur de la fraction réduite est $\dfrac{4200}{g}$, et comme $g$ divise $25$, ce dénominateur est un multiple de

$$\frac{4200}{25} = 168 .$$

En particulier il est supérieur ou égal à $168$.

**Étape 5 : la valeur $168$ est atteinte.**

Prenons $a = 1$ et $b = 3$. Les fractions $\dfrac{1}{600}$ et $\dfrac{3}{700}$ sont bien irréductibles ($3$ ne divise pas $700$). Et

$$\frac{1}{600} + \frac{3}{700} = \frac{7}{4200} + \frac{18}{4200} = \frac{25}{4200} = \frac{1}{168} ,$$

fraction elle aussi irréductible.

**Conclusion.** Le plus petit dénominateur possible est $\boxed{168}$.

## Going further

Le nombre $168$ n'est pas tombé du ciel : c'est $2^3 \times 3 \times 7$, c'est-à-dire tout ce qui reste de $4200$ une fois qu'on a retiré la seule partie simplifiable, $5^2$.

Deux questions pour continuer, avec le même raisonnement.

1. Reprenez l'exercice avec les dénominateurs $12$ et $18$ au lieu de $600$ et $700$. Quel est alors le plus petit dénominateur possible de la somme ?
2. Dans l'exercice, la simplification n'a pu porter que sur le facteur $5^2$, c'est-à-dire sur la partie commune à $600$ et à $700$. Est-ce un hasard ? Essayez de dire, en général, quels facteurs premiers du dénominateur commun peuvent disparaître et lesquels ne le peuvent jamais.
