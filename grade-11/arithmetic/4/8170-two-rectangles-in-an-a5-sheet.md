---
id: "8170"
title: "Deux rectangles dans une feuille A5"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [triplet-pythagoricien, perimetre, aire, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 116 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil. L'énoncé d'origine demande « combien mesure le périmètre de ces rectangles ? », comme si la réponse était unique ; il y a en fait cinq solutions. La question a été reformulée."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Une feuille de format A5 mesure $\text{14,8}$ cm sur $21$ cm.

Mathilde y a découpé deux rectangles dont tous les côtés mesurent un nombre entier de centimètres. Ces deux rectangles ont le même périmètre, mais l'aire du second est le double de celle du premier.

Quels sont les périmètres possibles ?

## Hints

1. Note $a \times b$ le premier rectangle et $c \times d$ le second. Traduis les deux conditions. Note $s = a+b = c+d$ : le périmètre vaut $2s$.
2. Pour un rectangle de demi-périmètre $s$ et d'aire $\mathcal{A}$, que vaut $(\text{grand côté} - \text{petit côté})^2$ en fonction de $s$ et $\mathcal{A}$ ?
3. Note $p$ la différence des côtés du premier rectangle et $q$ celle du second. Tu devrais obtenir $s^2 + q^2 = 2p^2$.
4. Cette égalité se réécrit joliment : $\left(\dfrac{s+q}{2}\right)^2 + \left(\dfrac{s-q}{2}\right)^2 = p^2$. Que reconnais-tu ? Et que valent $\dfrac{s+q}{2}$ et $\dfrac{s-q}{2}$ ?
5. Il ne reste qu'à lister les triangles rectangles à côtés entiers dont les deux côtés de l'angle droit tiennent dans la feuille, et à vérifier que le premier rectangle y tient aussi.

## Solution

Notons $a \times b$ le premier rectangle et $c \times d$ le second, avec $a \leqslant b$ et $c \leqslant d$, tous entiers. Les conditions sont

$$a + b = c + d = s \qquad \text{et} \qquad cd = 2ab .$$

Le périmètre commun vaut $2s$. Comme chaque rectangle doit tenir dans la feuille, chaque côté est au plus $21$ et le plus petit côté de chaque rectangle est au plus $14$ (puisqu'il est entier et inférieur à $\text{14,8}$).

**Étape 1 : une équation entre trois entiers.**

Posons $p = b - a$ et $q = d - c$. Alors

$$p^2 = (b-a)^2 = (a+b)^2 - 4ab = s^2 - 4ab, \qquad q^2 = (d-c)^2 = s^2 - 4cd = s^2 - 8ab .$$

De la première égalité on tire $4ab = s^2 - p^2$, que l'on reporte dans la seconde :

$$q^2 = s^2 - 2\left(s^2 - p^2\right) = 2p^2 - s^2 ,$$

autrement dit

$$s^2 + q^2 = 2p^2 .$$

**Étape 2 : un triangle rectangle apparaît.**

Comme $s^2 + q^2 = 2p^2$ est pair, $s$ et $q$ ont la même parité, donc $\dfrac{s+q}{2}$ et $\dfrac{s-q}{2}$ sont des entiers. Posons

$$X = \frac{s+q}{2}, \qquad Y = \frac{s-q}{2} .$$

Alors

$$X^2 + Y^2 = \frac{(s+q)^2 + (s-q)^2}{4} = \frac{2s^2 + 2q^2}{4} = \frac{s^2+q^2}{2} = p^2 .$$

Donc $(X, Y, p)$ est un **triplet pythagoricien** : $X$ et $Y$ sont les côtés de l'angle droit d'un triangle rectangle à côtés entiers, et $p$ en est l'hypoténuse.

Mieux : $X + Y = s$ et $X - Y = q$, donc $X$ et $Y$ sont précisément les deux côtés du **second** rectangle :

$$\{c, d\} = \{Y, X\} .$$

Et comme $a + b = s$ et $b - a = p$, les côtés du **premier** rectangle sont

$$a = \frac{X+Y-p}{2}, \qquad b = \frac{X+Y+p}{2} .$$

Ces nombres sont bien des entiers strictement positifs : $X + Y > p$ par l'inégalité triangulaire, et $X+Y-p$ est pair (dans un triplet pythagoricien, si les deux côtés de l'angle droit étaient tous deux impairs on aurait $p^2 \equiv 2 \pmod 4$, ce qui est impossible ; donc l'un au moins est pair, et on vérifie dans chaque cas que $X+Y-p$ est pair).

**Réciproquement**, partant d'un triplet pythagoricien $(X, Y, p)$, les deux rectangles $\dfrac{X+Y-p}{2} \times \dfrac{X+Y+p}{2}$ et $Y \times X$ ont le même demi-périmètre $X+Y$, et le second a bien une aire double : en effet

$$4 \times \frac{(X+Y)^2 - p^2}{4} = (X+Y)^2 - (X^2+Y^2) = 2XY ,$$

donc $2 \times \left(\text{aire du premier}\right) = XY = \text{aire du second}$.

**Étape 3 : lister les triplets qui tiennent dans la feuille.**

Il faut $X \leqslant 14$ (ou $Y \leqslant 14$) pour le petit côté, et les deux côtés $\leqslant 21$ ; de même pour le premier rectangle. Passons en revue les triplets pythagoriciens de petits côtés :

| $(Y, X, p)$ | second rectangle | premier rectangle | périmètre | tient dans l'A5 ? |
|---|---|---|---|---|
| $(3,4,5)$ | $3 \times 4$ | $1 \times 6$ | $14$ | oui |
| $(6,8,10)$ | $6 \times 8$ | $2 \times 12$ | $28$ | oui |
| $(5,12,13)$ | $5 \times 12$ | $2 \times 15$ | $34$ | oui |
| $(9,12,15)$ | $9 \times 12$ | $3 \times 18$ | $42$ | oui |
| $(8,15,17)$ | $8 \times 15$ | $3 \times 20$ | $46$ | oui |
| $(12,16,20)$ | $12 \times 16$ | $4 \times 24$ | $56$ | **non** : $24 > 21$ |
| $(15,20,25)$ | $15 \times 20$ | — | — | **non** : $15 > \text{14,8}$ |
| $(7,24,25)$ | $7 \times 24$ | — | — | **non** : $24 > 21$ |

Tous les autres triplets ont un côté de l'angle droit supérieur à $21$, ou leur plus petit côté supérieur à $14$, donc ne conviennent pas.

$$\boxed{\ \text{Cinq périmètres sont possibles : } 14,\ 28,\ 34,\ 42 \text{ et } 46 \text{ cm.}\ }$$

Par exemple, pour $46$ cm : le rectangle $3 \times 20$ a pour aire $60$, le rectangle $8 \times 15$ a pour aire $120$, et tous deux ont pour périmètre $2 \times 23 = 46$.

## Going further

L'énoncé d'origine demande « combien mesure le périmètre de ces rectangles ? », au singulier, alors qu'il y a cinq réponses. C'est la contrainte de la feuille A5 qui rend le problème fini : sans elle, chaque triplet pythagoricien donnerait un couple de rectangles, et il y en a une infinité.

Le fait remarquable reste que le rectangle d'aire double est toujours formé des deux côtés de l'angle droit d'un triangle rectangle à côtés entiers, et que l'autre rectangle se lit sur ce même triangle : son grand côté $\dfrac{X+Y+p}{2}$ est le demi-périmètre du triangle, et son petit côté $\dfrac{X+Y-p}{2}$ est le rayon de son cercle inscrit.

Sur le triangle $(3,4,5)$ : demi-périmètre $6$, rayon du cercle inscrit $1$, et le premier rectangle est bien $1 \times 6$.
