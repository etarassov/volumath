---
id: "4811"
title: "Partager un gâteau à trois"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [partage-equitable, algorithme, disjonction-de-cas, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, How (Not) To Divvy Up Seats In Congress (Clint Givens)"
  reference: "Handout-186-205.pdf, exercice 1 (réponse dans Handout-187-205.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-186-205.pdf"
---

## Statement

Élise et Damien veulent se partager un gâteau. Le problème, c'est qu'ils ne sont pas d'accord sur la valeur des morceaux : Élise adore la crème, Damien préfère les fraises, et chacun juge donc les parts à sa façon.

Ils veulent quand même que **chacun reparte avec au moins la moitié du gâteau, selon son propre jugement**. Voici comment ils font :

> Élise coupe le gâteau en deux morceaux qu'**elle** juge égaux. Damien choisit celui qui lui paraît le plus gros, Élise prend l'autre.

Cela marche : Damien a choisi le plus gros des deux selon lui, donc il a au moins la moitié à ses yeux ; et Élise se retrouve avec un morceau qui vaut exactement la moitié à ses yeux, puisqu'elle a coupé à égalité.

Amélie les rejoint : ils sont maintenant **trois**.

Proposer une méthode de découpe et de choix telle que chacun des trois soit certain de repartir avec au moins **un tiers** du gâteau, selon son propre jugement. Justifier que la méthode marche à tous les coups.

## Hints

1. La première idée qui vient — « Amélie coupe en trois, les autres choisissent » — ne marche pas. Trouve pourquoi : que se passe-t-il si les deux autres convoitent le même morceau ?
2. Reprends l'idée de la méthode à deux : celui qui coupe doit être satisfait de n'importe quel morceau, et ceux qui choisissent doivent avoir assez de choix.
3. Fais intervenir les trois personnes l'une après l'autre : la première coupe, la deuxième **rectifie** la découpe, la troisième choisit la première.
4. Pour rectifier : si la deuxième trouve qu'un morceau dépasse les autres, elle peut en prélever une lamelle et la reporter sur un autre morceau, de façon que **deux** morceaux lui paraissent maintenant à égalité au sommet.
5. À la fin, fais la liste des cas selon le morceau que prend la troisième personne, et vérifie à chaque fois que les deux autres s'en sortent.

## Solution

**Une méthode qui échoue.** Si Amélie coupe le gâteau en trois morceaux égaux à ses yeux et que les deux autres choisissent, rien ne garantit le résultat : Élise et Damien peuvent convoiter le même morceau, et celui des deux qui n'a pas le choix risque de se retrouver avec un morceau qu'il juge minuscule. Il faut donc une méthode plus prudente.

**La méthode proposée.** Appelons les trois personnes $A$ (Amélie), $B$ (Damien) et $C$ (Élise).

1. **$A$ coupe** le gâteau en trois morceaux qu'elle juge égaux : chacun vaut exactement $\frac{1}{3}$ du gâteau à ses yeux.
2. **$B$ rectifie.** $B$ regarde les trois morceaux et repère les deux qui lui paraissent les plus gros. Il coupe une lamelle sur le plus gros des deux et la pose sur l'autre, de façon que ces **deux morceaux lui paraissent maintenant exactement égaux**. (Si les deux plus gros lui semblent déjà égaux, il ne fait rien.) Appelons $P_1$ et $P_2$ ces deux morceaux rectifiés, et $P_3$ le troisième, auquel $B$ n'a pas touché.
3. **$C$ choisit** le morceau qui lui paraît le plus gros parmi $P_1$, $P_2$, $P_3$.
4. **On répartit les deux morceaux restants** selon ce que $C$ a pris :
   - si $C$ a pris $P_3$, alors **$A$ prend le morceau qui a reçu la lamelle** et $B$ prend l'autre ;
   - si $C$ a pris $P_1$ ou $P_2$, alors **$B$ prend l'autre morceau rectifié** et $A$ prend $P_3$.

**Pourquoi chacun est servi.**

*Pour $C$.* Elle choisit la première, parmi trois morceaux qui forment tout le gâteau. Le plus gros des trois vaut au moins $\frac{1}{3}$ à ses yeux : si les trois valaient chacun moins d'un tiers, leur total serait inférieur au gâteau entier, ce qui est absurde. Donc $C$ obtient au moins $\frac{1}{3}$.

*Pour $B$.* Dans les deux cas de l'étape 4, il obtient l'un des deux morceaux rectifiés $P_1$ ou $P_2$, et ces deux-là ont exactement la même valeur à ses yeux. Par ailleurs il les avait choisis comme étant les deux plus gros, donc chacun vaut au moins autant que $P_3$. Un morceau qui vaut au moins autant que chacun des deux autres vaut au moins $\frac{1}{3}$, par le même argument que ci-dessus. Donc $B$ obtient au moins $\frac{1}{3}$.

*Pour $A$.* C'est le seul point délicat, car $A$ prend en dernier. Deux cas.

- **Cas 1 : $C$ a pris $P_3$**, le morceau auquel $B$ n'a pas touché. La règle donne alors à $A$ le morceau **augmenté**, c'est-à-dire celui qui a reçu la lamelle. Aux yeux de $A$, ce morceau valait $\frac{1}{3}$ avant la rectification, et il a grossi depuis : $A$ reçoit donc au moins $\frac{1}{3}$. (C'est bien le morceau augmenté qu'il faut lui donner : le morceau amputé, lui, vaut moins d'un tiers pour $A$.) Et $B$ reçoit l'autre morceau rectifié, ce qui lui convient puisqu'il juge les deux équivalents.
- **Cas 2 : $C$ a pris l'un des morceaux rectifiés.** Alors $B$ prend l'autre morceau rectifié, et il reste $P_3$ pour $A$. Or $P_3$ n'a pas été touché : il vaut encore exactement $\frac{1}{3}$ aux yeux de $A$.

Dans les deux cas $A$ obtient au moins $\frac{1}{3}$.

**Conclusion : avec cette méthode, chacun des trois est certain de repartir avec au moins un tiers du gâteau selon son propre jugement.**

**Remarque importante.** Personne n'a besoin de connaître les goûts des autres. Chacun se contente de couper ou de choisir selon son propre jugement, et la garantie tient quels que soient les goûts des deux autres.

## Going further

1. La méthode garantit à chacun au moins un tiers, mais pas qu'aucun ne jalouse la part d'un autre. Trouve un exemple où quelqu'un obtient plus d'un tiers et trouve malgré tout que la part du voisin est meilleure que la sienne.
2. Généralise la méthode à $n$ personnes : chacune doit repartir avec au moins $\frac{1}{n}$ du gâteau à ses yeux. (Une méthode simple : les personnes entrent une par une, et celle qui entre prélève ce qu'elle juge être sa part sur les parts déjà attribuées.)
3. Comment faire pour partager équitablement non pas un gâteau, mais une corvée que personne ne veut faire ?
