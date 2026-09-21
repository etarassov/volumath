---
id: "8682"
title: "Deux couples de même rapport modulo p"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, congruences, inverse modulaire, nombres premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 30 (niveau 1, une étoile). La Muraille ne publie pas de corrigés ; solution rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $p$ un nombre premier. On se donne $2p$ entiers, pas nécessairement distincts, tous compris entre $1$ et $p-1$ :

$$a_1, a_2, \ldots, a_p \qquad \text{et} \qquad b_1, b_2, \ldots, b_p .$$

Montrer qu'il existe deux indices différents $i$ et $j$ tels que

$$p \ \text{divise} \ a_i b_j - a_j b_i .$$

## Hints

1. L'égalité $a_i b_j \equiv a_j b_i$ ressemble à une égalité de fractions : $\frac{a_i}{b_i} = \frac{a_j}{b_j}$. Peut-on donner un sens à cette fraction modulo $p$ ?
2. Chaque $b_i$ est compris entre $1$ et $p-1$, donc $p$ ne divise pas $b_i$. Que cela permet-il de faire ?
3. Comme $p$ est premier, tout entier non divisible par $p$ possède un inverse modulo $p$. Pose $r_i \equiv a_i \, b_i^{\,-1} \pmod p$.
4. Combien de valeurs différentes ce $r_i$ peut-il prendre ? Attention, il ne peut pas être nul : pourquoi ?
5. Combien y a-t-il d'indices $i$ ? Compare avec le nombre de valeurs possibles.

## Solution

### Les rapports modulo $p$

Fixons un indice $i$. Comme $1 \leqslant b_i \leqslant p-1$, le nombre $b_i$ n'est pas divisible par $p$. Et comme $p$ est premier, $b_i$ est donc **inversible modulo $p$** : il existe un entier $b_i^{\,-1}$ tel que $b_i \, b_i^{\,-1} \equiv 1 \pmod p$.

*(Rappel : cela vient du théorème de Bézout. Puisque $\mathrm{PGCD}(b_i, p) = 1$, il existe $u$ et $v$ avec $u b_i + v p = 1$, et alors $u$ convient.)*

Posons

$$r_i \equiv a_i \, b_i^{\,-1} \pmod p, \qquad \text{avec } 0 \leqslant r_i \leqslant p-1 .$$

**Ce rapport n'est jamais nul.** Si $r_i = 0$, alors $a_i b_i^{-1} \equiv 0$, et en multipliant par $b_i$ on obtiendrait $a_i \equiv 0 \pmod p$. Or $1 \leqslant a_i \leqslant p-1$, donc $p$ ne divise pas $a_i$. Contradiction. Ainsi

$$r_i \in \{1, 2, \ldots, p-1\} .$$

### Le principe des tiroirs

Nous avons $p$ rapports $r_1, r_2, \ldots, r_p$, et chacun prend l'une des $p-1$ valeurs $1, 2, \ldots, p-1$.

Il y a donc **$p$ objets pour $p-1$ tiroirs**. Par le principe des tiroirs, deux au moins tombent dans le même tiroir : il existe des indices $i \ne j$ tels que

$$r_i = r_j, \qquad \text{c'est-à-dire} \qquad a_i \, b_i^{\,-1} \equiv a_j \, b_j^{\,-1} \pmod p .$$

### On conclut

Multiplions cette congruence par $b_i b_j$, ce qui est licite modulo $p$ :

$$a_i \, b_i^{\,-1} \, b_i \, b_j \equiv a_j \, b_j^{\,-1} \, b_i\, b_j \pmod p ,$$

c'est-à-dire, en simplifiant $b_i^{-1} b_i \equiv 1$ et $b_j^{-1} b_j \equiv 1$,

$$a_i b_j \equiv a_j b_i \pmod p .$$

Autrement dit $p$ divise $a_i b_j - a_j b_i$.

$$\boxed{\text{De tels indices } i \ne j \text{ existent toujours.}}$$

## Going further

Le nombre $p$ d'indices n'est pas choisi au hasard : il est exactement **un de plus** que le nombre $p-1$ de rapports possibles, ce qui est le minimum pour que le principe des tiroirs s'applique. Avec seulement $p-1$ couples, l'énoncé devient faux : il suffit de prendre $(a_i, b_i) = (i, 1)$ pour $i$ allant de $1$ à $p-1$. Les rapports $r_i = i$ sont alors tous différents, et aucune paire ne convient.

Remarque aussi que la quantité $a_i b_j - a_j b_i$ est le déterminant de la matrice formée par les deux couples. Dire que $p$ le divise, c'est dire que les deux couples sont « proportionnels modulo $p$ » : ils pointent dans la même direction dans le plan à $p$ éléments.

Pour t'entraîner : que devient l'énoncé si $p$ n'est plus premier ? Cherche un contre-exemple avec $p = 6$.
