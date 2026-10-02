---
id: "7942"
title: "Le plus petit dénominateur possible"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [fraction-irreductible, pgcd, nombres-premiers-entre-eux, congruences]
adapted_from: null
see_also: []
same_as: ["7604", "8141"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 2, niveau 1 (énoncé p. 280 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers relatifs non nuls tels que les fractions

$$\frac{a}{600} \qquad \text{et} \qquad \frac{b}{700}$$

soient toutes deux irréductibles.

Quel est le plus petit dénominateur possible de la fraction $\dfrac{7a + 6b}{4200}$, une fois celle-ci réduite ?

## Hints

1. Décompose $600$, $700$ et $4200$ en facteurs premiers. Quels nombres premiers peuvent intervenir ?
2. « $\frac{a}{600}$ irréductible » veut dire que $a$ n'est divisible par aucun des facteurs premiers de $600$. Fais la liste, pour $a$ puis pour $b$.
3. Pour chaque facteur premier $p$ de $4200$, demande-toi si $p$ peut diviser $7a + 6b$. Regarde $7a+6b$ modulo $2$, modulo $3$, modulo $7$.
4. Il ne reste qu'un seul facteur premier candidat. Jusqu'à quelle puissance peut-il diviser $7a+6b$ ? Trouve un exemple explicite.

## Solution

**La réponse : le plus petit dénominateur possible est $168$.**

**Étape 0 : les décompositions.**

$$600 = 2^3 \times 3 \times 5^2 , \qquad 700 = 2^2 \times 5^2 \times 7 , \qquad 4200 = 2^3 \times 3 \times 5^2 \times 7 .$$

L'hypothèse dit donc :

- $a$ n'est divisible ni par $2$, ni par $3$, ni par $5$ ;
- $b$ n'est divisible ni par $2$, ni par $5$, ni par $7$.

Réduire la fraction $\dfrac{7a+6b}{4200}$ revient à diviser haut et bas par $d = \mathrm{PGCD}(7a+6b,\ 4200)$. Le dénominateur obtenu vaut $\dfrac{4200}{d}$ : le rendre le plus petit possible, c'est rendre $d$ le plus grand possible.

**Étape 1 : quels facteurs premiers peuvent apparaître dans $d$ ?**

Les facteurs premiers de $4200$ sont $2$, $3$, $5$ et $7$. Examinons-les un par un.

- **Modulo $2$ :** $7a + 6b \equiv a \pmod 2$. Or $a$ est impair, donc $7a+6b$ est impair : $2$ ne divise pas $7a+6b$.
- **Modulo $3$ :** $7a + 6b \equiv a \pmod 3$ (car $7 \equiv 1$ et $6 \equiv 0$). Or $3$ ne divise pas $a$ : donc $3$ ne divise pas $7a+6b$.
- **Modulo $7$ :** $7a + 6b \equiv 6b \equiv -b \pmod 7$. Or $7$ ne divise pas $b$ : donc $7$ ne divise pas $7a+6b$.
- **Modulo $5$ :** rien n'empêche $5$ de diviser $7a+6b$. C'est le seul candidat.

Donc $d$ est une puissance de $5$, et comme $4200 = 2^3 \times 3 \times 5^2 \times 7$ ne contient que $5^2$, on a

$$d \le 25 .$$

**Étape 2 : la valeur $d = 25$ est atteinte.**

Prenons $a = 1$ et $b = 3$.

- $\dfrac{1}{600}$ est irréductible, car $\mathrm{PGCD}(1, 600) = 1$. ✓
- $\dfrac{3}{700}$ est irréductible, car $3$ ne divise pas $700 = 2^2 \times 5^2 \times 7$. ✓

Alors

$$7a + 6b = 7 + 18 = 25 .$$

La fraction vaut

$$\frac{25}{4200} = \frac{1}{168} ,$$

puisque $4200 = 25 \times 168$. Le dénominateur vaut $168$, et il est irréductible puisque le numérateur vaut $1$.

**Étape 3 : conclusion.**

Le plus grand $d$ possible est $25$, donc le plus petit dénominateur possible est

$$\frac{4200}{25} = \boxed{168} .$$
