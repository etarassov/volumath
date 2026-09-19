---
id: "1613"
title: "Le produit des solutions d'une équation avec une racine carrée"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [second-degre, changement-de-variable, racine-carree, somme-et-produit-des-racines]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 1"
  reference: "Handout-2014-1714.pdf, problème 3 (AIME 1983)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2014-1714.pdf"
---

## Statement

Déterminer le produit de toutes les solutions réelles de l'équation
$$x^2 + 18x + 30 = 2\sqrt{x^2 + 18x + 45} .$$

## Hints

1. Ne développe rien et n'élève pas tout de suite au carré. Regarde les deux membres : quelle quantité revient des deux côtés ?
2. Pose $y = x^2 + 18x + 45$. Réécris l'équation en fonction de $y$ seulement.
3. Tu obtiens $y - 15 = 2\sqrt{y}$. Pose $t = \sqrt{y} \ge 0$ et résous l'équation du second degré en $t$. N'oublie pas la condition $t \ge 0$.
4. Une fois $y$ connu, tu obtiens une équation du second degré en $x$. Pour le produit de ses solutions, as-tu vraiment besoin de les calculer ?

## Solution

**L'idée : le même trinôme apparaît des deux côtés, à une constante près. Un changement de
variable transforme l'équation en une équation du second degré très simple.**

**Étape 1. Changement de variable.**

Posons
$$y = x^2 + 18x + 45 .$$
Alors $x^2 + 18x + 30 = y - 15$, et l'équation devient
$$y - 15 = 2\sqrt{y} ,$$
avec la condition d'existence $y \ge 0$.

**Étape 2. Résoudre en $y$.**

Posons $t = \sqrt{y}$, donc $t \ge 0$ et $y = t^2$. L'équation s'écrit
$$t^2 - 2t - 15 = 0 .$$
Son discriminant vaut $\Delta = 4 + 60 = 64$, et ses racines sont
$$t = \frac{2 - 8}{2} = -3 \qquad\text{et}\qquad t = \frac{2 + 8}{2} = 5 .$$

La valeur $t = -3$ est à rejeter, car $t = \sqrt{y} \ge 0$. Il reste $t = 5$, donc
$$y = 25 .$$

**Étape 3. Revenir à $x$.**

$$x^2 + 18x + 45 = 25 \qquad\Longleftrightarrow\qquad x^2 + 18x + 20 = 0 .$$

Le discriminant de cette équation vaut
$$\Delta = 18^2 - 4 \times 20 = 324 - 80 = 244 > 0 ,$$
donc elle a bien **deux** solutions réelles distinctes.

**Étape 4. Le produit des solutions.**

Inutile de les calculer. Pour une équation $x^2 + px + q = 0$ ayant deux racines $x_1$ et
$x_2$, la factorisation $x^2 + px + q = (x - x_1)(x-x_2)$ donne $x_1 x_2 = q$.

Ici $q = 20$, donc
$$x_1 \, x_2 = 20 .$$

**Étape 5. Vérification.**

Les deux solutions sont $x = -9 \pm \sqrt{61}$, soit environ $-\text{1,190}$ et $-\text{16,810}$. Pour
chacune, $x^2 + 18x + 45 = 25$, donc le membre de gauche vaut $25 - 15 = 10$ et le membre de
droite $2\sqrt{25} = 10$. ✔ Et $(-9)^2 - 61 = 81 - 61 = 20$. ✔

**Conclusion : le produit des solutions réelles vaut $20$.**

## Going further

Attention au piège classique. Si l'on élève directement au carré l'équation de départ, en
posant $u = x^2 + 18x$ on obtient
$$(u+30)^2 = 4(u+45), \qquad\text{soit}\qquad u^2 + 56u + 720 = 0,$$
donc $u = -20$ ou $u = -36$. La première valeur redonne nos deux solutions ; la seconde donne
$x^2 + 18x + 36 = 0$, soit $x = -9 \pm 3\sqrt5$. Pour ces deux nombres, $y = 9$ et l'équation
de l'étape 1 devient $-6 = 6$ : ce sont des **solutions parasites**, fabriquées par
l'élévation au carré, et elles correspondent exactement à la racine $t = -3$ que nous avons
écartée. Qui calcule le produit des quatre racines du polynôme de degré $4$ trouve $720$, et
non $20$.
