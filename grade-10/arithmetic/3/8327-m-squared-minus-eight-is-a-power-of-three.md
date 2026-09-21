---
id: "8327"
title: "m² − 8 = 3ⁿ"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [congruences, carres, puissances, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(m, n)$ tels que

$$m^2 - 8 = 3^n .$$

*On rappelle que $3^0 = 1$.*

## Hints

1. Essaie les petites valeurs de $n$ : $n = 0$, $n = 1$, $n = 2$. Pour chacune, l'équation devient une question sur les carrés.
2. Tu devrais trouver une solution pour $n = 0$. Il reste à montrer qu'il n'y en a pas d'autre.
3. Traite le cas $n \geqslant 1$ à part. Quel nombre divise alors $3^n$ ?
4. Regarde l'équation modulo $3$. Que devient-elle ?
5. Quels sont les restes possibles d'un carré modulo $3$ ?

## Solution

**Le cas $n = 0$.**

Alors $3^n = 1$, et l'équation devient $m^2 - 8 = 1$, c'est-à-dire $m^2 = 9$. Comme $m$ est un
entier naturel, $m = 3$.

Vérification : $3^2 - 8 = 9 - 8 = 1 = 3^0$. Le couple $(3, 0)$ est bien solution.

**Le cas $n \geqslant 1$.**

Alors $3$ divise $3^n$, donc

$$m^2 - 8 \equiv 0 \pmod 3 .$$

Or $8 = 2 \times 3 + 2$, donc $8 \equiv 2 \pmod 3$, et l'équation devient

$$m^2 \equiv 2 \pmod 3 .$$

Dressons la liste des carrés modulo $3$ :

| $m \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $m^2 \bmod 3$ | $0$ | $1$ | $1$ |

Un carré ne vaut donc jamais $2$ modulo $3$ : l'équation est impossible.

**Conclusion.** L'unique solution est

$$\boxed{(m, n) = (3, 0)} .$$

## Going further

La liste des carrés modulo $3$ sert constamment. En voici une lecture qui aide à la retenir :
un entier est de la forme $3k$, $3k \pm 1$ ; son carré vaut $9k^2$ ou $9k^2 \pm 6k + 1$, donc
respectivement $0$ ou $1$ modulo $3$.

Que se passerait-il avec $m^2 - 8 = 5^n$ ? Cette fois il faut regarder modulo $5$ : les carrés y
valent $0$, $1$ ou $4$, et $8 \equiv 3$, donc on cherche $m^2 \equiv 3 \pmod 5$, ce qui est
impossible. Il ne reste que $n = 0$, qui redonne $m = 3$.
