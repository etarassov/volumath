---
id: "2215"
title: "Deux côtés imposés, l'aire la plus grande"
grade: 11
theme: geometry
difficulty: 3
duration_min: 25
tags: [trigonometrie, aire, optimisation, sinus]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Trigonometry #2"
  reference: "Handout-836-920.pdf, problèmes 11 et 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-836-920.pdf"
---

## Statement

Un éleveur dispose de deux longueurs de clôture, l'une de $20$ mètres et l'autre de $30$ mètres. Il veut les utiliser comme deux côtés d'un enclos **triangulaire**, le troisième côté étant un mur déjà existant, qu'il peut placer où il veut.

1. Montrer que l'aire de l'enclos ne dépend que de l'angle $\gamma$ entre les deux longueurs de clôture, et donner cette aire en fonction de $\gamma$.
2. Quel angle l'éleveur doit-il choisir pour que l'enclos ait la plus grande aire possible ? Combien vaut alors cette aire ?
3. Le terrain impose en réalité que l'angle $\gamma$ ne dépasse pas $50°$. Quelle est alors la plus grande aire possible ? Donner une valeur approchée au mètre carré près.

## Hints

1. Il existe une formule qui donne l'aire d'un triangle à partir de deux côtés et de l'angle **entre** ces deux côtés.
2. Trace la hauteur issue de l'extrémité d'un des deux côtés et exprime sa longueur avec un sinus.
3. Dans la formule obtenue, qu'est-ce qui varie et qu'est-ce qui est fixé ? Quelle est la plus grande valeur que puisse prendre un sinus ?
4. Pour la question 3, la fonction sinus est croissante sur $[0° \,;\, 90°]$. Si l'on ne peut plus atteindre $90°$, où se place le maximum ?

## Solution

Notons $a = 20$ et $b = 30$ les deux longueurs de clôture, et $\gamma$ l'angle qu'elles forment, avec $0° < \gamma < 180°$.

**1. L'aire en fonction de l'angle.**

Plaçons le sommet commun des deux clôtures en $C$, les deux autres sommets en $A$ et $B$, de sorte que $CB = a$ et $CA = b$. Prenons $[CB]$ comme base et traçons la hauteur issue de $A$ ; notons $H$ son pied sur la droite $(CB)$.

Dans le triangle $ACH$, rectangle en $H$, le côté $[AH]$ est opposé à l'angle en $C$ et l'hypoténuse $[CA]$ mesure $b$ :

$$AH = b\,\sin\gamma$$

(si $\gamma$ est obtus, $H$ tombe de l'autre côté de $C$ et l'angle du triangle rectangle vaut $180° - \gamma$, mais $\sin(180° - \gamma) = \sin\gamma$, donc la formule reste la même).

L'aire vaut donc

$$S(\gamma) = \frac{1}{2} \times CB \times AH = \frac{1}{2}\,a\,b\,\sin\gamma = \frac{1}{2} \times 20 \times 30 \times \sin\gamma = 300\,\sin\gamma .$$

Elle ne dépend bien que de $\gamma$.

**2. Le maximum.**

Les deux longueurs $a$ et $b$ sont fixées. La seule quantité qui varie est $\sin\gamma$. Or, pour tout angle,

$$\sin\gamma \leqslant 1,$$

avec égalité si et seulement si $\gamma = 90°$ (c'est la seule valeur entre $0°$ et $180°$ dont le sinus vaut $1$).

Donc

$$S(\gamma) \leqslant 300, \qquad \text{et } S(\gamma) = 300 \text{ exactement lorsque } \gamma = 90°.$$

**Conclusion.** L'éleveur doit placer les deux clôtures **perpendiculairement** l'une à l'autre. L'enclos est alors un triangle rectangle de côtés de l'angle droit $20$ m et $30$ m, et son aire vaut $300$ mètres carrés.

**3. Avec la contrainte $\gamma \leqslant 50°$.**

La fonction sinus est **strictement croissante** sur l'intervalle $[0°\,;\,90°]$. Comme $\gamma$ est maintenant contraint à l'intervalle $]0°\,;\,50°]$, entièrement contenu dans $[0°\,;\,90°]$, la plus grande valeur de $\sin\gamma$ est atteinte au bout de l'intervalle, en $\gamma = 50°$ :

$$S_{\max} = 300 \sin 50° .$$

Avec $\sin 50° \approx \text{0,766}$ :

$$S_{\max} \approx 300 \times \text{0,766} \approx 230 \text{ m}^2 .$$

**Conclusion.** L'éleveur doit ouvrir l'angle au maximum autorisé, soit $50°$, et il obtient environ $230$ mètres carrés, contre $300$ s'il avait pu aller jusqu'à l'angle droit.

**Ce qu'il faut retenir.** La formule $S = \frac12 ab\sin\gamma$ sépare nettement ce qui est imposé ($a$ et $b$) de ce qui est libre ($\gamma$). Le problème d'optimisation se réduit alors à une seule question : quelle est la plus grande valeur d'un sinus sur l'intervalle autorisé ?

## Going further

1. Le mur (le troisième côté) mesure alors combien de mètres, dans le cas optimal de la question 2 ?
2. Si l'éleveur avait $50$ mètres de clôture en tout, libre de les couper où il veut pour faire les deux côtés, quelle serait la plus grande aire possible ? (Indication : poser $a$ et $50 - a$, et maximiser $\frac12 a(50-a)$.)
3. Même question avec un enclos **rectangulaire** de $50$ mètres de clôture pour trois côtés, le quatrième étant le mur.
