---
id: "13853"
title: "Une moyenne de trois plus le quatrième"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [moyenne, systeme, mise en equation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 22 (aussi sujet senior, exercice 19) ; réponse 18 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

On se donne quatre entiers positifs. On en choisit trois, on calcule leur moyenne, puis on
ajoute au résultat le quatrième entier. On peut le faire de quatre façons, selon l'entier que
l'on met à part.

Les quatre résultats obtenus sont $18$, $24$, $26$ et $28$. Quel est le plus grand des quatre
entiers ?

## Hints

1. Appelle les entiers $a$, $b$, $c$, $d$, et $S$ leur somme. Écris le résultat obtenu quand on met
   $d$ à part, en fonction de $S$ et de $d$.
2. Additionne les quatre résultats.
3. Une fois $S$ connu, chaque résultat donne un des quatre entiers.

## Solution

Notons $a$, $b$, $c$, $d$ les quatre entiers et $S = a + b + c + d$.

**Un résultat en fonction de l'entier mis à part.** Si l'on met $d$ à part, on obtient

$$\frac{a + b + c}{3} + d = \frac{S - d}{3} + d = \frac{S}{3} + \frac{2d}{3}.$$

C'est la même chose pour les autres : l'entier $x$ mis à part donne le résultat
$\dfrac{S}{3} + \dfrac{2x}{3}$.

**La somme $S$.** En additionnant les quatre résultats, on trouve
$\dfrac{4S}{3} + \dfrac{2S}{3} = 2S$. Donc

$$2S = 18 + 24 + 26 + 28 = 96, \qquad S = 48, \qquad \frac{S}{3} = 16.$$

**Les quatre entiers.** Chaque résultat $r$ vérifie $r = 16 + \dfrac{2x}{3}$, donc
$x = \dfrac{3(r - 16)}{2}$. On trouve :

$$r = 18 \to x = 3, \qquad r = 24 \to x = 12, \qquad r = 26 \to x = 15, \qquad r = 28 \to x = 18.$$

On vérifie que $3 + 12 + 15 + 18 = 48$. Par exemple, en mettant $18$ à part,
$\dfrac{3 + 12 + 15}{3} + 18 = 10 + 18 = 28$.

**Le plus grand des quatre entiers est $18$.**
