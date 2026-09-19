---
id: "0229"
title: "Sept couleurs pour 2017 boules"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [fractions, inverse, regroupement, double-comptage]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 28 «Подсчёт двумя способами», задача 6, с. 81-82"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On dispose de $2017$ boules. Chaque boule est peinte d'une seule des sept couleurs de l'arc-en-ciel, et chacune des sept couleurs est utilisée au moins une fois.

Sur chaque boule, on écrit le nombre total de boules qui ont la même couleur qu'elle. Par exemple, s'il y a $300$ boules bleues, on écrit $300$ sur chacune de ces $300$ boules.

On calcule ensuite la somme des inverses de tous les nombres écrits : une boule qui porte le nombre $n$ apporte $\dfrac{1}{n}$ à cette somme.

Combien vaut cette somme ?

## Hints

1. Commence par un exemple beaucoup plus petit. Prends $10$ boules et $3$ couleurs, par exemple $5$ rouges, $3$ vertes et $2$ bleues. Écris les nombres sur les boules, puis calcule la somme des inverses.
2. Recommence avec une autre répartition des mêmes $10$ boules en $3$ couleurs, par exemple $8$, $1$ et $1$. Le résultat change-t-il ?
3. Au lieu d'additionner boule par boule, regroupe les boules par couleur et traite chaque couleur séparément.
4. Une couleur est portée par exactement $n$ boules. Quel nombre est écrit sur chacune de ces $n$ boules ? Combien vaut la somme des inverses pour ces $n$ boules-là ?

## Solution

**L'idée : regrouper les boules par couleur.**

Au lieu de parcourir les boules une par une, on les range en sept paquets, un par couleur, et on calcule la contribution de chaque paquet.

**La contribution d'une couleur.**

Prenons une couleur, par exemple le bleu, et appelons $n$ le nombre de boules bleues. Par définition, on a écrit le nombre $n$ sur chacune de ces $n$ boules. Chacune apporte donc $\dfrac{1}{n}$ à la somme, et les boules bleues apportent ensemble

$$\frac{1}{n} + \frac{1}{n} + \cdots + \frac{1}{n} = n \times \frac{1}{n} = 1,$$

car cette somme comporte exactement $n$ termes, tous égaux à $\dfrac{1}{n}$.

Ce calcul n'utilise jamais la valeur de $n$ : **chaque couleur apporte exactement $1$**, qu'elle soit portée par $2$ boules ou par $1000$.

**On additionne les sept paquets.**

Chaque boule appartient à un paquet et à un seul, donc la somme cherchée est la somme des sept contributions :

$$1 + 1 + 1 + 1 + 1 + 1 + 1 = 7.$$

**Conclusion.**

La somme des inverses des nombres écrits vaut $7$, c'est-à-dire exactement le nombre de couleurs.

Le nombre $2017$ n'a servi à rien. La répartition des boules entre les couleurs non plus. Seul compte le fait qu'il y a sept couleurs et que chacune est utilisée.

## Going further

1. On remplace les $2017$ boules par $2026$ boules et les sept couleurs par douze couleurs, toutes utilisées. Que vaut la somme, sans refaire le calcul ?
2. On n'impose plus que les sept couleurs soient toutes utilisées. Quelles valeurs la somme peut-elle alors prendre ?
3. Sur chaque boule, on écrit maintenant le nombre de boules qui **n'ont pas** sa couleur, et on additionne à nouveau les inverses. La réponse dépend-elle encore de la répartition des couleurs ?
