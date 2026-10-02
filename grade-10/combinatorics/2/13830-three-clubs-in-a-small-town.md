---
id: "13830"
title: "Trois clubs dans un village"
grade: 10
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [ensembles, denombrement, mise en equation, diagramme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 14 ; corrigé dans le même fichier, solution 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Un village compte $280$ habitants, et chacun d'eux est inscrit à au moins un des trois clubs
du village : le club de belote, le club d'échecs et le club de maths.

- Le club de belote compte $130$ membres, celui d'échecs $180$ et celui de maths $200$.
- $90$ personnes sont inscrites à la fois aux échecs et à la belote.
- $100$ personnes sont inscrites à la fois aux maths et à la belote.
- $110$ personnes sont inscrites à la fois aux échecs et aux maths.

Combien de personnes sont inscrites aux trois clubs à la fois ?

## Hints

1. Dessine trois cercles qui se chevauchent, un par club. Ils délimitent $7$ zones.
2. Appelle $x$ le nombre de personnes inscrites aux trois clubs. Combien de personnes sont
   inscrites aux échecs et à la belote, mais pas aux maths ?
3. Exprime le nombre de personnes de chacune des $7$ zones en fonction de $x$, puis utilise le
   fait que le village compte $280$ habitants.

## Solution

Représentons chaque club par un cercle. Les trois cercles se chevauchent et délimitent $7$
zones : les inscrits à un seul club (trois zones), les inscrits à exactement deux clubs (trois
zones), et les inscrits aux trois clubs. Comme tout habitant est inscrit à au moins un club,
chaque habitant est dans exactement une de ces $7$ zones.

Notons $x$ le nombre de personnes inscrites aux trois clubs.

**Exactement deux clubs.** Les $90$ inscrits aux échecs et à la belote comprennent les $x$
inscrits aux trois clubs. Il y a donc $90 - x$ personnes inscrites aux échecs et à la belote
mais pas aux maths. De même, $100 - x$ personnes sont inscrites aux maths et à la belote
seulement, et $110 - x$ aux échecs et aux maths seulement.

**Un seul club.** Les $130$ membres du club de belote se répartissent en quatre zones : la
belote seule, la belote avec les échecs seulement, la belote avec les maths seulement, et les
trois clubs. Le nombre d'inscrits à la belote seule vaut donc

$$130 - (90 - x) - (100 - x) - x = x - 60.$$

De même, les inscrits aux échecs seuls sont $180 - (90 - x) - (110 - x) - x = x - 20$, et les
inscrits aux maths seules sont $200 - (100 - x) - (110 - x) - x = x - 10$.

**On compte les habitants.** En additionnant les $7$ zones, on doit trouver $280$ :

$$(x - 60) + (x - 20) + (x - 10) + (90 - x) + (100 - x) + (110 - x) + x = 280.$$

Les termes en $x$ donnent $x$ en tout, et les nombres donnent $-90 + 300 = 210$. L'équation
s'écrit $x + 210 = 280$, d'où $x = 70$.

**On vérifie.** Les sept zones contiennent alors $10$, $50$, $60$, $20$, $30$, $40$ et $70$
personnes. Tous ces nombres sont positifs, et leur somme vaut bien $280$.

**$70$ personnes sont inscrites aux trois clubs.**

## Going further

Le calcul revient à la formule
$\text{total} = (130 + 180 + 200) - (90 + 100 + 110) + x$ : on ajoute les clubs, on retire les
paires, qu'on a comptées deux fois, et on rajoute les inscrits aux trois clubs, qu'on a
ajoutés trois fois puis retirés trois fois. C'est la formule du crible pour trois ensembles.
