---
id: "12215"
title: "Un circuit dont la longueur n'est pas un multiple de 3"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [graphe, villes-et-routes, chemin-le-plus-long, circuit, restes, divisibilite-par-3]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe A et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier.pdf, exercice 1 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier.pdf"
---

## Statement

Un pays compte $100$ villes. Chaque ville est reliée par une route directe à exactement trois autres villes, et chaque route se parcourt dans les deux sens.

Montrer qu'il existe une ville $A$ et un circuit qui part de $A$, va de ville en ville et revient en $A$, sans jamais emprunter deux fois la même route, et dont le nombre de routes **n'est pas** un multiple de $3$.

Le circuit n'a pas besoin de passer par toutes les villes.

## Hints

1. Regarde les chemins qui ne passent jamais deux fois par la même ville, et choisis-en un qui est le plus long possible. Pourquoi un tel chemin existe-t-il ?
2. Soit $v_0$ une extrémité de ce chemin. Où peuvent se trouver les trois villes reliées à $v_0$ ?
3. Les trois villes reliées à $v_0$ sont sur le chemin. Elles donnent trois circuits différents qui passent par $v_0$. Compte leurs routes.
4. Si les deux premiers circuits ont un nombre de routes multiple de $3$, quel est le reste du troisième dans la division par $3$ ?

## Solution

Appelons **voisines** d'une ville les trois villes qui lui sont reliées par une route. Appelons **chemin** une suite de villes $v_0, v_1, \ldots, v_k$ **toutes différentes**, telle que deux villes consécutives soient voisines. Ce chemin emprunte $k$ routes : $v_0v_1$, $v_1v_2$, …, $v_{k-1}v_k$.

**Étape 1. Un chemin le plus long possible.**

Un chemin passe au plus une fois par chaque ville, donc il contient au plus $100$ villes. Il n'y a donc qu'un nombre fini de chemins, et il y en a au moins un (deux villes voisines). On peut donc choisir un chemin $v_0, v_1, \ldots, v_k$ dont le nombre de routes $k$ est le plus grand possible.

**Étape 2. Les trois voisines de $v_0$ sont sur ce chemin.**

Supposons qu'une voisine $w$ de $v_0$ ne soit pas sur le chemin. Alors $w, v_0, v_1, \ldots, v_k$ est encore un chemin (toutes ces villes sont différentes), et il a $k + 1$ routes. C'est impossible, car $k$ est le plus grand possible.

Donc les trois voisines de $v_0$ sont parmi $v_1, \ldots, v_k$. L'une d'elles est $v_1$. Les deux autres sont différentes de $v_1$ : ce sont deux villes $v_i$ et $v_j$, avec $2 \leqslant i < j \leqslant k$.

**Étape 3. Trois circuits.**

- **Circuit 1 :** $v_0 \to v_1 \to v_2 \to \cdots \to v_i \to v_0$. Il emprunte les $i$ routes $v_0v_1, \ldots, v_{i-1}v_i$ du chemin, puis la route $v_iv_0$. Ces routes sont toutes différentes : celles du chemin relient des villes différentes, et la seule d'entre elles qui touche $v_0$ est $v_0v_1$, qui n'est pas $v_iv_0$ puisque $v_i \neq v_1$. Ce circuit compte $i + 1$ routes.
- **Circuit 2 :** $v_0 \to v_1 \to \cdots \to v_j \to v_0$. De la même façon, il compte $j + 1$ routes, toutes différentes.
- **Circuit 3 :** $v_0 \to v_i \to v_{i+1} \to \cdots \to v_j \to v_0$. Il emprunte la route $v_0v_i$, puis les $j - i$ routes du chemin entre $v_i$ et $v_j$, puis la route $v_jv_0$. Les routes du chemin entre $v_i$ et $v_j$ ne touchent pas $v_0$, et $v_0v_i \neq v_0v_j$ car $v_i \neq v_j$. Ce circuit compte $(j - i) + 2$ routes, toutes différentes.

Ces trois circuits partent de $v_0$ et y reviennent.

**Étape 4. L'un des trois convient.**

- Si $i + 1$ n'est pas un multiple de $3$, le circuit 1 convient.
- Si $j + 1$ n'est pas un multiple de $3$, le circuit 2 convient.
- Sinon, $i + 1$ et $j + 1$ sont tous deux des multiples de $3$. Leur différence $j - i = (j + 1) - (i + 1)$ est alors un multiple de $3$, donc $j - i + 2$ a pour reste $2$ dans la division par $3$. Le circuit 3 convient.

**Conclusion.** Avec $A = v_0$, l'un des trois circuits revient en $A$ sans emprunter deux fois la même route, et son nombre de routes n'est pas un multiple de $3$.

## Going further

Le nombre $100$ ne joue aucun rôle : la preuve marche dès que chaque ville a **au moins** trois voisines. Par contre, deux voisines ne suffisent pas. Dans un pays formé de triangles de villes séparés les uns des autres, chaque ville a deux voisines, et tous les circuits ont $3$ routes.

Pourquoi le nombre de villes est-il forcément pair dans un pays où chaque ville a exactement trois voisines ? Compte les « bouts de routes » de deux façons.
