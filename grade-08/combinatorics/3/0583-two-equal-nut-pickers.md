---
id: "0583"
title: "Deux cueilleurs de noisettes"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [raisonnement-par-l-absurde, tiroirs, somme, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 5 «Доказательство от противного», задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Vingt et une personnes sont allées ramasser des noisettes dans un bois. À elles toutes, elles en ont ramassé $200$.

Montrer qu'il y a forcément deux personnes qui en ont ramassé exactement le même nombre.

## Hints

1. On veut montrer qu'il y a deux récoltes égales. Essaie de supposer le contraire : toutes les récoltes sont différentes. Que se passe-t-il alors ?
2. Si toutes les récoltes sont différentes, range les personnes de la plus petite récolte à la plus grande.
3. La plus petite récolte est d'au moins $0$ noisette. La suivante est strictement plus grande, donc d'au moins... ? Et celle d'après ?
4. Calcule $0 + 1 + 2 + \dots + 20$, puis compare ce résultat à $200$.

## Solution

**L'idée : on raisonne par l'absurde.**

Supposons le contraire de ce qu'on veut montrer : supposons que les $21$ personnes aient toutes ramassé des nombres de noisettes deux à deux **différents**.

**On range les récoltes.**

Rangeons les personnes de la plus petite récolte à la plus grande. Comme toutes les récoltes sont différentes, chacune est strictement plus grande que la précédente. Or ce sont des nombres entiers : passer strictement au-dessus d'un entier, c'est augmenter d'au moins $1$.

- La $1^{\text{re}}$ personne a ramassé au moins $0$ noisette (on ne peut pas faire moins).
- La $2^{\text{e}}$ a ramassé plus que la première, donc au moins $1$.
- La $3^{\text{e}}$ a ramassé plus que la deuxième, donc au moins $2$.
- et ainsi de suite, jusqu'à la $21^{\text{e}}$, qui a ramassé au moins $20$.

**On additionne.**

Ces $21$ personnes auraient donc ramassé au total au moins
$$0 + 1 + 2 + \dots + 20$$

Calculons cette somme en formant des paires qui font toutes $20$ :
$$(0 + 20) + (1 + 19) + (2 + 18) + \dots + (9 + 11) + 10$$
Il y a dix paires valant $20$ chacune, et le nombre $10$ qui reste seul au milieu :
$$0 + 1 + 2 + \dots + 20 = 10 \times 20 + 10 = 210$$

**La contradiction.**

Les $21$ personnes auraient donc ramassé au moins $210$ noisettes. Mais l'énoncé dit qu'elles en ont ramassé $200$ en tout, et $200 < 210$.

Notre supposition conduit à une impossibilité : elle est donc fausse.

**Conclusion.**

Il est impossible que les $21$ récoltes soient toutes différentes. Il y a donc bien deux personnes au moins qui ont ramassé le même nombre de noisettes.

## Going further

1. Avec $21$ personnes, quel est le plus grand nombre total de noisettes pour lequel on peut encore être sûr que deux personnes ont la même récolte ?
2. On dispose de $82$ cubes, chacun d'une seule couleur. Montrer que, parmi eux, on trouve soit $10$ cubes de couleurs toutes différentes, soit $10$ cubes de la même couleur.
