---
id: "0159"
title: "Deux élèves prennent des notes"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [impairs, somme, carres, equation, probleme-concret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 19, задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Pendant une conférence, deux élèves prennent des notes.

Antoine est parfaitement réveillé : il écrit $90$ mots par minute, du début à la fin.

Claire, elle, s'est levée bien trop tôt. Pendant la première minute de la conférence, elle n'écrit qu'un seul mot. Puis elle se réveille peu à peu : trois mots pendant la deuxième minute, cinq pendant la troisième, sept pendant la quatrième, et ainsi de suite.

a) Combien de temps a duré la conférence, sachant qu'à la fin les deux élèves avaient écrit exactement le même nombre de mots ?

b) Combien de mots chacun a-t-il écrits ?

## Hints

1. Appelle $n$ la durée de la conférence, en minutes. Combien de mots Antoine a-t-il écrits en tout ?
2. Écris la somme des mots de Claire : $1 + 3 + 5 + \dots$ Combien de termes contient-elle, et quel est le dernier ?
3. Calcule la somme des premiers nombres impairs : $1$, puis $1+3$, puis $1+3+5$, puis $1+3+5+7$. Ces nombres te rappellent-ils quelque chose ?
4. Tu arrives à une égalité entre $n^2$ et $90n$. La conférence a duré au moins une minute, donc $n$ n'est pas nul : que peux-tu faire des deux côtés ?

## Solution

**Étape 1. Traduire l'énoncé.**

Notons $n$ la durée de la conférence, en minutes (un nombre entier de minutes).

*Antoine.* Il écrit $90$ mots chaque minute pendant $n$ minutes, donc

$$90n \text{ mots}$$

*Claire.* Pendant la $1^\text{re}$ minute elle écrit $1$ mot, pendant la $2^\text{e}$ minute $3$ mots, pendant la $3^\text{e}$ minute $5$ mots… Pendant la $k$-ième minute elle écrit le $k$-ième nombre impair, c'est-à-dire $2k-1$ mots. En tout elle écrit donc

$$1 + 3 + 5 + \dots + (2n-1) \text{ mots}$$

**Étape 2. Calculer la somme des nombres impairs.**

Regardons les premières valeurs :

$$1 = 1 \qquad 1+3 = 4 \qquad 1+3+5 = 9 \qquad 1+3+5+7 = 16$$

Ce sont les carrés $1^2$, $2^2$, $3^2$, $4^2$. La somme des $n$ premiers nombres impairs vaut $n^2$.

On peut s'en convaincre avec un dessin : un carré de $n$ sur $n$ carreaux se découpe en $n$ équerres emboîtées, en partant d'un coin, et ces équerres contiennent respectivement $1$, $3$, $5$, … , $2n-1$ carreaux. Le carré contient $n^2$ carreaux, d'où la formule.

Claire a donc écrit $n^2$ mots.

**Étape 3. Question a) : résoudre.**

Les deux élèves ont écrit autant de mots l'un que l'autre :

$$n^2 = 90n$$

La conférence a duré au moins une minute, donc $n$ n'est pas nul et on peut diviser les deux membres par $n$ :

$$n = 90$$

La conférence a duré $90$ minutes, c'est-à-dire une heure et demie.

**Étape 4. Question b) : compter les mots.**

Antoine : $90 \times 90 = 8100$ mots.

Claire : $90^2 = 8100$ mots.

Les deux comptes coïncident, ce qui confirme le résultat.

**Réponse.** La conférence a duré $90$ minutes, et chaque élève a écrit $8100$ mots.

## Going further

Pendant la $k$-ième minute, Claire écrit $2k-1$ mots. Elle écrit donc plus vite qu'Antoine dès que $2k-1 > 90$, c'est-à-dire à partir de la $46^\text{e}$ minute : elle écrit alors $91$ mots dans la minute, contre $90$ pour lui.

Mais avoir pris de l'avance sur une minute ne suffit pas pour rattraper le retard accumulé : il lui faut encore $45$ minutes de plus, et les deux ne sont à égalité qu'à la toute fin, à la $90^\text{e}$ minute.
