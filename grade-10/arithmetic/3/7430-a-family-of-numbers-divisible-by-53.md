---
id: "7430"
title: "1007, 10017, 100117 et le nombre 53"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, recurrence, numeration, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 46 (résolu par Xavier Poulot-Cazajous)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

1. Montrer que tous les nombres de la forme
   $$1007, \quad 10017, \quad 100117, \quad 1001117, \quad \ldots$$
   sont divisibles par $53$. (On intercale un $1$ de plus à chaque fois, entre les deux zéros et
   le $7$ final.)

2. Montrer que tous les nombres de la forme
   $$12008, \quad 120308, \quad 1203308, \quad 12033308, \quad \ldots$$
   sont divisibles par $19$. (On intercale un $3$ de plus à chaque fois.)

## Hints

1. Vérifie d'abord le premier terme : $1007 = 53 \times 19$, et $12008 = 19 \times 632$.
2. Ces listes sont infinies : il faut donc une récurrence. Appelle $U_n$ le $n$-ième nombre de la
   première liste et cherche une relation entre $U_{n+1}$ et $U_n$.
3. Passer de $1007$ à $10017$, c'est presque multiplier par $10$ : compare $10 \times 1007 =
   10070$ et $10017$. Quelle correction faut-il ajouter, et dépend-elle de $n$ ?

## Solution

### Première liste

**On nomme les nombres.**

Notons $U_n$ le nombre formé de $1$, puis $0$, puis $0$, puis $n$ chiffres $1$, puis $7$ :
$$U_0 = 1007, \quad U_1 = 10017, \quad U_2 = 100117, \quad U_3 = 1001117, \quad \ldots$$

**Une relation de récurrence.**

Passons de $U_n$ à $U_{n+1}$. Le nombre $U_n$ se termine par le chiffre $7$ ; le nombre $U_{n+1}$
s'obtient en insérant un $1$ juste avant ce $7$.

Écrivons $U_n = 10\,A + 7$, où $A$ est le nombre obtenu en retirant le $7$ final. Alors
$U_{n+1}$ s'écrit $A$, puis $1$, puis $7$, c'est-à-dire
$$U_{n+1} = 100\,A + 17.$$

Or $100\,A = 10 \times (10A) = 10\,(U_n - 7)$, donc
$$U_{n+1} = 10\,(U_n - 7) + 17 = 10\,U_n - 70 + 17 = 10\,U_n - 53.$$

**La récurrence.**

*Initialisation.* $U_0 = 1007 = 53 \times 19$, donc $53$ divise $U_0$.

*Hérédité.* Supposons que $53$ divise $U_n$. Alors $53$ divise $10\,U_n$, et $53$ se divise
lui-même, donc $53$ divise la différence
$$10\,U_n - 53 = U_{n+1}.$$

*Conclusion.* Par récurrence, $53$ divise $U_n$ pour tout $n \geq 0$ : **tous les nombres de la
première liste sont divisibles par $53$.**

### Deuxième liste

**On nomme les nombres.**

Notons $V_n$ le nombre formé de $1$, $2$, $0$, puis $n$ chiffres $3$, puis $0$, puis $8$ :
$$V_0 = 12008, \quad V_1 = 120308, \quad V_2 = 1203308, \quad \ldots$$

**Une relation de récurrence.**

Cette fois le nombre se termine par les deux chiffres $0$ et $8$, et on insère un $3$ juste
avant ce bloc. Écrivons
$$V_n = 100\,B + 8,$$
où $B$ est le nombre formé de tous les chiffres qui précèdent ce bloc final $08$. Par exemple,
pour $V_1 = 120308$ on a $B = 1203$, et l'on retrouve bien $100 \times 1203 + 8 = 120308$.

Le nombre $V_{n+1}$ s'écrit alors $B$, puis $3$, puis $0$, puis $8$, soit
$$V_{n+1} = 1000\,B + 308.$$

Comme $1000\,B = 10 \times (100B) = 10\,(V_n - 8)$, on obtient
$$V_{n+1} = 10\,(V_n - 8) + 308 = 10\,V_n - 80 + 308 = 10\,V_n + 228.$$

Et $228 = 19 \times 12$.

**La récurrence.**

*Initialisation.* $V_0 = 12008 = 19 \times 632$, donc $19$ divise $V_0$.

*Hérédité.* Supposons que $19$ divise $V_n$. Alors $19$ divise $10\,V_n$ et $19$ divise
$228 = 19 \times 12$, donc $19$ divise la somme
$$10\,V_n + 228 = V_{n+1}.$$

*Conclusion.* Par récurrence, $19$ divise $V_n$ pour tout $n \geq 0$ : **tous les nombres de la
deuxième liste sont divisibles par $19$.**

## Going further

Fabrique toi-même une liste de ce genre pour le nombre $7$ : choisis un multiple de $7$ à trois
chiffres, puis une règle d'insertion telle que la correction soit encore un multiple de $7$.
