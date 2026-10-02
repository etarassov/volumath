---
id: "11618"
title: "Le jeu des jetons qui avancent vers la case 0"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeu, strategie gagnante, puissances de deux, invariant, poids]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

On considère une rangée de cases numérotées $0, 1, 2, \ldots, k$ de gauche à droite. Au départ, pour chaque $i \geqslant 1$, la case numéro $i$ contient $x_i$ jetons, et la case numéro $0$ n'en contient aucun.

Alice et Bob jouent alors des tours, chacun formé de deux actions :

- Bob choisit un ensemble $S$ de jetons, qui ne sont pas forcément tous sur la même case.
- Alice choisit ensuite l'une des deux possibilités suivantes. Soit elle élimine tous les jetons qui ne sont pas dans $S$, et elle déplace chaque jeton de $S$ d'une case vers la gauche (de la case $i$ à la case $i - 1$). Soit elle élimine tous les jetons de $S$, et elle déplace d'une case vers la gauche chaque jeton qui n'est pas dans $S$.

Bob gagne s'il réussit à amener un jeton sur la case $0$. Alice gagne si elle réussit à éliminer tous les jetons.

1) Prouver qu'Alice a une stratégie gagnante si

$$\frac{x_1}{2} + \frac{x_2}{4} + \frac{x_3}{8} + \cdots + \frac{x_k}{2^k} < 1.$$

2) Est-il vrai que, si cette somme est supérieure ou égale à $1$, alors Bob a une stratégie gagnante ?

## Hints

1. Donne à chaque jeton un **poids** : $\frac{1}{2^i}$ pour un jeton sur la case $i$. La somme de l'énoncé est le poids total au départ. Combien pèse un jeton arrivé sur la case $0$ ?
2. Quand un jeton avance d'une case, son poids double. Compare la somme des poids totaux obtenus avec les deux choix d'Alice au poids total avant son choix.
3. Pour 2), Bob voudrait partager les jetons en deux groupes qui pèsent chacun au moins $\frac12$. Pourquoi est-ce possible quand le poids total est au moins $1$ et qu'aucun jeton n'est sur la case $0$ ?
4. Si aucun jeton n'est sur la case $1$, deux jetons sont forcément sur une même case $i \geqslant 2$. Colle-les en un paquet : il pèse autant qu'un seul jeton de la case $i - 1$.

## Solution

**Les poids.** On donne à un jeton situé sur la case $i$ le poids $\frac{1}{2^i}$. Un jeton sur la case $1$ pèse $\frac12$, un jeton sur la case $2$ pèse $\frac14$, et un jeton sur la case $0$ pèse $1$. Le **poids total** $P$ est la somme des poids de tous les jetons encore en jeu. Au départ,

$$P = \frac{x_1}{2} + \frac{x_2}{4} + \cdots + \frac{x_k}{2^k}.$$

Quand un jeton avance d'une case vers la gauche, son poids est multiplié par $2$.

**Ce que fait un tour.** Bob partage les jetons en deux groupes : ceux de $S$, de poids total $p$, et les autres, de poids total $p'$, avec $p + p' = P$. Si Alice garde $S$, les jetons de $S$ avancent et les autres disparaissent : le nouveau poids total est $2p$. Si elle garde les autres, le nouveau poids total est $2p'$. La somme de ces deux possibilités vaut

$$2p + 2p' = 2P.$$

**Une remarque sur la durée du jeu.** À chaque tour, tous les jetons qui restent avancent d'une case. Comme aucun jeton n'est au départ plus loin que la case $k$, un jeton qui survit à $k$ tours est forcément arrivé sur la case $0$. La partie se termine donc en au plus $k$ tours, par la victoire de l'un des deux joueurs.

**1) La stratégie d'Alice.** À chaque tour, Alice choisit la possibilité qui donne le plus petit nouveau poids total. Comme les deux possibilités ont pour somme $2P$, la plus petite des deux est au plus $P$. Le poids total ne peut donc jamais augmenter : il reste toujours strictement plus petit que $1$.

