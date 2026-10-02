---
id: "1408"
title: "Deux prisonniers, deux pièces de monnaie"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [strategie, parite, probabilite, cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

Alice et Bob sont enfermés dans deux cellules séparées, sans aucun moyen de communiquer.

Le gardien donne à chacun une pièce de monnaie équilibrée. Chacun lance sa pièce, regarde son propre résultat, puis doit annoncer une prévision du résultat de **l'autre**. Les deux annonces sont faites en même temps.

Si au moins l'un des deux a deviné juste, tous les deux sont libérés. S'ils se trompent tous les deux, ils restent en prison.

Alice et Bob ont pu se mettre d'accord sur une stratégie **avant** d'être enfermés, mais ni l'un ni l'autre ne verra le lancer de l'autre.

Quelle est la meilleure probabilité de libération qu'ils puissent s'assurer ?

## Hints

1. Chacun ne connaît qu'une chose au moment d'annoncer : son propre résultat. Sa stratégie est donc une règle du type « si je vois pile, j'annonce ..., si je vois face, j'annonce ... ».
2. Il n'y a que quatre issues possibles pour le couple de lancers : PP, PF, FP, FF. Une bonne stratégie doit s'en sortir dans les quatre.
3. Ne pas chercher à ce que chacun ait raison souvent. Il suffit que, dans chaque cas, **au moins un** des deux ait raison : les deux peuvent se répartir le travail.
4. Séparer les issues en deux familles : celles où les deux pièces donnent la même chose, et celles où elles donnent des choses différentes. Peut-on confier la première famille à Alice et la seconde à Bob ?

## Solution

**La réponse est surprenante : ils peuvent se libérer à coup sûr, avec probabilité $1$.**

**La stratégie.**

Ils conviennent de ceci :

- **Alice annonce ce qu'elle a vu elle-même.** Si sa pièce donne pile, elle annonce « Bob a fait pile » ; si elle donne face, elle annonce « Bob a fait face ».
- **Bob annonce le contraire de ce qu'il a vu.** Si sa pièce donne pile, il annonce « Alice a fait face » ; si elle donne face, il annonce « Alice a fait pile ».

Autrement dit, Alice parie que les deux pièces sont **identiques**, et Bob parie qu'elles sont **différentes**.

**Pourquoi cela marche toujours.**

Deux cas, et deux seulement.

*Cas 1 : les deux pièces donnent le même résultat.* Alice a annoncé pour Bob ce qu'elle a vu chez elle, c'est-à-dire le résultat commun : **Alice a raison**.

*Cas 2 : les deux pièces donnent des résultats différents.* Bob a annoncé pour Alice le contraire de ce qu'il a vu chez lui, c'est-à-dire l'autre résultat, qui est précisément celui d'Alice : **Bob a raison**.

Dans les deux cas, au moins l'un des deux a deviné juste. Vérifions-le sur les quatre issues, en notant P pour pile et F pour face.

| Alice | Bob | Annonce d'Alice (sur Bob) | Annonce de Bob (sur Alice) | Qui a raison ? |
|---|---|---|---|---|
| P | P | P | F | Alice |
| P | F | P | P | Bob |
| F | P | F | F | Bob |
| F | F | F | P | Alice |

La dernière colonne n'est jamais vide.

**Conclusion.** Avec cette stratégie, Alice et Bob sont libérés **à tous les coups** : la probabilité de libération vaut $\boxed{1}$. Comme une probabilité ne peut pas dépasser $1$, c'est bien la meilleure possible.

**Ce qui rend l'exercice trompeur.** Chacun pris séparément a exactement une chance sur deux d'avoir raison, et rien ne peut améliorer cela : personne n'a la moindre information sur la pièce de l'autre. Ce qui change tout, c'est que les deux réussites ne sont pas indépendantes : la stratégie les rend **complémentaires**. Alice se trompe exactement quand Bob a raison. On n'a pas augmenté le nombre de bonnes réponses en moyenne (il y en a toujours exactement une), on a seulement réparti ces bonnes réponses pour qu'il y en ait une dans chaque cas au lieu de les entasser parfois à deux et parfois à zéro.

## Going further

1. Que se passe-t-il si les pièces ne sont pas équilibrées, par exemple si chacune donne pile avec probabilité 0,7 ? La stratégie marche-t-elle encore ?
2. Trois prisonniers, trois pièces, chacun devine le résultat d'un voisin désigné à l'avance. Peut-on encore garantir qu'au moins un ait raison ?
3. Le gardien change la règle : il faut maintenant que les **deux** aient raison. Quelle est la meilleure probabilité de libération ?
