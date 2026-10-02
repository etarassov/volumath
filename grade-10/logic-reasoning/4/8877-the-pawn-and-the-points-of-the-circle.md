---
id: "8877"
title: "Le pion et les points du cercle"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie-miroir, strategie-gagnante, segments, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : TD de pot pourri » (Emilhan)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : TD de pot pourri », exercice 7, p. 286 et 290"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On place $n \geqslant 2$ points sur un cercle. Au départ, un pion est posé sur l'un de ces points et aucun segment n'est tracé.

Alice et Bob jouent chacun à leur tour, Alice commence. Le joueur dont c'est le tour déplace le pion du point $P$ où il se trouve vers un autre point $Q$, puis trace le segment $[PQ]$. Ce déplacement n'est autorisé que si le segment $[PQ]$ n'a pas déjà été tracé auparavant.

Le premier joueur qui ne peut plus déplacer le pion a perdu.

Pour chaque valeur de $n$, déterminer lequel des deux joueurs peut être sûr de gagner.

## Hints

1. Joue le cas $n = 2$, puis $n = 3$, puis $n = 4$ à la main. Qui gagne ?
2. Alice joue en premier, et son premier coup lui laisse le choix de deux points privilégiés : le point de départ $A$ et le point $B$ où elle emmène le pion.
3. Cherche une stratégie qui ramène toujours le pion sur $A$ ou sur $B$ après chaque coup d'Alice.
4. Pour qu'une telle stratégie marche, il faut qu'Alice ait toujours un coup disponible. Regarde, pour chaque point $V$ différent de $A$ et $B$, les deux segments $[VA]$ et $[VB]$. Que peux-tu maintenir sur ces deux segments ?

## Solution

**Alice gagne toujours**, quel que soit $n \geqslant 2$.

### La stratégie

Notons $A$ le point de départ du pion. Alice choisit un autre point, appelons-le $B$, y déplace le pion et trace $[AB]$.

Ensuite, sa règle est simple :

> après chaque coup de Bob, Alice ramène le pion sur celui des deux points $A$ et $B$ où il n'est pas.

Autrement dit : si Bob déplace le pion de $B$ vers un point $Q$, Alice le déplace de $Q$ vers $A$. Si Bob le déplace de $A$ vers un point $R$, Alice le déplace de $R$ vers $B$.

### Pourquoi Alice peut toujours jouer

Montrons que, **après chaque coup d'Alice**, la situation vérifie toujours les deux propriétés suivantes :

1. le pion est sur $A$ ou sur $B$, et le segment $[AB]$ est tracé ;
2. pour tout point $V$ différent de $A$ et de $B$, les segments $[VA]$ et $[VB]$ sont soit **tous les deux tracés**, soit **tous les deux non tracés**.

**C'est vrai après le premier coup d'Alice.** Le pion est en $B$, seul $[AB]$ est tracé, et pour tout autre point $V$ ni $[VA]$ ni $[VB]$ n'est tracé.

**Cela se conserve.** Supposons les deux propriétés vraies, et que ce soit à Bob de jouer, le pion étant disons en $B$ (le cas où il est en $A$ est identique en échangeant les rôles).

Bob ne peut pas aller en $A$, puisque $[AB]$ est déjà tracé. Il va donc vers un point $Q$ différent de $A$ et de $B$, et le segment $[BQ]$ n'était pas tracé. Par la propriété 2, $[QA]$ n'était pas tracé non plus.

Alice peut donc déplacer le pion de $Q$ vers $A$ : le coup est légal. Après ce coup, $[QB]$ et $[QA]$ sont tous les deux tracés, donc la propriété 2 tient toujours, et le pion est en $A$ : la propriété 1 aussi.

### Conclusion

Alice a donc **toujours** une réponse au coup de Bob. Comme la partie se termine forcément (à chaque coup on trace un segment nouveau, et il n'y en a qu'un nombre fini), c'est Bob qui se retrouve le premier sans coup possible.

$$\boxed{\text{Alice a une stratégie gagnante, pour tout } n \geqslant 2 .}$$

### Vérification sur le plus petit cas

Pour $n = 2$, il n'y a que les points $A$ et $B$. Alice déplace le pion de $A$ vers $B$ et trace $[AB]$. Bob devrait alors revenir en $A$, mais $[AB]$ est déjà tracé : il est bloqué et perd. La stratégie générale n'est rien d'autre que cette idée, poursuivie dans le cas général.

### Ce qui rend la stratégie solide

Une stratégie miroir repose toujours sur un appariement. Ici, on n'apparie pas des cases mais des **segments** : à chaque point $V$ extérieur, on associe la paire $\{[VA], [VB]\}$, et Alice s'arrange pour que ces deux segments soient toujours tracés ensemble. Tant que cette régularité tient, le coup de Bob ouvre nécessairement la porte au coup d'Alice.

## Going further

1. Jouer $n = 3$ en entier et compter le nombre total de coups de la partie.
2. On change la règle : le joueur qui ne peut plus jouer **gagne**. Qui a alors une stratégie gagnante ?
3. On autorise maintenant à retracer un segment déjà tracé, mais on interdit de revenir sur un point déjà visité. Qui gagne ?
