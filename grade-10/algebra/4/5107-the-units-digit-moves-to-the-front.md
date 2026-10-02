---
id: "5107"
title: "Le chiffre des unités passe devant"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [chiffres, equation, divisibilite, mise-en-equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 15 (le problème 19 du même document en est un cas particulier)"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On part d'un nombre $N$ de six chiffres et on déplace son chiffre des unités tout à gauche, devant les cinq autres. Par exemple, $123\,456$ devient $612\,345$.

Trouver tous les nombres $N$ de six chiffres pour lesquels le nombre obtenu vaut exactement $4N$.

## Hints

1. Six chiffres inconnus, c'est trop. Donne un seul nom au bloc des cinq premiers chiffres.
2. Note $x$ le nombre formé par les cinq premiers chiffres et $f$ le chiffre des unités. Exprime $N$ à l'aide de $x$ et de $f$.
3. Et le nombre obtenu après déplacement, combien vaut-il en fonction de $x$ et de $f$ ?
4. Tu arrives à une équation de la forme $39x = 99\,996\,f$. Simplifie-la.
5. $33\,332 = 13 \times 2\,564$.
6. N'oublie pas les contraintes : $N$ a six chiffres, donc son premier chiffre n'est pas nul, ce qui encadre $x$.

## Solution

**Étape 1. Mise en équation.**

Notons $x$ le nombre formé par les cinq premiers chiffres de $N$ et $f$ son chiffre des unités. Alors

$$N = 10x + f$$

Déplacer $f$ devant, c'est le placer au rang des centaines de mille et décaler $x$ d'un cran vers la droite : le nombre obtenu vaut

$$f \times 10^{5} + x = 100\,000\,f + x$$

La condition de l'énoncé s'écrit donc

$$4\,(10x + f) = 100\,000\,f + x$$

**Étape 2. On résout.**

$$40x + 4f = 100\,000\,f + x$$
$$39x = 99\,996\,f$$

Les deux coefficients sont divisibles par $3$ : $39 = 3 \times 13$ et $99\,996 = 3 \times 33\,332$. Donc

$$13x = 33\,332\,f$$

Or $33\,332 = 13 \times 2\,564$. En simplifiant par $13$ :

$$x = 2\,564\,f$$

**Étape 3. Les contraintes sur $f$.**

Le nombre $N$ a six chiffres, donc son premier chiffre n'est pas nul : le bloc $x$ est un nombre de cinq chiffres,

$$10\,000 \leqslant x \leqslant 99\,999$$

Avec $x = 2\,564\,f$ :

- $2\,564\,f \geqslant 10\,000$ donne $f \geqslant 3{,}9\ldots$, donc $f \geqslant 4$ ;
- $2\,564\,f \leqslant 99\,999$ est vérifié pour tout chiffre $f$, puisque $2\,564 \times 9 = 23\,076$.

Il reste $f \in \{4, 5, 6, 7, 8, 9\}$, et chacune de ces valeurs donne bien un nombre : le chiffre déplacé $f$ n'est pas nul, donc le nombre obtenu a lui aussi six chiffres.

**Étape 4. La liste.**

| $f$ | $x = 2\,564\,f$ | $N = 10x + f$ | $4N$ |
|---|---|---|---|
| $4$ | $10\,256$ | $102\,564$ | $410\,256$ |
| $5$ | $12\,820$ | $128\,205$ | $512\,820$ |
| $6$ | $15\,384$ | $153\,846$ | $615\,384$ |
| $7$ | $17\,948$ | $179\,487$ | $717\,948$ |
| $8$ | $20\,512$ | $205\,128$ | $820\,512$ |
| $9$ | $23\,076$ | $230\,769$ | $923\,076$ |

Dans chaque ligne, le nombre de la dernière colonne est bien celui de l'avant-dernière avec le chiffre des unités remonté en tête.

**Conclusion. Il y a six solutions :**

$$102\,564, \quad 128\,205, \quad 153\,846, \quad 179\,487, \quad 205\,128, \quad 230\,769$$

## Going further

Posons la même question avec $5$ à la place de $4$. L'équation devient $5(10x+f) = 100\,000\,f + x$, soit $49x = 99\,995\,f$, puis $7x = 14\,285\,f$. Cette fois $14\,285$ n'est pas un multiple de $7$ ($14\,285 = 7 \times 2\,040 + 5$), donc $7$ doit diviser $f$ : le seul chiffre qui convient est $f = 7$, d'où $x = 14\,285$ et

$$N = 142\,857$$

Ce nombre est célèbre : ses multiples $142857 \times 2 = 285714$, $\times 3 = 428571$, $\times 4 = 571428$, $\times 5 = 714285$, $\times 6 = 857142$ sont tous formés des mêmes six chiffres dans le même ordre circulaire. Il n'y a rien d'étonnant à cela quand on sait que $142\,857 = \tfrac{999\,999}{7}$, autrement dit que $\tfrac17 = \text{0,142857}\,142857\ldots$
