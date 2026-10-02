---
id: "6109"
title: "Ranger n crêpes en 2n − 3 retournements"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [algorithme, majoration, recurrence, tri, strategie]
adapted_from: null
see_also: ["6108", "6110"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter/Spring 2016, rubrique « In Session »"
  reference: "MTCircularWS2016.pdf, pages 16 à 18, « Flipping Pancakes » par Katie Haymaker. La séance décrit l'algorithme et annonce la borne 2n − 3 sans la rédiger."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWS2016.pdf"
---

## Statement

Un serveur porte une pile de $n$ crêpes, toutes de tailles différentes. Il veut les ranger de la plus petite en haut à la plus grande en bas.

Son seul geste : glisser sa spatule quelque part dans la pile et **retourner d'un bloc tout ce qui est au-dessus de la spatule**. Le paquet retourné se repose à l'envers sur le reste.

Le serveur voudrait une garantie : quelle que soit la pile qu'on lui donne, il veut pouvoir promettre un nombre de retournements.

Montrer que, pour tout $n \geqslant 2$, n'importe quelle pile de $n$ crêpes peut être rangée en au plus

$$2n - 3$$

retournements.

## Hints

1. Occupe-toi d'abord de **la plus grande crêpe**. Où doit-elle finir ? Une fois qu'elle y est, y touchera-t-on encore ?
2. Si la plus grande crêpe est quelque part au milieu, comment l'amener tout en haut de la pile en un seul geste ?
3. Une fois la plus grande crêpe tout en haut, un seul geste l'envoie tout en bas. Combien de gestes a-t-il fallu en tout pour elle ?
4. Recommence alors avec les $n-1$ crêpes du dessus, en oubliant la plus grande qui ne bougera plus. Arrête-toi quand il n'en reste que deux : combien de gestes faut-il pour les deux dernières ?
5. Additionne : $2$ gestes pour chacune des crêpes de la plus grande jusqu'à la troisième en descendant, puis $1$ geste au plus pour les deux dernières.

## Solution

**L'algorithme.**

Voici une méthode qui range n'importe quelle pile.

*Étape pour la plus grande crêpe.* Repérons la plus grande crêpe. Supposons qu'elle occupe la position $j$ en partant du haut.

- Si $j > 1$, glissons la spatule sous les $j$ crêpes du haut et retournons ce paquet. La plus grande crêpe se retrouve tout en haut de la pile. Cela coûte $1$ retournement. (Si $j = 1$, elle y est déjà, cela coûte $0$.)
- Glissons maintenant la spatule tout en bas et retournons la pile entière. La plus grande crêpe se retrouve tout en bas, à sa place définitive. Cela coûte $1$ retournement.

Au plus $2$ retournements ont été utilisés, et la plus grande crêpe est en place. Comme tous les gestes suivants ne concerneront que les crêpes au-dessus d'elle, elle n'y bougera plus.

*On recommence.* Il reste une pile de $n-1$ crêpes posée sur la plus grande. On lui applique la même étape : au plus $2$ retournements placent la deuxième plus grande juste au-dessus de la plus grande.

Et ainsi de suite, tant qu'il reste au moins trois crêpes à ranger.

*La fin.* Quand il ne reste que $2$ crêpes non rangées, tout en haut de la pile, deux cas :

- elles sont déjà dans le bon ordre : $0$ retournement ;
- elles sont à l'envers : $1$ retournement de la crêpe du haut avec sa voisine remet tout en ordre.

Au plus $1$ retournement.

**Le compte.**

L'étape à $2$ retournements est appliquée à la plus grande crêpe, puis à la deuxième plus grande, et ainsi de suite jusqu'à ce qu'il n'en reste que deux à ranger. Elle est donc appliquée pour les crêpes de rang $n$, $n-1$, ..., $3$, c'est-à-dire $n - 2$ fois. Ensuite, la fin coûte au plus $1$ retournement. Au total, au plus

$$2(n-2) + 1 = 2n - 3$$

retournements. $\square$

**Vérifications sur les petits cas.**

- $n = 2$ : la borne donne $2 \times 2 - 3 = 1$. C'est correct : deux crêpes à l'envers se remettent en place en un geste.
- $n = 3$ : la borne donne $3$. C'est exactement le nombre nécessaire dans le pire des cas, comme le montre l'étude des six piles de trois crêpes.

## Going further

La borne $2n - 3$ n'est pas toujours la meilleure. Pour $n = 4$, elle promet $5$ retournements, alors que $4$ suffisent toujours ; pour $n = 5$, elle promet $7$ alors que $5$ suffisent.

Le vrai nombre de retournements nécessaires dans le pire des cas, appelé le $n$-ième nombre de crêpes, n'est connu que jusqu'à $n = 19$ : il faut un calcul par ordinateur pour chaque nouvelle valeur. La meilleure majoration générale connue est d'environ $\dfrac{18n}{11}$, ce qui est un peu moins de $2n$, et elle a demandé un article de recherche entier.

Remarque enfin que cet algorithme est exactement un **tri par sélection** : on place le plus grand élément, puis le deuxième plus grand, et ainsi de suite. Ce qui change, c'est qu'on n'a pas le droit d'échanger deux éléments quelconques, seulement de retourner un préfixe de la pile.
