---
id: "8437"
title: "14ⁿ + 19 n'est jamais premier"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres-premiers, congruences, parite, disjonction-de-cas]
adapted_from: null
see_also: ["8430"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de fin de parcours », exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Montrer qu'il n'existe aucun entier naturel $n$ tel que $14^n + 19$ soit un nombre premier.

## Hints

1. Calcule les premières valeurs : $n = 0$ donne $20$, $n = 1$ donne $33$, $n = 2$ donne $215$, $n = 3$ donne $2763$. Décompose-les. Que remarques-tu selon la parité de $n$ ?
2. Les valeurs de rang pair semblent divisibles par $5$, celles de rang impair par $3$. Il y a donc **deux** cas à traiter, avec deux diviseurs différents.
3. Modulo $5$, que vaut $14$ ? Modulo $3$, que vaut $14$ ? Dans les deux cas, on tombe sur $-1$, et une puissance de $-1$ est très facile à suivre.
4. Une fois trouvé un diviseur, n'oublie pas de vérifier que le nombre est strictement plus grand que ce diviseur.

## Solution

Nous montrons que $14^n + 19$ est toujours divisible par $5$ ou par $3$, selon la parité de $n$, et qu'il est toujours strictement plus grand que ces deux nombres.

### Cas 1 : $n$ est pair

Modulo $5$, on a $14 \equiv 4 \equiv -1$, donc

$$14^n \equiv (-1)^n = 1 \pmod 5$$

puisque $n$ est pair.

Par ailleurs $19 \equiv 4 \pmod 5$. Donc

$$14^n + 19 \equiv 1 + 4 = 5 \equiv 0 \pmod 5.$$

Le nombre $14^n + 19$ est donc divisible par $5$.

### Cas 2 : $n$ est impair

Modulo $3$, on a $14 \equiv 2 \equiv -1$, donc

$$14^n \equiv (-1)^n = -1 \pmod 3$$

puisque $n$ est impair.

Par ailleurs $19 \equiv 1 \pmod 3$. Donc

$$14^n + 19 \equiv -1 + 1 = 0 \pmod 3.$$

Le nombre $14^n + 19$ est donc divisible par $3$.

### Conclusion

Dans les deux cas, $14^n + 19$ possède un diviseur, $5$ ou $3$, qui n'est ni $1$ ni lui-même. En effet,

$$14^n + 19 \geqslant 14^0 + 19 = 20 > 5 > 3.$$

Un nombre premier n'ayant pour diviseurs que $1$ et lui-même, $14^n + 19$ n'est jamais premier.

## Going further

Vérifions sur les premières valeurs, ce qui est aussi la façon dont on trouve les deux diviseurs :

| $n$ | $14^n + 19$ | décomposition |
|---|---|---|
| $0$ | $20$ | $2^2 \times 5$ |
| $1$ | $33$ | $3 \times 11$ |
| $2$ | $215$ | $5 \times 43$ |
| $3$ | $2763$ | $3^2 \times 307$ |

La méthode est celle du **diviseur fixe** : on calcule quelques termes, on cherche un petit diviseur commun, et on le démontre par les congruences. La nouveauté ici est qu'un seul diviseur ne suffit pas : il en faut un par classe de parité. C'est fréquent dès que la base est congrue à $-1$, car les puissances de $-1$ alternent.

L'exercice n° 8430 traite la version à un seul diviseur, avec la famille $6^n + 19$.
