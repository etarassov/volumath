---
id: "8428"
title: "Une somme de deux carrés qui n'existe pas"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carres, reste, division-euclidienne, somme-de-deux-carres]
adapted_from: null
see_also: ["8727"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Existe-t-il des entiers $a$ et $b$ tels que

$$a^2 + b^2 = 10^{100} + 3 \; ?$$

## Hints

1. Un très grand nombre ne se manipule pas directement. Regarde plutôt les **restes** dans la division par un petit nombre bien choisi.
2. Essaie la division par $4$. Quels restes un carré peut-il donner ? Fais le tableau des quatre cas $a = 4q$, $a = 4q+1$, $a = 4q+2$, $a = 4q+3$.
3. Une fois connus les restes possibles d'un carré, déduis-en les restes possibles d'une somme de deux carrés.
4. Quel est le reste de $10^{100} + 3$ dans la division par $4$ ?

## Solution

La réponse est **non**.

**Étape 1. Les restes possibles d'un carré dans la division par $4$.**

Tout entier $a$ s'écrit $a = 4q + r$ avec $r$ valant $0$, $1$, $2$ ou $3$. Calculons $a^2$ dans chaque cas, en ne gardant que le reste modulo $4$ :

| $r$ | $a^2 = (4q+r)^2$ | reste de $a^2$ modulo $4$ |
|---|---|---|
| $0$ | $16q^2$ | $0$ |
| $1$ | $16q^2 + 8q + 1$ | $1$ |
| $2$ | $16q^2 + 16q + 4$ | $0$ |
| $3$ | $16q^2 + 24q + 9$ | $1$ |

Dans les quatre cas, tous les termes sauf le dernier sont des multiples de $4$. On retient :

> **Le carré d'un entier laisse toujours le reste $0$ ou $1$ dans la division par $4$.**

**Étape 2. Les restes possibles d'une somme de deux carrés.**

Chacun des deux carrés laisse le reste $0$ ou $1$. Leur somme laisse donc le reste

$$0+0 = 0, \qquad 0+1 = 1, \qquad 1+1 = 2.$$

Autrement dit, $a^2 + b^2$ laisse toujours le reste $0$, $1$ ou $2$ modulo $4$. **Jamais $3$.**

**Étape 3. Le reste du nombre de l'énoncé.**

Comme $100 \geqslant 2$, le nombre $10^{100}$ est un multiple de $100$, donc en particulier un multiple de $4$ :

$$10^{100} = 4 \times \big(25 \times 10^{98}\big).$$

Donc $10^{100} + 3$ laisse le reste $3$ dans la division par $4$.

**Conclusion.** Une somme de deux carrés ne laisse jamais le reste $3$ modulo $4$, alors que $10^{100}+3$ le laisse. Il n'existe donc **aucun** couple d'entiers $(a, b)$ tel que $a^2 + b^2 = 10^{100} + 3$.

## Going further

Cette méthode est l'une des plus rentables de l'arithmétique : pour montrer qu'une équation en nombres entiers n'a pas de solution, on cherche un petit nombre modulo lequel les deux membres ne peuvent pas coïncider.

Le choix du modulo n'est pas au hasard : c'est modulo $4$ que les carrés sont le plus contraints, puisqu'ils n'occupent que deux restes sur quatre. Modulo $8$, ils n'en occupent que trois sur huit ($0$, $1$ et $4$), ce qui est encore plus sélectif.
