---
id: "40405"
title: "Le facteur : nombre de trajets et trajets les plus courts"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, principe-multiplicatif, permutations, distance, minimum, double-comptage, puissances-de-2]
adapted_from: null
see_also: ["40406", "40407"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 3 « Le facteur sonne toujours une fois (et une seule) », questions 1 et 2 (a, b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Un facteur doit distribuer le courrier dans une rue. Elle ne comporte qu'une seule rangée de
maisons, régulièrement espacées et numérotées $1, 2, \ldots, n$, où $n \geq 2$. La distance entre
deux maisons voisines vaut $1$, donc la distance entre les maisons $a$ et $b$ vaut $|a - b|$, le
plus grand des deux numéros moins le plus petit.

Le facteur doit déposer une lettre dans chaque maison. Il laisse son vélo à la maison $1$, y dépose
le courrier, puis distribue les autres lettres dans un ordre quelconque, en passant une seule fois
par chaque maison, et revient enfin à la maison $1$ chercher son vélo. Son **trajet** est la liste
des numéros des maisons, dans l'ordre où il les visite. La distance totale parcourue s'appelle la
**longueur** du trajet.

Par exemple, pour $n = 5$, un trajet possible est $1, 5, 2, 4, 3, 1$. Sa longueur est
$$|5 - 1| + |2 - 5| + |4 - 2| + |3 - 4| + |1 - 3| = 4 + 3 + 2 + 1 + 2 = 12 .$$
Un autre trajet possible est $1, 3, 5, 4, 2, 1$, de longueur $8$.

1. Combien y a-t-il de trajets possibles ?

2. a) Montrer que tout trajet a une longueur supérieure ou égale à $2(n - 1)$.

   b) Combien y a-t-il de trajets de longueur exactement $2(n - 1)$ ?

## Hints

1. **Question 1.** Combien y a-t-il de choix pour la deuxième maison visitée ? Une fois celle-ci
   choisie, combien pour la troisième ?
2. **Question 2.** Le facteur passe forcément par la maison $n$, la plus éloignée de son vélo.
3. **Question 2.** Pour $n = 4$, écrire les $6$ trajets et calculer leurs longueurs. Lesquels sont
   les plus courts ? Qu'ont-ils en commun ?
4. **Question 2.** Découper la rue en $n - 1$ tronçons de longueur $1$ : le tronçon numéro $j$ va
   de la maison $j$ à la maison $j + 1$. Un déplacement de la maison $a$ à la maison $b$ passe par
   $|a - b|$ tronçons. Combien de fois au moins le facteur passe-t-il sur chaque tronçon ?
5. **Question 2.** Dans un trajet le plus court, chaque tronçon est parcouru exactement deux fois.
   Si le facteur redescendait avant d'avoir atteint la maison $n$, quel tronçon serait parcouru
   quatre fois ?
6. **Question 2.** Un trajet le plus court monte jusqu'à la maison $n$ puis redescend. Que
   reste-t-il à choisir pour chacune des maisons $2, 3, \ldots, n - 1$ ?

## Solution

**1.** Le trajet commence et finit par $1$. Entre les deux, le facteur visite les maisons
$2, 3, \ldots, n$ dans un ordre quelconque. Il a $n - 1$ choix pour la deuxième maison visitée,
puis $n - 2$ choix pour la suivante, et ainsi de suite jusqu'à un seul choix pour la dernière.

**Conclusion :** il y a $(n - 1) \times (n - 2) \times \cdots \times 2 \times 1$ trajets, nombre
qu'on note $(n - 1)!$. Par exemple $24$ trajets pour $n = 5$.

**2. a)** Sur une rue droite, aller de $a$ à $c$ en passant par $b$ n'est jamais plus court que
d'aller directement de $a$ à $c$ : $|a - b| + |b - c| \geq |a - c|$. En regroupant ainsi les
déplacements de proche en proche :

- la partie du trajet qui va de la maison $1$ (au départ) jusqu'à la maison $n$ a une longueur au
  moins égale à $|n - 1| = n - 1$ ;
