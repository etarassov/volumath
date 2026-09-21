---
id: "8631"
title: "Cinq nombres et leurs moyennes prises trois par trois"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [invariant, somme, produit, moyenne geometrique, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Daphné a écrit au tableau les cinq nombres

$$1, \quad 3, \quad 6, \quad 8, \quad 11 .$$

**Première version.** Daphné s'autorise, autant de fois qu'elle le veut, à effacer trois nombres $a$, $b$, $c$ du tableau et à écrire à la place leurs trois moyennes arithmétiques

$$\frac{a+b}{2}, \qquad \frac{b+c}{2}, \qquad \frac{c+a}{2} .$$

Peut-elle obtenir les cinq nombres $2$, $4$, $5$, $7$ et $9$ ?

**Seconde version.** Mêmes nombres de départ et même question, mais Félicie remplace cette fois $a$, $b$, $c$ par leurs trois moyennes géométriques

$$\sqrt{ab}, \qquad \sqrt{bc}, \qquad \sqrt{ca} .$$

Peut-elle, elle, obtenir les cinq nombres $2$, $4$, $5$, $7$ et $9$ ?

## Hints

1. Dans les deux versions, il y a toujours cinq nombres au tableau. Cherche une quantité construite sur ces cinq nombres qui ne bouge jamais.
2. Version 1 : que devient la somme des cinq nombres après une opération ? Additionne les trois moyennes.
3. Version 2 : la somme ne marche plus. Essaie le produit des cinq nombres.
4. Une fois l'invariant trouvé, compare sa valeur au départ et à l'arrivée. Pour le produit, il n'est pas nécessaire de tout calculer : un seul facteur premier bien choisi suffit.

## Solution

### Première version : la somme est un invariant

Daphné efface $a$, $b$, $c$ et écrit $\dfrac{a+b}{2}$, $\dfrac{b+c}{2}$, $\dfrac{c+a}{2}$. La somme des cinq nombres perd $a+b+c$ et gagne

$$\frac{a+b}{2} + \frac{b+c}{2} + \frac{c+a}{2} = \frac{(a+b) + (b+c) + (c+a)}{2} = \frac{2a+2b+2c}{2} = a+b+c .$$

La somme est donc **inchangée** : c'est un invariant.

Or la somme de départ vaut

$$1 + 3 + 6 + 8 + 11 = 29 ,$$

tandis que la somme visée vaut

$$2 + 4 + 5 + 7 + 9 = 27 .$$

Comme $29 \neq 27$, **Daphné ne peut pas y arriver**.

### Seconde version : le produit est un invariant

Ici la somme ne se conserve plus. En revanche, Félicie efface $a$, $b$, $c$ et écrit $\sqrt{ab}$, $\sqrt{bc}$, $\sqrt{ca}$, dont le produit vaut

$$\sqrt{ab} \times \sqrt{bc} \times \sqrt{ca} = \sqrt{ab \times bc \times ca} = \sqrt{a^2 b^2 c^2} = abc$$

(les nombres de départ étant positifs, toutes les racines ont bien un sens et sont positives).

Le produit des cinq nombres du tableau est donc **inchangé** : c'est l'invariant.

Le produit de départ vaut

$$1 \times 3 \times 6 \times 8 \times 11 = 1584 ,$$

qui est un multiple de $11$. Le produit visé vaut

$$2 \times 4 \times 5 \times 7 \times 9 = 2520 .$$

Ce dernier n'est pas un multiple de $11$ : en effet $11$ est premier, et il ne divise aucun des facteurs $2$, $4$, $5$, $7$, $9$.

Comme $1584 \neq 2520$, **Félicie ne peut pas y arriver non plus**.

## Going further

Remarque la façon d'exploiter l'invariant dans la seconde version. Il n'était pas nécessaire de calculer les deux produits en entier : il suffisait de regarder ce que devient un seul nombre premier, ici $11$, qui divise l'un des produits et pas l'autre. C'est souvent le moyen le plus rapide et le plus sûr de comparer deux grands produits.

Une opération qui conserve la somme, et une opération qui conserve le produit : les deux versions du problème sont la même, à un passage au logarithme près.
