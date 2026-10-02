---
id: "0763"
title: "Le périmètre du trapèze isocèle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [pythagore, trapeze, hauteur, perimetre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 36 (section « Théorème de Pythagore »)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Dans un trapèze isocèle, les deux bases ont pour longueurs $11$ et $21$, et la diagonale mesure $20$.

Quel est le périmètre de ce trapèze ?

## Hints

1. Fais une grande figure. Appelle $ABCD$ le trapèze, avec $AB = 21$ la grande base, $DC = 11$ la petite base, et $AD = BC$ les deux côtés obliques (c'est ce que veut dire « isocèle »).
2. Il n'y a pour l'instant aucun angle droit sur la figure : il faut en fabriquer. Abaisse les perpendiculaires à $(AB)$ passant par $D$ et par $C$, et appelle $H$ et $K$ leurs pieds.
3. Le trapèze est isocèle, donc la figure est symétrique : les deux petits morceaux $AH$ et $KB$ ont la même longueur. Comme $HK = DC = 11$ et $AB = 21$, tu peux calculer $AH$.
4. Applique Pythagore une première fois dans le triangle $AKC$ (tu connais $AK$ et $AC$) pour trouver la hauteur, puis une seconde fois dans le triangle $AHD$ pour trouver le côté oblique.

## Solution

**La figure et les notations.** Notons $ABCD$ le trapèze, avec

$$AB = 21 \quad (\text{grande base}), \qquad DC = 11 \quad (\text{petite base}), \qquad AD = BC \quad (\text{trapèze isocèle}).$$

Soient $H$ le pied de la perpendiculaire à $(AB)$ passant par $D$, et $K$ le pied de la perpendiculaire à $(AB)$ passant par $C$. Alors $DHKC$ est un rectangle, donc

$$HK = DC = 11 \qquad \text{et} \qquad DH = CK = h,$$

où $h$ est la hauteur du trapèze.

*Remarque : dans un trapèze isocèle, les deux diagonales ont la même longueur, donc l'énoncé n'est pas ambigu lorsqu'il parle de « la » diagonale. Prenons $AC = 20$.*

**Les deux petits morceaux de la grande base.** Par symétrie, $AH = KB$. Or

$$AH + HK + KB = AB = 21 \qquad \text{donc} \qquad AH + 11 + AH = 21,$$

d'où $2\,AH = 10$ et

$$AH = KB = 5.$$

**Première application de Pythagore : la hauteur.** Le triangle $AKC$ est rectangle en $K$, avec

$$AK = AH + HK = 5 + 11 = 16 \qquad \text{et} \qquad AC = 20.$$

Donc

$$AK^2 + KC^2 = AC^2, \qquad 16^2 + h^2 = 20^2, \qquad 256 + h^2 = 400,$$

d'où $h^2 = 144$ et

$$h = 12.$$

**Seconde application de Pythagore : le côté oblique.** Le triangle $AHD$ est rectangle en $H$, avec $AH = 5$ et $DH = h = 12$ :

$$AD^2 = 5^2 + 12^2 = 25 + 144 = 169, \qquad \text{donc} \qquad AD = 13.$$

Et comme le trapèze est isocèle, $BC = AD = 13$.

**Le périmètre.**

$$P = AB + BC + CD + DA = 21 + 13 + 11 + 13 = 58.$$

**Vérification.** Avec une hauteur de $12$ et un décalage de $5$ de chaque côté, les quatre longueurs $21$, $11$, $13$, $13$ dessinent bien un trapèze isocèle, et sa diagonale mesure $\sqrt{16^2 + 12^2} = \sqrt{400} = 20$, comme demandé.

**Réponse.** Le périmètre du trapèze vaut $58$.
