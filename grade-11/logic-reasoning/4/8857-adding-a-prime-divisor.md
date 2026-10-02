---
id: "8857"
title: "On ajoute un diviseur premier"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie-gagnante, vol-de-strategie, diviseurs-premiers, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Jeux » (Oscar), exercice 8, p. 142 (problème C1 de la JBMO 2020)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Emilhan et Oscar jouent au jeu suivant. Au tableau est écrit le nombre $2$.

Chacun à son tour, en commençant par Oscar, le joueur efface le nombre $n$ écrit au tableau et le remplace par
$$n + p ,$$
où $p$ est un diviseur premier de $n$ (au choix du joueur, s'il y en a plusieurs).

Le premier joueur qui écrit un nombre strictement plus grand que $N = 2025^{2025^{2025}}$ a **perdu**.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Vérifie d'abord que la partie se termine forcément : de combien le nombre augmente-t-il au minimum à chaque coup ?
2. Le jeu est symétrique : les deux joueurs suivent exactement les mêmes règles. La seule chose qui les distingue est qui joue quand.
3. Regarde la position « $12$ est écrit au tableau ». Il y a deux possibilités : soit c'est le joueur dont c'est le tour qui a une stratégie gagnante, soit c'est l'autre. Tu ne sais pas laquelle, et ce n'est pas grave.
4. Trouve deux façons d'aller de $2$ à $12$ : l'une en un nombre **pair** de coups, l'autre en un nombre **impair**. Oscar choisira celle qui l'arrange.

## Solution

### La partie se termine

Le nombre écrit augmente d'au moins $2$ à chaque coup, puisque tout diviseur premier vaut au moins $2$. Le nombre écrit finit donc par dépasser $N$ : la partie ne peut pas durer éternellement, et elle a forcément un perdant. C'est un jeu fini sans match nul, donc l'un des deux joueurs a une stratégie gagnante.

### L'idée : le vol de stratégie

Regardons la position « **le nombre $12$ est écrit au tableau** ». Comme le jeu est fini et sans match nul, l'un des deux joueurs a une stratégie gagnante depuis cette position. Deux cas sont possibles, et on ne saura pas lequel est le vrai :

- **cas (i) :** c'est le joueur **dont c'est le tour** qui gagne depuis $12$ ;
- **cas (ii) :** c'est **l'autre** joueur qui gagne depuis $12$.

Nous allons montrer qu'Oscar peut décider lui-même **qui** se retrouvera devant le $12$. Cela suffira : dans le cas (i) il s'y mettra lui-même, dans le cas (ii) il y mettra Emilhan.

### Les premiers coups sont presque tous forcés

Suivons la partie depuis le début. Rappelons qu'un joueur remplace $n$ par $n+p$ où $p$ est un diviseur premier de $n$ ; quand $n$ n'a qu'un seul diviseur premier, le coup est **forcé**.

- **Coup 1, Oscar.** Au tableau : $2$. Seul diviseur premier : $2$. Coup forcé : $2 \to 4$.
- **Coup 2, Emilhan.** Au tableau : $4 = 2^2$. Seul diviseur premier : $2$. Coup forcé : $4 \to 6$.
- **Coup 3, Oscar.** Au tableau : $6 = 2 \times 3$. Ici, et pour la première fois, il y a un **choix**.

C'est ce choix qui donne la main à Oscar.

**Première possibilité : Oscar joue $6 \to 9$.** Emilhan se retrouve devant $9 = 3^2$, dont le seul diviseur premier est $3$ : il est forcé de jouer $9 \to 12$. C'est alors **Oscar** qui est devant le $12$.

**Seconde possibilité : Oscar joue $6 \to 8$.** Emilhan se retrouve devant $8 = 2^3$ et est forcé de jouer $8 \to 10$. Oscar est alors devant $10 = 2 \times 5$ ; il choisit d'ajouter $2$ et joue $10 \to 12$. C'est alors **Emilhan** qui est devant le $12$.

Dans les deux lignes, aucun coup d'Emilhan n'a été supposé : ils étaient tous forcés. Oscar contrôle donc entièrement qui arrive devant le $12$.

*(Tous ces nombres, $2$, $4$, $6$, $8$, $9$, $10$, $12$, sont minuscules devant $N$ : personne ne perd en chemin.)*

### La stratégie d'Oscar

- **Dans le cas (i)**, Oscar joue $6 \to 9$ : il arrive lui-même devant le $12$ et applique la stratégie gagnante du joueur dont c'est le tour.
- **Dans le cas (ii)**, Oscar joue $6 \to 8$ puis $10 \to 12$ : c'est Emilhan qui arrive devant le $12$, et Oscar applique la stratégie gagnante de l'autre joueur.

Dans les deux cas, Oscar gagne.

### Conclusion

$$\boxed{\text{Oscar a une stratégie gagnante.}}$$

Remarquez qu'on n'a jamais eu besoin de savoir **qui** gagne depuis la position $12$, ni de calculer quoi que ce soit avec $N$. C'est tout l'intérêt du vol de stratégie : on exploite l'existence d'une stratégie sans jamais l'expliciter.

## Going further

Dans le même jeu, mais en partant du nombre $3$ au lieu de $2$, qui a une stratégie gagnante ?
