---
id: "0532"
title: "Trois angles entiers"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [triangle, angles, inegalites, entiers]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 7, задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Dans un triangle acutangle, le plus petit angle est égal au cinquième du plus grand. Les trois angles ont pour mesure un nombre entier de degrés, et ces trois mesures sont deux à deux différentes.

Déterminer les trois angles.

*(Un triangle est dit acutangle quand ses trois angles sont aigus, c'est-à-dire strictement inférieurs à $90°$.)*

## Hints

1. Appelle $x$ la mesure du plus petit angle. Exprime les deux autres angles en fonction de $x$, sans oublier que la somme des angles d'un triangle vaut $180°$.
2. Écris que le plus petit angle est bien le plus petit, et que le plus grand est bien le plus grand. Cela fait deux inégalités.
3. Le mot « acutangle » donne une inégalité de plus. Il suffit de l'écrire pour le plus grand des trois angles : pourquoi ?
4. Résous chaque inégalité séparément. Tu obtiens un encadrement de $x$. Comme $x$ est un nombre entier, il ne reste plus qu'une seule valeur possible.

## Solution

**Mise en équation.**

Notons $x$ la mesure, en degrés, du plus petit angle. Le plus grand vaut alors $5x$. Comme la somme des angles d'un triangle vaut $180°$, le troisième angle vaut

$$180 - x - 5x = 180 - 6x.$$

**Les trois conditions.**

Il faut que $x$ soit vraiment le plus petit des trois et $5x$ vraiment le plus grand, donc que le troisième angle soit compris entre les deux :

$$x < 180 - 6x < 5x.$$

Les inégalités sont strictes parce que les trois mesures sont supposées différentes.

Il faut de plus que le triangle soit acutangle. Il suffit de l'écrire pour le plus grand angle : si le plus grand est aigu, les deux autres le sont aussi, puisqu'ils sont plus petits. Cela donne

$$5x < 90.$$

**Résolution.**

Traitons les trois inégalités l'une après l'autre.

$$x < 180 - 6x \iff 7x < 180 \iff x < \frac{180}{7} \approx \text{25,7}$$

$$180 - 6x < 5x \iff 180 < 11x \iff x > \frac{180}{11} \approx \text{16,4}$$

$$5x < 90 \iff x < 18$$

Rassemblons : $x$ est un nombre entier, avec $x > \text{16,4}$ et $x < 18$. La première condition donne $x \geqslant 17$ et la seconde $x \leqslant 17$. (La condition $x < \text{25,7}$ est alors automatiquement satisfaite.)

Il ne reste donc qu'une possibilité :

$$x = 17.$$

**Les trois angles.**

- le plus petit : $17°$ ;
- le plus grand : $5 \times 17 = 85°$ ;
- le troisième : $180 - 6 \times 17 = 180 - 102 = 78°$.

**Vérification.** La somme fait bien $17 + 78 + 85 = 180$. Les trois mesures sont différentes. Le plus grand angle, $85°$, est bien aigu, donc le triangle est acutangle. Enfin $85 \div 5 = 17$ : le plus petit angle est bien le cinquième du plus grand.

**Conclusion.** Les trois angles mesurent $17°$, $78°$ et $85°$.

## Going further

1. On enlève la condition « acutangle » et on garde tout le reste. Combien de triangles répondent alors à la question ? Donne-les tous.
2. Reprends l'énoncé en remplaçant « le cinquième » par « le quart ». Combien de solutions trouves-tu ?
