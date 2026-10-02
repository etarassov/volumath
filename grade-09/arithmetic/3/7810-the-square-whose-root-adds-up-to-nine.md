---
id: "7810"
title: "Le carré dont la racine a pour somme des chiffres 9"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, chiffres, divisibilite, criteres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Déterminer le plus petit entier $n$ tel que :

- le chiffre des unités de $n$ est un $5$ ;
- $\sqrt{n}$ est un nombre entier ;
- la somme des chiffres de $\sqrt{n}$ vaut $9$.

## Hints

1. Note $m = \sqrt n$, de sorte que $n = m^2$. Chercher le plus petit $n$ revient à chercher le
   plus petit $m$, puisque $m \mapsto m^2$ conserve l'ordre sur les entiers positifs.
2. Le carré $m^2$ se termine par $5$. Par quel chiffre $m$ doit-il alors se terminer ? Teste
   les dix chiffres possibles.
3. La somme des chiffres de $m$ vaut $9$ : cela te dit en particulier que $m$ est un multiple
   de $9$.
4. $m$ est donc un multiple de $9$ qui se termine par $5$. Liste-les en commençant par le plus
   petit.

## Solution

**Étape 1 : on travaille sur la racine.**

Posons $m = \sqrt n$, qui est un entier, de sorte que $n = m^2$. Comme $m \mapsto m^2$ est
croissante sur les entiers positifs, trouver le plus petit $n$ revient à trouver le plus petit
$m$ possible.

**Étape 2 : $m$ se termine par $5$.**

Le chiffre des unités de $m^2$ ne dépend que du chiffre des unités de $m$ :

| unités de $m$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| unités de $m^2$ | $0$ | $1$ | $4$ | $9$ | $6$ | $5$ | $6$ | $9$ | $4$ | $1$ |

Le seul chiffre qui donne $5$ est $5$. Donc **$m$ se termine par $5$**.

**Étape 3 : $m$ est un multiple de $9$.**

La somme des chiffres de $m$ vaut $9$, qui est un multiple de $9$. D'après le critère de
divisibilité par $9$, $m$ est donc un multiple de $9$.

**Étape 4 : on cherche le plus petit $m$.**

Les multiples de $9$ qui se terminent par $5$ sont, dans l'ordre :
$$45, \quad 135, \quad 225, \quad 315, \ldots$$

Le plus petit est $45$, et sa somme des chiffres vaut $4 + 5 = 9$ : il convient.

(On peut aussi vérifier directement à la main : les entiers se terminant par $5$ sont $5$, $15$,
$25$, $35$, $45$, de sommes de chiffres $5$, $6$, $7$, $8$, $9$. Le premier qui donne $9$ est
bien $45$.)

**Conclusion.**

$$n = 45^2 = \boxed{2025}.$$

*Vérification.* $2025$ se termine par $5$, $\sqrt{2025} = 45$ est entier, et $4 + 5 = 9$.
