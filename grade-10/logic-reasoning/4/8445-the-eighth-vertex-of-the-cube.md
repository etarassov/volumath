---
id: "8445"
title: "Le huitième sommet du cube"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [invariant, parite, coordonnees, symetrie-centrale, cube]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Invariants, Monovariants, Pavages et Coloriages » (Savinien Kreczman), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Dans l'espace, on place un jeton sur chacun des **sept** sommets d'un cube ; le huitième sommet reste vide.

Une opération consiste à choisir deux jetons, situés en des points $M$ et $N$, et à déplacer le jeton de $M$ vers le symétrique de $M$ par rapport à $N$.

Peut-on, par une suite de telles opérations, amener un jeton sur le huitième sommet du cube ?

## Hints

1. Les jetons vont sortir du cube presque tout de suite. Il faut donc une quantité attachée à chaque jeton, qui ne change jamais, et qui distingue le huitième sommet des sept autres.
2. Place-toi dans un repère où les huit sommets du cube ont pour coordonnées des $0$ et des $1$. Quelles sont les coordonnées du sommet vide ?
3. Si $M$ a pour coordonnées $(a, b, c)$ et $N$ pour coordonnées $(a', b', c')$, quelles sont les coordonnées du symétrique de $M$ par rapport à $N$ ?
4. Regarde ces coordonnées **modulo 2**. Que constates-tu ?

## Solution

La réponse est **non**.

**Étape 1. Choisir un repère.**

Plaçons-nous dans un repère orthonormé où les huit sommets du cube ont pour coordonnées tous les triplets formés de $0$ et de $1$. Disons que le sommet vide est

$$(1, 1, 1),$$

de sorte que les jetons occupent au départ les sept sommets

$$(0,0,0), \; (0,0,1), \; (0,1,0), \; (1,0,0), \; (0,1,1), \; (1,0,1), \; (1,1,0).$$

**Étape 2. L'effet d'une opération sur les coordonnées.**

Le symétrique du point $M = (a, b, c)$ par rapport au point $N = (a', b', c')$ est le point $M'$ tel que $N$ soit le milieu de $[MM']$. Ses coordonnées sont donc

$$M' = \big(2a' - a, \; 2b' - b, \; 2c' - c\big).$$

**Étape 3. L'invariant.**

Regardons les parités. Comme $2a'$ est pair, les entiers $2a' - a$ et $a$ ont la même parité. Il en va de même pour les deux autres coordonnées.

> **Quand on déplace un jeton, la parité de chacune de ses trois coordonnées ne change pas.**

(Au passage, les coordonnées restent bien des entiers à toutes les étapes.)

Chaque jeton garde donc, pour toujours, le triplet de parités qu'il avait au départ. Et les jetons qui ne bougent pas gardent le leur aussi, évidemment.

**Étape 4. Conclure.**

Au départ, les coordonnées d'un jeton valent $0$ ou $1$, donc son triplet de parités est exactement son triplet de coordonnées. Or aucun des sept sommets occupés n'a pour coordonnées $(1,1,1)$ : **aucun jeton n'a le triplet de parités (impair, impair, impair).**

Comme ce triplet ne change jamais, aucun jeton ne pourra jamais avoir ses trois coordonnées impaires. En particulier, aucun jeton ne pourra se trouver au point $(1,1,1)$.

Le huitième sommet est donc inatteignable.

## Going further

Cet exercice illustre parfaitement ce qu'est un **invariant** : une quantité que l'opération ne modifie pas, et qui sépare la situation de départ de la situation visée.

Ici, la difficulté est que les jetons partent vite très loin du cube : après quelques opérations, leurs coordonnées peuvent être énormes. C'est précisément pourquoi il faut une quantité qui ignore la taille et ne retienne que la parité.

Remarquons que l'argument ne dépend pas du nombre de jetons ni de leur position de départ, pourvu qu'aucun n'ait ses trois coordonnées impaires. On pourrait aussi bien partir de milliers de jetons.
