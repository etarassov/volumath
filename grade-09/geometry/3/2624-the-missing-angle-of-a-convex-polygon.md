---
id: "2624"
title: "L'angle qu'on a oublié de compter"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [polygone, somme-des-angles, encadrement, convexe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 2 (AMC 1973, problème 16 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

On additionne tous les angles d'un polygone convexe à $n$ côtés **sauf un**, et on trouve $2190°$.

Combien ce polygone a-t-il de côtés ? Quelle est la mesure de l'angle oublié ?

## Hints

1. Quelle est la somme de **tous** les angles d'un polygone à $n$ côtés ? Découpe-le en triangles à partir d'un sommet.
2. L'angle oublié vaut donc la somme totale moins $2190$. Écris cette expression en fonction de $n$.
3. Le polygone est **convexe** : que peut-on dire de chacun de ses angles ? Il est forcément compris entre deux valeurs.
4. Tu obtiens un encadrement qui ne laisse qu'une seule valeur possible pour $n$.

## Solution

**La somme de tous les angles.**

En choisissant un sommet et en le reliant à tous les autres, un polygone convexe à $n$ côtés se découpe en $n - 2$ triangles. Comme la somme des angles d'un triangle vaut $180°$, la somme de tous les angles du polygone vaut
$$S = (n-2) \times 180° .$$

**L'angle oublié.**

Notons $\alpha$ la mesure de l'angle qui n'a pas été compté. Alors
$$\alpha = S - 2190 = (n-2)\times 180 - 2190 .$$

**Utiliser la convexité.**

Le polygone est convexe, donc chacun de ses angles est strictement compris entre $0°$ et $180°$ :
$$0 < \alpha < 180 .$$

Cela donne
$$0 \ < \ (n-2)\times 180 - 2190 \ < \ 180 .$$

**Résolution.**

*Inégalité de gauche :*
$$(n-2) \times 180 > 2190 \quad \Longleftrightarrow \quad n - 2 > \frac{2190}{180} = \text{12,166}\ldots \quad \Longleftrightarrow \quad n > \text{14,166}\ldots .$$

*Inégalité de droite :*
$$(n-2)\times 180 < 2370 \quad \Longleftrightarrow \quad n-2 < \frac{2370}{180} = \text{13,166}\ldots \quad \Longleftrightarrow \quad n < \text{15,166}\ldots .$$

Donc $\text{14,166}\ldots < n < \text{15,166}\ldots$. Comme $n$ est un entier, la seule possibilité est
$$n = 15 .$$

**L'angle oublié.**

$$\alpha = (15 - 2) \times 180 - 2190 = 13 \times 180 - 2190 = 2340 - 2190 = 150° .$$

$$\boxed{\text{Le polygone a } 15 \text{ côtés, et l'angle oublié mesure } 150° .}$$

**Vérification.** La somme des angles d'un polygone convexe à $15$ côtés vaut $13 \times 180 = 2340°$, et $2340 - 150 = 2190°$. De plus $150°$ est bien strictement compris entre $0°$ et $180°$, ce qui est cohérent avec un polygone convexe.

## Going further

L'énoncé ne dit pas quel angle a été oublié, et on n'a pas besoin de le savoir : c'est la convexité qui fait tout le travail. Sans elle, un polygone pourrait avoir un angle rentrant de plus de $180°$, et plusieurs valeurs de $n$ deviendraient possibles. Par exemple, avec un angle de $330°$, on trouverait $(n-2)\times 180 = 2190 + 330 = 2520$, soit $n = 16$.
