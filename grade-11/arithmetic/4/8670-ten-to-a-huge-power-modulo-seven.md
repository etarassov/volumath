---
id: "8670"
title: "10 à une puissance gigantesque, modulo 7"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, cycles, puissances, tour de puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 1 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée par calcul."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Quel est le reste de la division euclidienne de

$$10^{\left(10^{\,n}\right)}$$

par $7$ ?

## Hints

1. Modulo $7$, on peut d'abord remplacer $10$ par son reste. Lequel ?
2. Calcule les puissances successives de $3$ modulo $7$ : $3^1, 3^2, 3^3, \ldots$ Au bout de combien d'étapes retombes-tu sur $1$ ?
3. Si le cycle est de longueur $6$, seul compte le reste de l'exposant $10^{\,n}$ dans la division par $6$.
4. Calcule $10^1$, $10^2$, $10^3$ modulo $6$. Tu vas voir que le résultat est toujours le même.
5. Attention : pour que ce soit toujours le même, il faut $n \geqslant 1$. Que se passerait-il pour $n = 0$ ?

## Solution

### Premier module : 7

Modulo $7$, on a $10 = 7 + 3 \equiv 3$. Le nombre cherché est donc congru à $3^{\,M}$, où $M = 10^{\,n}$.

Calculons les puissances de $3$ modulo $7$ :

$$3^1 \equiv 3, \quad 3^2 \equiv 2, \quad 3^3 \equiv 6, \quad 3^4 \equiv 4, \quad 3^5 \equiv 5, \quad 3^6 \equiv 1 \pmod 7 .$$

*(Détail : $3^2 = 9 \equiv 2$ ; $3^3 = 3 \times 2 = 6$ ; $3^4 = 3 \times 6 = 18 \equiv 4$ ; $3^5 = 3 \times 4 = 12 \equiv 5$ ; $3^6 = 3 \times 5 = 15 \equiv 1$.)*

Comme $3^6 \equiv 1$, les puissances de $3$ **repartent au début toutes les 6 étapes**. Seul compte donc le reste de l'exposant $M$ modulo $6$.

### Deuxième module : 6

Calculons $10^{\,n}$ modulo $6$. On a $10 \equiv 4 \pmod 6$, et

$$4^1 \equiv 4, \qquad 4^2 = 16 \equiv 4, \qquad 4^3 = 64 \equiv 4 \pmod 6 .$$

Une fois qu'on est tombé sur $4$, on y reste : si $4^{\,k} \equiv 4$, alors $4^{\,k+1} \equiv 4 \times 4 = 16 \equiv 4$. Donc, pour tout $n \geqslant 1$,

$$10^{\,n} \equiv 4 \pmod 6 .$$

*(On peut aussi le voir directement : $10^{\,n}$ est pair, et sa somme des chiffres vaut $1$, donc il est $\equiv 1$ modulo $3$. Le seul reste modulo $6$ à la fois pair et $\equiv 1$ modulo $3$ est $4$.)*

### On recolle

Écrivons $M = 10^{\,n} = 6q + 4$. Alors

$$10^{\,M} \equiv 3^{\,M} = \left(3^{6}\right)^{q} \times 3^{4} \equiv 1^{q} \times 4 \equiv 4 \pmod 7 .$$

### Conclusion

$$\boxed{\text{Le reste vaut } 4, \text{ pour tout entier } n \geqslant 1 .}$$

**Vérification sur le plus petit cas.** Pour $n = 1$, il s'agit de $10^{10} = 10\,000\,000\,000$. En divisant : $10^{10} = 7 \times 1\,428\,571\,428 + 4$. Le reste est bien $4$.

## Going further

La méthode est la même que pour un chiffre des unités, mais avec deux modules empilés : **$7$ pour la question posée, $6$ pour l'exposant**, parce que le cycle des puissances de $3$ modulo $7$ est de longueur $6$.

Remarque au passage que l'énoncé exige $n \geqslant 1$. Pour $n = 0$, l'exposant serait $10^0 = 1$ et le nombre serait simplement $10$, de reste $3$ : la réponse changerait. Une hypothèse qui a l'air décorative ne l'est presque jamais.

La longueur $6$ du cycle n'est pas un hasard non plus : c'est un cas du **petit théorème de Fermat**, qui affirme que $a^{\,p-1} \equiv 1 \pmod p$ dès que $p$ est premier et ne divise pas $a$. Ici $p = 7$ et $p - 1 = 6$.
