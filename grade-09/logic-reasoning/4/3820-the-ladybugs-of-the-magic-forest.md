---
id: "3820"
title: "Les coccinelles de la forêt magique"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [menteurs, disjonction-de-cas, contradiction, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 4 (réponse dans Handout-4188-3921.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Dans la forêt magique vivent deux sortes de coccinelles : celles qui ont $6$ points sur le dos, qui disent toujours la vérité, et celles qui ont $4$ points, qui mentent toujours.

Tu rencontres un groupe de ces coccinelles.

- La première te dit : « Nous avons toutes le même nombre de points. »
- La deuxième dit : « En tout, nous avons $30$ points sur le dos. »
- La troisième dit : « Non ! En tout, nous avons $26$ points sur le dos. »

Chacune des **autres** coccinelles du groupe déclare ensuite qu'**une seule** des trois premières a dit la vérité.

Combien de coccinelles as-tu rencontrées ?

## Hints

1. La deuxième et la troisième se contredisent. Que peux-tu en dire tout de suite ?
2. Commence par la première coccinelle. Suppose qu'elle dise la vérité et regarde ce que cela entraîne pour tout le groupe.
3. Une fois que tu sais qui ment parmi les trois premières, tu sais aussi si les autres disent la vérité. Compte alors les points de tout le groupe de deux façons.
4. Appelle $n$ le nombre total de coccinelles et écris une équation.

## Solution

**L'idée : décider d'abord du statut de la première coccinelle, puis compter les points de deux façons.**

Notons $n$ le nombre total de coccinelles du groupe.

**Étape 1. La première coccinelle ment.**

Supposons qu'elle dise la vérité. Elle a donc $6$ points, et sa phrase est vraie : toutes les coccinelles ont le même nombre de points, donc toutes ont $6$ points, donc **toutes disent la vérité**.

Mais alors la deuxième et la troisième disent la vérité toutes les deux, alors qu'elles annoncent des totaux différents ($30$ et $26$) : c'est impossible.

Donc la première coccinelle **ment** : elle a $4$ points, et les coccinelles n'ont pas toutes le même nombre de points. En particulier, **au moins une coccinelle a $6$ points**.

**Étape 2. Les deuxième et troisième ne peuvent pas être vraies toutes les deux.**

Elles annoncent deux totaux différents : au plus une des deux dit la vérité.

Comme la première ment, le nombre de vraies parmi les trois premières phrases vaut donc $0$ ou $1$.

**Étape 3. Le cas « aucune des trois ne dit la vérité » est impossible.**

Dans ce cas, la phrase des autres coccinelles (« une seule des trois a dit la vérité ») est fausse : elles mentent donc toutes et ont $4$ points.

Les trois premières mentent aussi, donc ont $4$ points elles aussi. Toutes les coccinelles auraient alors $4$ points... mais c'est précisément ce que la première niait en mentant. Contradiction.

(Si le groupe ne compte que trois coccinelles, il n'y a pas d'« autres », mais le raisonnement est le même : les trois auraient $4$ points, donc toutes le même nombre.)

**Étape 4. Il y a donc exactement une vraie parmi les trois premières.**

Ce n'est pas la première. C'est donc la deuxième ou la troisième. Et les autres coccinelles, qui annoncent « une seule des trois dit la vérité », disent alors la vérité : elles ont toutes $6$ points.

Comptons les points dans chaque cas. Le groupe compte $n$ coccinelles, donc $n - 3$ « autres ».

**Cas A : c'est la deuxième qui dit la vérité.** Alors la première a $4$ points, la deuxième $6$, la troisième $4$, et les $n-3$ autres ont $6$ points chacune. Le total est

$$4 + 6 + 4 + 6(n - 3) = 6n - 4.$$

Et la deuxième annonce $30$ :

$$6n - 4 = 30, \qquad 6n = 34.$$

Ce n'est pas un entier : impossible.

**Cas B : c'est la troisième qui dit la vérité.** Alors la première a $4$ points, la deuxième $4$, la troisième $6$, et les $n-3$ autres ont $6$ points chacune. Le total est

$$4 + 4 + 6 + 6(n - 3) = 6n - 4.$$

Et la troisième annonce $26$ :

$$6n - 4 = 26, \qquad 6n = 30, \qquad n = 5.$$

**Étape 5. On vérifie.**

Le groupe compte $5$ coccinelles : la première ($4$ points), la deuxième ($4$ points), la troisième ($6$ points), plus deux autres ($6$ points chacune).

- Total des points : $4 + 4 + 6 + 6 + 6 = 26$.
- Phrase 1 : « toutes le même nombre de points » — c'est faux, et la première ment. ✓
- Phrase 2 : « $30$ points » — c'est faux, et la deuxième ment. ✓
- Phrase 3 : « $26$ points » — c'est vrai, et la troisième dit la vérité. ✓
- Les deux autres disent qu'une seule des trois dit vrai : c'est exact, et elles ont bien $6$ points. ✓

**Conclusion.** Tu as rencontré $5$ coccinelles.

## Going further

1. Que se passerait-il si la troisième annonçait $28$ points au lieu de $26$ ?
2. Quels totaux la troisième aurait-elle pu annoncer pour que le problème ait quand même une solution ?
