---
id: "0629"
title: "La saucisse, le chien et le chat"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, mise-en-equation, masse, systeme]
adapted_from: null
see_also: []
same_as: ["3811"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 8, section « Problèmes divers », d'après A. V. Shapovalov, 2013"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Un chien et un chat ont attrapé la même saucisse avec leurs dents, chacun à un endroit différent : le chien mord près d'un bout, le chat près de l'autre bout. La saucisse se trouve ainsi partagée en trois parties : le morceau du chien, le morceau du chat, et le tronçon du milieu, entre les deux mâchoires.

- Si le chien coupe la saucisse à l'endroit où il mord et s'en va avec son morceau, il reste au chat $300$ g de plus que ce que le chien emporte.
- Si c'est le chat qui coupe à l'endroit où il mord et s'en va avec son morceau, il reste au chien $500$ g de plus que ce que le chat emporte.

Si chacun coupe à l'endroit où il mord et part avec son morceau, quelle quantité de saucisse reste-t-il par terre ?

## Hints

1. Donne un nom aux trois parties : la masse du morceau du chien, celle du morceau du chat, celle du tronçon du milieu.
2. Quand le chien part avec son morceau, que reste-t-il au chat ? Deux des trois parties. Écris l'égalité de l'énoncé avec tes lettres.
3. Fais de même pour la deuxième égalité. Tu obtiens deux équations à trois inconnues : ce n'est pas assez pour tout trouver, mais l'énoncé ne demande qu'une seule des trois lettres.
4. Additionne les deux équations membre à membre et regarde ce qui disparaît.

## Solution

**On nomme les trois parties.**

Notons, en grammes,

- $c$ la masse du morceau du **chien** (du bout jusqu'à ses dents),
- $t$ la masse du morceau du **chat**,
- $m$ la masse du tronçon du **milieu**.

C'est exactement ce tronçon du milieu qui tombe par terre si les deux animaux partent chacun avec son morceau. La question est donc : combien vaut $m$ ?

**Les deux situations de l'énoncé.**

Si le chien part avec son morceau, il emporte $c$ et il reste au chat le reste de la saucisse, c'est-à-dire $t + m$. La première phrase dit :

$$t + m = c + 300.$$

Si le chat part avec son morceau, il emporte $t$ et il reste au chien $c + m$. La deuxième phrase dit :

$$c + m = t + 500.$$

**On additionne.**

En ajoutant les deux égalités membre à membre :

$$(t + m) + (c + m) = (c + 300) + (t + 500),$$

c'est-à-dire

$$t + c + 2m = c + t + 800.$$

Les termes $c$ et $t$ sont présents des deux côtés : on les retire. Il reste

$$2m = 800, \qquad \text{donc} \qquad m = 400.$$

**Conclusion.** Il reste $400$ g de saucisse par terre.

On remarque que les masses des deux morceaux, elles, restent inconnues : l'énoncé ne les détermine pas. En retranchant les deux équations on trouve seulement $c - t = 100$ : le morceau du chien pèse $100$ g de plus que celui du chat, mais on ne sait pas lequel pèse combien.

## Going further

1. Reprends le problème avec $300$ g et $500$ g remplacés par deux nombres $a$ et $b$. Que vaut le tronçon du milieu ?
2. Toute la saucisse pesait $1$ kg. Combien pèse alors chaque morceau ?
3. Peut-on choisir les deux nombres de l'énoncé de façon que le tronçon du milieu soit plus lourd que la saucisse entière ? Que se passe-t-il alors ?
