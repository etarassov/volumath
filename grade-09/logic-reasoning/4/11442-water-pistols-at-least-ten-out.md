---
id: "11442"
title: "Pistolets à eau : au moins dix éliminés"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [raisonnement-par-l-absurde, denombrement, cas, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 11 ; corrigé 2023-03_corrige-envoi-4.pdf ; l'histoire de bandits armés devient un jeu de pistolets à eau"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Un groupe d'enfants joue aux pistolets à eau. Chaque enfant a deux pistolets, et il vise avec eux
deux autres enfants, toujours les mêmes, choisis une fois pour toutes avant le début du jeu.

On appelle ensuite les enfants un par un, dans un certain ordre. Quand un enfant est appelé, s'il
n'est pas encore éliminé, il tire sur les deux enfants qu'il vise, et ceux-ci sont éliminés (tirer
sur un enfant déjà éliminé ne change rien). Un enfant éliminé ne tire plus.

Avec l'ordre d'appel choisi, il y a eu $28$ éliminés quand tous les enfants ont été appelés.

Montrer que, quel que soit l'ordre dans lequel on aurait appelé les enfants, il y aurait eu au
moins $10$ éliminés.

## Hints

1. Un enfant que personne ne vise peut-il être éliminé ? Que t'apprennent les $28$ éliminés sur le
   nombre d'enfants visés par quelqu'un ?
2. Suppose qu'un autre ordre ne fasse que $9$ éliminés au plus. Classe alors les enfants en trois
   groupes : éliminés avant leur tour, éliminés après avoir tiré, jamais éliminés.
3. Les deux cibles d'un enfant qui a tiré sont éliminées à la fin. Combien d'enfants différents
   peuvent être visés au total ?

## Solution

**Une remarque qui ne dépend pas de l'ordre.** Disons qu'un enfant est *visé* si au moins un autre
enfant le vise. Cela est fixé avant le début du jeu, et ne dépend donc pas de l'ordre d'appel.

Un enfant qui n'est visé par personne n'est jamais éliminé. Avec l'ordre choisi, les $28$ éliminés
sont donc tous visés : **il y a au moins $28$ enfants visés**.

**Raisonnons par l'absurde.** Supposons qu'il existe un autre ordre d'appel qui ne fasse que $9$
éliminés au plus. Pour cet ordre, rangeons les enfants en trois groupes :

- le groupe $A$ : ceux qui sont éliminés **avant** d'avoir été appelés (ils n'ont jamais tiré) ;
- le groupe $B$ : ceux qui ont tiré, puis ont été éliminés plus tard ;
- le groupe $C$ : ceux qui ne sont jamais éliminés (ils ont tiré quand on les a appelés).

Les éliminés sont exactement les enfants de $A$ et de $B$, donc $A$ et $B$ comptent ensemble au plus
$9$ enfants.

**Qui peut être visé ?** Comptons les enfants visés, en regardant qui les vise.

- *Les enfants visés par quelqu'un de $B$ ou de $C$.* Ceux de $B$ et de $C$ ont tiré : leurs deux
  cibles ont donc été éliminées, et font partie de $A$ ou de $B$. Il y en a au plus $9$.
- *Les enfants visés par quelqu'un de $A$.* Le groupe $A$ compte au plus $9$ enfants, et chacun en
  vise $2$ : cela fait au plus $2 \times 9 = 18$ enfants.

Tout enfant visé l'est par quelqu'un de $A$, de $B$ ou de $C$. Il y a donc au plus

$$9 + 18 = 27$$

enfants visés.

**La contradiction.** On a montré plus haut qu'il y a au moins $28$ enfants visés, et cela ne dépend
pas de l'ordre. On ne peut pas en avoir à la fois au moins $28$ et au plus $27$ : l'ordre supposé
n'existe pas.

**Conclusion.** Quel que soit l'ordre d'appel, il y a au moins $10$ éliminés.

## Going further

Le même raisonnement donne une règle générale. Si un ordre d'appel fait $e$ éliminés, le nombre
d'enfants visés est au plus $e + 2e = 3e$. Donc, si un ordre fait $k$ éliminés, tout autre ordre en
fait au moins $\frac{k}{3}$.

Ici $\frac{28}{3}$ vaut un peu plus que $9$, et un nombre d'éliminés est entier : on retrouve au
moins $10$.
