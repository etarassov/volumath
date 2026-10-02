---
id: "0351"
title: "Deux triangles isocèles dans un triangle isocèle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [triangle-isocele, somme-des-angles, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 1, задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $B$, c'est-à-dire $AB = BC$.

Un point $M$ du côté $[BC]$ est tel que le segment $[AM]$ coupe le triangle $ABC$ en deux triangles isocèles :

- le triangle $ABM$ est isocèle de base $[AB]$, autrement dit $MA = MB$ ;
- le triangle $AMC$ est isocèle de base $[MC]$, autrement dit $AM = AC$.

![Le triangle ABC coupé par le segment AM](0351-figure-1.svg)

Calculer la mesure de l'angle $\widehat{ABC}$.

## Hints

1. Il y a beaucoup d'angles inconnus sur la figure, mais un seul suffit pour les écrire tous. Pose $\alpha = \widehat{ABC}$.
2. Commence par le triangle $ABM$. Il est isocèle de base $[AB]$ : que valent ses deux angles à la base ? Attention, $M$ est sur $[BC]$, donc $\widehat{ABM}$ et $\widehat{ABC}$ sont le même angle.
3. Une fois $\widehat{AMB}$ connu, tu obtiens $\widehat{AMC}$ : ces deux angles sont supplémentaires puisque $B$, $M$, $C$ sont alignés.
4. Le triangle $AMC$ est isocèle de base $[MC]$, donc $\widehat{ACM} = \widehat{AMC}$. Et $ABC$ est isocèle de base $[AC]$, donc $\widehat{BAC} = \widehat{BCA}$. Écris alors que la somme des angles du triangle $ABC$ vaut $180^\circ$.

## Solution

**L'idée : tout exprimer avec un seul angle.**

Posons $\alpha = \widehat{ABC}$. Nous allons écrire tous les autres angles en fonction de $\alpha$, puis utiliser la somme des angles du grand triangle.

**Étape 1. Le triangle $ABM$.**

Le point $M$ est sur $[BC]$, donc l'angle $\widehat{ABM}$ est exactement l'angle $\widehat{ABC}$ :
$$\widehat{ABM} = \alpha.$$

Le triangle $ABM$ est isocèle de base $[AB]$, donc ses deux angles à la base sont égaux :
$$\widehat{BAM} = \widehat{ABM} = \alpha.$$

La somme des angles du triangle $ABM$ vaut $180^\circ$, donc
$$\widehat{AMB} = 180^\circ - \alpha - \alpha = 180^\circ - 2\alpha.$$

**Étape 2. Le passage à l'autre côté du point $M$.**

Les points $B$, $M$, $C$ sont alignés, donc les angles $\widehat{AMB}$ et $\widehat{AMC}$ sont supplémentaires :
$$\widehat{AMC} = 180^\circ - \widehat{AMB} = 180^\circ - (180^\circ - 2\alpha) = 2\alpha.$$

**Étape 3. Le triangle $AMC$.**

Il est isocèle de base $[MC]$, donc ses deux angles à la base sont égaux :
$$\widehat{ACM} = \widehat{AMC} = 2\alpha.$$

Comme $M$ est sur $[BC]$, l'angle $\widehat{ACM}$ est exactement l'angle $\widehat{ACB}$ :
$$\widehat{ACB} = 2\alpha.$$

**Étape 4. Le triangle $ABC$.**

Il est isocèle en $B$, sa base est $[AC]$, donc ses deux angles à la base sont égaux :
$$\widehat{BAC} = \widehat{BCA} = 2\alpha.$$

La somme des angles du triangle $ABC$ vaut $180^\circ$ :
$$\alpha + 2\alpha + 2\alpha = 180^\circ,$$
donc $5\alpha = 180^\circ$ et $\alpha = 36^\circ$.

**Conclusion.** L'angle $\widehat{ABC}$ mesure $36^\circ$.

On peut vérifier que la figure existe bien : les angles du triangle $ABC$ valent alors $36^\circ$, $72^\circ$ et $72^\circ$, et le point $M$ est bien à l'intérieur du côté $[BC]$.

## Going further

1. Avec $\alpha = 36^\circ$, calculer $\widehat{BAM}$ et $\widehat{MAC}$. Que représente le segment $[AM]$ pour l'angle $\widehat{BAC}$ ?
2. Un triangle isocèle dont les angles mesurent $36^\circ$, $72^\circ$ et $72^\circ$ s'appelle un **triangle d'or**. Dans un pentagone régulier $PQRST$, chaque angle mesure $108^\circ$. Tracer les diagonales $[PR]$ et $[PS]$ et montrer que le triangle $PRS$ est lui aussi un triangle d'or.
