---
id: "7901"
title: "Deux nombres premiers dont la somme et la différence sont premières"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, parite, multiples de 3, restes]
adapted_from: null
see_also: ["0876"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 3 (énoncé p. 21, solution p. 23)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

$p$ et $q$ sont deux nombres premiers. On sait que $q - p$ et $q + p$ sont eux aussi des nombres premiers.

Que vaut $p + q$ ?

*Rappel : un nombre premier est un entier supérieur ou égal à $2$ qui n'a pas d'autre diviseur positif que $1$ et lui-même.*

## Hints

1. Puisque $q - p$ doit être un nombre premier, il est positif : on a donc $q > p$.
2. Que se passe-t-il si $p$ et $q$ sont tous les deux impairs ? Regarde $p + q$.
3. L'un des deux nombres vaut donc $2$. Lequel ?
4. Il reste à trouver $q$ tel que $q - 2$, $q$ et $q + 2$ soient tous les trois premiers. Parmi trois nombres qui avancent de deux en deux, il y en a toujours un qui est un multiple de $3$.

## Solution

**La réponse : $p + q = 7$.**

**Étape 1 : $p$ et $q$ ne peuvent pas être tous les deux impairs.**

Supposons-le. Alors $p + q$ est pair. Comme $p \ge 3$ et $q \ge 3$, on a $p + q \ge 6$. Un nombre pair supérieur ou égal à $6$ est divisible par $2$ sans lui être égal : il n'est pas premier. C'est impossible, puisque l'énoncé dit que $p + q$ est premier.

Donc l'un au moins des deux nombres $p$ et $q$ vaut $2$.

**Étape 2 : c'est $p$ qui vaut $2$.**

Le nombre $q - p$ est premier, donc $q - p \ge 2$, donc $q > p$. Si on avait $q = 2$, il faudrait $p < 2$, ce qui est impossible pour un nombre premier. Donc

$$p = 2 .$$

**Étape 3 : on cherche $q$.**

Il faut maintenant que $q - 2$, $q$ et $q + 2$ soient tous les trois premiers. Ces trois nombres avancent de deux en deux, donc ils laissent trois restes différents dans la division par $3$ : si $q = 3k$, c'est $q$ qui est multiple de $3$ ; si $q = 3k + 1$, alors $q + 2 = 3(k+1)$ est multiple de $3$ ; si $q = 3k + 2$, alors $q - 2 = 3k$ est multiple de $3$.

Dans tous les cas l'un des trois nombres est un multiple de $3$. Or un multiple de $3$ n'est premier que s'il vaut exactement $3$. On examine donc les trois possibilités :

- $q - 2 = 3$, donc $q = 5$. On obtient $3$, $5$, $7$ : trois nombres premiers. Cela convient.
- $q = 3$. Alors $q - 2 = 1$, qui n'est pas premier. Cela ne convient pas.
- $q + 2 = 3$, donc $q = 1$, qui n'est pas premier. Cela ne convient pas.

**Conclusion.** La seule possibilité est $p = 2$ et $q = 5$. On vérifie : $q - p = 3$ et $q + p = 7$ sont bien premiers. Donc

$$p + q = 2 + 5 = \boxed{7} .$$
