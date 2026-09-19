---
id: "0232"
title: "Vingt parties, douze points et demi"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [tournoi, echecs, points, cas-de-reference, mise-en-equation]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 29 «Турниры», задача 6, с. 88"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Aux échecs, une partie gagnée rapporte $1$ point, une partie nulle rapporte un demi-point, et une partie perdue ne rapporte rien.

Dans un tournoi, un joueur a disputé $20$ parties et a marqué 12,5 points.

Combien de parties a-t-il gagnées de plus qu'il n'en a perdues ?

## Hints

1. Pour ne plus avoir de virgules, compte en demi-points : une victoire vaut $2$ demi-points, une partie nulle en vaut $1$, une défaite $0$. Combien de demi-points le joueur a-t-il marqués ?
2. Prends une situation de référence facile à calculer : imagine que les $20$ parties aient toutes été nulles. Combien de demi-points cela ferait-il ?
3. Le joueur en a marqué davantage. Combien de demi-points de plus ?
4. Pars de la situation « tout nul » et transforme-la petit à petit en la vraie situation. Que gagne-t-on en demi-points quand une partie nulle devient une victoire ? Que perd-on quand elle devient une défaite ?

## Solution

**Premier réflexe : se débarrasser des virgules.**

Comptons tout en **demi-points**. Une victoire vaut alors $2$ demi-points, une partie nulle $1$ demi-point, une défaite $0$. Comme un point vaut deux demi-points, les 12,5 points du joueur font 12,5 × 2 = 25 demi-points.

**L'idée : partir d'une situation de référence.**

Imaginons d'abord que les $20$ parties se soient toutes terminées par une partie nulle. Le joueur aurait alors marqué

$$20 \times 1 = 20 \text{ demi-points}.$$

Il en a en réalité $25$, c'est-à-dire $5$ demi-points de plus.

**Ce que coûte ou rapporte chaque changement.**

Passons maintenant de cette situation imaginaire à la vraie, partie par partie.

- Si une partie nulle devient une **victoire**, le joueur passe de $1$ à $2$ demi-points : il gagne $1$ demi-point.
- Si une partie nulle devient une **défaite**, il passe de $1$ à $0$ demi-point : il perd $1$ demi-point.

Notons $g$ le nombre de parties gagnées et $p$ le nombre de parties perdues. Pour arriver à la vraie situation, il faut transformer $g$ parties nulles en victoires et $p$ parties nulles en défaites. Le total des demi-points varie donc de

$$g \times 1 - p \times 1 = g - p.$$

**Conclusion.**

Cette variation doit être égale à l'écart trouvé plus haut, c'est-à-dire $5$ :

$$g - p = 5.$$

Le joueur a gagné **cinq parties de plus** qu'il n'en a perdues.

Remarquons qu'on ne peut pas savoir combien il a gagné de parties, ni combien il en a perdu : seule leur différence est déterminée par l'énoncé.

**La même chose avec une équation.** Si $g$, $n$ et $p$ désignent les nombres de parties gagnées, nulles et perdues, alors
$$g + n + p = 20 \qquad \text{et} \qquad 2g + n = 25 .$$
En remplaçant $n$ par $20 - g - p$ dans la seconde égalité, on obtient $2g + 20 - g - p = 25$, c'est-à-dire $g - p = 5$.

## Going further

1. Le joueur peut-il avoir gagné $8$ parties ? Si oui, combien en a-t-il alors perdu, et combien de parties nulles a-t-il jouées ?
2. Combien de répartitions différentes (victoires, nulles, défaites) sont compatibles avec l'énoncé ?
3. Même question de départ si le joueur avait marqué $12$ points en $20$ parties.
