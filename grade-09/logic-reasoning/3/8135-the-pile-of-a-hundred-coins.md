---
id: "8135"
title: "Le tas de cent pièces"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, jeu]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, entraînement final du Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Exercices d'entraînement – Entraînement final », exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Sur une table, il y a un seul tas, de $100$ pièces. On peut faire, autant de fois qu'on veut, l'une des deux opérations suivantes :

1. choisir un tas d'au moins $3$ pièces, en retirer une pièce (qu'on met de côté définitivement), et séparer le reste du tas en deux tas non vides ;
2. faire disparaître un tas qui ne contient qu'une seule pièce.

Peut-on arriver, après une suite de telles opérations, à une table complètement vide ?

## Hints

1. Il y a deux nombres qui bougent : le nombre de pièces encore sur la table et le nombre de tas. Note-les $p$ et $t$.
2. Écris précisément comment chaque opération modifie $p$ et $t$.
3. Aucune des deux quantités n'est conservée. Mais essaie de regarder leur somme, ou leur différence.
4. Compare la valeur de départ et la valeur qu'il faudrait atteindre.

## Solution

**Les deux quantités à suivre.**

À tout moment, notons

$$p = \text{nombre de pièces encore sur la table}, \qquad t = \text{nombre de tas sur la table}.$$

Au départ, $p = 100$ et $t = 1$.

**L'effet de chaque opération.**

*Opération 1.* On retire une pièce, donc $p$ diminue de $1$. On remplace un tas par deux tas, donc $t$ augmente de $1$. Au total,

$$p + t \text{ ne change pas.}$$

*Opération 2.* On fait disparaître un tas d'une pièce : $p$ diminue de $1$ et $t$ diminue de $1$. Au total,

$$p + t \text{ diminue de } 2.$$

**L'invariant.**

Dans les deux cas, $p+t$ ne change pas ou diminue de $2$ : **la parité de $p+t$ ne change jamais.**

**Conclusion.**

Au départ,

$$p + t = 100 + 1 = 101,$$

qui est **impair**. Donc $p+t$ restera toujours impair.

Une table complètement vide correspondrait à $p = 0$ et $t = 0$, donc à $p + t = 0$, qui est **pair**.

**C'est impossible : on ne peut jamais vider complètement la table.**

Remarque : on s'arrêtera forcément, faute d'opération possible, sur une table où il ne reste que des tas de $2$ pièces. En effet, un tas d'une pièce peut disparaître (opération 2) et un tas de $3$ pièces ou plus peut être coupé (opération 1) ; seuls les tas de $2$ pièces bloquent tout.
