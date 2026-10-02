---
id: "8734"
title: "Onze triplets avec les nombres de 1 à 33"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [parite, invariant, impossibilite, somme-des-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Invariants/coloriages » (Lucile et Quentin), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Peut-on répartir les nombres $1, 2, 3, \ldots, 33$ en $11$ groupes de trois nombres, de telle façon que dans chaque groupe, **l'un des trois nombres soit la somme des deux autres** ?

Par exemple $\{4, 9, 13\}$ serait un groupe acceptable, puisque $4+9 = 13$.

## Hints

1. Chaque nombre de $1$ à $33$ doit apparaître dans exactement un groupe. La somme de tous les nombres des $11$ groupes vaut donc $1+2+\cdots+33$. Calcule cette somme.
2. Regarde maintenant un seul groupe. Si $z = x+y$, que vaut $x+y+z$ ? Remarque quelque chose sur sa parité.
3. Si chaque groupe a une somme paire, que peut-on dire de la somme totale ?

## Solution

**Réponse : non, c'est impossible.**

### La somme d'un groupe est toujours paire

Prenons un groupe qui convient, c'est-à-dire trois nombres $x$, $y$, $z$ dont l'un est la somme des deux autres. Quitte à les renommer, disons

$$z = x + y .$$

Alors la somme des trois nombres du groupe vaut

$$x + y + z = x + y + (x+y) = 2(x+y) .$$

C'est un nombre **pair**, quels que soient $x$ et $y$.

### La somme totale serait donc paire

Si la répartition existait, les $11$ groupes contiendraient chacun trois nombres, et chaque nombre de $1$ à $33$ apparaîtrait dans exactement un groupe. En additionnant les sommes des $11$ groupes, on retrouverait donc la somme de tous les nombres de $1$ à $33$.

Or chaque groupe a une somme paire, et une somme de nombres pairs est paire. La somme totale serait donc **paire**.

### Mais la somme totale est impaire

Calculons-la :

$$1 + 2 + \cdots + 33 = \frac{33 \times 34}{2} = 33 \times 17 = 561 .$$

C'est le produit de deux nombres impairs, donc c'est un nombre **impair**. On peut aussi le lire directement : $561$ se termine par $1$.

### Conclusion

La somme totale devrait être paire et elle est impaire. La répartition demandée est donc impossible.

$$\boxed{\text{On ne peut pas répartir } 1, 2, \ldots, 33 \text{ en } 11 \text{ groupes de ce type.}}$$

*Ce qu'il faut retenir.* Pour démontrer qu'une chose est impossible, on cherche une **quantité que toute solution devrait respecter**, ici la parité de la somme totale, et on constate qu'elle ne colle pas. On n'a jamais eu besoin d'essayer la moindre répartition : c'est ce qui rend ce genre d'argument si efficace, car le nombre de répartitions possibles est astronomique.

## Going further

1. Avec les nombres de $1$ à $12$, répartis en $4$ groupes de trois du même type : est-ce possible ? La somme $1+2+\cdots+12 = 78$ est paire, donc l'argument précédent ne dit rien. Trouve une répartition, ou montre qu'il n'y en a pas.

2. Pour quels entiers $n$ la somme $1 + 2 + \cdots + 3n$ est-elle paire ? Tu obtiendras une condition nécessaire sur $n$ pour que la répartition en $n$ groupes de trois soit envisageable.

3. Même question avec des groupes de **quatre** nombres, où l'un est la somme des trois autres. Quelle est alors la parité de la somme d'un groupe ?
