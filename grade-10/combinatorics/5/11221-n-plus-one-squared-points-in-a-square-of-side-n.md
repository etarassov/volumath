---
id: "11221"
title: "(n + 1)² points dans un carré de côté n"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [points, aire, triangle, enveloppe-convexe, triangulation, tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf (le corrigé dit que chaque point ajouté à la triangulation crée « au moins 2 » triangles, ce qui est faux pour un point situé sur un côté de l'enveloppe ; ce cas n'arrive pas, car il donnerait trois points alignés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On place $(n + 1)^2$ points dans un carré de côté $n$ (à l'intérieur
ou sur les bords).

Montrer que l'on peut en choisir trois qui forment un triangle d'aire inférieure ou égale à
$\frac{1}{2}$.

Un triangle aplati, dont les trois sommets sont alignés, est accepté : son aire vaut $0$.

## Hints

1. Si trois points sont alignés, c'est fini. On peut donc supposer que trois points ne sont jamais
   alignés.
2. Tends un élastique autour de tous les points. Il dessine un polygone convexe. Montre que son
   périmètre est au plus $4n$, en comparant chaque côté à ses déplacements horizontal et vertical.
3. Si ce polygone a beaucoup de sommets, deux côtés qui se suivent sont courts. Quelle est l'aire
   du triangle formé par ces deux côtés ?
4. S'il a peu de sommets, découpe-le en triangles dont les sommets sont des points, puis ajoute les
   points intérieurs un par un. Combien de triangles chaque point ajouté crée-t-il ?

## Solution

Si deux des points sont confondus, ou si trois des points sont alignés, ils forment un triangle
aplati d'aire $0$ et c'est fini. **On suppose désormais que trois points ne sont jamais alignés.**

Plaçons le carré dans un repère, de sorte qu'il soit formé des points $(x\,;\,y)$ avec
$0 \leqslant x \leqslant n$ et $0 \leqslant y \leqslant n$.

**Étape 1. Le polygone qui entoure les points.**

Tendons un élastique autour de tous les points, comme autour de clous plantés dans une planche.
L'élastique dessine un polygone convexe $E$, dont les sommets sont certains de nos points. Notons
$s$ son nombre de sommets. Les autres points sont à l'intérieur de $E$ : ils ne peuvent pas être sur
un côté, sinon ils seraient alignés avec deux sommets.

**Étape 2. Le périmètre de $E$ est au plus $4n$.**

Un côté de $E$ va d'un sommet à un autre en se déplaçant de $a$ horizontalement et de $b$
verticalement. Sa longueur est $\sqrt{a^2 + b^2}$, qui est au plus $a + b$, puisque
$(a + b)^2 = a^2 + b^2 + 2ab \geqslant a^2 + b^2$.

Faisons le tour de $E$ en partant de son sommet le plus à gauche. Comme $E$ est convexe, on se
déplace d'abord vers la droite (ou verticalement) jusqu'au sommet le plus à droite, puis on revient
vers la gauche (ou verticalement). À l'aller comme au retour, les déplacements horizontaux
s'ajoutent donc pour donner au plus la largeur du carré, $n$. Le total des déplacements horizontaux
est au plus $2n$. De même, le total des déplacements verticaux est au plus $2n$. En additionnant
l'inégalité « longueur $\leqslant a + b$ » sur tous les côtés, le périmètre de $E$ est au plus
$2n + 2n = 4n$.

**Étape 3. Si $E$ a au moins $4n$ sommets.**

Appelons $c_1, c_2, \ldots, c_s$ les longueurs des côtés de $E$, dans l'ordre du tour. Additionnons
les longueurs de deux côtés qui se suivent, de toutes les façons possibles :
$$(c_1 + c_2) + (c_2 + c_3) + \cdots + (c_{s-1} + c_s) + (c_s + c_1) .$$
Chaque côté y apparaît deux fois, donc ce total vaut deux fois le périmètre, au plus $8n$. Il y a
$s \geqslant 4n$ sommes, donc l'une d'elles est au plus $\frac{8n}{4n} = 2$ : il existe deux côtés
qui se suivent, de longueurs $c$ et $c'$, avec $c + c' \leqslant 2$.

Alors $c \times c' \leqslant 1$. En effet,
$$4cc' = (c + c')^2 - (c - c')^2 \leqslant (c + c')^2 \leqslant 4 .$$

Ces deux côtés ont un sommet commun, et avec leurs deux autres extrémités, cela fait trois de nos
points. Ils forment un triangle de base $c$, et dont la hauteur relative à cette base est au plus
$c'$ (la hauteur est plus courte que le côté oblique). Son aire est donc au plus
$\frac{1}{2} \times c \times c' \leqslant \frac{1}{2}$.

**Étape 4. Si $E$ a au plus $4n - 1$ sommets.**

Découpons $E$ en triangles en traçant les diagonales qui partent d'un même sommet : on obtient
$s - 2$ triangles qui ne se chevauchent pas, dont les sommets sont des points.

Ajoutons ensuite, un par un, les $(n + 1)^2 - s$ points qui sont à l'intérieur de $E$. Chaque
nouveau point est à l'intérieur de l'un des triangles déjà tracés : il n'est pas sur un côté, sinon
il serait aligné avec deux points. On le relie aux trois sommets de ce triangle, ce qui découpe ce
triangle en trois. Le nombre de triangles augmente donc de $2$ à chaque point ajouté.

À la fin, on a découpé $E$ en
$$(s - 2) + 2\left((n + 1)^2 - s\right) = 2(n + 1)^2 - s - 2$$
triangles qui ne se chevauchent pas, et dont les sommets sont des points. Comme $s \leqslant 4n - 1$,
ce nombre est au moins
$$2(n^2 + 2n + 1) - (4n - 1) - 2 = 2n^2 + 1 .$$
Tous ces triangles sont dans le carré, d'aire $n^2$. Leur aire totale est donc au plus $n^2$, et le
plus petit d'entre eux a une aire au plus
$$\frac{n^2}{2n^2 + 1} < \frac{n^2}{2n^2} = \frac{1}{2} .$$

**Conclusion : dans tous les cas, trois des points forment un triangle d'aire au plus
$\frac{1}{2}$.**

## Going further

Une méthode plus simple consiste à découper le carré en $n^2$ petits carrés de côté $1$ : trois
points situés dans un même petit carré forment toujours un triangle d'aire au plus $\frac{1}{2}$.
Mais pour avoir à coup sûr trois points dans un même petit carré, il faut $2n^2 + 1$ points. Dès
que $n \geqslant 3$, on a $(n + 1)^2 \leqslant 2n^2$ : on peut alors placer nos points à raison de
deux au plus par petit carré, et cette méthode ne conclut pas. C'est pour cela qu'il faut ici une
idée de plus, l'élastique.
