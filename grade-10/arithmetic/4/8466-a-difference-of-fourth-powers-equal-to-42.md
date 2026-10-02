---
id: "8466"
title: "Une différence de puissances quatrièmes égale à 42"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [equation-diophantienne, modulo-16, puissances-quatriemes, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations diophantiennes » (Jean Rax), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Montrer qu'il n'existe aucun couple d'entiers naturels $(n, m)$ tel que

$$n^4 - m^4 = 42.$$

## Hints

1. Une puissance quatrième est aussi un carré. Commence par regarder les carrés modulo $16$ : que vaut $k^2$ modulo $16$ selon la parité de $k$ ?
2. Va plus loin et calcule $k^4$ modulo $16$ pour $k = 0, 1, 2, \ldots, 7$. Le résultat est étonnamment pauvre.
3. Si toutes les puissances quatrièmes sont congrues à $0$ ou à $1$ modulo $16$, quelles sont les valeurs possibles de $n^4 - m^4$ modulo $16$ ?
4. Combien vaut $42$ modulo $16$ ?

## Solution

### Étape 1. Les puissances quatrièmes modulo 16

Calculons $k^4$ modulo $16$ pour toutes les valeurs de $k$ entre $0$ et $7$ (au-delà, les restes se répètent, car $k$ et $k + 8$ ont le même reste modulo $8$, donc $k^4$ et $(k+8)^4$ ont le même reste modulo $16$) :

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $k^4$ | $0$ | $1$ | $16$ | $81$ | $256$ | $625$ | $1296$ | $2401$ |
| $k^4 \bmod 16$ | $0$ | $1$ | $0$ | $1$ | $0$ | $1$ | $0$ | $1$ |

On voit la règle :

> **Une puissance quatrième est congrue à $0$ modulo $16$ si sa base est paire, à $1$ si sa base est impaire.**

On peut le démontrer sans tableau, en deux temps.

**Si $k$ est pair**, $k = 2j$, alors $k^4 = 16 j^4$, donc $k^4 \equiv 0 \pmod{16}$.

**Si $k$ est impair**, $k = 2t+1$, alors

$$k^2 = 4t^2 + 4t + 1 = 4\,t(t+1) + 1.$$

Le produit $t(t+1)$ de deux entiers consécutifs est pair, donc $4\,t(t+1)$ est un multiple de $8$, et $k^2 = 8u + 1$ pour un certain entier $u$. En élevant au carré :

$$k^4 = (8u+1)^2 = 64u^2 + 16u + 1 \equiv 1 \pmod{16}.$$

### Étape 2. Les valeurs possibles de la différence

Puisque $n^4$ et $m^4$ valent chacun $0$ ou $1$ modulo $16$, leur différence ne peut valoir que

$$0 - 0 = 0, \qquad 1 - 1 = 0, \qquad 1 - 0 = 1, \qquad 0 - 1 = -1 \equiv 15.$$

Donc

$$n^4 - m^4 \equiv 0, \; 1 \; \text{ou} \; 15 \pmod{16}.$$

### Étape 3. Et 42 ?

$$42 = 2 \times 16 + 10, \qquad \text{donc} \qquad 42 \equiv 10 \pmod{16}.$$

Or $10$ ne figure pas dans la liste $\{0, 1, 15\}$.

### Conclusion

L'équation $n^4 - m^4 = 42$ n'a donc **aucune** solution en entiers naturels.

$$\boxed{\text{Pas de solution.}}$$

## Going further

Une autre route mène au même résultat, sans modulo : par la taille. On factorise

$$n^4 - m^4 = (n - m)\left(n^3 + n^2 m + n m^2 + m^3\right).$$

Pour qu'il y ait une solution il faut $n > m$, donc $n \geqslant m+1$, et alors chacun des quatre termes de la seconde parenthèse est au moins $m^3$, ce qui donne

$$42 = n^4 - m^4 \geqslant 1 \times 4m^3, \qquad \text{donc} \qquad m^3 \leqslant 10, \qquad \text{donc} \qquad m \leqslant 2.$$

Il ne reste que trois cas : $m = 0$ donne $n^4 = 42$, $m = 1$ donne $n^4 = 43$, $m = 2$ donne $n^4 = 58$. Comme $2^4 = 16$ et $3^4 = 81$, aucun de ces trois nombres n'est une puissance quatrième.

Les deux méthodes sont utiles et ne se remplacent pas. Le modulo est plus rapide et s'adapte à des nombres énormes ; la majoration, elle, marche même quand aucun modulo ne convient. Un bon réflexe est d'essayer le modulo d'abord, et la taille ensuite.
