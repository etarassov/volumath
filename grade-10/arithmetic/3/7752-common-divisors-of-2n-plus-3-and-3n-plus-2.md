---
id: "7752"
title: "Les diviseurs communs de 2n + 3 et 3n + 2"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [pgcd, diviseur-commun, combinaison-lineaire, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », lundi 25 matin (Nicolas Ségarra), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n$ un entier positif. Quels sont les diviseurs communs des deux nombres

$$2n + 3 \qquad \text{et} \qquad 3n + 2 \ ?$$

Pour quelles valeurs de $n$ ces deux nombres ne sont-ils **pas** premiers entre eux ?

## Hints

1. Prends quelques valeurs : $n = 0, 1, 2, 3, 4, 5, 6$. Calcule les deux nombres et leur PGCD. Presque toujours $1$, sauf de temps en temps.
2. Si un entier $d$ divise deux nombres, il divise aussi toute combinaison $a \times (\text{premier}) + b \times (\text{second})$ avec $a$ et $b$ entiers. C'est l'outil de base ici.
3. Cherche une combinaison de $2n+3$ et $3n+2$ où le $n$ disparaît. Multiplie le premier par $3$ et le second par $2$.
4. Tu obtiens que $d$ divise $5$. Il ne reste qu'à voir quand $5$ divise effectivement $2n+3$.

## Solution

**Les diviseurs communs sont $1$ et, lorsque $n$ laisse le reste $1$ dans la division par $5$, également $5$. Les deux nombres ne sont donc pas premiers entre eux exactement quand $n$ s'écrit $n = 5m + 1$.**

**Étape 1 : on fait disparaître $n$.**

Soit $d$ un diviseur commun de $2n+3$ et de $3n+2$ (on prend $d$ positif).

Alors $d$ divise aussi $3 \times (2n+3) = 6n + 9$, et $d$ divise $2 \times (3n+2) = 6n + 4$.

Donc $d$ divise leur différence :

$$(6n + 9) - (6n + 4) = 5 .$$

**Étape 2 : on en déduit les valeurs possibles.**

$d$ est un diviseur positif de $5$, donc $d = 1$ ou $d = 5$.

$1$ divise toujours tout : c'est bien un diviseur commun, quel que soit $n$.

**Étape 3 : quand $5$ est-il un diviseur commun ?**

Regardons d'abord $2n + 3$. On teste les cinq restes possibles de $n$ dans la division par $5$ :

| reste de $n$ par $5$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| reste de $2n+3$ | $3$ | $0$ | $2$ | $4$ | $1$ |
| reste de $3n+2$ | $2$ | $0$ | $3$ | $1$ | $4$ |

$5$ divise $2n+3$ uniquement quand $n$ laisse le reste $1$. Et dans ce cas, le tableau montre que $5$ divise aussi $3n+2$. Les deux conditions coïncident, ce qui est normal : dès que $5$ divise l'un des deux, il divise $5n + 5$ moins ce nombre, donc l'autre aussi.

**Vérification.** Pour $n = 1$ : $2n+3 = 5$ et $3n+2 = 5$, de PGCD $5$. Pour $n = 6$ : $15$ et $20$, de PGCD $5$. Pour $n = 3$ : $9$ et $11$, de PGCD $1$.

**Conclusion.**

- Si $n$ laisse le reste $1$ dans la division par $5$, c'est-à-dire $n \in \{1, 6, 11, 16, \ldots\}$, les diviseurs communs sont $1$ et $5$, et $\mathrm{PGCD}(2n+3,\, 3n+2) = 5$.
- Pour tout autre $n$, le seul diviseur commun est $1$ : les deux nombres sont premiers entre eux.

## Going further

La même manipulation répond à toute question du même type. Pour $an + b$ et $cn + d$, on calcule

$$c(an+b) - a(cn+d) = bc - ad ,$$

et tout diviseur commun divise ce nombre fixe $bc - ad$. Ici $b c - a d = 3 \times 3 - 2 \times 2 = 5$.

Deux expressions de ce genre sont donc toujours « presque » premières entre elles : leur PGCD ne peut prendre qu'un nombre fini de valeurs, celles des diviseurs de $bc - ad$.
