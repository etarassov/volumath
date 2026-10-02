---
id: "8745"
title: "Les deux bols de riz"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [strategie-gagnante, parite, jeu-a-deux, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe A, « Jeux à stratégie gagnante » (Benoît et Gabriel), exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Emilhan et Mano ont devant eux deux bols de riz. Au départ, chaque bol contient $13$ grains.

Chacun à son tour, en commençant par Emilhan, un joueur fait **au choix** l'une des trois
actions suivantes :

1. manger un grain dans chacun des deux bols ;
2. manger un grain dans un seul bol ;
3. déplacer un grain d'un bol vers l'autre.

Celui qui mange le dernier grain de riz a gagné.

Montrer qu'Emilhan a une stratégie gagnante, et la décrire.

*Une stratégie gagnante est une manière de jouer qui fait gagner à coup sûr, quoi que fasse
l'adversaire.*

## Hints

1. Note une situation $(a, b)$ : $a$ grains dans le bol de gauche, $b$ dans celui de droite.
   Commence par de tout petits cas : qui gagne en $(1, 0)$, en $(1, 1)$, en $(2, 0)$, en
   $(2, 1)$, en $(2, 2)$ ?
2. Une position est **perdante** pour celui dont c'est le tour si tous ses coups mènent à une
   position gagnante pour l'adversaire. Fais la liste des premières positions perdantes que tu
   trouves.
3. Tu devrais voir apparaître $(0,0)$, $(2,0)$, $(2,2)$, $(4,0)$… Qu'ont en commun ces positions ?
4. Conjecture : les positions perdantes sont celles où les **deux** bols contiennent un nombre
   **pair** de grains. Pour le démontrer, montre que depuis une position paire-paire, quel que
   soit le coup joué, l'adversaire peut ramener à une position paire-paire.
5. Il y a trois coups possibles à examiner, et pour chacun une réponse à trouver. Vérifie bien à
   chaque fois que la réponse est jouable, c'est-à-dire qu'il y a assez de grains.
6. Que faut-il qu'Emilhan joue au tout premier coup, en partant de $(13, 13)$ ?

## Solution

Notons $(a, b)$ la situation où le premier bol contient $a$ grains et le second $b$ grains. Le
joueur qui mange le dernier grain gagne : autrement dit, celui qui amène la situation à
$(0, 0)$ gagne.

**La clé : les positions où les deux bols sont pairs.**

Montrons l'affirmation suivante.

> Si c'est à toi de jouer et que les deux bols contiennent chacun un nombre pair de grains,
> alors tu perds, à condition que ton adversaire joue bien.

Supposons donc que la position soit $(a, b)$ avec $a$ et $b$ pairs, et que ce soit à Mano de
jouer. Voici comment Emilhan répond, selon les trois coups possibles.

**Cas 1 : Mano mange un grain dans un seul bol.**

Ce bol contenait un nombre pair non nul de grains, donc au moins $2$. Après le coup il en
contient un nombre impair, donc au moins $1$. Emilhan mange alors un grain **dans le même
bol**. C'est possible puisqu'il en reste au moins un.

Les deux bols redeviennent pairs.

**Cas 2 : Mano mange un grain dans chaque bol.**

Les deux bols contenaient au moins $2$ grains chacun, donc après le coup il en reste au moins
$1$ dans chacun. Emilhan mange à son tour un grain dans chaque bol.

Les deux bols redeviennent pairs.

**Cas 3 : Mano déplace un grain d'un bol vers l'autre.**

Le bol de départ perd un grain, celui d'arrivée en gagne un : les deux nombres deviennent
impairs, donc chacun vaut au moins $1$. Emilhan mange alors un grain dans chaque bol.

Les deux bols redeviennent pairs.

**Dans les trois cas**, après la réponse d'Emilhan, les deux bols sont à nouveau pairs.

**Pourquoi cela suffit à gagner.**

Regardons le nombre total de grains. Dans les cas 1 et 2, le total diminue. Dans le cas 3, le
déplacement ne change pas le total, mais la réponse d'Emilhan enlève deux grains. Donc, à
chaque aller-retour Mano puis Emilhan, le total diminue strictement.

Un nombre entier positif ne peut pas diminuer indéfiniment : au bout d'un nombre fini de
tours, on arrive forcément à la situation $(0, 0)$, et c'est toujours Emilhan qui vient de
jouer. C'est donc Emilhan qui a mangé le dernier grain.

Il faut encore vérifier que la partie ne se bloque pas avant : tant qu'il reste au moins un
grain, il y a toujours un coup possible, par exemple manger un grain dans un bol non vide. Le
joueur dont c'est le tour ne peut donc jamais être coincé.

**Le premier coup d'Emilhan.**

La partie commence en $(13, 13)$, deux nombres impairs. Emilhan mange un grain dans chaque bol
et amène la position à
$$(12, 12) ,$$
où les deux bols sont pairs. C'est maintenant à Mano de jouer, dans une position pair-pair.
D'après ce qui précède, Emilhan gagne.

**Conclusion.** Emilhan a une stratégie gagnante : il commence par manger un grain dans chaque
bol, puis il applique à chaque tour la réponse du cas correspondant, de façon à laisser toujours
Mano devant deux bols pairs.

## Going further

1. Reprends le raisonnement avec un départ en $(12, 13)$, puis en $(12, 12)$. Qui gagne dans
   chaque cas ?
2. Démontre l'autre moitié de l'affirmation : depuis une position où au moins un bol est impair
   et où il reste des grains, le joueur dont c'est le tour peut toujours atteindre une position
   pair-pair. *Indication : distingue selon que l'autre bol est pair ou impair. Deux des trois
   actions suffisent.*
3. Que devient le jeu si on supprime la troisième action, celle qui déplace un grain ? Les
   positions perdantes sont-elles les mêmes ?
