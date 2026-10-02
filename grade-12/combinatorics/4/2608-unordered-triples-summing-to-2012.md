---
id: "2608"
title: "Écrire 2012 comme somme de trois entiers positifs ou nuls"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, partition, symetrie, somme-de-gauss]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 15 (réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

Combien y a-t-il de façons d'écrire
$$2012 = a + b + c$$
où $a$, $b$ et $c$ sont des entiers positifs ou nuls, **sans tenir compte de l'ordre** ?

Ainsi $2012 = 0 + 1 + 2011$ et $2012 = 2011 + 1 + 0$ comptent pour une seule façon.

## Hints

1. Commence par compter les triplets **ordonnés** $(a, b, c)$ : c'est beaucoup plus facile. Pour chaque valeur de $a$, combien de valeurs de $b$ sont possibles ?
2. Un triplet non ordonné formé de trois nombres deux à deux distincts correspond à $6$ triplets ordonnés. Mais attention aux triplets où deux nombres sont égaux.
3. Combien y a-t-il de triplets ordonnés avec $a = b$ ? Et avec $a = b = c$ ?
4. Sépare les triplets non ordonnés en trois familles : trois nombres distincts, exactement deux nombres égaux, trois nombres égaux. Traite chaque famille à part.

## Solution

**Étape 1 : les triplets ordonnés.**

Comptons d'abord les triplets **ordonnés** $(a, b, c)$ d'entiers positifs ou nuls tels que $a + b + c = 2012$.

Choisissons $a$ : il peut valoir $0, 1, \ldots, 2012$. Une fois $a$ fixé, on doit avoir $b + c = 2012 - a$ avec $b, c \geq 0$, donc $b$ peut prendre les valeurs $0, 1, \ldots, 2012 - a$, ce qui fait $2013 - a$ possibilités, et $c$ est alors imposé.

Le nombre total de triplets ordonnés est donc
$$N = \sum_{a=0}^{2012} (2013 - a) = 2013 + 2012 + \dots + 2 + 1 = \frac{2013 \times 2014}{2} = 2013 \times 1007 = 2\,027\,091 .$$

**Étape 2 : trois nombres tous égaux.**

Il faudrait $3a = 2012$. Or $2012 = 3 \times 670 + 2$ n'est pas divisible par $3$. **Il n'y a aucun triplet de ce type.**

**Étape 3 : exactement deux nombres égaux.**

Cherchons les triplets non ordonnés de la forme $\{a, a, c\}$ avec $c \neq a$. La condition est $2a + c = 2012$, donc $c = 2012 - 2a$, et $c \geq 0$ impose $a \leq 1006$.

Il y a donc $1007$ valeurs possibles de $a$ (de $0$ à $1006$), et pour chacune un seul $c$. Aucune ne donne $a = c$, puisque cela reviendrait au cas précédent, impossible.

**Il y a $1007$ triplets non ordonnés avec exactement deux nombres égaux.** Chacun correspond à exactement $3$ triplets ordonnés (on choisit la place du nombre différent), soit $3 \times 1007 = 3021$ triplets ordonnés.

**Étape 4 : trois nombres deux à deux distincts.**

Les triplets ordonnés restants sont ceux dont les trois composantes sont distinctes :
$$2\,027\,091 - 3021 - 0 = 2\,024\,070 .$$

Chaque triplet non ordonné de trois nombres distincts correspond à exactement $3! = 6$ triplets ordonnés. Le nombre de tels triplets non ordonnés est donc
$$\frac{2\,024\,070}{6} = 337\,345 .$$

**Étape 5 : total.**

$$337\,345 \ (\text{trois distincts}) \; + \; 1007 \ (\text{exactement deux égaux}) \; + \; 0 \ (\text{trois égaux}) \; = \; 338\,352 .$$

$$\boxed{\text{Il y a } 338\,352 \text{ façons d'écrire } 2012 \text{ comme somme de trois entiers positifs ou nuls.}}$$

## Going further

La méthode ne dépend pas de $2012$. Pour un entier $n$ quelconque, le nombre de triplets ordonnés vaut $\dfrac{(n+1)(n+2)}{2}$, le nombre de triplets $\{a, a, c\}$ vaut $\left\lfloor \dfrac{n}{2}\right\rfloor + 1$, et il y a un triplet à trois nombres égaux exactement lorsque $3$ divise $n$. Sur de petites valeurs on peut tout vérifier à la main : pour $n = 5$ on trouve $5$ façons ($0{+}0{+}5$, $0{+}1{+}4$, $0{+}2{+}3$, $1{+}1{+}3$, $1{+}2{+}2$), et pour $n = 6$ on en trouve $7$.
