---
id: "6018"
title: "Toutes les fractions, une fois chacune"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [fractions irreductibles, pgcd, arbre binaire, recurrence, denombrable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Touching Infinity : Hyperbinary Numbers and Fraction Trees » (Samuel Coskey, Paul Ellis, Japheth Wood)"
  reference: "MTCircular2018W.pdf, p. 6-7 : l'arbre de Calkin et Wilf ; la revue pose la question de la règle de remontée et renvoie les démonstrations à un document annexe"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircular2018W.pdf"
---

## Statement

On construit un arbre de fractions selon deux règles.

- La racine, tout en haut, porte la fraction $\dfrac{1}{1}$.
- Toute fraction $\dfrac{i}{j}$ de l'arbre a deux filles : à gauche $\dfrac{i}{i+j}$, à droite $\dfrac{i+j}{j}$.

Les premières lignes sont donc :

$$\frac11$$
$$\frac12 \qquad \frac21$$
$$\frac13 \qquad \frac32 \qquad \frac23 \qquad \frac31$$

1. Écrire la ligne suivante, qui compte huit fractions.
2. Montrer que toute fraction de l'arbre est irréductible.
3. Soit $\dfrac{r}{s}$ une fraction de l'arbre autre que la racine. Expliquer comment savoir, en regardant seulement $r$ et $s$, si c'est une fille gauche ou une fille droite, et donner dans chaque cas la fraction portée par sa mère.
4. Retrouver le chemin qui mène de la racine à $\dfrac{5}{7}$.
5. Montrer que toute fraction irréductible $\dfrac{p}{q}$, avec $p$ et $q$ entiers strictement positifs, apparaît dans l'arbre **une fois et une seule**.

## Hints

1. Pour la question 2, regarder le PGCD du numérateur et du dénominateur d'une fille, en fonction de celui de sa mère.
2. Pour la question 3, comparer le numérateur et le dénominateur d'une fille gauche, puis d'une fille droite.
3. Une fraction de l'arbre peut-elle valoir $1$ ailleurs qu'à la racine ?
4. Pour la question 4, remonter de $\frac57$ vers la racine, puis lire le chemin à l'envers.
5. Pour la question 5, remarquer que la somme numérateur plus dénominateur diminue strictement à chaque remontée. Que se passe-t-il au bout d'un certain nombre d'étapes ?

## Solution

### Question 1 : la ligne suivante

Les filles de $\frac13$ sont $\frac14$ et $\frac43$ ; celles de $\frac32$ sont $\frac35$ et $\frac52$ ; celles de $\frac23$ sont $\frac25$ et $\frac53$ ; celles de $\frac31$ sont $\frac34$ et $\frac41$. La ligne est donc
$$\frac14 \quad \frac43 \quad \frac35 \quad \frac52 \quad \frac25 \quad \frac53 \quad \frac34 \quad \frac41 .$$

### Question 2 : tout est irréductible

Un diviseur commun de $i$ et de $i+j$ divise leur différence $j$, et réciproquement un diviseur commun de $i$ et $j$ divise $i+j$. Donc
$$\mathrm{PGCD}(i,\ i+j) = \mathrm{PGCD}(i,\ j), \qquad \text{et de même} \qquad \mathrm{PGCD}(i+j,\ j) = \mathrm{PGCD}(i,\ j) .$$

Les deux filles de $\frac{i}{j}$ ont donc le même PGCD entre numérateur et dénominateur que leur mère. La racine $\frac11$ est irréductible ; par propagation de ligne en ligne, **toutes** les fractions de l'arbre le sont.

(Toutes les fractions écrites dans l'arbre sont donc déjà sous forme irréductible, et deux fractions écrites différemment ont des valeurs différentes.)

### Question 3 : reconnaître sa mère

Comme $i$ et $j$ sont strictement positifs :

- une fille **gauche** s'écrit $\frac{i}{i+j}$, et son numérateur est **strictement plus petit** que son dénominateur ;
- une fille **droite** s'écrit $\frac{i+j}{j}$, et son numérateur est **strictement plus grand** que son dénominateur.

Le cas numérateur égal au dénominateur ne se produit que pour $\frac11$, qui est la racine : en effet une fraction irréductible valant $1$ est $\frac11$, et aucune fille ne vaut $1$ d'après ce qui précède.

La règle de remontée est donc, pour une fraction $\frac{r}{s}$ autre que la racine :

- si $r < s$, c'est une fille gauche, et sa mère est $\dfrac{r}{s-r}$ ;
- si $r > s$, c'est une fille droite, et sa mère est $\dfrac{r-s}{s}$.

*(On retrouve bien la règle de départ : la mère de $\frac{i}{i+j}$ est $\frac{i}{(i+j)-i} = \frac{i}{j}$.)*

### Question 4 : le chemin vers $\frac57$

Remontons :
$$\frac57 : \ 5 < 7, \ \text{fille gauche, mère } \frac{5}{2} ;$$
$$\frac52 : \ 5 > 2, \ \text{fille droite, mère } \frac{3}{2} ;$$
$$\frac32 : \ 3 > 2, \ \text{fille droite, mère } \frac{1}{2} ;$$
$$\frac12 : \ 1 < 2, \ \text{fille gauche, mère } \frac{1}{1} .$$

On est arrivé à la racine. En lisant à l'envers, le chemin depuis la racine est
$$\text{gauche},\ \text{droite},\ \text{droite},\ \text{gauche},$$
c'est-à-dire
$$\frac11 \ \longrightarrow \ \frac12 \ \longrightarrow \ \frac32 \ \longrightarrow \ \frac52 \ \longrightarrow \ \frac57 .$$

La fraction $\frac57$ se trouve donc sur la cinquième ligne de l'arbre.

### Question 5 : chaque fraction irréductible, une fois et une seule

**Elle apparaît.** Partons d'une fraction irréductible $\frac{p}{q}$ et appliquons la règle de remontée, qui a un sens dès que $p \neq q$. À chaque étape, la somme numérateur plus dénominateur passe de $r+s$ à $r + (s-r) = s$ ou à $(r-s) + s = r$ : dans les deux cas elle **diminue strictement**, tout en restant un entier strictement positif.

La remontée ne peut donc pas se poursuivre indéfiniment : elle s'arrête, et elle ne peut s'arrêter que lorsque numérateur et dénominateur sont égaux. La fraction obtenue est irréductible (le PGCD ne change pas en remontant, par la question 2 lue à l'envers), donc c'est $\frac11$.

En parcourant ce chemin à l'envers depuis la racine, en tournant à gauche ou à droite selon les étapes mémorisées, on atteint bien $\frac{p}{q}$. Elle est donc dans l'arbre.

**Elle n'y apparaît qu'une fois.** Raisonnons par récurrence sur $p + q$.

*Cas de base.* Si $p + q = 2$, la fraction est $\frac11$. Elle n'apparaît qu'à la racine, puisque aucune fille ne vaut $1$.

*Hérédité.* Soit $\frac{p}{q}$ irréductible avec $p \neq q$, et supposons le résultat acquis pour toutes les fractions irréductibles dont la somme numérateur plus dénominateur est plus petite. Supposons que $\frac{p}{q}$ figure en deux endroits de l'arbre. Comme $p \neq q$, aucun de ces deux endroits n'est la racine : ce sont deux filles. D'après la question 3, la comparaison de $p$ et $q$ décide du côté : les deux sont des filles gauches, ou les deux sont des filles droites. Et leurs mères portent la même fraction, donnée par la règle de remontée.

Cette fraction mère est irréductible et sa somme numérateur plus dénominateur est strictement plus petite : par hypothèse de récurrence elle n'apparaît qu'en un seul endroit de l'arbre. Les deux mères sont donc le **même nœud**. Et comme les deux filles sont du même côté de ce nœud, ce sont le même nœud aussi.

Donc $\frac{p}{q}$ n'apparaît qu'une fois.

### Ce que cela signifie

L'arbre donne une façon de numéroter **tous** les rationnels strictement positifs : on lit les fractions ligne par ligne, de gauche à droite,
$$\frac11, \ \frac12, \ \frac21, \ \frac13, \ \frac32, \ \frac23, \ \frac31, \ \frac14, \ \frac43, \ \ldots$$
et cette liste contient chaque rationnel strictement positif exactement une fois, sous forme irréductible. Il y a donc « autant » de rationnels que d'entiers naturels, et on le voit ici de façon parfaitement explicite : on peut dire sans calcul compliqué quelle fraction occupe la $1000$-ième place, et à quelle place se trouve une fraction donnée.

C'est la démonstration de Neil Calkin et Herbert Wilf (2000), beaucoup plus concrète que l'argument de Cantor de 1873.

## Going further

1. Montrer que le dénominateur d'une fraction est toujours le numérateur de la fraction suivante dans la lecture ligne par ligne. (Attention au passage d'une ligne à la suivante.)
2. En déduire que la suite $1, 1, 2, 1, 3, 2, 3, 1, 4, 3, 5, \ldots$ des numérateurs, lue ligne par ligne, suffit à reconstruire tout l'arbre.
3. Cette suite est exactement celle qui compte les écritures d'un entier comme somme de puissances de $2$, chacune utilisée au plus deux fois. Le vérifier sur les dix premiers termes.
4. Quelle est la fraction placée à la $100$-ième position ? (Écrire $100$ en base $2$ et voir ce que cela donne comme suite de virages.)
5. Comparer cet arbre au triangle où l'on intercale entre deux voisins leur somme, en partant de $1, 1$. Quel lien voit-on entre les couples de voisins de ce triangle et les fractions de l'arbre ?