Or un jeton sur la case $0$ pèse à lui seul $1$. Avec cette stratégie, aucun jeton n'arrive donc jamais sur la case $0$. Comme la partie se termine en au plus $k$ tours, elle se termine par l'élimination de tous les jetons : **Alice gagne.**

**2) La réponse est oui.** On suppose maintenant que le poids total de départ est au moins $1$.

**Un outil : le partage en deux.** Montrons ceci : *si aucun jeton n'est sur la case $0$ et que le poids total est au moins $1$, on peut partager les jetons en deux groupes qui pèsent chacun au moins $\frac12$.*

On va regrouper des jetons en **paquets**. Un paquet est rangé sur une case $j \geqslant 1$ et pèse $\frac{1}{2^j}$, comme un jeton de cette case. Au début, chaque jeton forme un paquet à lui seul, rangé sur sa case. On répète alors l'opération suivante tant qu'aucun paquet n'est sur la case $1$.

- Si aucun paquet n'est sur la case $1$, les paquets sont sur des cases $2, 3, \ldots, k$. S'ils étaient tous sur des cases différentes, leur poids total serait au plus $\frac14 + \frac18 + \cdots + \frac{1}{2^k} = \frac12 - \frac{1}{2^k}$, qui est plus petit que $1$. (Pour voir cette égalité, on ajoute $\frac{1}{2^k}$ à la somme : les deux derniers termes font $\frac{1}{2^{k-1}}$, qui s'ajoute au précédent pour faire $\frac{1}{2^{k-2}}$, et ainsi de suite jusqu'à $\frac14 + \frac14 = \frac12$.) C'est impossible, donc deux paquets sont sur une même case $i \geqslant 2$.
- On réunit ces deux paquets en un seul, qu'on range sur la case $i - 1$. Il pèse $\frac{1}{2^i} + \frac{1}{2^i} = \frac{1}{2^{i-1}}$, comme il se doit pour la case $i - 1$, donc le poids total ne change pas.

À chaque opération, le nombre de paquets diminue de $1$. On finit donc par s'arrêter, et on ne peut s'arrêter que quand un paquet est sur la case $1$. Ce paquet pèse $\frac12$. On met ce paquet dans un groupe, et tous les autres paquets dans l'autre groupe, qui pèse au moins $1 - \frac12 = \frac12$. Il reste à défaire les paquets : chaque jeton va dans le groupe de son paquet, et les poids des deux groupes ne changent pas.

**La stratégie de Bob.** À chaque tour, tant qu'aucun jeton n'est sur la case $0$, Bob utilise l'outil : il partage les jetons en deux groupes de poids au moins $\frac12$, et il appelle $S$ l'un des deux. Quel que soit le choix d'Alice, le groupe qui reste avance d'une case, donc son poids double : le nouveau poids total est au moins $2 \times \frac12 = 1$.

Le poids total reste donc toujours au moins égal à $1$. En particulier, il reste toujours au moins un jeton, et Alice ne peut jamais tout éliminer. Comme la partie se termine en au plus $k$ tours, elle se termine par l'arrivée d'un jeton sur la case $0$ : **Bob gagne.**

**Conclusion :** 1) si la somme est plus petite que $1$, Alice gagne en gardant à chaque tour le groupe le plus léger ; 2) oui, si la somme est au moins $1$, Bob gagne en partageant à chaque tour les jetons en deux groupes de poids au moins $\frac12$.

## Going further

Ce genre d'argument, où l'on suit un « poids » qu'un joueur peut empêcher d'augmenter, est dû à Paul Erdős et John Selfridge, qui l'ont utilisé en 1973 pour des jeux de type morpion. Le seuil $1$ est ici exact : il sépare parfaitement les parties gagnées par Alice de celles gagnées par Bob.
