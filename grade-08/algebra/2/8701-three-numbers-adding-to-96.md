---
id: "8701"
title: "Trois nombres dont la somme vaut 96"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [equation, mise-en-equation, inconnue]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices collégiens, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Trois nombres ont pour somme $96$.

Le premier vaut $6$ fois le troisième, et le troisième vaut $40$ de moins que le deuxième.

Combien vaut le premier nombre ?

## Hints

1. Il y a trois nombres inconnus, mais les deux renseignements de l'énoncé rattachent tous les deux les autres nombres au **troisième**. C'est donc le troisième qu'il faut nommer.
2. Appelle $x$ le troisième nombre. Écris alors le premier en fonction de $x$, puis le deuxième en fonction de $x$.
3. Il ne reste plus qu'à traduire « la somme vaut $96$ » : tu obtiens une équation avec une seule inconnue.

## Solution

**Choisir la bonne inconnue.**

L'énoncé donne deux renseignements, et tous les deux partent du troisième nombre :

- le premier vaut $6$ fois le troisième ;
- le troisième vaut $40$ de moins que le deuxième, autrement dit le deuxième vaut $40$ de plus que le troisième.

C'est donc le troisième nombre qu'il faut prendre comme inconnue. Appelons-le $x$. Alors :

$$\text{premier} = 6x, \qquad \text{deuxième} = x + 40, \qquad \text{troisième} = x .$$

**Écrire l'équation.**

La somme des trois nombres vaut $96$ :

$$6x + (x + 40) + x = 96 .$$

**Résoudre.**

On rassemble les $x$ :

$$8x + 40 = 96, \qquad \text{donc} \qquad 8x = 56, \qquad \text{donc} \qquad x = 7 .$$

**Revenir à la question posée.**

Attention, la question ne demande pas $x$, mais le **premier** nombre :

$$\text{premier} = 6x = 6 \times 7 = 42 .$$

**Vérification.** Les trois nombres sont $42$, $47$ et $7$. Leur somme vaut $42 + 47 + 7 = 96$, le premier vaut bien $6 \times 7 = 42$, et le troisième vaut bien $47 - 40 = 7$. Tout est cohérent.

**Conclusion.** Le premier nombre vaut $\boxed{42}$.

## Going further

Le piège de cet exercice n'est pas le calcul, c'est la dernière ligne : beaucoup de copies se sont arrêtées à $x = 7$ et ont répondu $7$. Prends l'habitude de relire la question une fois le calcul terminé.

Variante à chercher : et si la somme valait $96$, le premier $6$ fois le troisième, et le **deuxième** $40$ de moins que le troisième ? Que deviennent les trois nombres ?
