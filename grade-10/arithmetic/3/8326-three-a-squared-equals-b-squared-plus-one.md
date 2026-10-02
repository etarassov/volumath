---
id: "8326"
title: "3a² = b² + 1 n'a pas de solution"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, carres, equation-diophantienne, modulo]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les entiers relatifs $a$ et $b$ tels que

$$3a^2 = b^2 + 1 .$$

## Hints

1. Essaie quelques petites valeurs. Tu ne trouveras rien ; il faut donc démontrer qu'il n'y a aucune solution.
2. Pour montrer qu'une équation n'a pas de solution entière, le réflexe est de regarder modulo un entier bien choisi.
3. Quel entier choisir ? L'équation contient le coefficient $3$ et des carrés. Deux choix naturels s'offrent à toi : modulo $3$, et modulo $4$.
4. Modulo $3$, le terme $3a^2$ disparaît. Que reste-t-il ?
5. Quels sont les restes possibles d'un carré modulo $3$ ?

## Solution

**La liste des carrés modulo 3.**

Tout entier $b$ est congru à $0$, $1$ ou $2$ modulo $3$. Dressons le tableau :

| $b \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $b^2 \bmod 3$ | $0$ | $1$ | $4 \equiv 1$ |

Donc **un carré vaut toujours $0$ ou $1$ modulo $3$** ; il ne vaut jamais $2$.

**On regarde l'équation modulo 3.**

Supposons qu'il existe des entiers $a$ et $b$ avec $3a^2 = b^2 + 1$.

Le membre de gauche est un multiple de $3$, donc

$$b^2 + 1 \equiv 0 \pmod 3 , \qquad \text{c'est-à-dire} \qquad b^2 \equiv -1 \equiv 2 \pmod 3 .$$

Mais on vient de voir qu'un carré ne peut pas valoir $2$ modulo $3$. C'est une contradiction.

**Conclusion.** L'équation $3a^2 = b^2 + 1$ n'a **aucune solution** en nombres entiers.

## Going further

Une seconde méthode consiste à regarder modulo $4$. Les carrés modulo $4$ valent $0$ ou $1$,
donc $3a^2$ vaut $0$ ou $3$ modulo $4$, tandis que $b^2 + 1$ vaut $1$ ou $2$. Les deux listes
sont disjointes, donc l'égalité est impossible. C'est plus long, parce qu'il faut deux tableaux
au lieu d'un.

Choisir le bon module est souvent tout le travail. Une règle empirique utile : si l'équation
contient un coefficient $k$, essayez modulo $k$, puisque ce terme disparaît alors. Si elle
contient des carrés, essayez modulo $3$, $4$ ou $8$, où les carrés sont très contraints :

- modulo $3$, un carré vaut $0$ ou $1$ ;
- modulo $4$, un carré vaut $0$ ou $1$ ;
- modulo $8$, un carré vaut $0$, $1$ ou $4$.
