---
id: "0611"
title: "Le triathlon d'Alex"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [multiples, ppcm, calendrier]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 40, d'après une préparation aux olympiades"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Le triathlon comporte trois disciplines sportives : la natation, le vélo et la course à
pied. Alex s'est inscrit à un triathlon. Il décide de s'organiser de la façon suivante :

- une heure de natation tous les $5$ jours ;
- un circuit de $40$ km à vélo tous les $3$ jours ;
- une heure de course à pied tous les $4$ jours.

Le 1er mai, il commence sa préparation en faisant une heure de natation. Le 4 mai il
commence son entraînement de vélo. Le 5 mai il commence son entraînement de course à pied.

a) Quelle(s) discipline(s) va pratiquer Alex le 10 mai ? le 13 mai ? le 15 mai ?

b) À quelle date Alex fera-t-il pour la première fois un entraînement des trois disciplines
dans la même journée ? Expliquez votre raisonnement.

## Hints

1. Numérote les jours à partir du 1er mai : le 1er mai est le jour $1$, le 10 mai est le jour $10$, et ainsi de suite.
2. Écris les trois listes de jours d'entraînement : $1, 6, 11, \ldots$ pour la natation, $4, 7, 10, \ldots$ pour le vélo, $5, 9, 13, \ldots$ pour la course.
3. Pour la question b), les listes sont trop longues à écrire jusqu'au bout. Remarque que les trois listes contiennent toutes le jour $1$ « en pensée » : natation $1, 6, 11, \ldots$, vélo $1, 4, 7, 10, \ldots$, course $1, 5, 9, 13, \ldots$ Que faut-il donc à un jour $j$ pour appartenir aux trois listes ?
4. Il faut que $j - 1$ soit à la fois multiple de $5$, de $3$ et de $4$. N'oublie pas ensuite que mai compte $31$ jours.

## Solution

Numérotons les jours à partir du 1er mai : le 1er mai est le jour $1$, le 2 mai le jour $2$,
etc.

- **Natation** : jours $1, 6, 11, 16, 21, 26, 31, \ldots$ c'est-à-dire les jours $j$ tels que $j - 1$ est un multiple de $5$.
- **Vélo** : jours $4, 7, 10, 13, 16, 19, \ldots$ c'est-à-dire les jours $j \ge 4$ tels que $j - 1$ est un multiple de $3$ (car $4 - 1 = 3$).
- **Course à pied** : jours $5, 9, 13, 17, 21, \ldots$ c'est-à-dire les jours $j \ge 5$ tels que $j - 1$ est un multiple de $4$ (car $5 - 1 = 4$).

**a) Les trois dates demandées.**

*Le 10 mai*, c'est le jour $10$, et $10 - 1 = 9$. Or $9$ est multiple de $3$ mais pas de $5$
ni de $4$. Alex fait donc **uniquement du vélo**.

*Le 13 mai*, c'est le jour $13$, et $13 - 1 = 12$. Or $12$ est multiple de $3$ et de $4$,
mais pas de $5$. Alex fait donc **du vélo et de la course à pied**.

*Le 15 mai*, c'est le jour $15$, et $15 - 1 = 14$. Or $14$ n'est multiple ni de $5$, ni de
$3$, ni de $4$. Alex **ne s'entraîne pas** ce jour-là.

**b) Le premier jour où les trois se rencontrent.**

Pour que les trois disciplines tombent le même jour $j$, il faut que $j - 1$ soit à la fois
multiple de $5$, de $3$ et de $4$. Autrement dit, $j-1$ est un multiple commun de $3$, $4$
et $5$. Comme ces trois nombres n'ont deux à deux aucun diviseur commun autre que $1$, leur
plus petit multiple commun est leur produit :

$$3 \times 4 \times 5 = 60.$$

Les multiples communs sont donc $0, 60, 120, \ldots$, et les jours candidats sont
$j = 1, 61, 121, \ldots$

Le jour $1$ ne convient pas : le 1er mai, Alex nage, mais il n'a pas encore commencé le vélo
(4 mai) ni la course (5 mai). Le premier jour possible est donc le **jour 61**.

Mai compte $31$ jours, donc le jour $31$ est le 31 mai, le jour $32$ est le 1er juin, et le
jour $61$ est le $61 - 31 = 30$ juin.

**Réponse : le 30 juin.**

**Vérification.** Le 30 juin est le jour $61$. Natation : $61 = 1 + 5 \times 12$, c'est bien
un jour de nage. Vélo : $61 = 4 + 3 \times 19$. Course : $61 = 5 + 4 \times 14$. Les trois
tombent bien ensemble.
