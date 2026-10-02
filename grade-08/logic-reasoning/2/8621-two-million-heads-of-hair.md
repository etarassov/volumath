---
id: "8621"
title: "Deux millions de têtes et trois cent mille cheveux"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [tiroirs, denombrement, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Une personne a entre /bin/zsh$ et \,000$ cheveux sur la tête (bornes comprises).

L'agglomération de Marseille compte \,000\,000$ d'habitants.

Combien de Marseillais, au minimum, ont forcément exactement le même nombre de cheveux ?

## Hints

1. Combien de nombres de cheveux différents sont possibles ? Attention, il faut compter le /bin/zsh$.
2. Imagine une immense armoire avec un tiroir par nombre de cheveux possible, et range chaque Marseillais dans le tiroir correspondant.
3. Si chaque tiroir contenait au plus $ personnes, combien de Marseillais l'armoire pourrait-elle contenir en tout ? Compare avec \,000\,000$.
4. Pour montrer qu'on ne peut pas garantir mieux, décris une répartition où aucun tiroir ne contient plus de $ personnes.

## Solution

**Les tiroirs.** Un nombre de cheveux est un entier entre /bin/zsh$ et \,000$. Il y a donc

89360300\,000 - 0 + 1 = 300\,00189360

valeurs possibles. Fabriquons \,001$ tiroirs, un par valeur, et rangeons chacun des \,000\,000$ de Marseillais dans le tiroir qui correspond à son nombre de cheveux.

**Sept, au moins.** Supposons que chaque tiroir contienne au plus $ personnes. Alors le nombre total de Marseillais serait au plus

89360300\,001 \times 6 = 1\,800\,006 ,89360

ce qui est bien inférieur à \,000\,000$. C'est absurde.

Donc **au moins un tiroir contient au moins $ personnes** : il existe $ Marseillais ayant exactement le même nombre de cheveux.

**Et pas plus de sept.** On ne peut rien garantir de mieux. En effet, on pourrait imaginer que \,994$ tiroirs contiennent $ personnes et les \,007$ autres en contiennent $ : cela ferait bien

89360199\,994 \times 7 + 100\,007 \times 6 = 1\,399\,958 + 600\,042 = 2\,000\,00089360

Marseillais, sans qu'aucun groupe de $ personnes n'ait le même nombre de cheveux.

**Conclusion.** La réponse est $\boxed{7}$.

## Going further

Le calcul se résume à une division : \,000\,000 = 300\,001 \times 6 + 199\,994$. Le quotient est $ et il reste des gens à placer, donc un tiroir monte à $.

C'est la forme générale du principe des tiroirs : si l'on range $ objets dans $ tiroirs, l'un des tiroirs contient au moins $\left\lceil \dfrac{N}{t} \right\rceil$ objets, c'est-à-dire le quotient arrondi vers le haut.
