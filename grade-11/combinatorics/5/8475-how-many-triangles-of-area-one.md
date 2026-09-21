---
id: "8475"
title: "Combien de triangles d'aire 1 ?"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [double comptage, geometrie combinatoire, aire, droites paralleles]
adapted_from: null
see_also: ["8870"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe C"
  reference: "Poly-2021-Valbonne.pdf, Groupe C, « Double comptage » (Arthur Léonard), exercice 2, signalé « Iran 2010 »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On se donne $n$ points du plan, trois d'entre eux n'étant jamais alignés.

Montrer que le nombre de triangles d'aire exactement $1$ dont les trois sommets sont parmi ces $n$ points est au plus

$$\frac{2n(n-1)}{3}.$$

## Hints

1. Il est plus commode de compter les triangles **avec un ordre** sur leurs sommets, quitte à diviser à la fin. Par combien faut-il diviser ?
2. Fixe deux des trois points, $X$ et $Y$. Où doit se trouver le troisième point $Z$ pour que l'aire du triangle $XYZ$ vaille $1$ ?
3. L'aire vaut $\dfrac12 \times XY \times h$, où $h$ est la distance de $Z$ à la droite $(XY)$. La valeur de $h$ est donc imposée : $Z$ se trouve sur l'une de deux droites précises.
4. Sur chacune de ces deux droites, combien peut-il y avoir de points de notre famille ?

## Solution

### Étape 1. Compter des triplets ordonnés

Notons $S$ l'ensemble des $n$ points, et posons

$$Q = \text{le nombre de triplets ordonnés } (X, Y, Z) \text{ de points distincts de } S \text{ tels que l'aire de } XYZ \text{ vaille } 1.$$

Un même triangle d'aire $1$, de sommets $\{A, B, C\}$, est compté plusieurs fois dans $Q$ : une fois pour chacune des façons d'ordonner ses trois sommets, soit $3! = 6$ fois. Donc

$$\text{nombre de triangles d'aire } 1 = \frac{Q}{6}.$$

### Étape 2. Majorer $Q$ en fixant les deux premiers points

Fixons deux points distincts $X$ et $Y$ de $S$, et cherchons les points $Z$ tels que le triangle $XYZ$ ait pour aire $1$.

L'aire du triangle $XYZ$ vaut

$$\frac12 \times XY \times h,$$

où $h$ désigne la distance du point $Z$ à la droite $(XY)$. Comme $X$ et $Y$ sont fixés, la longueur $XY$ l'est aussi, et l'égalité

$$\frac12 \times XY \times h = 1 \qquad \text{donne} \qquad h = \frac{2}{XY}.$$

La distance de $Z$ à la droite $(XY)$ est donc **imposée**. Les points du plan situés à cette distance fixée de la droite $(XY)$ forment exactement **deux droites parallèles** à $(XY)$, une de chaque côté.

Sur chacune de ces deux droites, combien de points de $S$ peut-il y avoir ? Au plus $2$ : s'il y en avait trois, ces trois points seraient alignés, ce que l'énoncé interdit.

Il y a donc **au plus $4$ choix possibles pour $Z$**, une fois $X$ et $Y$ fixés.

### Étape 3. Additionner

Le nombre de couples ordonnés $(X, Y)$ de points distincts de $S$ est $n(n-1)$. Pour chacun, au plus $4$ points $Z$ conviennent. Donc

$$Q \leqslant 4n(n-1).$$

### Étape 4. Conclure

$$\text{nombre de triangles d'aire } 1 \; = \; \frac{Q}{6} \; \leqslant \; \frac{4n(n-1)}{6} \; = \; \frac{2n(n-1)}{3}.$$

$$\boxed{\text{C'est la majoration demandée.}}$$

## Going further

Deux choix rendent la démonstration facile, et méritent d'être remarqués.

**Compter des triplets ordonnés plutôt que des triangles.** Cela paraît compliquer le problème, puisqu'on multiplie par $6$ le nombre d'objets. Mais cela le simplifie en réalité, car « fixer $X$ puis $Y$ puis compter les $Z$ » est un décompte naturel, alors que fixer un triangle non ordonné obligerait à se demander lequel de ses trois sommets joue quel rôle. On divise par $6$ à la fin, et tout va bien.

**Utiliser l'hypothèse « jamais trois alignés » au bon endroit.** Elle ne sert qu'une fois, à l'étape 2, pour borner par $2$ le nombre de points sur chacune des deux droites. Sans elle, le résultat est faux : si l'on autorisait beaucoup de points alignés, on pourrait fabriquer énormément de triangles d'aire $1$.

Enfin, le facteur $\dfrac{2}{3}$ n'est probablement pas optimal. La démonstration a supposé, dans le pire des cas, que les quatre points $Z$ existaient toujours, ce qui est très exigeant. Trouver la vraie valeur maximale du nombre de triangles d'aire $1$ est une question ouverte difficile.
