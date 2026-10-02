---
id: "0209"
title: "Le point rouge et les polygones"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [paires, polygone, cercle, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 26, задача 7 (p. 71)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Sur un cercle, on a marqué $2000$ points bleus et un point rouge.

On s'intéresse à tous les polygones convexes dont les sommets sont choisis parmi ces points marqués.

Y a-t-il plus de polygones ayant le point rouge pour sommet, ou plus de polygones dont tous les sommets sont bleus ?

## Hints

1. Choisis quelques points marqués sur le cercle, disons cinq. Combien de polygones convexes ont exactement ces cinq points pour sommets ?
2. Compter les polygones revient donc à compter des paquets de points. Essaie de former des paires : à chaque polygone tout bleu, associe un polygone contenant le point rouge.
3. L'association la plus simple : ajouter le point rouge aux sommets. Donne-t-elle toujours un polygone ?
4. Dans l'autre sens : retire le point rouge des sommets d'un polygone qui le contient. Obtient-on toujours un polygone ?
5. Combien de sommets faut-il au minimum pour faire un polygone ?

## Solution

**Étape 1. Un polygone convexe est entièrement décidé par ses sommets.**

Si on choisit au moins trois des points marqués sur le cercle, il existe exactement un polygone convexe ayant ces points pour sommets : il suffit de les relier dans l'ordre où ils se présentent le long du cercle. Deux choix de points différents donnent deux polygones différents.

Compter les polygones revient donc à compter les paquets d'au moins trois points marqués. C'est ce qui rend la mise en paires possible.

**Étape 2. Donner un partenaire à chaque polygone tout bleu.**

À un polygone dont tous les sommets sont bleus, associons le polygone obtenu en **ajoutant le point rouge** à ses sommets.

- Si le polygone bleu avait $k$ sommets (avec $k \geqslant 3$), le nouveau en a $k+1$, donc au moins $4$ : c'est bien un polygone, et il a le point rouge pour sommet.
- Deux polygones bleus différents n'ont pas les mêmes sommets bleus, donc leurs partenaires sont différents.

Chaque polygone tout bleu a donc son partenaire, et deux polygones bleus ne se partagent jamais le même.

**Étape 3. Chercher qui reste sans partenaire.**

Prenons maintenant un polygone ayant le point rouge pour sommet, et essayons de remonter à son partenaire bleu : il faut lui **retirer** le point rouge.

- S'il a au moins $4$ sommets, il reste au moins $3$ points bleus, donc un vrai polygone bleu : ce polygone-là a bien un partenaire.
- Mais s'il n'a que $3$ sommets, c'est un triangle formé du point rouge et de deux points bleus. En retirant le point rouge, il ne reste que deux points bleus, et deux points ne forment aucun polygone. **Ces triangles n'ont pas de partenaire bleu.**

Et de tels triangles, il y en a beaucoup : on en obtient un en choisissant n'importe quels deux points bleus parmi les $2000$.

**Conclusion.**

Tous les polygones bleus sont appariés à des polygones rouges, mais il reste des polygones rouges non appariés, à savoir tous les triangles ayant le point rouge pour sommet. Il y a donc **plus de polygones ayant le point rouge pour sommet** que de polygones entièrement bleus.

## Going further

1. De combien exactement la famille des polygones ayant le point rouge pour sommet dépasse-t-elle l'autre ?
2. Combien y a-t-il de triangles ayant le point rouge pour sommet ? (Il faut choisir deux points bleus parmi $2000$, sans tenir compte de l'ordre.)
3. Reprends tout le raisonnement avec $2000$ points bleus et **deux** points rouges : y a-t-il plus de polygones ayant au moins un sommet rouge, ou plus de polygones entièrement bleus ?
