---
id: "8871"
title: "Rendre tout le damier noir"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, damier, coloriage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Grilles » (Oscar et Paul LL)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Grilles », exercice 2, p. 278 et 279"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On a colorié un damier $2025 \times 2025$ comme un échiquier : deux cases voisines par un côté sont toujours de couleurs différentes, et les quatre cases des coins sont blanches.

Autant de fois qu'on le souhaite, on choisit deux cases voisines par un côté et on **inverse** la couleur de chacune des deux : une case blanche devient noire, une case noire devient blanche. Les deux cases changent en même temps.

Peut-on rendre le damier entièrement noir ?

## Hints

1. Essaie d'abord sur un petit damier $3 \times 3$ avec les coins blancs.
2. Cherche une quantité qui ne change jamais, ou au moins dont la **parité** ne change jamais.
3. Une opération porte sur deux cases voisines. Combien de cas de figure y a-t-il pour leurs couleurs, et que devient le nombre de cases noires dans chacun ?
4. Compte les cases noires au départ, puis combien il en faudrait à l'arrivée.

## Solution

La réponse est **non**.

### Le nombre de cases noires au départ

Le damier a $2025$ lignes de $2025$ cases. Les coins étant blancs, la première ligne commence et finit par une case blanche : elle alterne blanc, noir, blanc, …, blanc, et contient donc $1013$ cases blanches et $1012$ cases noires. La deuxième ligne commence par une case noire et contient $1013$ cases noires et $1012$ blanches. Et ainsi de suite en alternant.

Il y a $1013$ lignes du premier type (les lignes de rang impair) et $1012$ du second, donc le nombre de cases noires au départ vaut
$$1013 \times 1012 + 1012 \times 1013 = 2 \times 1013 \times 1012 ,$$
qui est un nombre **pair**.

### Ce que fait une opération

Une opération choisit deux cases voisines et inverse chacune. Trois cas seulement :

| les deux cases | après l'opération | variation du nombre de noires |
|---|---|---|
| deux blanches | deux noires | $+2$ |
| une blanche et une noire | une noire et une blanche | $0$ |
| deux noires | deux blanches | $-2$ |

Dans les trois cas, le nombre de cases noires varie de $+2$, de $0$ ou de $-2$ : sa **parité ne change jamais**.

### L'invariant tranche

Le nombre de cases noires est pair au départ, donc il reste pair pour toujours.

Or un damier entièrement noir aurait
$$2025 \times 2025 = 4\,100\,625$$
cases noires, et ce nombre est **impair** (produit de deux nombres impairs).

Un nombre pair ne peut pas devenir impair par des sauts de $0$ ou de $\pm 2$.

### Conclusion

Il est impossible de rendre le damier entièrement noir.

### Ce qu'il faut retenir

On n'a pas eu besoin d'examiner les opérations une par une ni d'essayer des stratégies. On a trouvé une quantité, le nombre de cases noires, dont la parité résiste à toute opération, et il a suffi de constater que le départ et l'arrivée n'ont pas la même parité. C'est le principe de l'**invariant**.

## Going further

1. Même question sur un damier $2024 \times 2024$ aux coins blancs. Que se passe-t-il ?
2. Sur le damier $2025 \times 2025$, peut-on rendre toutes les cases **blanches** ?
3. On change la règle : on inverse la couleur de **trois** cases alignées consécutives. Le raisonnement par parité fonctionne-t-il encore ?