- la partie qui va de la maison $n$ jusqu'à la maison $1$ (à l'arrivée) aussi.

**Conclusion :** tout trajet a une longueur au moins égale à $2(n - 1)$.

**b)** *Compter par tronçons.* Le tronçon numéro $j$ (pour $1 \leq j \leq n - 1$) est la portion
de rue entre les maisons $j$ et $j + 1$. Un déplacement de la maison $a$ à la maison $b$ passe sur
exactement $|a - b|$ tronçons. La longueur d'un trajet est donc la somme, sur les $n - 1$
tronçons, du nombre de passages du facteur sur ce tronçon.

Chaque tronçon $j$ est parcouru au moins deux fois : le facteur part de la maison $1$, à gauche
du tronçon, doit atteindre la maison $n$, à droite, et revenir à la maison $1$. Il le traverse donc
au moins une fois vers la droite et au moins une fois vers la gauche. On retrouve que la longueur
vaut au moins $2(n - 1)$, et on apprend en plus que **la longueur vaut exactement $2(n - 1)$
si et seulement si chaque tronçon est parcouru exactement deux fois.**

*Un trajet le plus court monte puis descend.* Prenons un trajet de longueur $2(n - 1)$.

- Supposons qu'avant d'atteindre la maison $n$, le facteur fasse un déplacement vers la gauche,
  d'une maison $a$ vers une maison $b < a$. Regardons le tronçon $b$. Il l'a traversé vers la
  droite pour venir de $1$ jusqu'à $a$, puis vers la gauche pendant le déplacement de $a$ à $b$,
  puis il doit encore le traverser vers la droite pour atteindre $n$, et vers la gauche pour
  revenir à $1$. Cela fait quatre passages : impossible.
- Supposons qu'après la maison $n$, il fasse un déplacement vers la droite, d'une maison $a$ vers
  une maison $b > a$. Regardons le tronçon $a$. Il l'a traversé vers la droite pour aller
  jusqu'à $n$, vers la gauche pour revenir de $n$ jusqu'à $a$, puis vers la droite pendant le
  déplacement de $a$ à $b$, et il doit encore le traverser pour revenir à $1$. Quatre passages :
  impossible.

Donc le trajet visite les maisons par numéros croissants jusqu'à $n$, puis par numéros
décroissants jusqu'au retour en $1$. Réciproquement, un tel trajet a pour longueur
$(n - 1) + (n - 1) = 2(n - 1)$ : à la montée, les différences s'additionnent pour donner
$n - 1$, et de même à la descente.

*Compter ces trajets.* Un trajet qui monte puis descend est entièrement décidé par la liste des
maisons, parmi $2, 3, \ldots, n - 1$, qui sont visitées à la montée : elles sont visitées dans
l'ordre croissant, et les autres le sont à la descente, dans l'ordre décroissant. Chacune de ces
$n - 2$ maisons a deux possibilités (montée ou descente), indépendamment des autres.

**Conclusion :** il y a $2^{n-2}$ trajets de longueur minimale $2(n - 1)$. Pour $n = 5$, il y en a
$8$, par exemple $1, 2, 3, 4, 5, 1$ et $1, 3, 5, 4, 2, 1$.

**Bilan.** Il y a $(n - 1)!$ trajets. Le plus court mesure $2(n - 1)$ : le facteur doit aller au
bout de la rue et revenir. Les trajets les plus courts sont exactement ceux qui montent jusqu'à la
dernière maison puis redescendent, et il y en a $2^{n-2}$. L'outil clé est de compter combien de
fois chaque tronçon de rue est parcouru.

## Going further

- Le même découpage en tronçons permet de trouver le trajet le plus **long** : c'est
  l'exercice 40406.
- Si l'on choisit un trajet au hasard, quelle est sa longueur moyenne ? C'est l'exercice 40407.
- Pourquoi la longueur d'un trajet est-elle toujours paire ? Pour $n = 5$, combien y a-t-il de
  trajets de longueur $10$ ? (Réponse : $8$.)
