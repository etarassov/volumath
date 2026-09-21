---
id: "7415"
title: "Les pièces sur la table rectangulaire"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [jeu, strategie, symetrie, geometrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 26 (résolu par Xavier Poulot-Cazajous)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Deux joueurs posent à tour de rôle une pièce de monnaie sur une table rectangulaire. Toutes les
pièces sont identiques, et on les pose toujours à plat. Deux pièces n'ont pas le droit de se
chevaucher, et une pièce doit tenir entièrement sur la table.

Le joueur qui ne peut plus poser de pièce a perdu.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Le premier joueur a un avantage énorme : il joue sur une table vide, et il peut choisir
   n'importe quel emplacement. Quel est l'emplacement le plus particulier de la table ?
2. Une table rectangulaire a un centre de symétrie. Si une pièce est posée quelque part, où se
   trouve sa « copie » symétrique ?
3. Après le premier coup, le premier joueur peut se contenter de **copier** son adversaire. Que
   doit-il copier exactement, et pourquoi ce coup est-il toujours possible ?

## Solution

**Le premier joueur gagne.** Voici sa stratégie.

**La stratégie.**

Au premier coup, il pose une pièce **au centre de la table**, c'est-à-dire de façon que le centre
de la pièce coïncide avec le centre $O$ du rectangle.

Ensuite, à chaque fois que son adversaire pose une pièce quelque part, il pose la sienne à
l'endroit **symétrique par rapport à $O$**.

**Pourquoi ce coup est-il toujours possible ?**

Appelons $P$ la pièce que l'adversaire vient de poser, et $P'$ son symétrique par rapport à $O$.
Il faut vérifier deux choses.

*$P'$ tient sur la table.* La symétrie de centre $O$ envoie le rectangle sur lui-même, puisque $O$
en est le centre de symétrie. Comme $P$ est entièrement sur la table, $P'$ l'est aussi.

*$P'$ ne chevauche aucune pièce déjà posée.* Juste avant le coup de l'adversaire, la configuration
des pièces était **symétrique par rapport à $O$**. En effet :

- la première pièce est centrée en $O$, donc elle est son propre symétrique ;
- ensuite, les pièces vont par paires symétriques, puisque le premier joueur copie chaque coup
  de son adversaire.

Si $P'$ chevauchait une pièce $Q$ déjà posée, alors, en appliquant la symétrie de centre $O$, la
pièce $P$ chevaucherait la pièce $Q'$, symétrique de $Q$. Or $Q'$ était déjà posée elle aussi, par
symétrie de la configuration. Cela voudrait dire que le coup de l'adversaire était illégal :
contradiction.

Reste un dernier point : $P'$ pourrait-elle chevaucher $P$ elle-même ? Cela n'arrive pas. Notons
$r$ le rayon d'une pièce. Comme $P$ ne chevauche pas la pièce centrale, qui est centrée en $O$, le
centre de $P$ est à une distance d'au moins $2r$ de $O$. Le centre de $P'$ est à la même distance
de $O$, de l'autre côté : les centres de $P$ et de $P'$ sont donc distants d'au moins $4r$, bien
plus que les $2r$ qu'il faut pour que deux pièces se touchent.

**Conclusion.**

Le premier joueur peut donc toujours répondre. Comme la table est de taille finie, la partie
s'arrête forcément. Le joueur bloqué ne peut donc pas être le premier joueur : **c'est le second
joueur qui perd**.

## Going further

Cette stratégie de copie marche parce que la table a un centre de symétrie et que le premier
joueur peut l'occuper. Fonctionne-t-elle encore si la table est un disque ? Et si la table est un
triangle équilatéral ?
