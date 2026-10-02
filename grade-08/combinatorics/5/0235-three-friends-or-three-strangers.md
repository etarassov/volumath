---
id: "0235"
title: "Trois amis ou trois inconnus"
grade: 8
theme: combinatorics
difficulty: 5
duration_min: 35
tags: [principe-des-tiroirs, disjonction-de-cas, graphe, demonstration]
adapted_from: null
see_also: ["11219"]
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 30 «Эйлеровы графы», задача 11, с. 97"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Six personnes sont réunies dans une pièce. Deux personnes quelconques de ce groupe, ou bien se connaissent, ou bien ne se connaissent pas. On suppose que cette relation est réciproque : si une personne en connaît une autre, alors cette autre la connaît aussi.

Montrer que l'on peut toujours trouver dans ce groupe :

- soit trois personnes qui se connaissent deux à deux,
- soit trois personnes qui, deux à deux, ne se connaissent pas.

## Hints

1. On ne sait rien des six personnes, donc on ne peut pas commencer par un exemple : il faut un raisonnement qui marche à tous les coups.
2. Choisis une personne quelconque du groupe et appelle-la Alice. Les cinq autres se répartissent en deux paquets : celles qu'Alice connaît, et celles qu'elle ne connaît pas.
3. Cinq personnes réparties en deux paquets : montre que l'un des deux paquets contient au moins trois personnes. Que se passerait-il si les deux paquets en contenaient au plus deux ?
4. Suppose d'abord qu'Alice connaisse trois personnes $B$, $C$ et $D$. Deux situations sont possibles : ou bien deux d'entre elles se connaissent, ou bien aucune paire ne se connaît. Regarde ce que chacune donne.
5. Recommence le même travail dans l'autre cas, celui où Alice ne connaît pas trois personnes. Les mots « connaître » et « ne pas connaître » échangent simplement leurs rôles.

## Solution

**L'idée : partir d'une seule personne, et ranger les autres en deux paquets.**

Choisissons une personne du groupe, appelons-la Alice. Il reste cinq personnes, et chacune d'elles est soit une connaissance d'Alice, soit une inconnue pour Alice. Cela fait deux paquets, qui se partagent les cinq personnes.

**Premier point : un des deux paquets contient au moins trois personnes.**

Raisonnons par l'absurde. Si chacun des deux paquets contenait au plus deux personnes, ils contiendraient ensemble au plus $2 + 2 = 4$ personnes. Or ils en contiennent cinq. C'est impossible.

Donc l'un au moins des deux paquets contient trois personnes ou plus. Deux cas se présentent.

**Cas 1 : Alice connaît au moins trois personnes.**

Choisissons-en trois parmi elles, appelons-les $B$, $C$ et $D$. Regardons maintenant comment $B$, $C$ et $D$ se situent les unes par rapport aux autres.

- *Si deux d'entre elles se connaissent*, disons $B$ et $C$ : alors Alice connaît $B$, Alice connaît $C$, et $B$ connaît $C$. Les trois personnes Alice, $B$, $C$ se connaissent deux à deux. C'est un trio de connaissances.
- *Sinon*, c'est qu'aucune paire parmi $B$, $C$, $D$ ne se connaît : $B$, $C$ et $D$ forment alors un trio d'inconnues deux à deux.

Dans les deux situations, la conclusion demandée est vraie.

**Cas 2 : Alice ne connaît pas au moins trois personnes.**

Choisissons-en trois, appelons-les encore $B$, $C$ et $D$. C'est exactement le même raisonnement, en échangeant les rôles de « se connaître » et « ne pas se connaître ».

- *Si deux d'entre elles ne se connaissent pas*, disons $B$ et $C$ : alors Alice ne connaît pas $B$, Alice ne connaît pas $C$, et $B$ ne connaît pas $C$. Les trois personnes Alice, $B$, $C$ forment un trio d'inconnues deux à deux.
- *Sinon*, c'est que toutes les paires parmi $B$, $C$, $D$ se connaissent : $B$, $C$ et $D$ forment un trio de connaissances deux à deux.

Là encore, la conclusion est vraie dans les deux situations.

**Conclusion.**

Quels que soient les six personnes et leurs relations, on tombe dans l'un des deux cas, et dans chacun d'eux on trouve soit trois personnes qui se connaissent deux à deux, soit trois personnes qui ne se connaissent pas deux à deux. C'est donc toujours vrai.

Remarquons que le raisonnement ne dit pas **lesquelles** : il prouve seulement qu'un tel trio existe.

## Going further

1. Traduire le problème par un dessin : six points, et entre deux points un trait plein si les deux personnes se connaissent, un trait pointillé sinon. Que cherche-t-on alors sur le dessin ?
2. Montrer que le résultat devient faux avec **cinq** personnes seulement : trouver une façon de répartir les relations entre cinq personnes sans aucun trio de connaissances ni aucun trio d'inconnues. (On pourra placer les cinq personnes en cercle.)
3. Pour la culture : si l'on demande trois personnes se connaissant deux à deux **ou** quatre personnes ne se connaissant pas deux à deux, le plus petit groupe qui marche à tous les coups compte neuf personnes. La question analogue avec cinq et cinq n'est toujours pas résolue aujourd'hui.
