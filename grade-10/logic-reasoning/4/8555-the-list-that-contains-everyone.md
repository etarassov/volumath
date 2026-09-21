---
id: "8555"
title: "La liste qui contient tout le monde"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [principe-de-lextremum, tournoi, raisonnement-par-labsurde, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 13"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Dans un tournoi, chaque joueuse affronte chaque autre joueuse exactement une fois. Il n'y a
jamais de match nul : chaque match a une gagnante et une perdante.

À la fin du tournoi, chaque joueuse écrit une liste. Sur sa liste figurent :

- les noms des joueuses qu'elle a battues ;
- et les noms des joueuses battues par les joueuses qu'elle a battues.

Démontrer qu'il existe au moins une liste sur laquelle figurent les noms de toutes les autres
joueuses.

## Hints

1. Quelle joueuse a le plus de chances d'avoir une liste complète ? Regarde celle qui a gagné le plus de matchs.
2. Raisonne par l'absurde : suppose que la liste de cette joueuse-là ne contienne pas tout le monde, et considère une joueuse absente de sa liste.
3. Que sait-on du résultat du match entre ces deux joueuses ? Et des matchs de la joueuse absente contre celles que la première a battues ?
4. Compte alors les victoires de la joueuse absente.

## Solution

**Le choix.** Considérons une joueuse $A$ qui a gagné le plus grand nombre de matchs du
tournoi (s'il y en a plusieurs, on en choisit une). Notons $v$ son nombre de victoires, et
$V$ l'ensemble des joueuses qu'elle a battues, de sorte que $V$ compte $v$ joueuses.

La liste de $A$ contient donc les joueuses de $V$, et toutes celles qui ont été battues par
une joueuse de $V$.

**Raisonnement par l'absurde.** Supposons que la liste de $A$ ne contienne pas toutes les
autres joueuses. Il existe alors une joueuse $B$, différente de $A$, qui ne figure pas sur
cette liste. Cela signifie deux choses.

- $B$ n'appartient pas à $V$ : $A$ n'a donc pas battu $B$. Comme il n'y a pas de match nul et
  que les deux se sont affrontées, c'est **$B$ qui a battu $A$**.
- $B$ n'a été battue par aucune joueuse de $V$. Donc, pour chaque joueuse $C$ de $V$, le
  match entre $B$ et $C$ a été gagné par **$B$**.

**Le compte des victoires.** La joueuse $B$ a donc battu $A$, ainsi que chacune des $v$
joueuses de $V$. Comme $A$ n'appartient pas à $V$, cela fait au moins

$$v + 1$$

victoires pour $B$.

Mais $A$ était une joueuse ayant le plus grand nombre de victoires, soit $v$. On aurait donc
$v + 1 \leqslant v$, ce qui est faux.

**Conclusion.** L'hypothèse est absurde : la liste de $A$ contient bien toutes les autres
joueuses.
