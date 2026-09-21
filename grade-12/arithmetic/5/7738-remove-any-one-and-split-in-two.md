---
id: "7738"
title: "On en enlève un, le reste se partage en deux"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [parite, descente infinie, invariant, partage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On se donne $2n+1$ entiers strictement positifs

$$x_1, x_2, \ldots, x_{2n+1} ,$$

pas nécessairement distincts. On suppose la propriété suivante :

> quel que soit celui qu'on retire, les $2n$ nombres restants peuvent être répartis en deux paquets de $n$ nombres ayant la même somme.

Montrer que les $2n+1$ nombres sont tous égaux.

## Hints

1. Commence par le cas $n = 1$, c'est-à-dire trois nombres. Que dit l'hypothèse exactement ?
2. Dans le cas général, note $S$ la somme des $2n+1$ nombres. Que peux-tu dire de $S - x_i$ pour chaque $i$ ?
3. Tu en déduis que tous les $x_i$ ont la même parité. C'est la clé de tout ce qui suit.
4. La propriété survit-elle si l'on retranche une même constante à tous les nombres ? Et si on les divise tous par $2$ ?
5. Retranche le plus petit des nombres à tous, puis divise par $2$, puis recommence. Pourquoi cela doit-il s'arrêter ?

## Solution

**L'idée : la propriété survit à deux transformations, « retrancher le minimum » et « diviser par 2 ». En les alternant, on fait descendre les nombres jusqu'à zéro.**

**Étape 1 : tous les nombres ont la même parité.**

Notons $S = x_1 + x_2 + \cdots + x_{2n+1}$ la somme de tous les nombres.

Retirons le nombre $x_i$. Les $2n$ restants se répartissent en deux paquets de somme égale, disons $A$ chacun. Donc

$$S - x_i = 2A ,$$

qui est un nombre **pair**. Autrement dit, $x_i$ et $S$ ont la même parité, et cela pour **chaque** $i$.

Donc les $2n+1$ nombres ont tous la même parité.

**Étape 2 : la propriété survit à un retranchement.**

Soit $c$ un entier. Remplaçons chaque $x_i$ par $x_i - c$, et vérifions que la propriété tient encore.

Retirons $x_i - c$. Les $2n$ nombres restants sont les $x_j - c$ pour $j \neq i$. Reprenons la répartition en deux paquets qui marchait pour les $x_j$ : chaque paquet contient $n$ nombres, donc sa somme diminue exactement de $n c$. Les deux sommes étaient égales, elles le restent.

**Étape 3 : la propriété survit à une division par 2.**

Si tous les nombres sont pairs, remplaçons chaque $x_i$ par $\tfrac{x_i}{2}$. Toutes les sommes sont divisées par $2$, donc deux sommes égales restent égales. La propriété tient encore.

**Étape 4 : la descente.**

Partons de nos $2n+1$ nombres et appliquons la boucle suivante.

1. Soit $m$ le plus petit des nombres. On retranche $m$ à tous : d'après l'étape 2, la propriété tient encore. Maintenant tous les nombres sont des entiers **positifs ou nuls**, et **l'un d'eux vaut $0$**.
2. D'après l'étape 1 appliquée à cette nouvelle liste, tous ses nombres ont la même parité. Comme l'un d'eux vaut $0$, qui est pair, ils sont **tous pairs**.
3. On les divise tous par $2$ : d'après l'étape 3, la propriété tient encore, et le plus grand des nombres est divisé par deux.

Notons $M$ le plus grand des nombres au début d'un tour de boucle. Le retranchement du minimum ne l'augmente pas, et la division le divise par $2$. Donc, à chaque tour complet, le plus grand nombre est **au plus divisé par deux**.

**Étape 5 : la conclusion.**

Si, à un moment, le plus grand des nombres est strictement positif, alors la boucle produit une suite strictement décroissante d'entiers positifs, ce qui est impossible : une telle suite ne peut pas être infinie.

C'est donc qu'au bout d'un certain nombre de tours, tous les nombres valent $0$. Remontons alors le fil : juste avant la dernière division, ils valaient tous $0$ ; juste avant le dernier retranchement, ils valaient tous $m$, c'est-à-dire qu'ils étaient tous égaux. En remontant tour par tour, on obtient que les nombres de départ étaient déjà tous égaux entre eux.

**Conclusion : les $2n+1$ nombres sont tous égaux.**

## Going further

Vérifions le cas le plus simple, $n = 1$, c'est-à-dire trois nombres $x_1$, $x_2$, $x_3$. Retirer $x_1$ oblige les deux restants à former deux paquets d'un nombre chacun, de même somme : donc $x_2 = x_3$. De même $x_1 = x_3$ et $x_1 = x_2$. Les trois sont bien égaux, sans avoir besoin de la descente.

La descente devient indispensable dès $n = 2$, car avec cinq nombres les répartitions possibles sont nombreuses et aucune n'impose directement une égalité.

Remarque enfin que l'hypothèse « entiers » est essentielle. Avec des nombres réels, on peut diviser par $2$ indéfiniment sans jamais être bloqué, et la démonstration s'arrête net. Le résultat reste pourtant vrai pour les réels, mais il demande un autre argument.
