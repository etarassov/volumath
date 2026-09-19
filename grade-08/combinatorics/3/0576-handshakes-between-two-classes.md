---
id: "0576"
title: "Poignées de main entre deux classes"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [denombrement, comptage-double, egalite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 1 «Подсчёт двумя способами», задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Des élèves de sixième et des élèves de cinquième se sont serré la main. À la fin, on constate que chaque élève de sixième a serré la main de sept élèves de cinquième, et que chaque élève de cinquième a serré la main de six élèves de sixième.

Y avait-il plus d'élèves de sixième, ou plus d'élèves de cinquième ?

## Hints

1. Ne cherche pas à dessiner qui a serré la main de qui. Compte plutôt le nombre total de poignées de main échangées.
2. Ce nombre total, tu peux le calculer de deux façons : en partant des élèves de sixième, puis en partant des élèves de cinquième.
3. Appelle $a$ le nombre d'élèves de sixième et $b$ le nombre d'élèves de cinquième. Écris le nombre total de poignées de main avec $a$, puis avec $b$.
4. Tu obtiens $7a = 6b$. Si $b$ était inférieur ou égal à $a$, que vaudrait $6b$ par rapport à $7a$ ?

## Solution

**L'idée : compter la même chose de deux façons.**

Appelons $a$ le nombre d'élèves de sixième et $b$ le nombre d'élèves de cinquième. Appelons $P$ le nombre total de poignées de main échangées.

**Première façon de compter $P$ : du côté des sixièmes.**

Chaque élève de sixième a donné exactement $7$ poignées de main. Comme il y a $a$ élèves de sixième, cela fait

$$P = 7a$$

Attention : aucune poignée de main n'est comptée deux fois de cette manière, car chaque poignée de main relie un élève de sixième à un élève de cinquième, et elle est comptée une seule fois, par son élève de sixième.

**Deuxième façon de compter $P$ : du côté des cinquièmes.**

De la même manière, chaque élève de cinquième a donné exactement $6$ poignées de main, donc

$$P = 6b$$

**On compare les deux résultats.**

C'est le même nombre $P$ qui a été calculé deux fois, donc

$$7a = 6b$$

Supposons un instant qu'il y ait au moins autant d'élèves de sixième que d'élèves de cinquième, c'est-à-dire $a \geq b$. Alors

$$7a \geq 7b > 6b$$

(la deuxième inégalité est stricte car $b > 0$ : il y a bien des élèves de cinquième, sinon personne n'aurait serré de main). On obtiendrait $7a > 6b$, ce qui contredit l'égalité $7a = 6b$.

Donc $a < b$.

**Conclusion.**

Il y avait plus d'élèves de cinquième que d'élèves de sixième.

On peut d'ailleurs être plus précis : de $7a = 6b$ on tire $b = \dfrac{7a}{6}$, c'est-à-dire que le nombre de cinquièmes est égal au nombre de sixièmes multiplié par $\dfrac{7}{6}$. Par exemple, avec $6$ élèves de sixième il y aurait $7$ élèves de cinquième.

## Going further

1. Dans un pays imaginaire vivent des Carabas et des Barabas. Chaque Carabas connaît six Carabas et neuf Barabas. Chaque Barabas connaît dix Carabas et sept Barabas. Lesquels sont les plus nombreux ? (Attention : certaines données de l'énoncé ne servent à rien.)
2. Peut-on avoir exactement $10$ élèves de sixième dans la situation de l'exercice ?
