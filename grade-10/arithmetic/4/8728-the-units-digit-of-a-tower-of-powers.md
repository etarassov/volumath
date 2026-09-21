---
id: "8728"
title: "Le chiffre des unités d'une tour de puissances"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffre-des-unites, cycles, modulo-10, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « TD de modulos » (Théo et Thomas), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

1. Quel est le chiffre des unités de $3^{1789}$ ?
2. Quel est le chiffre des unités de $1777^{\,1777^{1777}}$ ?

*Dans la deuxième question, la puissance se lit de haut en bas : il s'agit de $1777$ élevé à la puissance $\left(1777^{1777}\right)$.*

## Hints

1. Le chiffre des unités d'un nombre, c'est son reste dans la division par $10$. Et le chiffre des unités d'un produit ne dépend que des chiffres des unités des facteurs.
2. Écris les chiffres des unités de $3^1, 3^2, 3^3, 3^4, 3^5, \ldots$ Que remarques-tu ?
3. Une fois le cycle repéré, il suffit de connaître le reste de l'exposant dans la division par la longueur du cycle.
4. Pour la question 2, le chiffre des unités de $1777$ est $7$ : les puissances de $1777$ ont donc les mêmes chiffres des unités que celles de $7$. Il te faudra le reste de $1777^{1777}$ modulo $4$, et non modulo $10$.

## Solution

Le chiffre des unités d'un entier est son reste dans la division par $10$. Et quand on multiplie deux nombres, le chiffre des unités du produit ne dépend que des chiffres des unités des deux facteurs : on peut donc calculer « en ne gardant que le dernier chiffre ».

### Question 1 : le chiffre des unités de $3^{1789}$

Calculons les premiers chiffres des unités des puissances de $3$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $3^n$ | $3$ | $9$ | $27$ | $81$ | $243$ | $729$ | $2187$ | $6561$ |
| chiffre des unités | $3$ | $9$ | $7$ | $1$ | $3$ | $9$ | $7$ | $1$ |

Le motif $3, 9, 7, 1$ se répète : c'est un **cycle de longueur 4**. Cela n'a rien d'un hasard, puisqu'une fois qu'on retombe sur le chiffre $1$, la suite recommence exactement comme au départ.

Le chiffre des unités de $3^n$ ne dépend donc que du reste de $n$ dans la division par $4$ :

- reste $1 \rightarrow 3$ ; reste $2 \rightarrow 9$ ; reste $3 \rightarrow 7$ ; reste $0 \rightarrow 1$.

Calculons le reste de $1789$ modulo $4$. Comme $100$ est divisible par $4$, il suffit de regarder les deux derniers chiffres : $89 = 4 \times 22 + 1$. Donc $1789$ laisse le reste $1$.

$$\boxed{\text{Le chiffre des unités de } 3^{1789} \text{ est } 3 .}$$

### Question 2 : le chiffre des unités de $1777^{\,1777^{1777}}$

**On remplace $1777$ par $7$.** Le chiffre des unités de $1777$ est $7$, donc pour toute puissance, $1777^k$ et $7^k$ ont le même chiffre des unités.

**Le cycle des puissances de 7.**

| $k$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|
| $7^k$ | $7$ | $49$ | $343$ | $2401$ | $16\,807$ |
| chiffre des unités | $7$ | $9$ | $3$ | $1$ | $7$ |

De nouveau un cycle de longueur $4$ : $7, 9, 3, 1$.

**Il nous faut donc le reste de l'exposant modulo 4.** L'exposant est $N = 1777^{1777}$. Ce nombre est astronomique, mais son reste modulo $4$ se calcule sans peine :

$$1777 = 4 \times 444 + 1 ,$$

donc $1777$ laisse le reste $1$ modulo $4$. Un produit de nombres laissant le reste $1$ laisse encore le reste $1$, donc

$$N = 1777^{1777} \quad \text{laisse le reste } 1 \text{ modulo } 4 .$$

**Conclusion.** L'exposant laisse le reste $1$ modulo $4$, donc on se trouve au premier cran du cycle $7, 9, 3, 1$ :

$$\boxed{\text{Le chiffre des unités de } 1777^{\,1777^{1777}} \text{ est } 7 .}$$

*L'erreur à ne pas faire.* On cherche le dernier chiffre, donc on travaille modulo $10$ — mais l'exposant, lui, se réduit modulo $4$, la **longueur du cycle**, pas modulo $10$. Confondre les deux est l'erreur la plus fréquente sur ce type d'exercice.

## Going further

1. Dresse la liste des longueurs de cycle des chiffres des unités de $2^n$, $3^n$, $4^n$, …, $9^n$. Tu trouveras des cycles de longueur $1$, $2$ ou $4$. Lesquels ?

2. Quel est le chiffre des unités de $2^{2^{2^{2}}}$ ? Attention, cette tour se lit aussi de haut en bas.

3. Quels sont les **deux** derniers chiffres de $3^{1789}$ ? Cette fois il faut travailler modulo $100$ : cherche le plus petit $k$ tel que $3^k$ se termine par $01$.
