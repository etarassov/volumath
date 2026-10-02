---
id: "7708"
title: "Ruelles, canaux et un seul moyen de transport"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [graphe, connexite, deux-couleurs, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, test de mi-parcours du vendredi 22 août"
  reference: "stage_ete_2014.pdf, « Test de mi parcours », Groupe A, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans une ville, $n$ princes habitent chacun leur palais. Deux palais quelconques sont reliés soit par une ruelle, soit par un canal, mais jamais par les deux : entre deux palais, il y a toujours exactement une liaison, et elle est d'un seul des deux types.

Le prince Alfonzo veut rendre visite à tous les autres princes dans la même soirée. Il ne veut pas se compliquer la vie et décide de n'utiliser **qu'un seul** moyen de transport : soit il marche, et n'emprunte alors que des ruelles, soit il prend sa gondole, et n'emprunte alors que des canaux. Il a le droit de passer par les palais de ses amis en cours de route.

Montrer qu'en choisissant bien son moyen de transport, il peut toujours rendre visite à tous les autres princes.

## Hints

1. Il faut montrer que l'un des deux réseaux, celui des ruelles ou celui des canaux, permet d'aller de n'importe quel palais à n'importe quel autre.
2. Raisonne par l'absurde sur un seul des deux réseaux : suppose que le réseau des ruelles ne suffit pas.
3. Regroupe les palais : mets ensemble tous ceux qu'on peut atteindre les uns depuis les autres à pied. Si le réseau des ruelles ne suffit pas, il y a au moins deux groupes.
4. Entre deux palais de groupes différents, il n'y a pas de ruelle. Qu'y a-t-il alors ?
5. Prends maintenant deux palais du **même** groupe. Comment aller de l'un à l'autre en gondole ?

## Solution

**Réponse : oui, toujours. L'un des deux réseaux relie tous les palais entre eux.**

**Ce qu'il faut démontrer.** Disons qu'un réseau (celui des ruelles, ou celui des canaux) est *complet* s'il permet d'aller de n'importe quel palais à n'importe quel autre, éventuellement en passant par des palais intermédiaires. Si le réseau des ruelles est complet, Alfonzo marche ; s'il est le réseau des canaux, Alfonzo prend sa gondole. Il suffit donc de montrer qu'**au moins un des deux réseaux est complet**.

**Raisonnons par l'absurde.** Supposons que le réseau des ruelles n'est pas complet, et montrons qu'alors celui des canaux l'est forcément.

**On forme des groupes.** Pour chaque palais, appelons son *groupe à pied* l'ensemble de tous les palais qu'on peut atteindre depuis lui en n'empruntant que des ruelles (le palais lui-même compris). Deux palais sont dans le même groupe si l'on peut aller de l'un à l'autre à pied, et ces groupes découpent l'ensemble des palais en morceaux séparés.

Comme le réseau des ruelles n'est pas complet, il y a **au moins deux groupes** : appelons-les $G_1$, $G_2$, et ainsi de suite s'il y en a plus.

**Entre deux groupes, tout est canal.** Si $u$ est dans un groupe et $v$ dans un autre, il ne peut pas y avoir de ruelle entre $u$ et $v$ : sinon on pourrait aller à pied de $u$ à $v$, et ils seraient dans le même groupe. Comme il y a toujours une liaison entre deux palais, c'est donc un canal :

$$u \text{ et } v \text{ dans deux groupes différents} \;\Longrightarrow\; u \text{ et } v \text{ sont reliés par un canal.}$$

**Le réseau des canaux est complet.** Prenons deux palais $x$ et $y$ quelconques et montrons qu'on peut aller de l'un à l'autre en gondole.

- *Premier cas : $x$ et $y$ sont dans des groupes différents.* Alors ils sont directement reliés par un canal. C'est fini en un trajet.
- *Second cas : $x$ et $y$ sont dans le même groupe, disons $G_1$.* Comme il y a au moins deux groupes, il existe un palais $z$ qui n'est pas dans $G_1$. Alors $x$ et $z$ sont dans des groupes différents, donc reliés par un canal ; de même $z$ et $y$. Alfonzo va donc de $x$ à $y$ en passant par $z$, en gondole tout du long.

Dans les deux cas, on relie $x$ à $y$ par des canaux uniquement : le réseau des canaux est complet.

**Conclusion.** Si le réseau des ruelles n'est pas complet, celui des canaux l'est. Autrement dit, l'un des deux réseaux est toujours complet, et Alfonzo n'a qu'à choisir celui-là. Il peut donc bel et bien rendre visite à tous les autres princes avec un seul moyen de transport.

## Going further

Le raisonnement n'utilise nulle part le nombre $n$ de palais : il marche pour deux princes comme pour mille. Il n'utilise pas non plus le fait qu'il n'y a que deux moyens de transport pour conclure quelque chose de plus fort : avec **trois** moyens de transport, l'énoncé devient faux. Sauras-tu trouver six palais et trois moyens de transport tels qu'aucun des trois réseaux ne relie tous les palais ?
