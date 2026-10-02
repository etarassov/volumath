---
id: "8708"
title: "Routes en béton et sentiers de terre"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [graphe, disjonction-de-cas, chemins, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices collégiens, exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Le pays d'Animath compte au moins quatre villes. Deux villes quelconques sont reliées soit par une route en béton, soit par un sentier de terre, jamais par les deux à la fois.

Alice n'emprunte que les routes en béton. Elle constate ceci : pour aller de sa ville natale jusqu'à la capitale, quel que soit le trajet qu'elle choisisse, elle doit toujours traverser au moins **deux** villes intermédiaires.

Montrer qu'alors, entre deux villes quelconques du pays, on peut toujours aller de l'une à l'autre en n'empruntant que des **sentiers de terre** et en traversant **au plus deux** villes intermédiaires.

## Hints

1. Commence par traduire l'hypothèse d'Alice en deux faits très simples sur la ville natale $N$ et la capitale $C$. « Au moins deux villes intermédiaires » interdit deux choses : quoi exactement ?
2. Le premier fait interdit le trajet direct $N \to C$ en béton. Qu'en conclus-tu sur la liaison entre $N$ et $C$ ?
3. Le deuxième fait interdit tout trajet $N \to A \to C$ entièrement en béton, et cela pour **toute** ville $A$. Écris ce que cela donne pour une ville $A$ fixée.
4. Une fois ces deux faits écrits, prends deux villes $A$ et $B$ et sépare les cas. Ne néglige pas le cas où l'une des deux villes est $N$ ou $C$ : c'est celui que presque toutes les copies ont oublié.

## Solution

Notons $N$ la ville natale d'Alice et $C$ la capitale.

### Étape 1 : traduire l'hypothèse

Alice doit traverser au moins deux villes intermédiaires pour aller de $N$ à $C$ en béton. Cela interdit deux choses.

**(i) Il n'y a pas de route en béton entre $N$ et $C$.** Sinon Alice irait directement, avec zéro ville intermédiaire.

Comme deux villes sont toujours reliées d'une façon ou d'une autre, **$N$ et $C$ sont reliées par un sentier de terre**.

**(ii) Pour toute ville $A$, les liaisons $AN$ et $AC$ ne peuvent pas être toutes les deux en béton.** Sinon Alice ferait $N \to A \to C$, avec une seule ville intermédiaire.

Autrement dit :

> Pour **toute** ville $A$ du pays, au moins l'une des deux liaisons $AN$ et $AC$ est un sentier de terre.

Ces deux faits sont tout ce dont on aura besoin. On n'utilisera plus jamais les routes en béton.

### Étape 2 : relier deux villes quelconques par des sentiers

Soient deux villes différentes que l'on veut relier. Trois situations.

**Cas 1 : ce sont $N$ et $C$.**

D'après (i), elles sont directement reliées par un sentier de terre. Zéro ville intermédiaire. C'est fait.

**Cas 2 : l'une des deux est $N$ ou $C$, l'autre est une ville $A$ quelconque.**

D'après (ii), au moins l'une des deux liaisons $AN$, $AC$ est un sentier.

- Si $AN$ est un sentier, alors on va de $A$ à $N$ directement ; et on va de $A$ à $C$ par $A \to N \to C$, en utilisant le sentier $NC$ de (i). Une ville intermédiaire au plus.
- Si $AC$ est un sentier, on raisonne de la même façon en échangeant les rôles de $N$ et $C$.

Dans les deux cas, on relie $A$ à $N$ et $A$ à $C$ par des sentiers, avec au plus une ville intermédiaire.

**Cas 3 : les deux villes $A$ et $B$ sont différentes de $N$ et de $C$.**

D'après (ii) appliqué à $A$ : au moins l'un des sentiers $AN$, $AC$ existe. D'après (ii) appliqué à $B$ : au moins l'un des sentiers $BN$, $BC$ existe.

- *Si $A$ et $B$ sont toutes deux reliées par un sentier à la même ville*, disons $C$, alors le trajet $A \to C \to B$ n'emprunte que des sentiers et traverse une seule ville intermédiaire. Même chose si elles sont toutes deux reliées à $N$.
- *Sinon*, l'une est reliée à $N$ et l'autre à $C$ : disons que $AN$ et $BC$ sont des sentiers. On utilise alors le sentier $NC$ de (i), et le trajet

  $$A \to N \to C \to B$$

  n'emprunte que des sentiers et traverse exactement deux villes intermédiaires, $N$ et $C$.

### Conclusion

Dans tous les cas, on relie les deux villes par des sentiers de terre en traversant au plus deux villes intermédiaires. C'est bien ce qu'il fallait démontrer.

*Remarque.* Le pays a au moins quatre villes, ce qui garantit que le cas 3 peut réellement se produire ; mais la démonstration n'en a pas besoin, elle marche telle quelle.

## Going further

1. Le point délicat de cet exercice n'est pas le raisonnement principal, c'est le **cas 2**. Presque toutes les copies qui ont résolu le problème l'ont oublié et ont perdu un point : elles avaient traité le cas général, mais pas le cas où l'une des deux villes est $N$ ou $C$. Quand on démontre quelque chose « pour deux villes quelconques », il faut aussi le démontrer pour les villes qui ont un rôle particulier dans l'énoncé.

2. Peut-on faire mieux que « au plus deux villes intermédiaires » ? Autrement dit, existe-t-il un pays vérifiant l'hypothèse dans lequel deux villes soient effectivement à deux villes intermédiaires l'une de l'autre par les sentiers ? Cherche un exemple avec quatre ou cinq villes.

3. Généralisation : on suppose maintenant qu'il faut au moins $k$ villes intermédiaires pour aller de $N$ à $C$ en béton. Que peut-on dire des sentiers ?
