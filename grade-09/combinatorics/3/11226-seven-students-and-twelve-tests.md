---
id: "11226"
title: "Sept élèves et douze épreuves"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [algorithme, classes, separation, raisonnement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (le corrigé passe par un graphe sans cycle ; la solution ici choisit les épreuves une par une, sans théorie des graphes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

Sept élèves d'une classe comparent leurs notes à $12$ épreuves. Ils remarquent que deux élèves
n'ont jamais exactement les mêmes notes aux $12$ épreuves : pour deux élèves quelconques, il y a au
moins une épreuve où leurs notes sont différentes.

Montrer qu'on peut choisir $6$ de ces épreuves de sorte que, pour deux élèves quelconques, il y ait
**parmi ces $6$ épreuves** au moins une épreuve où leurs notes sont différentes.

## Hints

1. Choisis les épreuves une par une. Au départ, on n'en a choisi aucune, et on ne sait distinguer
   personne.
2. À chaque instant, range les élèves en groupes : deux élèves sont dans le même groupe s'ils ont
   les mêmes notes à toutes les épreuves déjà choisies. Combien y a-t-il de groupes au départ ?
3. Tant qu'un groupe contient deux élèves, comment choisir la prochaine épreuve pour que le nombre de
   groupes augmente ?

## Solution

On choisit les épreuves une par une, en suivant une règle simple.

**Les groupes.** À chaque instant, rangeons les sept élèves en **groupes** : deux élèves sont dans
le même groupe lorsqu'ils ont les mêmes notes à toutes les épreuves déjà choisies. Au départ, aucune
épreuve n'est choisie, donc les sept élèves sont dans un seul groupe.

Le but est d'arriver à sept groupes d'un seul élève : alors deux élèves quelconques sont dans des
groupes différents, donc ils ont des notes différentes à au moins une épreuve choisie.

**La règle.** Tant qu'un groupe contient au moins deux élèves, prenons deux élèves $X$ et $Y$ de ce
groupe. D'après l'énoncé, il existe une épreuve où $X$ et $Y$ ont des notes différentes. Cette
épreuve n'a pas encore été choisie, puisque $X$ et $Y$ ont les mêmes notes à toutes les épreuves
choisies. On la choisit.

**Le nombre de groupes augmente.** Quand on ajoute une épreuve, un groupe peut se couper en plusieurs
groupes plus petits, mais deux élèves qui étaient dans des groupes différents le restent. Le nombre
de groupes ne peut donc pas diminuer. De plus, le groupe de $X$ et $Y$ se coupe en au moins deux
morceaux, puisque $X$ et $Y$ se retrouvent dans des groupes différents. Ainsi, **chaque épreuve
choisie augmente le nombre de groupes d'au moins $1$.**

**On s'arrête au plus tard après $6$ épreuves.** On part de $1$ groupe, et il ne peut jamais y avoir
plus de $7$ groupes, puisqu'il n'y a que $7$ élèves. Après $k$ épreuves choisies, il y a au moins
$k + 1$ groupes, donc $k + 1 \leqslant 7$, c'est-à-dire $k \leqslant 6$. La règle ne peut donc
s'appliquer que $6$ fois au plus. Quand elle ne s'applique plus, aucun groupe ne contient deux
élèves : les épreuves choisies distinguent deux élèves quelconques.

On a ainsi choisi au plus $6$ épreuves. S'il y en a moins de $6$, on en ajoute d'autres au hasard
pour arriver à $6$ : cela ne gâche rien.

**Conclusion : on peut toujours choisir $6$ épreuves qui suffisent à distinguer deux élèves
quelconques.**

## Going further

- Le nombre $6$ ne peut pas être remplacé par $5$. Par exemple, si l'élève numéro $k$ a $20$ à
  l'épreuve $k$ et $10$ partout ailleurs, pour $k = 1, 2, \ldots, 6$, et si le septième élève a $10$
  partout, alors chacune des épreuves $1$ à $6$ est indispensable : sans l'épreuve $k$, on ne
  distingue plus l'élève $k$ du septième.
- Plus généralement, avec $n$ élèves que l'on peut tous distinguer, $n - 1$ épreuves bien choisies
  suffisent toujours, quel que soit le nombre d'épreuves au départ.
