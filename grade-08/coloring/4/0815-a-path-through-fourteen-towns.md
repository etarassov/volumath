---
id: "0815"
title: "Un chemin par les quatorze villes"
grade: 8
theme: coloring
difficulty: 4
duration_min: 30
tags: [coloriage, graphe, chemins, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 19, d'après Arthur Engel, « Solutions d'expert »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

La figure ci-dessous montre un réseau de routes entre $14$ villes : chaque rond est une ville, chaque trait est une route qui relie directement deux villes.

![Le réseau de routes reliant les quatorze villes](0815-figure-1.svg)

Existe-t-il un chemin qui passe une seule fois par chaque ville ?

Autrement dit : peut-on partir d'une ville, rouler de ville en ville en suivant les routes, et visiter ainsi les $14$ villes, chacune exactement une fois ? On n'est pas obligé de revenir au point de départ.

## Hints

1. Essaie. Tu verras qu'il reste toujours une ville ou deux à l'écart, à la fin. Mais un échec, même répété, ne démontre rien.
2. Essaie de colorier les villes avec deux couleurs de façon que **toute route relie une ville d'une couleur à une ville de l'autre couleur**. Pars d'une ville quelconque et propage de proche en proche.
3. Ce coloriage est possible. Compte alors les villes de chaque couleur.
4. Imagine un chemin qui visite les $14$ villes. De quelle couleur est la première ville visitée ? La deuxième ? La troisième ?
5. Les couleurs s'alternent le long du chemin. Combien de villes de chaque couleur un chemin de $14$ villes visiterait-il ?

## Solution

**Réponse : non, un tel chemin n'existe pas.**

**Étape 1. Colorier les villes.**

Colorions les villes avec deux couleurs, de façon que chaque route relie une ville blanche à une ville foncée. On y arrive en partant d'une ville quelconque, qu'on colorie en blanc, et en coloriant ensuite ses voisines en foncé, les voisines de celles-ci en blanc, et ainsi de suite. Voici le résultat :

![Le même réseau, les villes coloriées en deux couleurs](0815-figure-2.svg)

Le point important est que ce coloriage **fonctionne** : on peut vérifier, route par route, qu'aucune route ne relie deux villes de la même couleur.

**Étape 2. Compter les villes de chaque couleur.**

Sur la figure, on compte **$8$ villes blanches** et **$6$ villes foncées**, ce qui fait bien $8 + 6 = 14$ villes.

**Étape 3. Le long d'un chemin, les couleurs alternent.**

Supposons qu'un chemin visite les $14$ villes, chacune une fois. Numérotons les villes dans l'ordre de la visite : $1^{\text{re}}$, $2^{\text{e}}$, …, $14^{\text{e}}$.

Deux villes consécutives du chemin sont reliées par une route, donc elles sont de couleurs différentes. Les couleurs s'alternent donc tout le long du chemin :

- si la $1^{\text{re}}$ ville est blanche, alors les villes de rang impair sont blanches et celles de rang pair sont foncées ;
- si la $1^{\text{re}}$ ville est foncée, c'est l'inverse.

**Étape 4. La contradiction.**

Parmi les rangs $1$ à $14$, il y a exactement $7$ rangs impairs et $7$ rangs pairs. Le chemin visiterait donc **$7$ villes de chaque couleur**.

Or le réseau compte $8$ villes blanches et $6$ villes foncées. Le chemin devrait visiter les $8$ villes blanches, alors qu'il n'en visite que $7$.

**Conclusion.** Il n'existe pas de chemin passant une seule fois par chacune des $14$ villes.

*Remarque.* L'argument ne dépend pas du dessin : seules comptent les routes, pas la façon dont elles sont tracées sur la feuille.

## Going further

1. Le même raisonnement interdit-il aussi un circuit fermé qui passerait une seule fois par chaque ville et reviendrait à son point de départ ?
2. Le coloriage donne mieux qu'une réponse négative : un chemin qui ne repasse jamais par la même ville visite au plus $6$ villes foncées, donc au plus $7$ blanches, donc au plus $13$ villes en tout. Trouve un chemin qui visite effectivement $13$ villes.
3. On veut ajouter des routes pour qu'un chemin passant une fois par chaque ville devienne possible. Une seule route suffit-elle ? De quelles couleurs doivent être ses deux extrémités ? Trace-la et exhibe le chemin.
