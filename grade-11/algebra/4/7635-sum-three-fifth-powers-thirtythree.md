---
id: "7635"
title: "Somme 3, somme des puissances cinquièmes 33"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [somme et produit, identites, equation du second degre, systeme symetrique]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 75 (solution chapitre XI, résolue par Matthieu Dolbeault)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ de nombres réels tels que

$$x + y = 3 \qquad \text{et} \qquad x^5 + y^5 = 33 .$$

## Hints

1. Une solution saute aux yeux. Trouvez-la, mais ce n'est que le début : il faut prouver qu'il n'y en a pas d'autres.
2. Posons $s = x + y$ et $p = xy$. Exprimez $x^2 + y^2$, puis $x^3 + y^3$, en fonction de $s$ et de $p$.
3. Pour les puissances cinquièmes, développez le produit $\left(x^2 + y^2\right)\left(x^3 + y^3\right)$ : qu'obtient-on en plus de $x^5 + y^5$ ?
4. Vous arriverez à une équation du second degré en $p$. Résolvez-la, puis, pour chaque valeur de $p$, retrouvez $x$ et $y$ comme racines de $t^2 - st + p = 0$.

## Solution

**Réponse : les couples $(1, 2)$ et $(2, 1)$.**

Posons

$$s = x + y = 3 \qquad \text{et} \qquad p = xy .$$

**Étape 1 : exprimer $x^5 + y^5$ à l'aide de $s$ et $p$.**

D'abord les petites puissances :

$$x^2 + y^2 = (x+y)^2 - 2xy = s^2 - 2p ,$$
$$x^3 + y^3 = (x+y)^3 - 3xy(x+y) = s^3 - 3sp .$$

Ensuite, développons le produit des deux :

$$\left(x^2 + y^2\right)\left(x^3 + y^3\right) = x^5 + x^2 y^3 + x^3 y^2 + y^5 = x^5 + y^5 + x^2y^2\,(x + y) .$$

D'où

$$x^5 + y^5 = \left(s^2 - 2p\right)\left(s^3 - 3sp\right) - p^2 s .$$

**Étape 2 : remplacer $s$ par $3$.**

$$x^5 + y^5 = (9 - 2p)(27 - 9p) - 3p^2 = 243 - 81p - 54p + 18p^2 - 3p^2 = 243 - 135p + 15p^2 .$$

L'équation $x^5 + y^5 = 33$ devient donc

$$15p^2 - 135p + 243 = 33 , \qquad \text{c'est-à-dire} \qquad 15p^2 - 135p + 210 = 0 .$$

En divisant par $15$ :

$$p^2 - 9p + 14 = 0 .$$

Le discriminant vaut $81 - 56 = 25$, donc

$$p = \frac{9 - 5}{2} = 2 \qquad \text{ou} \qquad p = \frac{9 + 5}{2} = 7 .$$

**Étape 3 : revenir à $x$ et $y$.**

Deux nombres de somme $s$ et de produit $p$ sont les racines de $t^2 - st + p = 0$.

- *Cas $p = 7$ :* l'équation est $t^2 - 3t + 7 = 0$, de discriminant $9 - 28 = -19 < 0$. Elle n'a aucune racine réelle : ce cas ne donne aucune solution.
- *Cas $p = 2$ :* l'équation est $t^2 - 3t + 2 = 0$, de racines $t = 1$ et $t = 2$. Donc $\{x, y\} = \{1, 2\}$.

**Vérification.** $1 + 2 = 3$ ✔ et $1^5 + 2^5 = 1 + 32 = 33$ ✔.

**Conclusion.** Les seules solutions réelles sont

$$(x, y) = (1, 2) \qquad \text{et} \qquad (x, y) = (2, 1) .$$

## Going further

La méthode est celle des **fonctions symétriques**. Dès qu'un système ne fait intervenir $x$ et $y$ que par des expressions symétriques (inchangées quand on échange $x$ et $y$), on remplace les inconnues par $s = x+y$ et $p = xy$ : le système devient plus simple, et on redescend à la fin par une équation du second degré.

Le passage de $x^2 + y^2$ et $x^3 + y^3$ à $x^5 + y^5$ par multiplication est un tour commode. Plus systématiquement, on peut utiliser la relation de récurrence

$$x^{n+1} + y^{n+1} = s \left(x^n + y^n\right) - p \left(x^{n-1} + y^{n-1}\right) ,$$

qui se vérifie en développant le membre de droite. Elle donne de proche en proche toutes les sommes de puissances.

**Le cas $p = 7$ mérite un mot.** Il n'est pas absurde : il correspond à deux nombres **complexes** conjugués, de somme $3$ et de produit $7$. Leurs puissances cinquièmes s'additionnent bien pour donner $33$. C'est l'exigence « réels » de l'énoncé qui l'élimine.
