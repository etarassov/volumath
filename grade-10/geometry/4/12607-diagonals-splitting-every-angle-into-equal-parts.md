---
id: "12607"
title: "Des diagonales qui partagent chaque angle en parts égales"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [polygones, angles, polygone-regulier, extremal, triangle-isocele]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 4 (junior) et exercice 5 (senior), le même énoncé ; corrigé 2021-01_Corrige-Test-2.pdf. Le corrigé signale que le problème vient des Olympiades académiques de première 2003 (Versailles)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

Soit $P_1 P_2 \ldots P_{2021}$ un polygone convexe à $2021$ sommets. On suppose que, pour chaque
sommet $P_i$, les $2018$ diagonales issues de $P_i$ partagent l'angle du polygone en $P_i$ en
$2019$ angles égaux.

Démontrer que $P_1 P_2 \ldots P_{2021}$ est un polygone régulier, c'est-à-dire que tous ses
angles ont la même mesure et que tous ses côtés ont la même longueur.

## Hints

1. Note $\alpha_i$ la mesure de chacun des $2019$ petits angles au sommet $P_i$ : l'angle du
   polygone en $P_i$ vaut $2019\,\alpha_i$.
2. Regarde le triangle formé par trois sommets consécutifs $P_i$, $P_{i+1}$, $P_{i+2}$. Que
   valent ses trois angles ? Écris que leur somme vaut $180°$.
3. Écris la même égalité pour le triangle suivant et soustrais. Pose $d_i = \alpha_{i+1} - \alpha_i$.
4. Choisis l'indice pour lequel $|d_i|$ est le plus grand possible. Que donne l'égalité trouvée
   à l'indication 3 ?
5. Une fois les angles égaux, regarde à nouveau le triangle $P_i P_{i+1} P_{i+2}$ : quelle est
   sa nature ?

## Solution

On numérote les sommets « en rond » : $P_{2022}$ désigne $P_1$, $P_{2023}$ désigne $P_2$, et
ainsi de suite. De même pour les nombres $\alpha_i$ ci-dessous.

Au sommet $P_i$, les $2018$ diagonales partagent l'angle du polygone en $2019$ angles égaux ;
on note $\alpha_i$ leur mesure commune. L'angle du polygone en $P_i$ vaut donc $2019\,\alpha_i$.

### Une égalité pour trois sommets consécutifs

Considérons le triangle $P_i P_{i+1} P_{i+2}$.

- En $P_{i+1}$, son angle est l'angle entier du polygone : $2019\,\alpha_{i+1}$.
- En $P_i$, son angle est compris entre le côté $[P_i P_{i+1}]$ et la diagonale
  $[P_i P_{i+2}]$, qui est la diagonale voisine de ce côté. Comme le polygone est convexe, c'est
  exactement l'un des petits angles : il vaut $\alpha_i$.
- De même, en $P_{i+2}$, son angle vaut $\alpha_{i+2}$.

La somme des angles d'un triangle vaut $180°$, donc pour tout $i$ :
$$\alpha_i + 2019\,\alpha_{i+1} + \alpha_{i+2} = 180° .$$

### Les angles sont tous égaux

Écrivons cette égalité pour $i$ et pour $i + 1$, et soustrayons :
$$(\alpha_{i+1} - \alpha_i) + 2019\,(\alpha_{i+2} - \alpha_{i+1}) + (\alpha_{i+3} - \alpha_{i+2}) = 0 .$$
Avec $d_i = \alpha_{i+1} - \alpha_i$, cela s'écrit, pour tout $i$ :
$$d_i + 2019\, d_{i+1} + d_{i+2} = 0, \qquad \text{donc} \qquad 2019\, d_{i+1} = -(d_i + d_{i+2}) .$$

Il n'y a que $2021$ nombres $d_i$ différents (ils se répètent en rond). Soit $M$ la plus grande
des valeurs $|d_i|$, et choisissons $j$ tel que $|d_{j+1}| = M$. L'égalité ci-dessus donne
$$2019\, M = |d_j + d_{j+2}| \leqslant |d_j| + |d_{j+2}| \leqslant M + M = 2M .$$
Donc $2017\, M \leqslant 0$, et comme $M \geqslant 0$, on a $M = 0$.

Tous les $d_i$ sont nuls : $\alpha_1 = \alpha_2 = \cdots = \alpha_{2021}$. Notons $\alpha$
cette valeur commune. Tous les angles du polygone valent $2019\,\alpha$ : **ils sont égaux**.

### Les côtés sont tous égaux

Revenons au triangle $P_i P_{i+1} P_{i+2}$. Ses angles en $P_i$ et en $P_{i+2}$ valent tous les
deux $\alpha$ : il est isocèle en $P_{i+1}$. Donc
$$P_{i+1} P_i = P_{i+1} P_{i+2} .$$
Deux côtés consécutifs ont toujours la même longueur. De proche en proche,
$P_1 P_2 = P_2 P_3 = \cdots = P_{2021} P_1$ : **les côtés sont égaux**.

### Conclusion

**Le polygone $P_1 P_2 \ldots P_{2021}$ a tous ses angles égaux et tous ses côtés égaux : il est
régulier.**

## Going further

- Le nombre $2021$ ne joue aucun rôle : le même raisonnement marche pour un polygone convexe à
  $m \geqslant 5$ sommets dont les diagonales partagent chaque angle en $m - 2$ parts égales,
  car il faut seulement $m - 2 > 2$. Pour un quadrilatère ($m = 4$), le raisonnement ne conclut
  plus. Montrer qu'un losange qui n'est pas un carré a des diagonales qui partagent chaque angle
  en deux parts égales, sans être un polygone régulier.
- On peut aussi calculer $\alpha$ : la somme des angles d'un polygone convexe à $2021$ sommets
  vaut $2019 \times 180°$, donc $2021 \times 2019\,\alpha = 2019 \times 180°$, soit
  $\alpha = \dfrac{180°}{2021}$. Vérifie que l'égalité $\alpha + 2019\,\alpha + \alpha = 180°$
  est bien satisfaite.
