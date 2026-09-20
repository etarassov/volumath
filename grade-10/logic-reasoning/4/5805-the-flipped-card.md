---
id: "5805"
title: "La carte retournée"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [parite, tableau, code correcteur, tour de magie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Magic for Muggles (Paul Zeitz)"
  reference: "ZeitzMathMuggles.pdf, problème 4 « Concentration » (solution p. 6)"
  url: "https://mathcircles.org/activity/mathematical-magic-for-muggles/"
  original_language: "en"
  local_copy: "sources/originals/namc/ZeitzMathMuggles.pdf"
---

## Statement

Un spectateur pose $16$ cartes en carré de $4$ lignes et $4$ colonnes. Il choisit librement, pour
chaque carte, de la poser face visible ou face cachée.

Le magicien ajoute alors une cinquième ligne et une cinquième colonne, c'est-à-dire $9$ cartes de
plus, qu'il pose comme il le souhaite, face visible ou face cachée. On obtient un carré de
$5$ lignes et $5$ colonnes.

On bande alors les yeux du magicien. Le spectateur retourne **exactement une** carte du carré :
une carte face visible devient face cachée, ou l'inverse. On retire le bandeau, et le magicien
désigne aussitôt la carte qui a été retournée.

1. Montrer que le magicien peut toujours placer ses $9$ cartes de façon que **chacune des $5$
   lignes et chacune des $5$ colonnes contienne un nombre impair de cartes face visible**.
2. Montrer qu'une fois cette disposition obtenue, le magicien retrouve à coup sûr la carte
   retournée.

## Hints

1. Commence par la question 2, elle est plus facile : que devient le nombre de cartes face
   visible d'une ligne quand on retourne une carte de cette ligne ?
2. Pour la question 1 : le magicien a $4$ cartes à placer dans la colonne $5$, $4$ cartes à
   placer dans la ligne $5$, et une dernière carte dans le coin en bas à droite. Traite d'abord
   les huit premières, une par une.
3. Les huit premières cartes ne posent aucun problème : chacune sert à corriger une seule ligne
   ou une seule colonne. Toute la difficulté est dans la neuvième, celle du coin, qui doit
   arranger à la fois la ligne $5$ et la colonne $5$.
4. Compte le nombre total de cartes face visible du carré, privé de la carte du coin, de deux
   façons : en additionnant les lignes, puis en additionnant les colonnes.

## Solution

Dans toute la solution, on appelle **poids** d'une ligne ou d'une colonne le nombre de cartes face
visible qu'elle contient.

**Question 2 : retrouver la carte retournée.**

Supposons la disposition obtenue : les $5$ lignes et les $5$ colonnes ont toutes un poids impair.

Le spectateur retourne une carte, située à l'intersection d'une ligne $L$ et d'une colonne $C$.
Cette carte passe de face visible à face cachée, ou l'inverse : dans les deux cas, le poids de $L$
change de $1$, donc **change de parité**, et il devient pair. De même le poids de $C$ devient
pair. Toutes les autres lignes et colonnes ne contiennent pas cette carte : leurs poids ne
changent pas, ils restent impairs.

Le magicien, en reprenant sa place, cherche donc :

- l'unique ligne de poids pair : c'est $L$ ;
- l'unique colonne de poids pair : c'est $C$.

La carte retournée est à leur intersection. Il la désigne sans hésiter. (Et si toutes les lignes
et colonnes sont encore de poids impair, c'est que le spectateur n'a rien retourné.)

**Question 1 : la disposition est toujours possible.**

Le magicien place ses cartes ainsi.

- **Colonne $5$, lignes $1$ à $4$.** Pour chaque ligne $i$ de $1$ à $4$, il regarde le poids des
  $4$ cartes déjà posées par le spectateur sur cette ligne. Si ce poids est pair, il pose sa
  carte face visible ; s'il est impair, il la pose face cachée. Dans les deux cas, la ligne $i$
  a maintenant un poids impair.
- **Ligne $5$, colonnes $1$ à $4$.** Pareil, colonne par colonne : pour chaque colonne $j$ de $1$
  à $4$, il complète de façon que la colonne $j$ ait un poids impair.

Huit cartes sont posées, et les lignes $1$ à $4$ ainsi que les colonnes $1$ à $4$ ont toutes un
poids impair. Reste la carte du coin, à l'intersection de la ligne $5$ et de la colonne $5$. Elle
doit rendre impair le poids de la ligne $5$ **et** celui de la colonne $5$. Rien ne garantit
a priori que c'est possible : montrons que ces deux exigences sont en fait la même.

Laissons le coin de côté et comptons de deux façons le nombre total $T$ de cartes face visible
des $24$ autres cases.

- **Par lignes.** Les lignes $1$ à $4$ sont complètes et ont chacune un poids impair. Leur somme
  est donc paire, car c'est une somme de quatre nombres impairs. Il reste les quatre cartes de la
  ligne $5$ situées dans les colonnes $1$ à $4$ : notons $r$ leur poids. Alors
  $$T = (\text{nombre pair}) + r.$$
- **Par colonnes.** Les colonnes $1$ à $4$ sont complètes et ont chacune un poids impair, donc de
  somme paire. Il reste les quatre cartes de la colonne $5$ situées dans les lignes $1$ à $4$ :
  notons $c$ leur poids. Alors
  $$T = (\text{nombre pair}) + c.$$

En comparant les deux écritures, $r$ et $c$ ont la même parité.

Or le coin doit être posé de façon que $r + (\text{coin})$ soit impair, et aussi de façon que
$c + (\text{coin})$ soit impair. Comme $r$ et $c$ ont la même parité, ces deux conditions
réclament exactement la même chose :

- si $r$ et $c$ sont pairs, le magicien pose la carte du coin face visible ;
- si $r$ et $c$ sont impairs, il la pose face cachée.

La disposition demandée est donc toujours réalisable, quelles que soient les $16$ cartes posées
par le spectateur.

**Conclusion.** Le magicien complète le carré en rendant impair le poids de chaque ligne et de
chaque colonne, ce qui est toujours possible ; une carte retournée trahit alors sa ligne et sa
colonne, et il la retrouve à coup sûr.

## Going further

Ce tour n'est pas un tour : c'est un **code correcteur d'erreurs**, et c'est ainsi que
fonctionnent les codes les plus simples. Les $9$ cartes ajoutées par le magicien sont des *bits
de contrôle* : elles ne transportent aucune information nouvelle, elles servent seulement à
repérer une altération.

Deux remarques pour aller plus loin.

- Une seule ligne supplémentaire suffirait à **détecter** qu'une carte a été retournée, mais pas
  à dire laquelle. Ce sont les lignes **et** les colonnes ensemble qui permettent de la localiser,
  donc de la corriger.
- Si le spectateur retourne **deux** cartes, le magicien voit bien que quelque chose ne va plus,
  mais il ne peut plus dire lesquelles : vérifie-le. Cherche ensuite combien de cartes il faut
  retourner, et comment les choisir, pour qu'il ne s'aperçoive de rien du tout.
