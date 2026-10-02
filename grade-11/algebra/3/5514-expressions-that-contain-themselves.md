---
id: "5514"
title: "Des expressions qui se contiennent elles-mêmes"
grade: 11
theme: algebra
difficulty: 3
duration_min: 35
tags: [nombre-d-or, equation-du-second-degre, suites, radicaux, fraction-continue]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 34 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

On admet que les trois expressions suivantes ont un sens, c'est-à-dire qu'on peut leur attribuer une valeur bien définie.

$$A = \sqrt{1 + \sqrt{1 + \sqrt{1 + \cdots}}}$$

$$B = \dfrac{1}{1 + \dfrac{1}{1 + \cdots}}$$


$$C = 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots$$

Dans chacune de ces trois écritures, les points de suspension cachent une nouvelle copie de ce qui précède : la construction se poursuit indéfiniment, toujours de la même façon.

**a)** Déterminer $A$, $B$ et $C$.

**b)** Quel lien y a-t-il entre $A$ et $B$ ?

**c)** Un élève applique la même méthode à
$$D = 1 - 1 + 1 - 1 + 1 - 1 + \cdots$$
et écrit : « $D = 1 - (1 - 1 + 1 - \cdots) = 1 - D$, donc $D = \tfrac{1}{2}$. » Que penser de ce calcul ?

## Hints

1. Regarde bien $A$ : sous le premier radical, que trouve-t-on exactement ?
2. Chacune de ces trois expressions contient une copie parfaite d'elle-même. Écris l'égalité que cela donne.
3. Pour $A$, tu obtiens une équation du second degré. Elle a deux solutions : laquelle garder, et pourquoi ?
4. Pour $C$, la copie de $C$ n'apparaît pas telle quelle : mets $\tfrac{1}{2}$ en facteur dans tout ce qui suit le premier terme.
5. Question c) : additionne les termes de $D$ un par un et regarde la suite des résultats obtenus. Cette suite s'approche-t-elle de quelque chose ?

## Solution

**a) Les trois valeurs.**

*La racine emboîtée.* Sous le premier radical de $A$, on lit $1 + \sqrt{1 + \sqrt{1 + \cdots}}$, c'est-à-dire $1 + A$. Donc
$$A = \sqrt{1 + A} .$$
Les deux membres sont positifs, on peut élever au carré :
$$A^2 = 1 + A, \qquad \text{soit} \qquad A^2 - A - 1 = 0 .$$
Le discriminant vaut $\Delta = 1 + 4 = 5$, et les deux racines sont
$$\frac{1 - \sqrt{5}}{2} \approx -\text{0,618} \qquad \text{et} \qquad \frac{1 + \sqrt{5}}{2} \approx \text{1,618} .$$
Comme $A$ est une racine carrée, $A \geqslant 0$ : la première solution est à rejeter. Donc
$$A = \frac{1 + \sqrt{5}}{2} \approx \text{1,618} .$$
C'est le **nombre d'or**, souvent noté $\varphi$.

*La fraction emboîtée.* Au dénominateur de $B$, on lit $1 + B$. Donc
$$B = \frac{1}{1 + B}, \qquad \text{soit} \qquad B(1 + B) = 1, \qquad \text{soit} \qquad B^2 + B - 1 = 0 .$$
Le discriminant vaut encore $5$, et les racines sont $\dfrac{-1 \pm \sqrt{5}}{2}$. Tous les termes de $B$ sont positifs, donc
$$B = \frac{\sqrt{5} - 1}{2} \approx \text{0,618} .$$

*La somme.* Mettons $\tfrac{1}{2}$ en facteur dans tout ce qui suit le premier terme :
$$C = 1 + \frac{1}{2}\left(1 + \frac{1}{2} + \frac{1}{4} + \cdots\right) = 1 + \frac{C}{2} .$$
Donc $\dfrac{C}{2} = 1$ et
$$C = 2 .$$

**b) Le lien entre $A$ et $B$.**

$$A - B = \frac{1 + \sqrt 5}{2} - \frac{\sqrt 5 - 1}{2} = 1 ,$$
donc $B = A - 1$. Et aussi
$$A \times B = \frac{(1+\sqrt5)(\sqrt5 - 1)}{4} = \frac{5 - 1}{4} = 1 ,$$
donc $B = \dfrac{1}{A}$.

Le nombre d'or a cette propriété remarquable : **son inverse et lui-même diffèrent exactement de $1$.** C'est d'ailleurs une autre façon de lire l'équation $A^2 = A + 1$, qu'il suffit de diviser par $A$ pour obtenir $A = 1 + \tfrac{1}{A}$.

**c) Le calcul de l'élève.**

Le calcul est faux, et pourtant il ressemble beaucoup aux trois précédents. La différence est dans le mot « on admet » de l'énoncé.

Additionnons les termes de $D$ un par un :
$$1, \quad 0, \quad 1, \quad 0, \quad 1, \quad 0, \ \ldots$$
Ces résultats ne s'approchent de rien du tout : ils sautent indéfiniment de $1$ à $0$. L'expression $D$ n'a donc **aucune valeur**, et tout calcul qui commence par « posons $D = \ldots$ » part d'une hypothèse fausse. On peut alors démontrer n'importe quoi.

Ce que montre vraiment ce type de raisonnement, c'est ceci :

> **si** l'expression a une valeur, **alors** cette valeur vérifie telle équation.

Pour $A$, $B$ et $C$, on peut démontrer séparément que la valeur existe : pour $C$, les sommes partielles valent $2 - \tfrac{1}{2^n}$ et s'approchent bien de $2$ ; pour $A$, la suite définie par $a_0 = 1$ et $a_{n+1} = \sqrt{1 + a_n}$ est croissante et majorée par $2$. C'est cette vérification, absente du calcul de l'élève, qui autorise la méthode.

## Going further

1. Que vaut $\sqrt{2 + \sqrt{2 + \sqrt{2 + \cdots}}}$ ? Et $\sqrt{6 + \sqrt{6 + \cdots}}$ ? Et de façon générale $\sqrt{k + \sqrt{k + \cdots}}$ ?
2. Calcule les premiers termes de la suite $a_0 = 1$, $a_{n+1} = 1 + \dfrac{1}{a_n}$ sous forme de fractions. Reconnais-tu les numérateurs et les dénominateurs ?
3. Démontre que la suite $a_0 = 1$, $a_{n+1} = \sqrt{1 + a_n}$ est croissante et majorée par $2$.
