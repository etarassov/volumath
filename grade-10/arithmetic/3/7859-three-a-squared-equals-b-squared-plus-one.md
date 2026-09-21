---
id: "7859"
title: "3a² = b² + 1 n'a pas de solution"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, carres, reste, impossibilite]
adapted_from: null
see_also: ["8326", "8429"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers naturels tels que
$$3a^2 = b^2 + 1 .$$

## Hints

1. Essaie quelques petites valeurs : $a = 1, 2, 3, 4$. Rien ne marche. Il va donc falloir
   prouver qu'il n'y a jamais de solution.
2. Le coefficient $3$ saute aux yeux : regarde l'équation modulo $3$. Que devient le membre de
   gauche ?
3. Dresse la liste des restes possibles de $b^2$ dans la division par $3$, en examinant les
   trois cas $b \equiv 0$, $b \equiv 1$, $b \equiv 2$.

## Solution

**Étape 1 : on lit l'équation modulo $3$.**

Le membre de gauche $3a^2$ est un multiple de $3$, donc
$$b^2 + 1 \equiv 0 \pmod 3, \qquad \text{c'est-à-dire} \qquad b^2 \equiv -1 \equiv 2 \pmod 3 .$$

**Étape 2 : les carrés modulo $3$.**

Tout entier $b$ laisse un reste $0$, $1$ ou $2$ dans la division par $3$. Examinons les trois
cas :

| $b \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $b^2 \bmod 3$ | $0$ | $1$ | $4 \equiv 1$ |

Un carré parfait ne vaut donc jamais $2$ modulo $3$ : ses seuls restes possibles sont $0$ et
$1$.

**Étape 3 : la contradiction.**

L'étape 1 exige $b^2 \equiv 2 \pmod 3$, ce que l'étape 2 interdit.

**Conclusion.** L'équation $3a^2 = b^2 + 1$ n'a $\boxed{\text{aucune solution}}$ en entiers
naturels (ni d'ailleurs en entiers relatifs, puisque le raisonnement ne fait intervenir que les
carrés).

*La méthode à retenir.* Quand une équation en nombres entiers contient des carrés, il vaut
presque toujours la peine de la lire modulo $3$, modulo $4$ ou modulo $8$ : les carrés n'y
prennent que très peu de valeurs ($0$ et $1$ modulo $3$ et modulo $4$ ; $0$, $1$ et $4$ modulo
$8$), et cela suffit très souvent à conclure.
