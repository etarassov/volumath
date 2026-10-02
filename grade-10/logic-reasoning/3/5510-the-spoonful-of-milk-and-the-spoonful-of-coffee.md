---
id: "5510"
title: "La cuillerée de lait et la cuillerée de café"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, comptage, melange, fractions, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 17 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

Sur la table, deux tasses identiques : l'une est pleine de café, l'autre est pleine de lait, et elles contiennent exactement la même quantité de liquide.

On prend une cuillerée de lait et on la verse dans le café. On mélange soigneusement. Puis on prend une cuillerée de ce mélange et on la reverse dans le lait.

**a)** À la fin, y a-t-il plus de lait dans la tasse de café, ou plus de café dans la tasse de lait ?

**b)** Et si on ne mélange pas du tout avant de reprendre la cuillerée, la réponse change-t-elle ?

## Hints

1. Avant de calculer quoi que ce soit, regarde la **quantité totale de liquide** dans chaque tasse à la fin. A-t-elle changé ?
2. La tasse de café contient à la fin la même quantité de liquide qu'au début. Ce liquide est fait de café et de lait. Si tu sais combien il y a de lait, tu sais combien il y a de café.
3. Le café qui n'est plus dans la tasse de café, où est-il passé ? Il n'y a que deux tasses.
4. Si tu veux quand même calculer : appelle $V$ le contenu d'une tasse et $s$ le volume d'une cuillerée. Après le premier transfert, quelle proportion du mélange est du lait ?

## Solution

**a) La réponse : les deux quantités sont exactement égales.**

*La démonstration courte, sans aucun calcul.* Regardons la tasse de café à la fin. Elle a reçu une cuillerée, puis en a rendu une : elle contient donc exactement la même quantité de liquide qu'au départ, disons $V$.

Ce liquide est un mélange de café et de lait. Notons $m$ la quantité de lait qu'elle contient. Alors elle contient $V - m$ de café.

Mais la quantité totale de café dans la pièce n'a pas changé : elle vaut toujours $V$, et il n'y a que deux tasses. Le café qui manque dans la tasse de café, c'est-à-dire
$$V - (V - m) = m ,$$
se trouve donc forcément dans la tasse de lait.

**La tasse de lait contient donc exactement autant de café que la tasse de café contient de lait.** Les deux quantités sont égales, et cela ne dépend ni de la taille de la cuillère, ni du nombre d'allers-retours.

*La démonstration par le calcul.* Notons $V$ le contenu d'une tasse et $s$ le volume d'une cuillerée.

Après avoir versé la cuillerée de lait dans le café, la tasse de café contient $V + s$ de liquide, dont $V$ de café et $s$ de lait. La proportion de lait dans ce mélange est donc $\dfrac{s}{V+s}$.

On prélève une cuillerée de ce mélange, c'est-à-dire un volume $s$. Elle contient
$$s \times \frac{s}{V+s} = \frac{s^2}{V+s} \ \text{ de lait}, \qquad s \times \frac{V}{V+s} = \frac{sV}{V+s} \ \text{ de café} .$$

Il reste donc dans la tasse de café
$$s - \frac{s^2}{V+s} = \frac{s(V+s) - s^2}{V+s} = \frac{sV}{V+s} \ \text{ de lait} ,$$
et on vient de verser dans la tasse de lait
$$\frac{sV}{V+s} \ \text{ de café} .$$

Les deux quantités valent toutes les deux $\dfrac{sV}{V+s}$ : elles sont égales, comme annoncé.

**b) Sans mélanger.**

La réponse est la même, et c'est pour cela que la première démonstration est la bonne : **elle n'a jamais utilisé le fait qu'on mélange.** Elle utilise seulement deux choses :

- chaque tasse contient à la fin autant de liquide qu'au début ;
- la quantité totale de café est constante.

Ces deux faits restent vrais que l'on mélange bien, mal, ou pas du tout. Le mélange change la valeur commune des deux quantités (si l'on ne mélange pas du tout et qu'on reprend du lait pur, les deux quantités valent $0$), mais il ne peut jamais rendre l'une plus grande que l'autre.

**Ce qu'il faut retenir.** Un problème qui semble réclamer un calcul compliqué se règle parfois par un simple bilan : ce qui manque ici est forcément là-bas. C'est le même raisonnement que pour les échanges de monnaie ou les bilans de population.

## Going further

1. Reprends le calcul avec une cuillerée valant exactement le dixième d'une tasse. Quelle est la valeur commune des deux quantités ?
2. On répète l'opération dix fois de suite (une cuillerée de lait vers le café, puis une cuillerée du mélange vers le lait). Les deux quantités restent-elles égales ?
3. Trois tasses, l'une de café, l'une de lait, l'une de thé, et on fait circuler une cuillerée de la première vers la deuxième, de la deuxième vers la troisième, puis de la troisième vers la première. Que peut-on encore affirmer ?
