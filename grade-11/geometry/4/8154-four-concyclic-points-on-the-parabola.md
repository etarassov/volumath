---
id: "8154"
title: "Quatre points cocycliques sur la parabole"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [parabole, cercle, equation-de-cercle, polynome, racines]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 44 (trois étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Dans un repère orthonormé, on considère la parabole $\mathcal{P}$ d'équation $y = x^2$.

Soient $a$, $b$, $c$, $d$ quatre nombres réels deux à deux distincts, et soient $A$, $B$, $C$, $D$ les points de $\mathcal{P}$ d'abscisses respectives $a$, $b$, $c$, $d$.

Montrer que $A$, $B$, $C$ et $D$ sont sur un même cercle si et seulement si

$$a + b + c + d = 0 .$$

## Hints

1. Tout cercle du plan a une équation de la forme $x^2 + y^2 + ux + vy + w = 0$.
2. Un point de la parabole s'écrit $(t\,;\,t^2)$. Écris que ce point est sur le cercle : tu obtiens une équation dont l'inconnue est $t$. Quel est son degré ?
3. Les quatre abscisses $a$, $b$, $c$, $d$ sont alors quatre racines distinctes d'un polynôme de degré $4$ : ce sont donc **toutes** ses racines. Regarde le coefficient devant $t^3$.
4. Pour la réciproque, pars du polynôme $(X-a)(X-b)(X-c)(X-d)$ et lis dessus les coefficients $u$, $v$, $w$ du cercle cherché.
5. Attention au dernier détail : une équation $x^2 + y^2 + ux + vy + w = 0$ ne décrit pas toujours un cercle. Comment être sûr ici que c'en est un ?

## Solution

**Le calcul de départ.**

Une équation de cercle s'écrit toujours

$$x^2 + y^2 + ux + vy + w = 0,$$

car $(x - x_0)^2 + (y - y_0)^2 = r^2$ se développe sous cette forme.

Le point de $\mathcal{P}$ d'abscisse $t$ a pour coordonnées $(t\,;\,t^2)$. Il appartient à cette courbe si et seulement si

$$t^2 + t^4 + ut + v t^2 + w = 0, \qquad \text{c'est-à-dire} \qquad t^4 + (1+v)\,t^2 + u\,t + w = 0 .$$

Appelons $Q(t) = t^4 + (1+v)t^2 + ut + w$. C'est un polynôme de degré $4$, unitaire, et **sans terme en $t^3$**.

**Sens direct.**

Supposons $A$, $B$, $C$, $D$ sur un même cercle, d'équation $x^2+y^2+ux+vy+w = 0$. Alors $a$, $b$, $c$, $d$ sont quatre racines de $Q$, et elles sont deux à deux distinctes. Un polynôme de degré $4$ a au plus $4$ racines, donc ce sont toutes ses racines, chacune simple, et comme $Q$ est unitaire

$$Q(X) = (X-a)(X-b)(X-c)(X-d).$$

Développons et regardons le coefficient de $X^3$. À droite il vaut $-(a+b+c+d)$. À gauche il vaut $0$. Donc

$$a+b+c+d = 0 .$$

**Sens réciproque.**

Supposons maintenant $a+b+c+d = 0$ et posons

$$R(X) = (X-a)(X-b)(X-c)(X-d) = X^4 - s_1 X^3 + s_2 X^2 - s_3 X + s_4 ,$$

où $s_1 = a+b+c+d$, $s_2$ est la somme des six produits deux à deux, $s_3$ la somme des quatre produits trois à trois et $s_4 = abcd$. Par hypothèse $s_1 = 0$, donc

$$R(X) = X^4 + s_2 X^2 - s_3 X + s_4 .$$

Ce polynôme a exactement la forme de $Q$ : il suffit de poser

$$v = s_2 - 1, \qquad u = -s_3, \qquad w = s_4 ,$$

et l'on a $R = Q$. Par construction, $R(a) = R(b) = R(c) = R(d) = 0$, donc les quatre points $A$, $B$, $C$, $D$ vérifient l'équation

$$(\star) \qquad x^2 + y^2 + ux + vy + w = 0 .$$

Il reste à vérifier que $(\star)$ est bien l'équation d'un cercle. Écrivons-la sous forme canonique :

$$\left(x + \frac{u}{2}\right)^2 + \left(y + \frac{v}{2}\right)^2 = \frac{u^2}{4} + \frac{v^2}{4} - w .$$

Notons $K$ le nombre de droite. Comme le point $A$ vérifie $(\star)$, le membre de gauche prend au moins une fois une valeur qui vaut $K$, donc $K \geqslant 0$. Et si on avait $K = 0$, l'équation ne serait vérifiée que par le seul point de coordonnées $\left(-\tfrac{u}{2}\,;\,-\tfrac{v}{2}\right)$, alors que quatre points distincts la vérifient. Donc $K > 0$ : $(\star)$ est bien un cercle, de centre $\left(-\tfrac{u}{2}\,;\,-\tfrac{v}{2}\right)$ et de rayon $\sqrt{K}$.

Les quatre points sont donc cocycliques.

$$\boxed{\ A,\,B,\,C,\,D \text{ sont cocycliques} \iff a+b+c+d = 0\ }$$

## Going further

On en déduit une jolie conséquence. Si un cercle coupe la parabole en quatre points, la somme de leurs abscisses est nulle, donc leur « abscisse moyenne » est $0$ : les quatre points sont équilibrés de part et d'autre de l'axe de la parabole.

On en tire aussi ceci : si un cercle coupe la parabole en trois points seulement d'abscisses $a$, $b$, $c$, c'est qu'il lui est tangent en l'un d'eux, et la racine double compte deux fois dans la somme.
