---
id: "0203"
title: "Celsius et Fahrenheit, le même nombre"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, temperature, conversion, relatifs]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 24, задача 7 (p. 59)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Aux États-Unis, les températures se mesurent en degrés Fahrenheit et non en degrés Celsius. Un degré Celsius vaut 1,8 degré Fahrenheit, et une température de $0$ degré Celsius correspond à $32$ degrés Fahrenheit.

Une température peut-elle s'écrire avec **le même nombre** de degrés dans les deux échelles ?

## Hints

1. Note $x$ la température en degrés Celsius. Écris la température correspondante en degrés Fahrenheit : on part de $32$ quand $x = 0$, et chaque degré Celsius en plus ajoute 1,8 degré Fahrenheit.
2. Vérifie ta formule sur un cas connu : l'eau bout à $100$ degrés Celsius, ce qui fait $212$ degrés Fahrenheit.
3. Le nombre 1,8 est égal à la fraction $\frac{9}{5}$. Travailler avec cette fraction évite les virgules.
4. La question demande que les deux nombres soient égaux. Écris l'équation correspondante.
5. Tu obtiens $x = \frac{9}{5}x + 32$. Multiplie les deux membres par $5$, puis regroupe les $x$.

## Solution

**Étape 1. Traduire l'énoncé par une formule.**

Notons $x$ la température en degrés Celsius. Quand $x = 0$, la température vaut $32$ degrés Fahrenheit. Chaque degré Celsius supplémentaire ajoute 1,8 degré Fahrenheit, c'est-à-dire $\frac{9}{5}$ de degré. La température en degrés Fahrenheit est donc

$$\frac{9}{5}\,x + 32.$$

Vérifions sur un cas connu : pour $x = 100$, on obtient $\frac{9}{5} \times 100 + 32 = 180 + 32 = 212$. C'est bien la température d'ébullition de l'eau en degrés Fahrenheit.

**Étape 2. Écrire ce que demande la question.**

On cherche une température pour laquelle les deux nombres de degrés sont égaux :

$$x = \frac{9}{5}\,x + 32.$$

**Étape 3. Résoudre l'équation.**

Multiplions les deux membres par $5$ pour supprimer la fraction :

$$5x = 9x + 160.$$

Regroupons les $x$ d'un côté :

$$5x - 9x = 160,$$
$$-4x = 160,$$
$$x = -40.$$

**Étape 4. Vérifier.**

Pour $x = -40$ : $\frac{9}{5} \times (-40) + 32 = -72 + 32 = -40$. Les deux nombres sont bien égaux.

**Conclusion.**

Oui, c'est possible, et une seule fois : à $-40$ degrés Celsius, le thermomètre américain affiche aussi $-40$ degrés Fahrenheit. L'équation n'a qu'une solution, donc il n'y a pas d'autre température qui convienne.

## Going further

1. À quelle température le nombre de degrés Fahrenheit est-il le double du nombre de degrés Celsius ?
2. Une règle rapide dit : « pour passer des degrés Celsius aux degrés Fahrenheit, on double et on ajoute $30$ ». Pour quelle température cette règle donne-t-elle exactement la bonne réponse ? Est-elle bonne approximation autour de $20$ degrés Celsius ?
3. Dans un repère, trace les droites d'équations $y = x$ et $y = \frac{9}{5}x + 32$. Que représente leur point d'intersection ?
