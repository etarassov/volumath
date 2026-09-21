---
id: "7323"
title: "7 divise-t-il 2222⁵⁵⁵⁵ + 5555²²²² ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [congruences, puissances, cycle, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 27"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Le nombre
$$K = 2222^{5555} + 5555^{2222}$$
est-il divisible par $7$ ?

## Hints

1. On ne calculera évidemment pas $K$. Tout se fait avec les restes de la division par $7$.
2. Commence par les bases : quel est le reste de $2222$ dans la division par $7$ ? Et celui de $5555$ ?
3. Remplace chaque base par son reste. Il reste à étudier $3^{5555}$ et $4^{2222}$ modulo $7$.
4. Calcule les premières puissances de $3$ modulo $7$ : $3$, $9$, $27$, … Tu devrais voir apparaître un cycle. De quelle longueur ?
5. Fais de même pour les puissances de $4$. Puis utilise les restes de $5555$ et de $2222$ dans la division par la longueur du cycle.

## Solution

Toutes les congruences ci-dessous sont modulo $7$.

**Les deux bases.**

$$2222 = 7 \times 317 + 3, \qquad \text{donc} \qquad 2222 \equiv 3 .$$
$$5555 = 7 \times 793 + 4, \qquad \text{donc} \qquad 5555 \equiv 4 .$$

Par conséquent
$$K \equiv 3^{5555} + 4^{2222} .$$

**Le cycle des puissances de 3.**

$$3^1 \equiv 3, \quad 3^2 = 9 \equiv 2, \quad 3^3 \equiv 3 \times 2 = 6, \quad 3^4 \equiv 3 \times 6 = 18 \equiv 4,$$
$$3^5 \equiv 3 \times 4 = 12 \equiv 5, \quad 3^6 \equiv 3 \times 5 = 15 \equiv 1 .$$

On retombe sur $1$ : les puissances de $3$ se répètent donc avec une **période $6$**.

Pour calculer $3^{5555}$, divisons l'exposant par $6$ :
$$5555 = 6 \times 925 + 5 .$$
Donc
$$3^{5555} = \left(3^{6}\right)^{925} \times 3^{5} \equiv 1^{925} \times 5 = 5 .$$

**Le cycle des puissances de 4.**

$$4^1 \equiv 4, \quad 4^2 = 16 \equiv 2, \quad 4^3 \equiv 4 \times 2 = 8 \equiv 1 .$$

La période est donc $3$. Divisons l'exposant par $3$ :
$$2222 = 3 \times 740 + 2 .$$
Donc
$$4^{2222} = \left(4^{3}\right)^{740} \times 4^{2} \equiv 1^{740} \times 2 = 2 .$$

**On additionne.**

$$K \equiv 5 + 2 = 7 \equiv 0 \pmod 7 .$$

**Conclusion.** Oui, $7$ divise $K = 2222^{5555} + 5555^{2222}$.

## Going further

1. Le nombre $K$ est-il divisible par $3$ ? Par $11$ ?
2. Pourquoi les puissances de $3$ ont-elles une période de $6$ modulo $7$, alors que celles de $4$ ont une période de $3$ ? Calcule la période de chacun des restes $1, 2, \ldots, 6$.
3. Montre que pour tout entier $a$ non divisible par $7$, on a $a^6 \equiv 1 \pmod 7$. (C'est un cas particulier du petit théorème de Fermat.)
