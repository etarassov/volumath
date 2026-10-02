---
id: "0402"
title: "Six chiffres qui décroissent"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, chiffres, choix, bijection]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 10, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Combien y a-t-il de nombres de six chiffres dans lesquels chaque chiffre, à partir du deuxième, est strictement plus petit que celui qui le précède ?

Par exemple $975310$ convient, mais $975130$ ne convient pas.

## Hints

1. Dans un tel nombre, deux chiffres peuvent-ils être égaux ?
2. Prenez six chiffres différents, par exemple $4$, $0$, $7$, $2$, $9$, $5$. De combien de façons peut-on les ranger pour obtenir un nombre qui convient ?
3. Un nombre qui convient est donc entièrement déterminé par l'ensemble de ses six chiffres. Compter ces nombres, c'est compter les façons de choisir six chiffres différents parmi les dix chiffres $0, 1, \dots, 9$.
4. Attention au chiffre $0$ : peut-il se retrouver en tête du nombre ? Puis comptez : choisir six chiffres à garder, c'est aussi choisir les quatre chiffres à laisser de côté.

## Solution

**Un tel nombre est déterminé par l'ensemble de ses chiffres.**

Les chiffres décroissent strictement, donc ils sont tous différents.

Réciproquement, partons de six chiffres différents. Une seule façon de les ranger convient : celle qui les met du plus grand au plus petit. Par exemple avec $4$, $0$, $7$, $2$, $9$, $5$, le seul nombre qui convient est $975420$.

Donc : à chaque nombre cherché correspond un ensemble de six chiffres différents, et à chaque ensemble de six chiffres différents correspond exactement un nombre cherché.

**Le chiffre $0$ ne pose pas de problème.**

Le premier chiffre du nombre est le plus grand des six. Six chiffres différents choisis parmi $0, 1, \dots, 9$ ont toujours un plus grand chiffre supérieur ou égal à $5$ : il n'est donc jamais nul, et le nombre a bien six chiffres.

**Compter les choix de six chiffres parmi dix.**

Choisir les six chiffres que l'on garde revient à choisir les quatre chiffres que l'on laisse de côté. Comptons ces quatre-là.

Si on les choisissait l'un après l'autre en tenant compte de l'ordre, il y aurait
$$10 \times 9 \times 8 \times 7 = 5040$$
façons de faire. Mais l'ordre dans lequel on met les quatre chiffres de côté ne change rien : chaque ensemble de quatre chiffres a donc été compté $4! = 24$ fois. D'où
$$\frac{5040}{24} = 210.$$

**Conclusion.** Il y a $210$ nombres de six chiffres dont les chiffres décroissent strictement.

## Going further

1. Combien y a-t-il de nombres de six chiffres dont les chiffres croissent strictement ? Attention, ici le chiffre $0$ demande de la prudence.
2. Et si l'on demande seulement que chaque chiffre soit inférieur ou égal au précédent (les répétitions sont permises) ? Commencez par les nombres de deux chiffres, puis de trois, pour voir ce qui change.
