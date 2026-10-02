---
id: "13252"
title: "2012 nombres égaux à 1 ou −1 sur un cercle"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [parite, cercle, valeurs-intermediaires, construction, sommes-glissantes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés lycée, exercice 7 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

Sur un cercle, on écrit $2012$ nombres, chacun égal à $1$ ou à $-1$. On note $S$ leur somme.

On suppose qu'on ne peut pas trouver $10$ nombres consécutifs sur le cercle dont la somme soit nulle. Quelles sont les valeurs que peut prendre $S$ ?

## Hints

1. Quelles valeurs peut prendre la somme de $10$ nombres consécutifs ? Sont-elles paires ou impaires ?
2. Quand on fait glisser une fenêtre de $10$ nombres consécutifs d'un cran, de combien sa somme peut-elle changer ?
3. Déduis-en que toutes les sommes de $10$ nombres consécutifs ont le même signe.
4. Si elles sont toutes positives, combien y a-t-il de $1$ au moins dans $10$ nombres consécutifs ? Peut-on trouver deux $1$ côte à côte ? Découpe le reste du cercle en paquets de $10$.
5. Pour construire un exemple, essaie le motif « six $1$ puis quatre $-1$ », répété.

## Solution

Appelons **fenêtre** une suite de $10$ nombres consécutifs sur le cercle, et **somme de la fenêtre** la somme de ces $10$ nombres. Il y a $2012$ fenêtres, une pour chaque point de départ.

**Les sommes de fenêtres sont paires.** Si une fenêtre contient $u$ fois le nombre $1$, elle contient $10 - u$ fois $-1$, et sa somme vaut $u - (10 - u) = 2u - 10$, un nombre pair. De même, $S = 2v - 2012$ est pair, où $v$ est le nombre de $1$ sur le cercle, et $-2012 \leqslant S \leqslant 2012$.

**Toutes les fenêtres ont une somme de même signe.** Faisons glisser une fenêtre d'un cran : on perd un nombre et on en gagne un autre, les neuf autres restent. La somme change donc de $0$, de $+2$ ou de $-2$. Supposons qu'une fenêtre ait une somme positive et une autre une somme négative. En glissant cran par cran de la première à la seconde, la somme passe d'un nombre pair positif à un nombre pair négatif par pas de $0$ ou $\pm 2$ : elle prend forcément la valeur $0$ en chemin. C'est interdit. Donc ou bien toutes les sommes de fenêtres sont strictement positives, ou bien elles sont toutes strictement négatives.

Si l'on change tous les signes, on passe d'une situation à l'autre et $S$ devient $-S$. Il suffit donc d'étudier le cas où **toutes les sommes de fenêtres sont strictement positives**, donc au moins égales à $2$.

**Une borne : $S \geqslant 404$.** Une fenêtre de somme au moins $2$ vérifie $2u - 10 \geqslant 2$, donc elle contient au moins six $1$. Or, parmi $10$ places en ligne, on ne peut placer que $5$ nombres sans que deux soient côte à côte. Il y a donc deux $1$ côte à côte quelque part.

Mettons ces deux $1$ de côté. Les $2010$ autres nombres se suivent sur le cercle et se découpent en $201$ fenêtres disjointes, chacune de somme au moins $2$. Donc

$$S \geqslant 1 + 1 + 201 \times 2 = 404.$$

**Un exemple avec $S = 404$.** Écrivons $201$ fois de suite le motif

$$1, 1, 1, 1, 1, 1, -1, -1, -1, -1,$$

ce qui fait $2010$ nombres, puis ajoutons deux $1$ pour fermer le cercle. Alors $S = 201 \times 2 + 2 = 404$. Vérifions qu'aucune fenêtre ne contient plus de quatre $-1$, ce qui donne une somme au moins égale à $2$.

- Une fenêtre qui ne touche pas les deux $1$ ajoutés est formée de $10$ nombres consécutifs d'une suite qui se répète tous les $10$ termes : elle contient chaque place du motif une fois, donc exactement quatre $-1$.
- Une fenêtre qui touche les $1$ ajoutés est formée de la fin d'un motif (longueur $a$), d'un ou deux $1$ ajoutés, puis du début d'un motif (longueur $b$), avec $a + b \leqslant 9$. La fin d'un motif de longueur $a$ contient au plus $\min(a, 4)$ fois $-1$, et le début d'un motif de longueur $b$ en contient $0$ si $b \leqslant 6$, et $b - 6$ sinon. Si $b \leqslant 6$, cela fait au plus $4$. Si $b \geqslant 7$, alors $a \leqslant 9 - b$, et on a au plus $(9 - b) + (b - 6) = 3$ fois $-1$.

**Toutes les valeurs paires de $404$ à $2012$.** Partons de cet exemple et remplaçons les $-1$ par des $1$, un par un. À chaque étape, $S$ augmente de $2$, et aucune somme de fenêtre ne diminue, donc elles restent toutes strictement positives. On obtient ainsi successivement $S = 404, 406, 408, \ldots, 2012$ (quand il n'y a plus que des $1$).

**Conclusion.** $S$ peut prendre exactement les valeurs paires $S$ telles que $404 \leqslant S \leqslant 2012$ ou $-2012 \leqslant S \leqslant -404$.
