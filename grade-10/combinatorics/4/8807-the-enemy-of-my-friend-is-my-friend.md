---
id: "8807"
title: "L'ennemi de mon ami est mon ami"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [amities, graphe, maximum, construction, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 10 (lycéens), p. 29"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans une pièce, certaines personnes sont amies. Personne n'est ami avec soi-même, et l'amitié est réciproque : si $A$ est amie avec $B$, alors $B$ est amie avec $A$.

On remarque que dans cette pièce, « **l'ennemi de mon ami est mon ami** ». Plus précisément : pour trois personnes distinctes $A$, $B$ et $C$ quelconques, si $A$ et $B$ sont amies et que $B$ et $C$ ne le sont pas, alors $A$ et $C$ sont amies.

Enfin, chaque personne de la pièce a exactement $4$ amis.

Combien peut-il y avoir au maximum de personnes dans la pièce ?

## Hints

1. Comme tout problème de maximum, celui-ci se répond en deux parties : une borne (« il n'y en a pas plus que… ») et une construction (« … et ce nombre est atteint »). Il faut les deux.
2. Pour la borne, choisis une personne, appelle-la Albéric. Elle a exactement $4$ amis. S'il y avait beaucoup de monde dans la pièce, combien de personnes ne seraient **pas** amies d'Albéric ?
3. Prends un ami d'Albéric, appelons-le Balthazar. Applique la règle de l'énoncé au trio (une non-amie d'Albéric, Albéric, Balthazar). Que devient cette non-amie vis-à-vis de Balthazar ?
4. Pour la construction, essaie de séparer les gens en deux camps et de décréter que l'amitié, c'est exactement le fait d'être dans des camps différents.

## Solution

### Partie 1 : il y a au plus $8$ personnes

Supposons par l'absurde qu'il y ait au moins $9$ personnes dans la pièce.

Choisissons une personne, appelons-la **Albéric**. Elle a exactement $4$ amis ; nommons-les Balthazar, Cassandre, Dagobert et Elvire.

Comme il y a au moins $9$ personnes en tout, il y en a au moins $9 - 1 - 4 = 4$ qui ne sont ni Albéric ni l'un de ses amis. Choisissons-en quatre : **Françoise, Gertrude, Hugues, Isidore**. Aucune de ces quatre n'est amie d'Albéric.

Appliquons maintenant la règle à Françoise, Albéric et Balthazar :

- Albéric et Balthazar sont amis ;
- Albéric et Françoise ne sont pas amis.

La règle dit : si $X$ et $Y$ sont amis et que $Y$ et $Z$ ne le sont pas, alors $X$ et $Z$ sont amis. En prenant $X =$ Balthazar, $Y =$ Albéric, $Z =$ Françoise, on obtient que **Balthazar et Françoise sont amis**.

Le même raisonnement, avec Gertrude, Hugues, puis Isidore à la place de Françoise, montre que Balthazar est ami avec chacune de ces trois personnes.

Balthazar est donc ami avec Albéric, Françoise, Gertrude, Hugues et Isidore : cela fait **au moins $5$ amis**, alors qu'il ne doit en avoir que $4$. Contradiction.

Il y a donc au plus $8$ personnes dans la pièce.

### Partie 2 : $8$ personnes, c'est possible

Prenons $8$ personnes et séparons-les en deux groupes de $4$. Décrétons ensuite :

> deux personnes sont amies si et seulement si elles sont dans des groupes **différents**.

Vérifions que tout est respecté.

- **Chacun a $4$ amis.** Une personne est amie exactement avec les $4$ personnes de l'autre groupe.
- **La règle de l'énoncé.** Soient $A$, $B$, $C$ distinctes, avec $A$ et $B$ amies et $B$ et $C$ non amies. « $A$ et $B$ amies » veut dire qu'elles sont dans des groupes différents ; « $B$ et $C$ non amies » veut dire qu'elles sont dans le même groupe. Donc $C$ est dans le groupe de $B$, qui n'est pas celui de $A$ : $A$ et $C$ sont dans des groupes différents, elles sont donc amies. La règle est bien vérifiée.

**Conclusion.** Il peut y avoir au maximum $\boxed{8}$ personnes dans la pièce.

### Deux erreurs à éviter

- Trouver qu'il ne peut pas y avoir exactement $7$ personnes ne prouve pas que $6$ est le maximum : il faut écarter $7$, $8$, $9$, et tous les nombres au-dessus d'un coup, ce que fait la partie 1.
- Donner une construction à $8$ personnes sans vérifier qu'elle respecte la règle ne vaut pas grand-chose : ici la vérification est courte, mais elle est indispensable.

## Going further

Reprendre le problème en remplaçant $4$ par un entier $k \geqslant 1$ : chaque personne a exactement $k$ amis. Quel est alors le nombre maximal de personnes dans la pièce ?
