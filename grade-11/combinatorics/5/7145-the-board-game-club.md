---
id: "7145"
title: "Le club de jeux de société"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [tiroirs, raisonnement-par-l-absurde, paires, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Vendredi : test final », exercice 4 (exercice commun)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Un club de jeux de société compte $50$ membres et organise des soirées jeux.

Au cours de l'année, deux membres quelconques se sont rencontrés lors d'**exactement une**
soirée jeux, et **aucune** soirée n'a regroupé tous les membres du club.

Montrer qu'il existe un membre qui a participé à au moins $8$ soirées jeux.

## Hints

1. Raisonne par l'absurde : suppose que chaque membre a participé à au plus $7$ soirées.
2. Prends un membre $A$. Il a rencontré chacun des $49$ autres exactement une fois, et il n'a
   été qu'à au plus $7$ soirées. Combien de personnes au minimum y avait-il à l'une de ses
   soirées ?
3. Tu obtiens ainsi une grosse soirée $S$. Prends maintenant un membre $B$ absent de $S$ :
   l'énoncé garantit qu'il en existe un.
4. $B$ a rencontré chacun des participants de $S$. Peut-il en avoir rencontré deux lors de la
   même soirée ? Regarde ce que cela impliquerait pour ces deux-là.

## Solution

**Mise en place.** Raisonnons par l'absurde : supposons que **chaque membre ait participé à
au plus $7$ soirées**.

**Étape 1 : il existe une grosse soirée.**

Choisissons un membre $A$. Chacun des $49$ autres membres a rencontré $A$ lors d'une soirée,
et cette soirée est forcément l'une de celles auxquelles $A$ a participé, c'est-à-dire l'une
de ses $7$ soirées au plus.

Rangeons donc les $49$ autres membres dans les soirées de $A$. Comme

$$49 = 7 \times 7 ,$$

le principe des tiroirs assure qu'une de ces soirées contient au moins $7$ membres autres que
$A$. Appelons $S$ cette soirée : elle compte donc **au moins $8$ participants**, $A$ compris.

**Étape 2 : quelqu'un manque à l'appel.**

Par hypothèse, aucune soirée n'a regroupé tous les membres. Il existe donc un membre $B$ qui
n'a **pas** participé à $S$.

**Étape 3 : $B$ a beaucoup couru.**

$B$ a rencontré chacun des (au moins) $8$ participants de $S$, chacun lors d'une soirée bien
précise. Montrons que ces soirées sont toutes différentes.

Supposons que $B$ ait rencontré deux participants $P$ et $Q$ de $S$ lors d'une même soirée
$T$. Alors $P$ et $Q$ se seraient rencontrés à $T$. Mais ils se sont déjà rencontrés à $S$,
et $T \neq S$ puisque $B$ était à $T$ et pas à $S$. Les deux membres $P$ et $Q$ se seraient
donc rencontrés lors de **deux** soirées, ce qui contredit l'énoncé.

Les soirées où $B$ rencontre les participants de $S$ sont donc deux à deux distinctes, et il
y en a au moins $8$. Autrement dit, **$B$ a participé à au moins $8$ soirées**.

**Conclusion.** C'est la contradiction cherchée : on avait supposé que personne n'allait à
plus de $7$ soirées. L'hypothèse est donc fausse, et **il existe bien un membre qui a
participé à au moins $8$ soirées jeux.**

## Going further

Le nombre $8$ n'est pas choisi au hasard : $50 = 7^2 + 1$, et $8 = 7 + 1$. Le même
raisonnement, avec $n^2 + 1$ membres, montrerait qu'un membre a participé à au moins $n+1$
soirées.

Cette structure, où chaque paire d'objets apparaît dans exactement un groupe, s'appelle un
**plan projectif** quand elle est parfaitement équilibrée. Pour $n = 7$, le plan projectif
d'ordre $7$ a $57$ points et $57$ droites, chaque droite portant $8$ points et chaque point
étant sur $8$ droites. L'exercice est en quelque sorte la moitié facile d'un théorème
classique de de Bruijn et Erdős.
