---
id: "2402"
title: "Vingt personnes qui ne se séparent pas"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, permutations, blocs, disposition-circulaire, complementaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 6 (réponses dans Handout-468-565.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

Vingt personnes sont réunies pour une photo. Elles se répartissent ainsi :

* une famille de $4$ personnes,
* deux familles de $3$ personnes,
* trois couples,
* quatre personnes seules.

Sur la photo, **chaque famille et chaque couple doit rester groupé** : leurs membres occupent des places consécutives, sans personne d'autre entre eux.

1. Combien y a-t-il de façons de placer ces vingt personnes sur une rangée ?
2. Combien y en a-t-il si elles se placent en cercle ? (Deux dispositions qui se déduisent l'une de l'autre par une rotation sont considérées comme identiques.)
3. Combien y a-t-il de dispositions en rangée dans lesquelles les deux familles de $3$ ne sont pas côte à côte ?

## Hints

1. Une famille qui doit rester groupée se comporte comme un seul bloc. Combien de blocs y a-t-il en tout ?
2. Place d'abord les blocs, puis, à l'intérieur de chaque bloc, décide de l'ordre des personnes. Les deux décisions sont indépendantes.
3. Pour le cercle : si l'on fixe la position d'un bloc, les rotations ne créent plus de doublon. Combien reste-t-il de blocs à placer librement ?
4. Pour la question 3, il est bien plus court de compter les dispositions **interdites** (les deux familles de $3$ côte à côte) et de les retrancher. Deux blocs collés forment un seul bloc — mais dans quel ordre ?

## Solution

**L'idée : chaque groupe soudé devient un bloc.**

Puisque les membres d'une même famille (ou d'un même couple) restent ensemble, on peut les enfermer dans une boîte et déplacer la boîte d'un seul tenant. On obtient

$$1 + 2 + 3 + 4 = 10 \text{ blocs},$$

à savoir la famille de $4$, les deux familles de $3$, les trois couples, et les quatre personnes seules (chacune étant un bloc d'une personne).

Construire une photo, c'est faire deux choses indépendantes :

* placer les $10$ blocs ;
* choisir l'ordre des personnes **à l'intérieur** de chaque bloc.

Pour le second point, le nombre de choix ne dépend pas de la disposition des blocs. Il vaut

$$I = 4! \times (3!)^2 \times (2!)^3 \times (1!)^4 = 24 \times 36 \times 8 = 6\,912 .$$

**1. En rangée.**

Les $10$ blocs se placent en rangée de $10!$ façons, d'où

$$10! \times I = 3\,628\,800 \times 6\,912 = 25\,082\,265\,600 .$$

**2. En cercle.**

Placer $n$ objets en cercle, à rotation près, se fait de $(n-1)!$ façons : on fixe un objet à une place de référence, ce qui supprime exactement les rotations, puis on range les $n-1$ autres librement. Ici

$$9! \times I = 362\,880 \times 6\,912 = 2\,508\,226\,560 ,$$

soit dix fois moins qu'en rangée, ce qui est normal : chaque disposition circulaire correspond à $10$ rangées obtenues par rotation.

**3. Les deux familles de $3$ séparées.**

On compte par le complémentaire.

*Dispositions où les deux familles de $3$ sont côte à côte.* Collons ces deux blocs l'un contre l'autre : ils forment un unique bloc. Il reste $9$ blocs à ranger, soit $9!$ façons, et il faut encore choisir laquelle des deux familles est à gauche, soit $2$ possibilités. Cela donne $9! \times 2$ dispositions de blocs.

*Conclusion.* Le nombre de dispositions de blocs où les deux familles de $3$ ne se touchent pas vaut

$$10! - 2 \times 9! = 3\,628\,800 - 725\,760 = 2\,903\,040 ,$$

et le nombre de photos cherché est

$$(10! - 2 \times 9!) \times I = 2\,903\,040 \times 6\,912 = 20\,065\,812\,480 .$$

**Réponses.**

1. $10! \times 4! \times (3!)^2 \times (2!)^3 = 25\,082\,265\,600$ ;
2. $9! \times 4! \times (3!)^2 \times (2!)^3 = 2\,508\,226\,560$ ;
3. $(10! - 2 \times 9!) \times 4! \times (3!)^2 \times (2!)^3 = 20\,065\,812\,480$.

## Going further

1. Vérifier que la réponse de la question 3 représente exactement les $\tfrac{4}{5}$ de celle de la question 1. Expliquer ce rapport sans calcul.
2. Combien y a-t-il de dispositions en rangée où **aucune** des quatre personnes seules n'est à côté d'une autre personne seule ? (Placer d'abord les six autres blocs, puis glisser les personnes seules dans les intervalles.)
