---
id: "12275"
title: "Des segments qui ne sont pas amicaux"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [cercle, coloriage, parite, algorithme, segments]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de mars 2017"
  reference: "2017-10_ofm-2016-2017-test-mars.pdf, test du 22 mars 2017, exercice 3 (groupe B, élèves nés en 2002 ou après) ; pas de corrigé publié, solution rédigée pour cette base et vérifiée par ordinateur sur 3 000 coloriages tirés au hasard. L'énoncé original demande seulement que les segments ne se croisent pas ; on précise ici qu'ils n'ont pas d'extrémité commune, sinon il suffirait de relier le point noir à n autres points"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mars.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On place $2n + 1$ points sur un cercle. On en colorie $n$ en bleu, $n$ en rouge, et le dernier en noir. Un segment qui joint deux de ces points est dit *amical* si l'une de ses extrémités est rouge et l'autre bleue.

Montrer qu'on peut tracer $n$ segments, chacun joignant deux de ces points, de sorte que :

- aucun des $n$ segments n'est amical ;
- deux segments n'ont jamais d'extrémité commune ;
- deux segments ne se croisent jamais.

## Hints

1. Fais l'essai avec $n = 1$, puis avec $n = 2$ et plusieurs coloriages différents.
2. Un segment qui joint deux points voisins sur le cercle ne peut couper aucun segment tracé entre les autres points. Pourquoi ?
3. Trace un segment non amical entre deux points voisins, puis oublie ces deux points et recommence avec ceux qui restent. Il faut s'assurer qu'on trouve toujours deux voisins qui conviennent.
4. S'il ne reste plus de point noir, il reste un nombre impair de points, tous rouges ou bleus. Les couleurs peuvent-elles alterner tout autour du cercle ?

## Solution

On trace les segments un par un, en suivant une règle simple.

**La règle.** Tant qu'il reste au moins trois points, on choisit deux points *voisins parmi les points restants*, c'est-à-dire deux points restants entre lesquels il n'y a aucun autre point restant sur l'un des deux arcs du cercle, et tels que le segment qui les joint ne soit pas amical. On trace ce segment, puis on retire ses deux extrémités des points restants.

Il faut vérifier trois choses : qu'on peut toujours appliquer la règle, qu'on obtient bien $n$ segments, et que ces segments ne se croisent pas.

**Étape 1. On peut toujours appliquer la règle.**

Au départ il y a $2n + 1$ points, et chaque segment en retire deux. Le nombre de points restants est donc toujours impair. Supposons qu'il en reste au moins trois.

- *S'il reste le point noir*, on le relie à l'un de ses deux voisins. Ce segment n'est pas amical, car l'une de ses extrémités est noire.
- *S'il ne reste plus le point noir*, les points restants sont tous rouges ou bleus, et leur nombre $m$ est impair. On les numérote $P_1, P_2, \ldots, P_m$ en tournant autour du cercle. Supposons que deux voisins aient toujours des couleurs différentes. Alors les couleurs alternent : si $P_1$ est rouge, $P_2$ est bleu, $P_3$ est rouge, et ainsi de suite, de sorte que les points de numéro impair sont rouges. Comme $m$ est impair, $P_m$ est rouge. Mais $P_m$ et $P_1$ sont voisins, et ils sont tous les deux rouges : c'est une contradiction. Il y a donc deux voisins de la même couleur, et le segment qui les joint n'est pas amical.

**Étape 2. On obtient $n$ segments, sans extrémité commune.**

Chaque segment retire deux points. On passe donc de $2n + 1$ points à $2n - 1$, puis à $2n - 3$, et ainsi de suite, jusqu'à ce qu'il ne reste qu'un point. Cela fait $n$ segments. Comme les deux extrémités d'un segment sont retirées aussitôt, elles ne servent plus jamais : deux segments n'ont pas d'extrémité commune.

**Étape 3. Les segments ne se croisent pas.**

Prenons un segment $[PQ]$ tracé à un certain moment. La corde $[PQ]$ partage le disque en deux morceaux, chacun bordé par l'un des deux arcs d'extrémités $P$ et $Q$. Comme $P$ et $Q$ étaient voisins parmi les points restants, l'un de ces deux arcs ne contenait aucun point restant. Tous les points qui restent après avoir retiré $P$ et $Q$ sont donc sur l'autre arc.

Un segment tracé plus tard joint deux de ces points. Il reste dans le morceau du disque bordé par ce second arc, et il ne coupe donc pas $[PQ]$.

Ainsi, de deux segments, celui qui a été tracé en second ne coupe pas le premier. Aucun segment n'en croise un autre.

**Conclusion.** La règle fournit $n$ segments, dont aucun n'est amical, qui n'ont pas d'extrémité commune et qui ne se croisent pas.

## Going further

1. Peut-on toujours choisir les $n$ segments de sorte que le point laissé seul à la fin soit le point noir ? Regarde ce qui se passe quand $n$ est impair, puis quand les points rouges et bleus alternent autour du cercle.
2. On place $n$ points rouges et $n$ points bleus sur un cercle, sans point noir. Montre qu'on peut tracer $n$ segments qui ne se croisent pas, sans extrémité commune, et qui sont cette fois *tous* amicaux.
