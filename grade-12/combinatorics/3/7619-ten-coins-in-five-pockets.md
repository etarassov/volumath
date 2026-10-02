---
id: "7619"
title: "Dix pièces dans cinq poches"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, principe-multiplicatif, combinaisons-avec-repetition, coefficients-binomiaux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 3 (solution chapitre XI, résolue par Eva Philippe)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On dispose de $10$ pièces de monnaie : $5$ d'entre elles sont **identiques** entre elles, et les $5$ autres sont toutes **différentes** (les unes des autres, et des cinq premières).

On veut ranger ces $10$ pièces dans $5$ poches numérotées de $1$ à $5$. Une poche peut recevoir autant de pièces qu'on veut, y compris aucune.

De combien de façons différentes peut-on le faire ?

## Hints

1. Les deux sortes de pièces se rangent indépendamment. Traitez-les séparément, puis multipliez.
2. Pour les $5$ pièces **différentes** : chacune choisit sa poche, indépendamment des autres.
3. Pour les $5$ pièces **identiques** : ce qui compte n'est pas laquelle va où, mais seulement **combien** il y en a dans chaque poche. Une répartition est donc décrite par cinq nombres $n_1 + n_2 + n_3 + n_4 + n_5 = 5$ avec des $n_i$ positifs ou nuls.
4. Pour compter ces répartitions, alignez les $5$ pièces identiques et placez $4$ séparateurs entre elles ou aux extrémités. Combien d'objets alignés en tout, et combien de choix pour la position des séparateurs ?

## Solution

Les deux types de pièces ne s'influencent pas : une façon de ranger le tout consiste à choisir un rangement des $5$ pièces différentes **et** un rangement des $5$ pièces identiques. On compte donc chacun de son côté, puis on multiplie.

**Les $5$ pièces différentes.**

Chaque pièce doit aller dans l'une des $5$ poches, et ce choix est libre et indépendant pour chacune. Il y a donc

$$5 \times 5 \times 5 \times 5 \times 5 = 5^5 = 3125$$

façons de ranger les cinq pièces différentes.

**Les $5$ pièces identiques.**

Ici, deux rangements qui mettent le même **nombre** de pièces dans chaque poche sont indiscernables. Un rangement est donc entièrement décrit par cinq entiers positifs ou nuls

$$n_1 + n_2 + n_3 + n_4 + n_5 = 5 ,$$

où $n_i$ est le nombre de pièces dans la poche numéro $i$.

Pour les compter, utilisons la méthode dite des **barres et des étoiles**. Représentons un rangement en alignant $5$ étoiles (les pièces) et $4$ barres (les séparations entre poches consécutives). Par exemple

$$\star\ \star\ \mid\ \mid\ \star\ \mid\ \star\ \star\ \mid$$

se lit : $2$ pièces dans la poche $1$, aucune dans la poche $2$, une dans la poche $3$, deux dans la poche $4$, aucune dans la poche $5$.

Cette correspondance est une bijection : tout alignement de $5$ étoiles et $4$ barres donne un rangement, et tout rangement donne un unique alignement.

Un alignement, c'est le choix des positions des $4$ barres parmi les $5 + 4 = 9$ positions de la ligne. Il y en a donc

$$\binom{9}{4} = \frac{9 \times 8 \times 7 \times 6}{4 \times 3 \times 2 \times 1} = \frac{3024}{24} = 126 .$$

**Le total.**

$$3125 \times 126 = 393\,750 .$$

**Conclusion.** Il y a $\boxed{393\,750}$ rangements possibles.

## Going further

La formule générale des barres et des étoiles mérite d'être retenue : le nombre de façons de répartir $n$ objets **identiques** dans $k$ boîtes **distinctes** (en autorisant les boîtes vides) est

$$\binom{n + k - 1}{k - 1} .$$

Ici $n = 5$ et $k = 5$, d'où $\binom{9}{4} = 126$.

À comparer avec le cas des objets distincts, qui donne $k^n$ — beaucoup plus grand : $5^5 = 3125$ contre $126$.

Deux variantes pour s'entraîner :

1. Et si l'on interdisait les poches vides ?
2. Et si les cinq poches étaient elles aussi indiscernables, c'est-à-dire non numérotées ?
