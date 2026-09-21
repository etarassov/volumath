---
id: "7750"
title: "Le reste de 1 + 2 + … + n divisé par n"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [somme des premiers entiers, division euclidienne, parite, reste]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », lundi 25 matin (Nicolas Ségarra), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On note

$$S_n = 1 + 2 + 3 + \cdots + n .$$

Quel est le reste de la division euclidienne de $S_n$ par $n$ ?

## Hints

1. Fais un tableau pour $n$ allant de $1$ à $8$ : calcule $S_n$, puis le reste de $S_n$ dans la division par $n$. Une régularité saute aux yeux.
2. La réponse dépend de la parité de $n$. Traite les deux cas séparément.
3. Rappelle-toi que $S_n = \dfrac{n(n+1)}{2}$. Quand $n$ est impair, que peux-tu dire de $\dfrac{n+1}{2}$ ?
4. Quand $n$ est pair, écris $S_n = \dfrac{n}{2} \times (n+1)$ et développe pour faire apparaître un multiple de $n$.

## Solution

**Le reste vaut $0$ si $n$ est impair, et $\dfrac{n}{2}$ si $n$ est pair.**

**Un tableau pour deviner.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $S_n$ | $1$ | $3$ | $6$ | $10$ | $15$ | $21$ | $28$ | $36$ |
| reste de $S_n$ par $n$ | $0$ | $1$ | $0$ | $2$ | $0$ | $3$ | $0$ | $4$ |

Pour $n$ impair, le reste est $0$ ; pour $n$ pair, il vaut $\tfrac n2$. Démontrons-le.

**Le point de départ.** On utilise la formule classique

$$S_n = \frac{n(n+1)}{2} .$$

**Cas 1 : $n$ est impair.** Alors $n+1$ est pair, donc $\dfrac{n+1}{2}$ est un entier, et

$$S_n = n \times \frac{n+1}{2} .$$

C'est $n$ multiplié par un entier, donc $S_n$ est un multiple de $n$ : le reste est $0$.

**Cas 2 : $n$ est pair.** Alors $\dfrac{n}{2}$ est un entier, et

$$S_n = \frac{n}{2} \times (n+1) = \frac{n}{2} \times n + \frac{n}{2} = n \times \frac{n}{2} + \frac{n}{2} .$$

Le premier terme est un multiple de $n$. Il reste à vérifier que $\dfrac{n}{2}$ est bien un reste admissible, c'est-à-dire que

$$0 \leqslant \frac{n}{2} < n .$$

C'est vrai puisque $n > 0$. Le reste de la division de $S_n$ par $n$ est donc $\dfrac{n}{2}$.

**Conclusion : le reste de la division de $S_n$ par $n$ vaut $0$ lorsque $n$ est impair, et $\dfrac{n}{2}$ lorsque $n$ est pair.**

## Going further

On peut retrouver le résultat sans formule, en regroupant les termes deux par deux autour du milieu.

Si $n$ est impair, on écrit $S_n = n + \bigl(1 + (n-1)\bigr) + \bigl(2 + (n-2)\bigr) + \cdots$ : tous les paquets valent $n$, donc $S_n$ est un multiple de $n$.

Si $n$ est pair, le même regroupement laisse le terme du milieu $\dfrac n2$ tout seul, et c'est exactement le reste.
