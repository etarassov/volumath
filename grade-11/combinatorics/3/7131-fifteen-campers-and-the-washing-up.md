---
id: "7131"
title: "Quinze participants et la corvée de vaisselle"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, paires, coefficients-binomiaux]
adapted_from: null
see_also: []
same_as: ["13048"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : combinatoire », mercredi matin (Irène Marcovici), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Une colonie de vacances rassemble quinze participants. Chaque jour, trois d'entre eux sont
choisis pour faire la vaisselle.

À la fin du séjour, on constate que, quelle que soit la façon de choisir deux participants,
il y a eu **exactement une** journée où tous les deux étaient de corvée ensemble.

Combien de jours a duré la colonie de vacances ?

## Hints

1. L'hypothèse porte sur les **paires** de participants. Compte donc des paires.
2. Combien de paires peut-on former avec quinze participants ?
3. Une journée de corvée met trois personnes ensemble. Combien de paires cette journée
   fait-elle apparaître ?
4. Chaque paire apparaît exactement une fois dans toute la colonie. Que donne l'égalité des
   deux comptages ?

## Solution

Notons $d$ le nombre de jours du séjour.

Comptons de deux façons l'ensemble des couples

$$\big(\{x, y\}, \ j\big)$$

où $\{x, y\}$ est une paire de participants et $j$ une journée où $x$ et $y$ étaient tous
les deux de corvée.

**Premier comptage : par paire de participants.** Le nombre de paires de participants vaut

$$\binom{15}{2} = \frac{15 \times 14}{2} = 105 .$$

Par hypothèse, chaque paire correspond à exactement une journée. Le nombre de couples vaut
donc $105$.

**Deuxième comptage : par journée.** Chaque journée met trois participants de corvée, ce qui
fait

$$\binom{3}{2} = 3$$

paires pour cette journée. Comme il y a $d$ journées, le nombre de couples vaut $3d$.

**On égale.**

$$3d = 105, \qquad \text{donc} \qquad d = 35 .$$

**Conclusion.** La colonie a duré $\boxed{35}$ jours.

## Going further

Le raisonnement donne le nombre de jours **si** une telle organisation existe. Il ne dit pas
qu'elle existe. Cette question-là est autrement plus difficile, et la réponse est oui : une
telle répartition s'appelle un **système triple de Steiner** sur $15$ points, et on sait en
construire.

Elle a une histoire. En 1850, le révérend Thomas Kirkman posa le problème sous la forme
suivante, resté célèbre sous le nom de **problème des quinze écolières** : quinze écolières
se promènent en rangs de trois, sept jours de suite ; peut-on organiser les promenades pour
que deux écolières quelconques se retrouvent exactement une fois dans le même rang ? La
réponse est oui, et l'on voit sur notre comptage que cela colle : $7$ jours $\times$ $5$ rangs
de trois $= 35$ rangs, exactement le nombre trouvé ici.
