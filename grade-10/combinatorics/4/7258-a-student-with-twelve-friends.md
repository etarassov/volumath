---
id: "7258"
title: "Vingt-cinq élèves, et l'un a douze amis"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [tiroirs, amities, graphe, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, « Entraînement du groupe A », exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Une classe compte $25$ élèves. Parmi trois élèves quelconques de la classe, il y en a toujours au
moins deux qui sont amis. (L'amitié est réciproque : si Théo est ami avec Martin, alors Martin
est ami avec Théo.)

Montrer qu'il existe un élève qui a au moins $12$ amis dans la classe.

## Hints

1. Si tout le monde est ami avec tout le monde, l'affaire est réglée. Que se passe-t-il sinon ?
2. Prends deux élèves qui ne sont **pas** amis. Appelle-les Théo et Martin.
3. Que peut-on dire d'un troisième élève, en le mettant dans un groupe avec Théo et Martin ?
4. Il reste $23$ élèves, et deux « tiroirs » : être ami de Théo, être ami de Martin.

## Solution

**Premier cas : tout le monde est ami avec tout le monde.**

Chaque élève a alors $24$ amis, et $24 \geqslant 12$. C'est gagné.

**Second cas : deux élèves ne sont pas amis.**

Appelons-les Théo et Martin.

Prenons n'importe lequel des $23$ autres élèves, disons Léa. Regardons le groupe formé de Léa,
Théo et Martin. D'après l'hypothèse, deux de ces trois-là sont amis. Ce ne sont pas Théo et
Martin, puisqu'ils ne le sont pas. Donc **Léa est amie avec Théo, ou bien avec Martin** (peut-être
avec les deux).

Cela vaut pour chacun des $23$ élèves restants.

**Le principe des tiroirs.**

Rangeons ces $23$ élèves dans deux tiroirs :

- le tiroir « ami de Théo » ;
- le tiroir « ami de Martin ».

Chaque élève va dans au moins un tiroir (celui qui est ami des deux, on le met dans l'un des
deux, peu importe lequel). Il y a $23$ élèves à ranger dans $2$ tiroirs, et
$$23 = 2 \times 11 + 1 ,$$
donc l'un des deux tiroirs contient au moins $12$ élèves.

**Conclusion.**

Si c'est le tiroir de Théo, alors Théo a au moins $12$ amis. Si c'est celui de Martin, alors Martin
a au moins $12$ amis.

**Dans tous les cas, un élève de la classe a au moins $12$ amis.**

## Going further

Voici une seconde démonstration, par l'absurde, qui donne un résultat un peu plus fort.

Supposons qu'aucun élève n'ait $12$ amis ou plus. Prenons un élève, Rémi. Il a au plus $11$
amis, donc au moins $24 - 11 = 13$ élèves ne sont pas ses amis.

Ces $13$ élèves sont alors tous amis entre eux : si deux d'entre eux n'étaient pas amis, ces deux-là
avec Rémi formeraient un groupe de trois sans aucune paire d'amis, ce qui est interdit.

Chacun de ces $13$ élèves a donc au moins $12$ amis (les $12$ autres du groupe). Contradiction.

On voit au passage que le nombre $25$ n'a rien de magique : le même raisonnement marche dans une
classe de $2n+1$ élèves et donne un élève ayant au moins $n$ amis.
