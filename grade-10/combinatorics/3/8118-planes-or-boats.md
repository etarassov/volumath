---
id: "8118"
title: "L'avion ou le bateau, il en reste toujours un"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [recurrence, graphe, connexite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Récurrence », exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Dans un certain pays, deux villes quelconques sont toujours reliées directement, soit par une ligne aérienne, soit par un canal navigable, mais jamais par les deux.

Montrer que l'un des deux moyens de transport permet, à lui seul, de voyager de n'importe quelle ville à n'importe quelle autre — quitte à faire des escales.

## Hints

1. Fais d'abord des dessins avec trois villes, puis quatre. Essaie de fabriquer un contre-exemple : tu n'y arriveras pas, mais tu verras pourquoi.
2. Le nombre de villes est quelconque : c'est l'indice qu'une récurrence sur ce nombre peut marcher.
3. Pour passer de $j$ villes à $j+1$, mets une ville de côté et applique l'hypothèse de récurrence aux $j$ autres.
4. Remets la ville de côté en jeu. Deux situations seulement : ou bien elle est reliée au reste par au moins une liaison du bon type, ou bien toutes ses liaisons sont de l'autre type. Traite les deux.

## Solution

On raisonne par récurrence sur le nombre $n$ de villes du pays. Soit $P(n)$ la propriété :

> « Dans tout pays de $n$ villes où chaque paire de villes est reliée soit par avion soit par bateau, l'un des deux moyens de transport permet d'aller de n'importe quelle ville à n'importe quelle autre, éventuellement avec des escales. »

**Initialisation : $P(2)$.**

Avec deux villes, il n'y a qu'une seule liaison. Si c'est une ligne aérienne, l'avion fait l'affaire ; si c'est un canal, le bateau fait l'affaire. $P(2)$ est vraie.

**Hérédité : $P(j) \Rightarrow P(j+1)$.**

Supposons $P(j)$ vraie, et donnons-nous un pays de $j+1$ villes.

Mettons de côté une ville, appelons-la $V$. Les $j$ villes restantes forment un pays qui vérifie les hypothèses, donc par $P(j)$, l'un des deux moyens de transport les relie toutes entre elles. Quitte à échanger les noms des deux moyens de transport, disons que c'est **l'avion** : entre deux quelconques de ces $j$ villes, on peut voyager en avion.

Remettons maintenant $V$ en jeu. Deux cas.

**Cas 1 : $V$ est reliée par avion à au moins une des $j$ villes**, appelons-la $W$.

Alors l'avion relie tout le pays. En effet, pour aller de $V$ à n'importe quelle ville $X$ parmi les $j$ autres, on vole de $V$ à $W$, puis de $W$ à $X$ (possible par hypothèse de récurrence). Et deux villes parmi les $j$ sont déjà reliées entre elles par avion.

**Cas 2 : $V$ n'est reliée par avion à aucune des $j$ villes.**

Alors toutes les liaisons partant de $V$ sont des canaux : $V$ est reliée par bateau à chacune des $j$ autres villes.

Dans ce cas, c'est le **bateau** qui relie tout le pays. En effet :

- de $V$ à n'importe quelle ville, il y a un canal direct ;
- et pour aller d'une ville $X$ à une ville $Y$ parmi les $j$ autres, il suffit de passer par $V$ : le canal de $X$ à $V$, puis celui de $V$ à $Y$.

Dans les deux cas, $P(j+1)$ est vraie.

**Conclusion.**

Par récurrence, $P(n)$ est vraie pour tout $n \geq 2$ : dans un tel pays, l'avion seul ou le bateau seul permet toujours d'aller partout.
