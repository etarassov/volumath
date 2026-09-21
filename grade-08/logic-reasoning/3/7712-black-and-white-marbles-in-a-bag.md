---
id: "7712"
title: "La dernière bille du sac"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, billes, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Un sac contient $2013$ billes noires et $2014$ billes blanches. À côté du sac, on dispose d'une réserve de billes blanches, aussi grande qu'on veut.

On répète l'opération suivante :

- on tire deux billes du sac ;
- si elles sont **de la même couleur**, on les met toutes les deux de côté et on remet dans le sac **une bille blanche** prise dans la réserve ;
- si elles sont **de couleurs différentes**, on met la blanche de côté et on **remet la noire** dans le sac.

Dans les deux cas, le sac contient une bille de moins qu'avant. On recommence jusqu'à ce qu'il ne reste qu'une seule bille dans le sac.

De quelle couleur est cette dernière bille ?

## Hints

1. Essaie avec de tout petits sacs, par exemple $1$ noire et $2$ blanches, ou $2$ noires et $1$ blanche. Que constates-tu ?
2. Ne suis pas le nombre total de billes : suis seulement le nombre de billes **noires**.
3. Pour chacun des trois tirages possibles (deux noires, deux blanches, une de chaque), de combien varie le nombre de billes noires ?
4. Tu trouveras $-2$ ou $0$. Qu'est-ce qui ne change jamais, alors ?

## Solution

**La dernière bille est noire.**

**L'idée : ce qui ne change jamais, c'est que le nombre de billes noires reste impair.**

**Regardons le nombre de billes noires dans le sac.** Appelons-le $N$. Il y a trois tirages possibles.

- *On tire deux billes noires.* On les met de côté et on remet une blanche : le sac perd deux noires. Le nombre de noires passe de $N$ à $N - 2$.
- *On tire deux billes blanches.* On les met de côté et on remet une blanche : aucune noire n'est touchée. Le nombre de noires reste $N$.
- *On tire une noire et une blanche.* On met la blanche de côté et on remet la noire : aucune noire n'est perdue. Le nombre de noires reste $N$.

Dans les trois cas, $N$ devient $N - 2$ ou reste $N$. **La parité de $N$ ne change donc jamais.**

**On applique.** Au départ $N = 2013$, qui est impair. Donc à tout instant, le nombre de billes noires dans le sac est impair. En particulier il n'est jamais nul, car $0$ est pair.

À la fin, il ne reste qu'une bille. Si elle était blanche, il y aurait $0$ bille noire dans le sac, ce qui est impossible. Elle est donc noire, et à ce moment $N = 1$, qui est bien impair.

**Conclusion : la dernière bille est forcément noire, quels que soient les tirages.**

## Going further

Remarque que le nombre de billes blanches, lui, fait n'importe quoi : il peut monter, descendre, remonter. C'est pour cela qu'il ne faut pas le regarder. Trouver la bonne quantité à suivre — celle qui ne bouge pas, ou dont seule la parité ne bouge pas — est tout l'art de ce type de problème.

Le résultat ne dépend pas des nombres $2013$ et $2014$ eux-mêmes, mais seulement de la parité du nombre de noires : la dernière bille est noire si l'on part d'un nombre impair de noires, et blanche si l'on part d'un nombre pair.
