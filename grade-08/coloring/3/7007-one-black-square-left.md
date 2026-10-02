---
id: "7007"
title: "Ne garder qu'une seule case noire"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [echiquier, invariant, parite]
adapted_from: null
see_also: ["5214", "8232"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Stratégies de base », TD (Igor Kortchemski), exercice 5 (la numérotation des corrigés du TD est décalée d'un rang dans le polycopié)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On considère un échiquier $8 \times 8$, colorié comme d'habitude : $32$ cases noires et
$32$ cases blanches, alternées.

**a)** On a le droit de changer la couleur de toutes les cases d'une même **ligne**, ou de
toutes les cases d'une même **colonne** (le noir devient blanc et le blanc devient noir).
Peut-on arriver à n'avoir plus qu'une seule case noire sur tout l'échiquier ?

**b)** Même question si l'on a le droit de changer la couleur des quatre cases d'un
**carré $2 \times 2$** quelconque.

## Hints

1. Dans les deux cas, combien de cases une opération retourne-t-elle ?
2. Si une opération retourne $n$ cases dont $k$ sont noires, de combien le nombre total de
   cases noires varie-t-il ?
3. Compare la parité du nombre de cases noires au départ et à l'arrivée.

## Solution

**Dans les deux cas, la réponse est non**, et pour la même raison.

**Le principe.** Notons $N$ le nombre de cases noires de l'échiquier. Supposons qu'une
opération retourne $n$ cases, parmi lesquelles $k$ sont noires (et donc $n - k$ blanches).
Après l'opération, ces $n$ cases comptent $n - k$ noires. Le nombre total de cases noires
devient
$$N - k + (n - k) = N + n - 2k .$$
La variation vaut $n - 2k$. Si $n$ est **pair**, cette variation est paire, et la **parité de
$N$ ne change jamais**.

**a) Lignes et colonnes.** Une ligne comme une colonne contient $n = 8$ cases, un nombre pair.
La parité de $N$ est donc un invariant.

Au départ, $N = 32$, qui est **pair**. À l'arrivée on voudrait $N = 1$, qui est **impair**.
C'est impossible.

**b) Carrés $2 \times 2$.** Un carré $2 \times 2$ contient $n = 4$ cases, encore un nombre
pair. Le même argument s'applique mot pour mot : $N$ reste pair, et ne peut donc pas valoir
$1$.

**Conclusion.** Ni avec les lignes et colonnes, ni avec les carrés $2 \times 2$, on ne peut
descendre à une seule case noire.

## Going further

Remarque que le coloriage initial n'a servi qu'à fournir la valeur $N = 32$. L'argument marche
pour n'importe quelle situation de départ ayant un nombre pair de cases noires, et il marche
aussi pour un échiquier $2n \times 2n$.

En revanche, sur un échiquier $7 \times 7$, une ligne contient $7$ cases : la parité change à
chaque coup et l'argument s'effondre. Peux-tu alors y arriver ?
