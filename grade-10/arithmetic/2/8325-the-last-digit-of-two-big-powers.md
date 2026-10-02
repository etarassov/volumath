---
id: "8325"
title: "Le chiffre des unités de deux grandes puissances"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [congruences, chiffre-des-unites, puissances, cycle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

1. Trouver le chiffre des unités de $31^{2020}$.
2. Trouver le chiffre des unités de $37^{2020}$.

## Hints

1. Le chiffre des unités d'un entier, c'est son reste dans la division euclidienne par $10$. On travaille donc modulo $10$.
2. Pour la première question, remplace $31$ par son reste modulo $10$. Le calcul devient immédiat.
3. Pour la seconde, calcule les premières puissances de $7$ modulo $10$ : $7^1$, $7^2$, $7^3$, $7^4$. Que remarques-tu ?
4. Une fois que tu as trouvé un exposant $k$ tel que $7^k \equiv 1 \pmod{10}$, écris $2020$ comme un multiple de $k$.

## Solution

Le chiffre des unités d'un entier est son reste dans la division euclidienne par $10$. Tout se
passe donc **modulo $10$**.

**1) Le chiffre des unités de $31^{2020}$.**

On a $31 = 3 \times 10 + 1$, donc

$$31 \equiv 1 \pmod{10} .$$

Les congruences se comportent bien avec les puissances : si $a \equiv b \pmod{n}$, alors
$a^q \equiv b^q \pmod{n}$ pour tout entier $q \geqslant 0$. Donc

$$31^{2020} \equiv 1^{2020} \equiv 1 \pmod{10} .$$

**Le chiffre des unités de $31^{2020}$ est $1$.**

**2) Le chiffre des unités de $37^{2020}$.**

Cette fois $37 \equiv 7 \pmod{10}$, donc $37^{2020} \equiv 7^{2020} \pmod{10}$.

Calculons les premières puissances de $7$ modulo $10$ :

| $k$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|
| $7^k$ | $7$ | $49$ | $343$ | $2401$ |
| $7^k \bmod 10$ | $7$ | $9$ | $3$ | $1$ |

On voit que

$$7^4 \equiv 1 \pmod{10} .$$

Comme $2020 = 4 \times 505$, on en déduit

$$7^{2020} = \left(7^4\right)^{505} \equiv 1^{505} \equiv 1 \pmod{10} .$$

**Le chiffre des unités de $37^{2020}$ est $1$.**

## Going further

Pour un calcul à la main, on n'a pas eu besoin des colonnes $7^2$ et $7^3$ : seul comptait le
fait que $7^4$ se termine par $1$. Mais elles montrent au passage que les chiffres des unités des
puissances de $7$ se répètent avec la période $4$ :

$$7, \; 9, \; 3, \; 1, \; 7, \; 9, \; 3, \; 1, \; \ldots$$

Chaque chiffre de $1$ à $9$ a ainsi sa propre période : $1$ pour $1$, $5$ et $6$ ; $2$ pour $4$
et $9$ ; $4$ pour $2$, $3$, $7$ et $8$.

Quel est le chiffre des unités de $2023^{2023}$ ?
