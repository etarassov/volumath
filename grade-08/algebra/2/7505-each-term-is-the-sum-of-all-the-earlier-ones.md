---
id: "7505"
title: "Chaque terme est la somme de tous les précédents"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [suite, puissances-de-deux, conjecture, recurrence]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 22 (solution p. 242, résolu par Maxence Seymat)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On construit une liste de nombres $u_0, u_1, u_2, u_3, \ldots$ de la façon suivante :

- $u_0 = 1$ ;
- chaque nouveau terme est la somme de **tous** ceux qui le précèdent :

$$u_{n+1} = u_0 + u_1 + \cdots + u_n.$$

Calculer $u_n$ pour tout entier $n$.

## Hints

1. Commence par calculer $u_1$, $u_2$, $u_3$, $u_4$ à la main. Que reconnais-tu ?
2. Pour passer de $u_{n+1}$ à $u_{n+2}$, tu ajoutes un terme de plus à la somme. Lequel ?
3. Écris $u_{n+2} = (u_0 + \cdots + u_n) + u_{n+1}$ et remplace la parenthèse par quelque chose que tu connais déjà.
4. Attention au tout début : $u_0$ et $u_1$ ne suivent pas la même règle que les suivants.

## Solution

**Étape 1. On calcule les premiers termes.**

$$u_0 = 1,$$
$$u_1 = u_0 = 1,$$
$$u_2 = u_0 + u_1 = 1 + 1 = 2,$$
$$u_3 = u_0 + u_1 + u_2 = 1 + 1 + 2 = 4,$$
$$u_4 = 1 + 1 + 2 + 4 = 8,$$
$$u_5 = 1 + 1 + 2 + 4 + 8 = 16.$$

À partir de $u_1$, on dirait qu'on double à chaque fois : $1, 2, 4, 8, 16, \ldots$

**Étape 2. On explique le doublement.**

Prenons $n \geqslant 0$ et comparons $u_{n+2}$ à $u_{n+1}$ :

$$u_{n+2} = \underbrace{u_0 + u_1 + \cdots + u_n}_{\text{c'est } u_{n+1}} + \; u_{n+1} = u_{n+1} + u_{n+1} = 2\,u_{n+1}.$$

La parenthèse est exactement la définition de $u_{n+1}$ : voilà pourquoi chaque terme vaut le double du précédent, **à partir de $u_1$**.

**Étape 3. On conclut.**

On part de $u_1 = 1$ et on double à chaque étape. Donc pour tout $n \geqslant 1$ :

$$u_n = 2^{\,n-1}.$$

Et le tout premier terme fait exception : $u_0 = 1$, alors que la formule donnerait $2^{-1}$.

**Réponse.** $u_0 = 1$, et $u_n = 2^{\,n-1}$ pour tout $n \geqslant 1$.

## Going further

Pourquoi la suite « rate » le tout premier terme ? Parce que $u_1$ est la somme d'un seul terme, alors que tous les suivants sont des sommes d'au moins deux termes. Le doublement ne peut donc commencer qu'à partir de $u_1$.

Ce résultat explique une propriété bien connue des puissances de $2$ : la somme $1 + 2 + 4 + \cdots + 2^{\,n-1}$ vaut $2^n - 1$, c'est-à-dire tout juste un de moins que le terme suivant. C'est ce qui fait qu'avec des poids de $1$, $2$, $4$, $8$, $16$ grammes on peut peser n'importe quelle masse entière jusqu'à $31$ grammes, et d'une seule manière.
