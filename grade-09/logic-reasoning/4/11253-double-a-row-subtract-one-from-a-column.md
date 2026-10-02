---
id: "11253"
title: "Doubler une ligne, retrancher 1 à une colonne"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [strategie, algorithme, tableau, descente]
adapted_from: null
see_also: ["11427"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices communs, exercice 5 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

On considère un tableau de $2018$ lignes et $2018$ colonnes. Dans chaque case est écrit un entier
strictement positif. Noémie peut faire les deux opérations suivantes, autant de fois qu'elle le veut
et dans l'ordre qu'elle veut :

- choisir une **ligne** et multiplier par $2$ tous les nombres de cette ligne ;
- choisir une **colonne** et retrancher $1$ à tous les nombres de cette colonne.

Montrer que Noémie peut s'arranger pour obtenir un tableau dont toutes les cases contiennent $0$.

## Hints

1. Commence par un tableau d'une seule colonne, qui contient $3$ en haut et $1$ en bas. Pourquoi
   est-ce une mauvaise idée de retrancher $1$ tout de suite ?
2. Avant de retrancher $1$ à la colonne, double les lignes où la colonne contient un $1$. Que
   deviennent alors les nombres de la colonne ? Que devient le plus grand d'entre eux ?
3. Une fois qu'une colonne ne contient que des $0$, les opérations peuvent-elles l'abîmer, si l'on
   ne retranche plus rien à cette colonne ?

## Solution

L'idée est de vider les colonnes **une par une**, de gauche à droite.

### Ce que fait un doublement aux autres colonnes

Doubler une ligne transforme un $0$ en $2 \times 0 = 0$, et un entier strictement positif en un
entier strictement positif. Donc, si l'on ne retranche $1$ qu'à une seule colonne :

- les colonnes qui ne contiennent que des $0$ continuent de ne contenir que des $0$ ;
- les colonnes qui ne contiennent que des entiers strictement positifs continuent de ne contenir
  que des entiers strictement positifs (ils peuvent grossir, ce n'est pas grave).

### Comment vider une colonne

Prenons une colonne qui ne contient que des entiers strictement positifs, et notons $M$ le plus
grand d'entre eux.

- **Si $M = 1$**, tous les nombres de la colonne valent $1$. On retranche $1$ à la colonne, et elle
  ne contient plus que des $0$.
- **Si $M \geqslant 2$**, on fait le **coup** suivant : on double chaque ligne dont le nombre, dans
  cette colonne, vaut $1$ ; puis on retranche $1$ à la colonne. Regardons ce que deviennent les
  nombres de la colonne.
  - Un nombre égal à $1$ devient $2$, puis $1$ : il ne change pas.
  - Un nombre au moins égal à $2$ n'est pas doublé, et il diminue de $1$ : il reste au moins égal
    à $1$.

  Après le coup, la colonne ne contient donc encore que des entiers strictement positifs. Les nombres
  qui valaient $M$ valent maintenant $M - 1$, et aucun nombre n'a augmenté. Comme $1 \leqslant M - 1$,
  le plus grand nombre de la colonne vaut maintenant exactement $M - 1$.

À chaque coup, le plus grand nombre de la colonne diminue de $1$. Au bout de $M - 1$ coups, il vaut
$1$, et on termine en retranchant $1$ à la colonne, qui ne contient plus que des $0$.

**Un exemple.** Une colonne qui contient $3$ en haut et $1$ en bas :

| opération | haut | bas |
|---|---|---|
| départ | $3$ | $1$ |
| doubler la ligne du bas | $3$ | $2$ |
| retrancher $1$ | $2$ | $1$ |
| doubler la ligne du bas | $2$ | $2$ |
| retrancher $1$ | $1$ | $1$ |
| retrancher $1$ | $0$ | $0$ |

### Toutes les colonnes

On vide la première colonne comme expliqué, en ne retranchant $1$ qu'à elle. Les autres colonnes
contiennent toujours des entiers strictement positifs. On vide alors la deuxième colonne de la même
façon : la première reste remplie de $0$, et les suivantes restent remplies d'entiers strictement
positifs. Et ainsi de suite jusqu'à la dernière colonne.

**Conclusion : Noémie peut toujours obtenir un tableau qui ne contient que des $0$.**

## Going further

- L'énoncé demande que tous les nombres soient strictement positifs au départ. Montre que c'est
  nécessaire : avec un tableau d'une seule colonne qui contient $0$ et $1$, on ne peut jamais obtenir
  deux $0$. (Que peut devenir un nombre qui vaut $0$ ou moins ?)
- Que se passe-t-il si l'on retranche $2$ au lieu de $1$ ? Et si l'on multiplie par $3$ et retranche
  $3$ ?
