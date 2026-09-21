---
id: "7743"
title: "Sept droites et un angle inférieur à 26 degrés"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [principe des tiroirs, angles, droites, translation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 après-midi (Margaret Bilu), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On trace sept droites dans le plan, deux quelconques d'entre elles n'étant jamais parallèles.

Montrer qu'il en existe deux dont l'angle est inférieur ou égal à $26^\circ$.

*L'angle entre deux droites sécantes est le plus petit des quatre angles qu'elles forment ; il est donc compris entre $0^\circ$ et $90^\circ$.*

## Hints

1. L'angle entre deux droites ne dépend que de leurs directions, pas de leur position. Peux-tu ramener toutes les droites au même endroit sans changer les angles ?
2. Fais passer les sept droites par un même point $O$, en les faisant glisser parallèlement à elles-mêmes.
3. Les sept droites partagent maintenant un demi-tour autour de $O$ en un certain nombre de secteurs. Combien, et que vaut la somme de leurs angles ?
4. Sept angles dont la somme vaut $180^\circ$ : que peux-tu dire du plus petit ?

## Solution

**L'idée : ramener les sept droites au même point, où elles découpent un demi-tour en sept morceaux.**

**Étape 1 : on translate.** L'angle entre deux droites ne dépend que de leurs directions. Faisons donc glisser chacune des sept droites parallèlement à elle-même jusqu'à ce qu'elle passe par un même point $O$. Les angles entre droites sont inchangés.

Comme deux droites de départ ne sont jamais parallèles, leurs directions sont deux à deux différentes : on obtient bien **sept droites distinctes** passant par $O$.

**Étape 2 : on découpe un demi-tour.** Chacune des sept droites détermine une direction. Prenons un demi-tour autour de $O$, c'est-à-dire un angle plat de $180^\circ$, et repérons-y les sept directions. Comme les directions sont distinctes, les sept droites découpent ce demi-tour en **sept secteurs** consécutifs, dont les angles $\theta_1, \theta_2, \ldots, \theta_7$ vérifient

$$\theta_1 + \theta_2 + \cdots + \theta_7 = 180^\circ .$$

**Étape 3 : le plus petit secteur.** Si les sept angles étaient tous strictement supérieurs à $\dfrac{180}{7}$ degrés, leur somme dépasserait strictement

$$7 \times \frac{180}{7} = 180^\circ ,$$

ce qui est impossible. L'un des sept angles vérifie donc

$$\theta_i \leqslant \frac{180}{7} \approx \text{25,72} \text{ degrés} .$$

**Étape 4 : on conclut.** Ce secteur est délimité par deux des sept droites, et l'angle entre elles vaut exactement $\theta_i$ (c'est bien le plus petit des quatre angles qu'elles forment, puisque $\theta_i \leqslant \text{25,72}^\circ < 90^\circ$).

Comme $\dfrac{180}{7} < 26$, ces deux droites forment un angle inférieur ou égal à $26^\circ$.

**Conclusion : parmi sept droites deux à deux non parallèles, il en existe toujours deux dont l'angle est inférieur ou égal à $26^\circ$.**

## Going further

Le raisonnement donne en fait la borne exacte $\dfrac{180}{7}$ degrés, soit environ $\text{25,72}^\circ$, et cette borne est atteinte : il suffit de prendre sept droites dont les directions sont régulièrement réparties, séparées d'exactement $\dfrac{180}{7}$ degrés.

Avec $n$ droites deux à deux non parallèles, le même raisonnement donne deux droites formant un angle au plus $\dfrac{180}{n}$ degrés. Plus il y a de droites, plus deux d'entre elles sont forcément presque parallèles.
