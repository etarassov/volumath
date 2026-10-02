---
id: "3804"
title: "Le sac de billes rouges et vertes"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [pire-des-cas, majoration, exemple-et-preuve]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 17"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Un sac ne contient que des billes rouges et des billes vertes. On sait deux choses :

- si on tire cinq billes du sac, n'importe lesquelles, il y a toujours au moins une rouge parmi elles ;
- si on tire six billes du sac, n'importe lesquelles, il y a toujours au moins une verte parmi elles.

Quel est le plus grand nombre de billes que le sac peut contenir ?

## Hints

1. « Cinq billes contiennent toujours une rouge » : que se passerait-il s'il y avait cinq billes vertes dans le sac ?
2. Traduis chacune des deux conditions en une phrase qui parle du nombre de vertes, puis du nombre de rouges.
3. Une fois que tu as un maximum pour le nombre de vertes et un maximum pour le nombre de rouges, n'oublie pas de vérifier que ce maximum est vraiment atteint : donne un sac qui marche.

## Solution

**L'idée : traduire chaque condition en un nombre maximal de billes d'une couleur.**

Notons $v$ le nombre de billes vertes et $r$ le nombre de billes rouges.

**Étape 1. La première condition majore le nombre de vertes.**

Supposons qu'il y ait au moins $5$ billes vertes. On pourrait alors tirer $5$ billes vertes, donc un tirage de $5$ billes sans aucune rouge : c'est interdit.

Donc

$$v \leqslant 4.$$

**Étape 2. La deuxième condition majore le nombre de rouges.**

De la même façon, s'il y avait au moins $6$ billes rouges, on pourrait tirer $6$ billes toutes rouges, donc sans aucune verte : c'est interdit.

Donc

$$r \leqslant 5.$$

**Étape 3. On majore le total.**

$$r + v \leqslant 5 + 4 = 9.$$

Le sac contient donc au plus $9$ billes.

**Étape 4. On montre que $9$ est possible.**

Prenons un sac avec exactement $5$ billes rouges et $4$ billes vertes.

- Si on tire $5$ billes parmi ces $9$, on en laisse $4$ de côté. Comme il y a $5$ rouges et qu'on n'en laisse que $4$ de côté, au moins une rouge est tirée. La première condition est vérifiée.
- Si on tire $6$ billes, on en laisse $3$ de côté. Comme il y a $4$ vertes, au moins une verte est tirée. La deuxième condition est vérifiée.

Ce sac de $9$ billes convient donc.

**Conclusion.** Le sac peut contenir au plus $9$ billes, et $9$ est atteint avec $5$ rouges et $4$ vertes.

## Going further

1. On remplace les deux conditions par : « parmi $4$ billes il y a toujours une rouge » et « parmi $7$ billes il y a toujours une verte ». Combien de billes au maximum ?
2. Peut-on avoir un sac de $9$ billes qui convienne avec une autre répartition que $5$ rouges et $4$ vertes ?
