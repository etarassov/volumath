---
id: "7720"
title: "Tous les crayons de la boîte ont la même couleur"
grade: 12
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [recurrence, heredite, erreur-de-raisonnement, initialisation]
adapted_from: null
see_also: []
same_as: ["8660"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 après-midi (Cécile Gachet), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Voici une « démonstration » du résultat suivant :

> **Toute boîte de crayons de couleur ne contient que des crayons de la même couleur.**

Pour $n \geqslant 1$, notons $P_n$ la propriété : « toute boîte contenant $n$ crayons ne contient que des crayons de la même couleur ». Montrons par récurrence que $P_n$ est vraie pour tout $n \geqslant 1$.

**Initialisation.** Une boîte contenant un seul crayon ne contient forcément que des crayons de la même couleur. Donc $P_1$ est vraie.

**Hérédité.** Supposons $P_n$ vraie pour un certain entier $n \geqslant 1$, et prenons une boîte de $n+1$ crayons, alignés dans un ordre quelconque. Les $n$ **premiers** crayons forment une boîte de $n$ crayons : par hypothèse de récurrence, ils sont tous de la même couleur. Les $n$ **derniers** crayons forment eux aussi une boîte de $n$ crayons : ils sont donc eux aussi tous de la même couleur. Par conséquent, tous les crayons de la boîte sont de la même couleur, et $P_{n+1}$ est vraie.

Par principe de récurrence, $P_n$ est vraie pour tout $n \geqslant 1$.

Le résultat est évidemment faux. **Où est l'erreur ?**

## Hints

1. L'initialisation est correcte, et la conclusion est bien celle du principe de récurrence. C'est donc l'hérédité qu'il faut examiner de près.
2. L'hérédité doit fonctionner pour **tout** entier $n \geqslant 1$, sans exception. Teste-la avec la plus petite valeur possible.
3. Prends $n = 1$ : une boîte de $2$ crayons. Quels sont « les $n$ premiers » crayons, et quels sont « les $n$ derniers » ?
4. Pourquoi le raisonnement conclut-il d'habitude que les deux groupes ont la même couleur ? Qu'est-ce qui manque ici ?

## Solution

**L'erreur est dans l'hérédité, et seulement pour $n = 1$ : le passage de $P_1$ à $P_2$ n'est pas démontré.**

**Pourquoi le raisonnement a l'air correct.** Quand on prend une boîte de $n+1$ crayons avec $n \geqslant 2$, disons les crayons numérotés $1, 2, \ldots, n+1$ :

- le groupe des $n$ premiers est $\{1, 2, \ldots, n\}$ ;
- le groupe des $n$ derniers est $\{2, 3, \ldots, n+1\}$.

Ces deux groupes **se chevauchent** : par exemple le crayon numéro $2$ appartient aux deux. Tous les crayons du premier groupe ont donc la couleur du crayon $2$, et tous ceux du second groupe aussi : d'où la même couleur pour les $n+1$ crayons. Ce raisonnement-là est juste.

**Pourquoi il s'effondre pour $n = 1$.** Prenons $n = 1$, c'est-à-dire une boîte de $2$ crayons, numérotés $1$ et $2$ :

- le groupe des $n = 1$ premiers crayons est $\{1\}$ ;
- le groupe des $n = 1$ derniers crayons est $\{2\}$.

Ces deux groupes n'ont **aucun crayon en commun**. Le raisonnement dit seulement que le crayon $1$ a la même couleur que lui-même, et que le crayon $2$ a la même couleur que lui-même. Il ne dit rien du tout sur la comparaison entre les deux. La propriété $P_2$ n'est donc pas démontrée.

**Pourquoi tout s'écroule.** Une récurrence est une chaîne : on part de $P_1$, puis on va à $P_2$, puis à $P_3$, et ainsi de suite. Ici le tout premier maillon est cassé. Même si le passage de $P_n$ à $P_{n+1}$ est parfaitement valable pour tout $n \geqslant 2$, il ne sert à rien, puisque l'on n'atteint jamais $P_2$.

C'est d'ailleurs cohérent avec la réalité : $P_1$ est vraie et $P_n$ est fausse pour tout $n \geqslant 2$, ce qui est bien compatible avec « $P_n$ entraîne $P_{n+1}$ pour $n \geqslant 2$ », puisque « faux entraîne faux » n'a rien de choquant.

**Conclusion : l'hérédité annoncée « pour tout $n \geqslant 1$ » n'est en fait établie que pour $n \geqslant 2$, car elle utilise en cachette que les deux groupes de $n$ crayons se chevauchent. Le seul maillon manquant, $P_1 \Rightarrow P_2$, suffit à invalider toute la démonstration.**

## Going further

La morale est qu'une hérédité qui s'appuie sur une figure ou sur une phrase du genre « les deux groupes ont un élément en commun » doit être vérifiée aux **petites valeurs**, là où la figure dégénère. C'est là que se cachent presque toutes les fausses récurrences.
