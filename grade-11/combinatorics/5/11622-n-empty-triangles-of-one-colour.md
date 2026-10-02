---
id: "11622"
title: "n triangles vides d'une même couleur"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [geometrie-combinatoire, enveloppe-convexe, triangulation, coloriage, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 1, exercice commun, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On se donne $4n + 5$ points du plan, tels que trois d'entre eux ne soient jamais alignés. Chaque point est colorié soit en rouge, soit en bleu.

Prouver qu'il existe $n$ triangles qui vérifient les trois conditions suivantes :

- les sommets de ces triangles sont parmi les points donnés, et ils sont tous de la même couleur (la même couleur pour les $n$ triangles) ;
- deux de ces triangles n'ont jamais de point intérieur commun ;
- aucun point colorié ne se trouve à l'intérieur de l'un de ces triangles.

## Hints

1. L'une des deux couleurs, disons le rouge, est portée par au moins $2n + 3$ points.
2. Entoure les points rouges par un élastique tendu : on obtient un polygone convexe $P$ dont les sommets sont rouges. Si $P$ a $k$ sommets et contient $m$ autres points rouges à l'intérieur, montre qu'on peut découper $P$ en $k + 2m - 2$ triangles à sommets rouges, sans point rouge à l'intérieur.
3. Si moins de $n$ de ces triangles rouges sont sans point bleu, alors il y a beaucoup de points bleus à l'intérieur de $P$. Recommence avec ces points bleus.
4. Compte : si le découpage bleu avait lui aussi moins de $n$ triangles sans point rouge, il y aurait trop de points rouges à l'intérieur de $P$.

## Solution

Dans toute la solution, comme trois points ne sont jamais alignés, aucun point ne se trouve sur un côté d'un triangle dont il n'est pas un sommet : un point est soit un sommet, soit à l'intérieur, soit à l'extérieur.

**Un outil : l'enveloppe convexe.** Si l'on entoure un ensemble fini de points (au moins trois, non alignés) par un élastique et qu'on le lâche, l'élastique se tend autour des points et dessine un polygone convexe. On l'appelle **l'enveloppe convexe** de ces points. Ses sommets font partie des points, et les autres points sont à l'intérieur de ce polygone.

**Lemme (découpage en triangles).** Soit $P$ un polygone convexe à $k$ sommets, et $m \geqslant 0$ points à l'intérieur de $P$, trois des $k + m$ points n'étant jamais alignés. On peut découper $P$ en $k + 2m - 2$ triangles dont les sommets sont parmi ces $k + m$ points, et dont aucun ne contient l'un de ces points à l'intérieur.

*Preuve.* Sans point intérieur, on trace les diagonales issues d'un même sommet : elles découpent $P$ en $k - 2$ triangles. On ajoute ensuite les $m$ points intérieurs un par un. Chaque nouveau point est à l'intérieur d'un seul des triangles déjà tracés (il ne peut pas être sur un côté). On relie ce point aux trois sommets de ce triangle, qui est ainsi remplacé par trois triangles : le nombre de triangles augmente de $2$. À la fin, on a $k - 2 + 2m$ triangles, et aucun ne contient de point à l'intérieur, puisque chaque point est devenu un sommet. $\square$

**La couleur majoritaire.** Notons $r$ le nombre de points rouges et $b$ le nombre de points bleus, avec $r + b = 4n + 5$. Quitte à échanger les couleurs, on suppose $r \geqslant b$. Alors $2r \geqslant 4n + 5$, donc $r \geqslant 2n + 3$, puisque $r$ est entier.

**Les triangles rouges.** Soit $P$ l'enveloppe convexe des points rouges ($r \geqslant 5$ points non alignés). Notons $k$ son nombre de sommets et $m$ le nombre de points rouges à l'intérieur de $P$. Alors

$$k + m = r \geqslant 2n + 3. \qquad (1)$$

D'après le lemme appliqué aux points rouges, on découpe $P$ en $k + 2m - 2$ triangles à sommets rouges, sans point rouge à l'intérieur, et sans point intérieur commun deux à deux.

Si au moins $n$ de ces triangles ne contiennent aucun point bleu, on a trouvé $n$ triangles qui conviennent, et c'est fini.

**Sinon, les points bleus à l'intérieur de $P$.** Supposons qu'au plus $n - 1$ triangles rouges soient sans point bleu. Alors au moins $(k + 2m - 2) - (n - 1) = k + 2m - n - 1$ triangles rouges contiennent chacun au moins un point bleu. Ces triangles n'ont pas d'intérieur commun, donc ce sont des points bleus différents. Si $w$ désigne le nombre de points bleus à l'intérieur de $P$,

$$w \geqslant k + 2m - n - 1. \qquad (2)$$

Avec $(1)$, on a $w \geqslant (k + m) + m - n - 1 \geqslant 2n + 3 - n - 1 = n + 2 \geqslant 3$.

**Les triangles bleus.** Soit $Q$ l'enveloppe convexe de ces $w$ points bleus. Elle est contenue dans $P$, car $P$ est convexe. Si $Q$ a $j$ sommets, elle contient $w - j$ points bleus à l'intérieur, et le lemme la découpe en

$$j + 2(w - j) - 2 = 2w - j - 2 \geqslant w - 2$$

triangles à sommets bleus, sans point bleu à l'intérieur (les points bleus situés hors de $P$ sont aussi hors de $Q$). Supposons, pour arriver à une contradiction, qu'au plus $n - 1$ de ces triangles bleus soient sans point rouge. Alors au moins $(w - 2) - (n - 1) = w - n - 1$ triangles bleus contiennent chacun au moins un point rouge, et ce sont des points rouges différents.

Un point rouge à l'intérieur de $Q$ est à l'intérieur de $P$ : ce n'est pas un sommet de $P$, car un sommet de $P$ ne peut pas être à l'intérieur d'un polygone contenu dans $P$. C'est donc l'un des $m$ points rouges intérieurs à $P$. Ainsi $m \geqslant w - n - 1$, et avec $(2)$ :

$$m \geqslant (k + 2m - n - 1) - n - 1 = k + 2m - 2n - 2, \qquad \text{c'est-à-dire} \qquad k + m \leqslant 2n + 2.$$

Cela contredit $(1)$. Donc au moins $n$ triangles bleus ne contiennent aucun point rouge. Ils ne contiennent pas non plus de point bleu, et ils n'ont pas d'intérieur commun : ils conviennent.

**Conclusion : dans tous les cas, on trouve $n$ triangles d'une même couleur, sans point intérieur commun, et ne contenant aucun point colorié.**
