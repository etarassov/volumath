---
id: "0309"
title: "Les pièces sur la table ronde"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, symetrie, centre-de-symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 11 «Математические игры-1: явные стратегии», задача 5 (с. 66)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Deux joueurs posent à tour de rôle des pièces de monnaie identiques sur une table ronde. Les pièces ne doivent pas se chevaucher, et chaque pièce doit être posée à plat, entièrement sur la table.

Le joueur qui ne peut plus poser de pièce a perdu.

Lequel des deux joueurs possède une stratégie gagnante ? Décrire cette stratégie et expliquer pourquoi elle marche toujours.

## Hints

1. Essayer sur une toute petite table, où il ne tient que deux ou trois pièces. Qui gagne ?
2. La table est un disque : elle possède un point tout à fait particulier. Lequel ?
3. Un disque est inchangé quand on le fait tourner d'un demi-tour autour de son centre. Comment un joueur peut-il se servir de cette symétrie pour être sûr d'avoir toujours un coup à jouer ?
4. Le premier joueur pose sa première pièce exactement au centre, puis répond à chaque coup de l'adversaire par le coup symétrique par rapport au centre. Il reste à expliquer pourquoi l'emplacement symétrique est toujours libre.

## Solution

**La réponse : c'est le premier joueur qui gagne.**

**Sa stratégie.**

1. Au premier coup, il pose une pièce exactement au centre de la table.
2. Ensuite, à chaque fois que le second joueur pose une pièce quelque part, le premier joueur pose la sienne à l'emplacement **symétrique par rapport au centre de la table** (c'est-à-dire à l'emplacement obtenu en faisant tourner la table d'un demi-tour).

**Pourquoi le premier joueur peut toujours jouer ce coup.**

Il faut vérifier trois choses.

*a) L'emplacement symétrique est bien sur la table.* La table est un disque : la symétrie par rapport à son centre transforme le disque en lui-même. Une pièce entièrement posée sur la table a donc une image entièrement posée sur la table.

*b) L'emplacement symétrique est libre.* Juste avant le coup du second joueur, la figure formée par toutes les pièces déjà posées est symétrique par rapport au centre. En effet, la pièce centrale est sa propre image, et les autres pièces ont été posées par paires symétriques.

Supposons que l'emplacement symétrique $P'$ ne soit pas libre : une pièce déjà posée le chevaucherait. En appliquant la symétrie, l'image de cette pièce est elle aussi une pièce déjà posée (par la symétrie de la figure), et elle chevaucherait $P$. Or le second joueur vient justement de poser sa pièce en $P$ sans chevaucher personne : contradiction. Donc $P'$ est libre.

*c) La nouvelle pièce ne chevauche pas celle que l'adversaire vient de poser.* C'est le point qu'on oublie souvent. Le second joueur ne peut pas recouvrir le centre de la table, puisque la toute première pièce y est déjà. Sa pièce, de rayon $r$, ne chevauche pas la pièce centrale : la distance entre le centre de la table et le centre de sa pièce est donc au moins $2r$. Les centres des deux pièces symétriques sont alors distants d'au moins $2 \times 2r = 4r$, ce qui est bien plus que $2r$ : elles ne se chevauchent pas.

**Pourquoi cela fait gagner.**

Le jeu se termine forcément : la table est de taille finie, donc on ne peut pas y poser une infinité de pièces sans chevauchement.

Or, avec cette stratégie, **le premier joueur a toujours un coup à jouer** juste après le second. Ce n'est donc jamais lui qui se retrouve bloqué : le joueur qui finit par ne plus pouvoir jouer est le second.

**Conclusion.** Le premier joueur gagne à coup sûr, en posant sa première pièce au centre puis en jouant toujours symétriquement par rapport au centre de la table.

**L'idée à retenir.** *Jouer symétriquement.* Dès qu'une position possède une symétrie, un joueur peut souvent se donner comme règle de la rétablir à chaque coup. Il est alors assuré d'avoir toujours une réponse, donc de ne jamais être celui qui est bloqué. Attention : il faut toujours vérifier que le coup symétrique est réellement possible, comme au point *c)* ci-dessus.

## Going further

1. Le résultat change-t-il si la table est carrée ? Et si elle a la forme d'un rectangle ?
2. Et si la table a la forme d'un triangle équilatéral ? D'un triangle quelconque ?
3. On garde la table ronde, mais on perce un trou rond au centre, dans lequel aucune pièce ne peut être posée. Qui gagne alors ?
