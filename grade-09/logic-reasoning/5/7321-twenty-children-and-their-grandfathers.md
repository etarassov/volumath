---
id: "7321"
title: "Vingt enfants et leurs grands-pères"
grade: 9
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [denombrement, raisonnement-par-l-absurde, principe-des-tiroirs, ensembles]
adapted_from: null
see_also: []
same_as: ["8146"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En colle », stratégies de base, exercice 17 (donné à Rémi Vergnaud) ; le même énoncé figure en TD, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Vingt enfants attendent leurs grands-pères dans la cour de l'école maternelle. Chaque enfant a exactement **deux** grands-pères.

On constate que, si l'on prend deux enfants quelconques de la cour, ils ont toujours **un grand-père commun**.

Montrer que l'un des grands-pères a au moins $14$ petits-enfants parmi ces vingt enfants.

## Hints

1. Raisonne par l'absurde : suppose que chaque grand-père a au plus $13$ petits-enfants dans la cour.
2. Choisis un grand-père $A$ et note $S$ l'ensemble de ses petits-enfants, $s$ leur nombre. Il y a donc au moins $20 - 13 = 7$ enfants **hors** de $S$.
3. Prends un enfant $x$ de $S$ et appelle $B$ son **second** grand-père. Montre que $B$ est grand-père de **tous** les enfants qui ne sont pas dans $S$.
4. Prends maintenant un enfant $y$ hors de $S$ et appelle $C$ son second grand-père (l'autre étant $B$). Montre de la même façon que $C$ est grand-père de tous les enfants hors de $S$.
5. Montre enfin que chaque enfant de $S$ a pour second grand-père soit $B$, soit $C$. Additionne alors les nombres de petits-enfants de $A$, de $B$ et de $C$.

## Solution

**Mise en place.**

Raisonnons par l'absurde : supposons que **chaque grand-père a au plus $13$ petits-enfants** dans la cour.

Choisissons un enfant quelconque et appelons $A$ l'un de ses deux grands-pères. Notons
$$S = \{\text{les enfants de la cour dont } A \text{ est grand-père}\}, \qquad s = \text{nombre d'éléments de } S .$$

Par hypothèse $s \leqslant 13$, donc il y a au moins $20 - 13 = 7$ enfants hors de $S$. En particulier $S$ n'est pas vide (il contient l'enfant choisi) et son complémentaire non plus.

**Étape 1 : le grand-père $B$.**

Prenons un enfant $x$ de $S$. Il a deux grands-pères : $A$, et un autre que nous appelons $B$.

Soit $y$ un enfant **hors** de $S$. Par hypothèse, $x$ et $y$ ont un grand-père commun. Ce ne peut pas être $A$, car $A$ n'est pas grand-père de $y$ (sinon $y$ serait dans $S$). C'est donc $B$.

Ainsi **$B$ est grand-père de tous les enfants hors de $S$**, qui sont au nombre de $20 - s$.

Notons $t$ le nombre total de petits-enfants de $B$ dans la cour, et $t'$ le nombre de ceux qui sont dans $S$. On vient de voir que tous les enfants hors de $S$ comptent, donc
$$t = t' + (20 - s) . \qquad (1)$$

**Étape 2 : le grand-père $C$.**

Prenons maintenant un enfant $y$ hors de $S$. On sait que $B$ est l'un de ses deux grands-pères ; appelons $C$ l'autre. Remarquons que $C \neq B$, et que $C \neq A$ (puisque $A$ n'est pas grand-père de $y$).

*$C$ a au moins un petit-enfant dans $S$.* Sinon, prenons n'importe quel enfant $z$ de $S$ : il a un grand-père commun avec $y$, donc $B$ ou $C$ ; comme $C$ n'a pas de petit-enfant dans $S$, c'est $B$. Cela vaudrait pour tous les enfants de $S$, et $B$ serait grand-père des $20$ enfants, ce qui contredit l'hypothèse « au plus $13$ ».

Il existe donc un enfant $z$ de $S$ dont $C$ est grand-père. Ses deux grands-pères sont alors $A$ et $C$.

Refaisons avec $z$ le raisonnement de l'étape 1 : pour tout enfant $w$ hors de $S$, les enfants $z$ et $w$ ont un grand-père commun, qui n'est pas $A$, donc c'est $C$. Ainsi **$C$ est grand-père de tous les enfants hors de $S$**.

Notons $u$ le nombre de petits-enfants de $C$ et $u'$ le nombre de ceux qui sont dans $S$ :
$$u = u' + (20 - s) . \qquad (2)$$

**Étape 3 : les enfants de $S$ se partagent entre $B$ et $C$.**

Soit $z$ un enfant de $S$. Ses grands-pères sont $A$ et un second. Or $z$ a un grand-père commun avec $y$ (l'enfant hors de $S$ choisi plus haut), et les grands-pères de $y$ sont $B$ et $C$. Comme $A$ n'est ni $B$ ni $C$, le second grand-père de $z$ est $B$ ou $C$.

Chaque enfant de $S$ a donc pour second grand-père soit $B$, soit $C$, et un seul des deux. En comptant :
$$t' + u' = s . \qquad (3)$$

**Étape 4 : le compte final.**

Additionnons les trois nombres de petits-enfants, en utilisant $(1)$, $(2)$ puis $(3)$ :
$$s + t + u = s + (t' + 20 - s) + (u' + 20 - s) = (t' + u') + 40 - s = s + 40 - s = 40 .$$

Trois nombres dont la somme vaut $40$ ne peuvent pas être tous inférieurs ou égaux à $13$ : cela donnerait au plus $39$.

**Contradiction.** L'hypothèse de départ était donc fausse.

**Conclusion.** L'un des grands-pères a au moins $14$ petits-enfants dans la cour.

## Going further

1. Le raisonnement montre en fait que trois grands-pères se partagent exactement les $40$ liens « enfant – grand-père ». Y a-t-il des situations où il n'y a que trois grands-pères en tout ?
2. Construis un exemple concret avec $20$ enfants, trois grands-pères $A$, $B$, $C$, où deux enfants quelconques ont toujours un grand-père commun, et où le maximum est exactement $14$.
3. Reprends le problème avec $n$ enfants au lieu de $20$. Quelle borne obtient-on ?
