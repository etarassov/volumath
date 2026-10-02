---
id: "11435"
title: "Dix bateaux qui font demi-tour"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [rencontres, mouvement, astuce, invariant]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Juniors, exercice 2 ; corrigé 2023-03_corrige-envoi-4.pdf ; l'énoncé est précisé comme le demande le commentaire des correcteurs (tous les bateaux sont en mer à un même moment)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Une ligne maritime relie un port Ouest à un port Est, en ligne droite. Un matin, $10$ bateaux
partent, chacun à un moment différent : $5$ partent du port Ouest vers l'Est, et $5$ partent du port
Est vers l'Ouest.

Tous les bateaux naviguent à la même vitesse, qui ne change jamais. Dès que deux bateaux se
rencontrent, ils font tous les deux demi-tour et repartent dans l'autre sens, toujours à la même
vitesse. Un bateau qui arrive à un port s'y arrête.

On suppose qu'à un certain moment de la matinée, les $10$ bateaux sont tous en mer en même temps.

Combien de rencontres entre bateaux peut-il y avoir ? Trouver **tous** les nombres possibles.

## Hints

1. Essaie avec un seul bateau de chaque côté, puis avec deux de chaque côté. Le nombre de rencontres
   semble-t-il dépendre des heures de départ ?
2. Vu de loin, d'un avion, peux-tu faire la différence entre « deux bateaux se rencontrent et font
   demi-tour » et « deux bateaux se croisent et continuent tout droit » ?
3. Imagine des bateaux fantômes qui ne font jamais demi-tour. Combien de fois un fantôme parti de
   l'Ouest croise-t-il un fantôme parti de l'Est ?

## Solution

**Les bateaux fantômes.** Imaginons, à côté des vrais bateaux, $10$ bateaux fantômes qui partent aux
mêmes moments et des mêmes ports, mais qui **ne font jamais demi-tour** : quand deux fantômes se
rencontrent, ils passent l'un à travers l'autre et continuent tout droit.

Regardons une rencontre entre deux vrais bateaux. Juste avant, l'un est à gauche et va vers la
droite, l'autre est à droite et va vers la gauche. Juste après, il y a encore un bateau qui va vers
la droite et un bateau qui va vers la gauche, aux mêmes endroits. Seuls les noms des bateaux ont été
échangés. Vu d'avion, sans lire les noms, une rencontre avec demi-tour ressemble exactement à un
croisement.

Donc, à chaque instant, les positions des vrais bateaux sont exactement les positions des fantômes,
et chaque rencontre entre vrais bateaux a lieu au même endroit et au même moment qu'un croisement
entre deux fantômes. Il y a donc **autant de rencontres que de croisements de fantômes**.

**Compter les croisements.** Deux fantômes partis du même port ne se croisent jamais : ils vont dans
le même sens à la même vitesse, donc l'écart entre eux reste toujours le même. Ce n'est pas zéro,
car ils sont partis à des moments différents.

Prenons maintenant un fantôme $W$ parti de l'Ouest et un fantôme $E$ parti de l'Est. Au moment où les
$10$ bateaux sont tous en mer, les $10$ fantômes sont tous en mer aussi, puisqu'ils occupent les
mêmes positions.

- Avant ce moment, $W$ et $E$ n'ont pu se croiser qu'une fois au plus : ils vont l'un vers l'autre,
  et une fois croisés, ils s'éloignent pour toujours.
- Si à ce moment $W$ est encore à l'ouest de $E$, ils vont l'un vers l'autre et se croiseront avant
  que l'un d'eux n'arrive au bout de la ligne : $W$ doit passer par la position de $E$ pour atteindre
  le port Est.
- Si $W$ est déjà à l'est de $E$, c'est qu'ils se sont déjà croisés, car au départ de chacun, $W$
  était à l'ouest de $E$.

Dans tous les cas, $W$ et $E$ se croisent **exactement une fois**. Il y a $5$ fantômes partis de
l'Ouest et $5$ partis de l'Est, donc $5 \times 5 = 25$ croisements.

Enfin, deux croisements ne peuvent pas avoir lieu au même endroit au même moment : il faudrait deux
fantômes partis de l'Ouest au même endroit en même temps, or ils restent toujours à la même distance
l'un de l'autre. Chaque croisement correspond donc à une rencontre de deux bateaux exactement.

**Conclusion.** Quels que soient les moments de départ, il y a toujours exactement
$\boxed{25}$ rencontres. C'est le seul nombre possible.

## Going further

Sans l'hypothèse « à un certain moment, les $10$ bateaux sont tous en mer », la réponse change.

Notons $D$ la durée d'une traversée complète. Les fantômes montrent qu'un fantôme $W$ parti de
l'Ouest et un fantôme $E$ parti de l'Est se croisent exactement quand leurs départs sont séparés de
moins de $D$. On peut alors obtenir **tous** les nombres de rencontres de $0$ à $25$.

Faisons partir les $5$ bateaux de l'Ouest presque ensemble, à quelques secondes d'écart. Un bateau
de l'Est qui part juste après eux les croisera tous les $5$. S'il part juste après l'arrivée du
premier d'entre eux au port Est, il n'en croisera que $4$, et ainsi de suite jusqu'à $0$ s'il part
après l'arrivée du dernier. Chacun des $5$ bateaux de l'Est peut donc compter pour $0$, $1$, $2$,
$3$, $4$ ou $5$ rencontres, au choix, et en additionnant on obtient n'importe quel total de $0$ à
$25$.
