---
id: "8646"
title: "Prendre les cartes par les deux bouts"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [strategie, parite-des-positions, appariement, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Jeux » (Théo & Augustin), exercice 9 (envoi de combinatoire 2019-2020, exercice 13)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n > 1$ un entier. On mélange $2n$ cartes numérotées de $1$ à $2n$ et on les dispose en ligne, faces visibles.

Chacune à son tour, en commençant par Alice, Alice et Bob prennent une carte : soit celle tout à gauche de la ligne, soit celle tout à droite. Ils continuent jusqu'à ce que toutes les cartes soient prises.

À la fin, chacun calcule la somme des numéros de ses cartes. Celui qui a la plus grande somme gagne.

L'un des deux joueurs dispose-t-il d'une façon de ne pas perdre ?

## Hints

1. Fais l'essai avec $4$ cartes disposées, par exemple, dans l'ordre $2, 8, 1, 7$. Alice peut-elle s'assurer de ne pas perdre ?
2. Ce sont les **positions** dans la ligne qui comptent, pas les numéros. Numérote les places de $1$ à $2n$ et colorie-les alternativement.
3. Si Alice prend la carte de la place $1$, quelles sont les places des deux cartes qui se retrouvent aux extrémités ? De quelle couleur sont-elles ?
4. Montre qu'Alice peut, si elle le veut, s'emparer de **toutes** les cartes de places impaires. Puis montre qu'elle peut aussi s'emparer de toutes celles de places paires.
5. Il lui reste à choisir, avant de commencer, laquelle des deux familles a la plus grosse somme.

## Solution

**La réponse : oui, Alice dispose d'une façon de ne jamais perdre.**

**Le coloriage des places.** Numérotons les $2n$ places de la ligne de $1$ à $2n$, de gauche à droite, et colorions-les alternativement : les places impaires en noir, les places paires en blanc. Il y a $n$ places de chaque couleur.

Notons $N$ la somme des numéros des cartes posées sur les places noires, et $B$ celle des cartes posées sur les places blanches. Alice peut calculer $N$ et $B$ avant de jouer, puisque toutes les cartes sont visibles.

**Affirmation : Alice peut s'assurer de prendre exactement toutes les cartes noires, si elle le souhaite. Et de même pour les blanches.**

*Démonstration.* Supposons qu'Alice vise les cartes noires (places impaires).

Au départ, la ligne occupe les places $1$ à $2n$ : l'extrémité gauche est la place $1$, qui est noire. Alice la prend.

Il reste alors les places $2$ à $2n$ : les deux extrémités sont les places $2$ et $2n$, **toutes deux blanches**. Bob est donc obligé de prendre une carte blanche, quel qu'il choisisse.

Montrons par récurrence que l'on garde toujours la propriété suivante :

> après chaque coup d'Alice, les deux extrémités du bloc restant sont blanches.

C'est vrai après son premier coup, comme on vient de le voir. Supposons-le vrai à un moment donné. Bob doit alors prendre une carte blanche, quelle que soit l'extrémité qu'il choisisse. De ce côté-là, la nouvelle extrémité est la place voisine, qui est **noire** ; de l'autre côté, l'extrémité est restée blanche. Alice prend alors l'extrémité noire, et de ce côté-là la nouvelle extrémité redevient blanche. Les deux extrémités sont donc de nouveau blanches, ce qui achève la récurrence.

Alice peut donc toujours prendre une carte noire, et Bob n'a jamais accès qu'à des cartes blanches : à la fin, **Alice a toutes les cartes noires et Bob toutes les blanches.**

Si Alice vise au contraire les cartes blanches, elle commence par prendre la carte de la place $2n$, qui est blanche, et le même raisonnement s'applique en échangeant les couleurs. $\square$

**La conclusion.** Avant de commencer, Alice compare $N$ et $B$.

- Si $N \geqslant B$, elle vise les cartes noires : elle termine avec la somme $N \geqslant B$.
- Si $B \geqslant N$, elle vise les cartes blanches : elle termine avec la somme $B \geqslant N$.

Dans les deux cas, sa somme finale est supérieure ou égale à celle de Bob. **Alice ne perd jamais.**

## Going further

Remarque qu'Alice n'a pas toujours de stratégie **gagnante** : si $N = B$, la partie se termine à égalité et personne ne gagne. Cela arrive, par exemple, avec les quatre cartes disposées dans l'ordre $1, 2, 4, 3$ : les places impaires portent $1$ et $4$, les places paires portent $2$ et $3$, et les deux sommes valent $5$.

Remarque aussi qu'Alice peut ainsi garantir un résultat au moins égal à la moyenne, mais pas forcément le meilleur possible : il arrive qu'une autre façon de jouer lui rapporte davantage. La stratégie du coloriage est une garantie, pas un optimum.
