---
id: "8343"
title: "33 nombres en 11 groupes de trois"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [parite, invariant, somme, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Pavages, coloriages et invariants » (Aline), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Peut-on répartir les nombres $1, 2, 3, \ldots, 33$ en $11$ groupes de trois nombres, de telle
sorte que dans chaque groupe, l'un des trois nombres soit la somme des deux autres ?

## Hints

1. Essaie d'abord à petite échelle : peux-tu répartir $1, 2, \ldots, 6$ en deux groupes de trois avec cette propriété ? Et $1, 2, \ldots, 9$ en trois groupes ?
2. Si la réponse était oui, chaque groupe serait de la forme $\{a, b, a+b\}$. Que vaut la somme des trois nombres d'un tel groupe ?
3. $a + b + (a+b) = 2(a+b)$ : c'est toujours un nombre **pair**.
4. Additionne les $11$ sommes de groupes. Que devrait valoir le total ?
5. Calcule $1 + 2 + \cdots + 33$ et regarde sa parité.

## Solution

**Ce que vaut la somme d'un groupe.**

Supposons qu'une telle répartition existe. Chaque groupe est alors de la forme
$\{a, b, a+b\}$, où $a$ et $b$ sont deux des nombres et le troisième est leur somme. La somme des
trois nombres du groupe vaut

$$a + b + (a + b) = 2(a+b) ,$$

qui est **pair**.

**Le total sur tous les groupes.**

Les $11$ groupes contiennent ensemble tous les nombres de $1$ à $33$, chacun exactement une fois.
Donc la somme de tous les nombres de $1$ à $33$ est égale à la somme des $11$ sommes de groupes.

Chacune de ces $11$ sommes est paire, donc leur total est pair.

**Mais ce total est impair.**

$$1 + 2 + \cdots + 33 = \frac{33 \times 34}{2} = 33 \times 17 .$$

Or $33$ et $17$ sont tous les deux impairs, et le produit de deux impairs est impair. Donc

$$1 + 2 + \cdots + 33 = 561$$

est impair.

**Conclusion.** Un nombre pair ne peut pas être égal à un nombre impair. Une telle répartition
est donc **impossible**.

## Going further

Le raisonnement ne dépend pas de $33$ : il montre que la répartition est impossible chaque fois
que $1 + 2 + \cdots + n$ est impair.

Or $1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$, et on peut vérifier que ce nombre est impair
exactement quand $n$ vaut $1$ ou $2$ modulo $4$. Comme il faut aussi que $n$ soit un multiple de
$3$ pour former des groupes de trois, les seuls $n$ qui résistent à ce test sont ceux qui sont
multiples de $3$ et congrus à $3$ ou $0$ modulo $4$, c'est-à-dire $n = 12, 15, 24, 27, 36, \ldots$

Le test de parité ne dit rien pour ces valeurs-là. Peux-tu trouver une répartition convenable de
$1, 2, \ldots, 12$ en quatre groupes de trois ?
