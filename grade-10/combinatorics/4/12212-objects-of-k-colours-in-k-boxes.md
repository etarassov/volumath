---
id: "12212"
title: "Des objets de k couleurs dans k boîtes"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [rangement, couleurs, moyenne, principe-des-tiroirs, algorithme, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe B et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier-junior.pdf, exercice 2 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-junior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier-junior.pdf"
---

## Statement

Soit $n$ et $k$ des entiers strictement positifs. On dispose de $nk$ objets de même taille, chacun colorié d'une couleur choisie parmi $k$ couleurs possibles (certaines couleurs peuvent ne pas être utilisées). On dispose aussi de $k$ boîtes, qui peuvent contenir chacune $n$ objets.

Montrer qu'on peut ranger tous les objets dans les boîtes de sorte que chaque boîte contienne des objets d'**au plus deux** couleurs différentes.

## Hints

1. Il suffit de remplir une première boîte avec au plus deux couleurs, de façon que ce qui reste soit une situation du même type, avec une boîte et une couleur de moins.
2. Pour qu'il reste une couleur de moins, il faut mettre dans la première boîte **tous** les objets d'une couleur. Laquelle choisir pour qu'ils tiennent dans la boîte ?
3. Il y a en moyenne $n$ objets par couleur. Prends la couleur la moins représentée, et complète la boîte avec une couleur bien représentée.

## Solution

Appelons **situation $(n, k)$** la donnée de $nk$ objets coloriés avec au plus $k$ couleurs, à ranger dans $k$ boîtes de $n$ places.

**Si $k = 1$**, il y a $n$ objets d'une seule couleur et une boîte de $n$ places : on les y range, et c'est fini.

**Si $k \geqslant 2$**, on va remplir une boîte, puis se ramener à une situation $(n, k - 1)$.

*Étape 1. Une couleur peu représentée.* Soit $R$ une couleur qui a le moins d'objets, et $m$ son nombre d'objets ($m$ peut valoir $0$). Si chacune des $k$ couleurs avait plus de $n$ objets, il y aurait plus de $nk$ objets au total. Donc $m \leqslant n$.

*Étape 2. Une couleur bien représentée.* Les $k - 1$ autres couleurs se partagent $nk - m \geqslant nk - n = n(k-1)$ objets. Si chacune en avait moins de $n$, elles en auraient moins de $n(k-1)$ en tout. Il existe donc une couleur $F$, différente de $R$, qui a au moins $n$ objets.

*Étape 3. On remplit une boîte.* On met dans la première boîte les $m$ objets de couleur $R$, puis $n - m$ objets de couleur $F$, ce qui est possible car $F$ en a au moins $n \geqslant n - m$. La boîte est pleine et contient au plus deux couleurs.

*Étape 4. Ce qui reste.* Il reste $nk - n = n(k-1)$ objets et $k - 1$ boîtes vides. Comme tous les objets de couleur $R$ sont rangés, les objets restants n'utilisent que les $k - 1$ autres couleurs. C'est une situation $(n, k - 1)$.

*Étape 5. On recommence.* On répète la même opération sur la situation $(n, k - 1)$, puis sur $(n, k - 2)$, et ainsi de suite. À chaque fois, une boîte est remplie avec au plus deux couleurs. On arrive à la situation $(n, 1)$, qui se règle directement.

**Conclusion.** Tous les objets sont rangés, et chaque boîte contient des objets d'au plus deux couleurs.

## Going further

Un exemple avec $n = 3$ et $k = 3$ : $5$ objets rouges, $4$ bleus et aucun vert. La couleur la moins représentée est le vert ($m = 0$), et on remplit la première boîte avec $3$ rouges. Il reste $2$ rouges et $4$ bleus : la couleur la moins représentée est le rouge, d'où une boîte avec $2$ rouges et $1$ bleu, puis une boîte avec $3$ bleus.

On ne peut pas remplacer « deux couleurs » par « une couleur » : avec $n = 2$, $k = 2$, un objet rouge et trois bleus, la boîte qui reçoit l'objet rouge contient forcément aussi un objet bleu.
