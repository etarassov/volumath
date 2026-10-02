---
id: "0653"
title: "Sept cent trente-trois élèves"
grade: 8
theme: logic-reasoning
difficulty: 1
duration_min: 10
tags: [principe-des-tiroirs, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle », section « Principe des tiroirs »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 35"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Dans une école il y a $733$ élèves. Démontrez qu'il y a au moins $3$ élèves nés le même jour de l'année.

## Hints

1. Combien y a-t-il de jours possibles dans une année ? N'oublie pas le 29 février.
2. Imagine un tiroir par jour de l'année, et range chaque élève dans le tiroir de sa date de naissance. Combien d'élèves au maximum si aucun tiroir n'en contient $3$ ?

## Solution

Une année compte au plus $366$ jours (en comptant le 29 février).

Préparons un tiroir pour chaque jour de l'année, soit $366$ tiroirs, et rangeons chaque élève dans le tiroir correspondant à son jour de naissance.

Supposons que la conclusion soit fausse : aucun jour n'est le jour de naissance de $3$ élèves ou plus. Alors chaque tiroir contient au plus $2$ élèves, et le nombre total d'élèves est au plus

$$366 \times 2 = 732.$$

Or l'école compte $733$ élèves, et $733 > 732$ : c'est impossible.

**Il y a donc au moins un jour de l'année qui est le jour de naissance d'au moins $3$ élèves.**

## Going further

Avec $732$ élèves la conclusion tombe : on peut imaginer une école où chaque jour de l'année est le jour de naissance d'exactement $2$ élèves. Le nombre $733$ est donc le plus petit qui force trois élèves à partager leur jour de naissance.
