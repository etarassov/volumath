---
id: "4017"
title: "Combien de cubes divisent 3! × 5! × 7! ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [decomposition-en-facteurs-premiers, diviseurs, cubes, factorielle]
adapted_from: null
see_also: ["3823"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 9 (réponse 6 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Combien d'entiers naturels non nuls de la forme $k^3$ divisent le nombre

$$N = 3! \times 5! \times 7! \ ?$$

(Rappel : $n! = 1 \times 2 \times 3 \times \cdots \times n$.)

## Hints

1. Décompose $3!$, $5!$ et $7!$ en produits de facteurs premiers, puis multiplie.
2. Un diviseur de $N$ s'écrit $2^{\alpha} \times 3^{\beta} \times 5^{\gamma} \times 7^{\delta}$ avec des exposants bornés. Quelles bornes ?
3. À quelle condition sur ses exposants un entier est-il un cube parfait ?
4. Il ne reste plus qu'à compter les exposants autorisés, facteur premier par facteur premier.

## Solution

**Étape 1. Décomposer $N$ en facteurs premiers.**

$$3! = 6 = 2 \times 3,$$
$$5! = 120 = 2^3 \times 3 \times 5,$$
$$7! = 5040 = 2^4 \times 3^2 \times 5 \times 7.$$

En multipliant, on additionne les exposants :

$$N = 2^{1+3+4} \times 3^{1+1+2} \times 5^{1+1} \times 7^{1} = 2^{8} \times 3^{4} \times 5^{2} \times 7.$$

**Étape 2. À quoi ressemble un diviseur cube de $N$ ?**

Tout diviseur de $N$ s'écrit

$$d = 2^{\alpha} \times 3^{\beta} \times 5^{\gamma} \times 7^{\delta}
\qquad \text{avec} \qquad
0 \leqslant \alpha \leqslant 8, \quad 0 \leqslant \beta \leqslant 4, \quad
0 \leqslant \gamma \leqslant 2, \quad 0 \leqslant \delta \leqslant 1,$$

et cette écriture est unique.

Un entier est un cube parfait si et seulement si, dans sa décomposition en facteurs
premiers, **tous les exposants sont des multiples de $3$**. En effet, si $k = 2^p 3^q \cdots$
alors $k^3 = 2^{3p} 3^{3q} \cdots$, et réciproquement.

**Étape 3. Compter les exposants possibles.**

- $\alpha$ doit être un multiple de $3$ compris entre $0$ et $8$ : $\alpha \in \{0 ; 3 ; 6\}$, soit $3$ choix.
- $\beta$ doit être un multiple de $3$ compris entre $0$ et $4$ : $\beta \in \{0 ; 3\}$, soit $2$ choix.
- $\gamma$ doit être un multiple de $3$ compris entre $0$ et $2$ : $\gamma = 0$, soit $1$ choix.
- $\delta$ doit être un multiple de $3$ compris entre $0$ et $1$ : $\delta = 0$, soit $1$ choix.

Les choix sont indépendants, donc le nombre de diviseurs cubes vaut

$$3 \times 2 \times 1 \times 1 = 6.$$

**Étape 4. La liste, pour vérifier.**

$$1 = 1^3, \quad 8 = 2^3, \quad 27 = 3^3, \quad 64 = 4^3, \quad 216 = 6^3, \quad 1728 = 12^3 .$$

On vérifie que chacun divise bien $N = 2^8 \times 3^4 \times 5^2 \times 7$ : par exemple
$1728 = 2^6 \times 3^3$, et $6 \leqslant 8$, $3 \leqslant 4$.

**Réponse : il y a $6$ cubes parfaits qui divisent $N$.**

## Going further

Le nombre $N$ vaut $3! \times 5! \times 7! = 6 \times 120 \times 5040 = 3\,628\,800$,
c'est-à-dire exactement $10!$. C'est une coïncidence connue des amateurs de factorielles.
