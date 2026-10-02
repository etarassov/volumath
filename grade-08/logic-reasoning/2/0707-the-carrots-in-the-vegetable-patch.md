---
id: "0707"
title: "Les carottes du potager"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 51, envoi POFM 2021-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Un fermier cultive des carottes dans un potager qui en contient $33$ au départ.

Certains jours, le fermier ramasse une carotte et en plante sept. D'autres jours, un lapin très maniaque passe et mange exactement quatre carottes.

Est-il possible qu'un jour il ne reste plus aucune carotte dans le potager ?

## Hints

1. Chaque jour, de combien le nombre de carottes change-t-il exactement ? Il n'y a que deux cas.
2. Essaie quelques jours au hasard en partant de $33$ et note les nombres obtenus. Que remarques-tu sur tous ces nombres ?
3. Une quantité qui ne change jamais s'appelle un *invariant*. Ici, ce n'est pas le nombre de carottes qui ne change pas, mais quelque chose à son sujet.

## Solution

**Étape 1. L'effet d'une journée.**

Il y a exactement deux sortes de journées :

- le fermier ramasse une carotte et en plante sept : le nombre de carottes augmente de $-1 + 7 = 6$ ;
- le lapin mange quatre carottes : le nombre de carottes diminue de $4$.

Dans les deux cas, le nombre de carottes change d'une quantité **paire** : $+6$ ou $-4$.

**Étape 2. L'invariant.**

Ajouter ou retirer un nombre pair ne change jamais la parité. Donc, si le nombre de carottes est impair un jour, il est encore impair le lendemain, quoi qu'il arrive.

Au départ, il y a $33$ carottes, et $33$ est impair.

Par conséquent :

> le nombre de carottes du potager est impair tous les jours, du premier au dernier.

**Étape 3. Conclusion.**

S'il ne restait plus aucune carotte, le potager en contiendrait $0$, et $0$ est un nombre pair. C'est impossible.

**Réponse : non, le potager ne peut jamais être vide de carottes.**

## Going further

Essayons de voir jusqu'où on peut descendre. En partant de $33$ et en laissant le lapin manger huit fois de suite, on obtient $33 - 32 = 1$ carotte. On ne peut pas faire mieux : on ne descend jamais en dessous de $1$, puisque le nombre reste impair et positif.

En revanche, avec $34$ carottes au départ, tout change : le nombre reste alors toujours pair et le potager peut effectivement se vider.
