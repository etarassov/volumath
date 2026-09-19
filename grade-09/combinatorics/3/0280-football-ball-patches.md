---
id: "0280"
title: "Le ballon de football"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, polygones, equation]
adapted_from: null
see_also: ["0231"]
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 6, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Un ballon de football est cousu à partir de $32$ pièces de cuir : des hexagones blancs (à $6$ côtés) et des pentagones noirs (à $5$ côtés).

Chaque pièce noire n'est cousue qu'à des pièces blanches. Chaque pièce blanche est cousue à trois pièces noires et à trois pièces blanches.

Combien y a-t-il de pièces blanches ?

## Hints

1. Appelez $n$ le nombre de pièces blanches. Combien y a-t-il alors de pièces noires ?
2. Ne comptez pas les pièces : comptez les **coutures**, et plus précisément celles qui séparent une pièce noire d'une pièce blanche.
3. Comptez ces coutures noir-blanc depuis le côté noir. Un pentagone a $5$ côtés, et tous ses voisins sont blancs. Combien de coutures noir-blanc partent de l'ensemble des pièces noires ?
4. Comptez maintenant les mêmes coutures depuis le côté blanc : chaque hexagone touche exactement $3$ pièces noires.
5. Vous avez calculé deux fois le même nombre. Écrivez l'égalité et résolvez.

## Solution

**L'idée : compter les coutures noir-blanc de deux façons.**

Notons $n$ le nombre de pièces blanches. Comme le ballon compte $32$ pièces en tout, il y a $32 - n$ pièces noires.

On va compter le nombre de **coutures noir-blanc**, c'est-à-dire le nombre d'endroits où une pièce noire est cousue à une pièce blanche. On va le faire de deux manières, et les deux résultats devront être égaux.

**Premier comptage : depuis les pièces noires.**

Chaque pièce noire est un pentagone : elle a $5$ côtés, donc $5$ coutures. L'énoncé dit que tous ses voisins sont blancs, donc ses $5$ coutures sont toutes des coutures noir-blanc.

Comme il y a $32 - n$ pièces noires, cela donne

$$5 \times (32 - n) \text{ coutures noir-blanc.}$$

Attention à ne pas compter deux fois : chaque couture noir-blanc a une seule pièce noire, donc elle apparaît une seule fois dans ce comptage.

**Deuxième comptage : depuis les pièces blanches.**

Chaque pièce blanche est un hexagone : elle a $6$ côtés, mais seulement $3$ de ses voisins sont noirs. Elle apporte donc $3$ coutures noir-blanc.

Comme il y a $n$ pièces blanches, cela donne

$$3 \times n \text{ coutures noir-blanc.}$$

Là encore chaque couture noir-blanc a une seule pièce blanche, donc elle est comptée une seule fois.

**L'équation.**

Les deux comptages portent sur les mêmes coutures, donc

$$5 \times (32 - n) = 3n.$$

On développe et on résout :

$$160 - 5n = 3n, \qquad 160 = 8n, \qquad n = 20.$$

**Vérification.**

Il y a donc $20$ hexagones blancs et $32 - 20 = 12$ pentagones noirs.

- Coutures noir-blanc vues du noir : $5 \times 12 = 60$.
- Coutures noir-blanc vues du blanc : $3 \times 20 = 60$.

Tout concorde.

**Conclusion.** Le ballon comporte $20$ pièces blanches (et $12$ pièces noires). C'est bien ce qu'on trouve sur un vrai ballon de football.

**Ce qu'il faut retenir.** Quand on ne sait pas compter les objets, il est souvent plus facile de compter ce qui les relie, et de le faire de deux points de vue différents.

## Going further

1. Combien de coutures blanc-blanc y a-t-il sur le ballon ? Attention : une telle couture est vue par **deux** pièces blanches.
2. Combien de coutures le ballon compte-t-il en tout ?
3. Un fabricant propose un ballon de $32$ pièces où chaque pièce blanche touche $2$ pièces noires et chaque pièce noire ne touche que des pièces blanches. Est-ce possible ?
