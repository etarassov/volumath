---
id: "1002"
title: "Dix amis autour d'une table ronde"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, permutations, symetrie, rotation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercice 18 (réponse dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

Dix amis s'assoient autour d'une table ronde à dix places.

On considère que deux dispositions sont **les mêmes** dès que l'on peut passer de l'une à l'autre en faisant tourner tout le monde d'un même nombre de places, ou en lisant la table dans l'autre sens, ou en combinant les deux. Autrement dit, seul compte l'ordre dans lequel les amis se succèdent autour de la table, sans distinguer un sens de parcours ni une place de départ.

Combien y a-t-il de dispositions différentes ?

## Hints

1. Comptez d'abord les façons d'asseoir les dix amis sur dix chaises **numérotées** : c'est un simple problème de rangement.
2. Combien de ces rangements numérotés donnent la même disposition sur la table ronde ? Commencez par ne regarder que les rotations.
3. Une rotation fait avancer tout le monde d'un même nombre de places : combien de valeurs ce nombre peut-il prendre ?
4. Ajoutez ensuite le renversement du sens de lecture. Attention : il faut vérifier qu'une rotation et un renversement ne redonnent jamais deux fois le même rangement numéroté.
5. Faites d'abord le problème avec $3$ ou $4$ amis, et comptez les dispositions à la main pour contrôler votre formule.

## Solution

**Étape 1 : les chaises numérotées.**

Numérotons provisoirement les chaises de $1$ à $10$. Asseoir les dix amis sur ces chaises, c'est ranger dix personnes dans dix places distinctes : il y a
$$10! = 3\,628\,800$$
façons de le faire.

**Étape 2 : regrouper les rangements qui donnent la même disposition.**

Deux rangements numérotés donnent la même disposition de l'énoncé lorsqu'on passe de l'un à l'autre par :

- une **rotation** : on fait avancer tout le monde de $k$ places, avec $k \in \{0, 1, \ldots, 9\}$, ce qui donne $10$ transformations (dont celle qui ne bouge rien) ;
- un **renversement** : on lit la table dans l'autre sens ;
- ou une rotation suivie d'un renversement.

Cela fait au plus $10 \times 2 = 20$ transformations. Montrons qu'elles donnent bien, à partir d'un rangement fixé, $20$ rangements **deux à deux différents**.

Partons d'un rangement où Alice occupe la chaise $1$.

- Les $10$ rotations placent Alice sur les chaises $1, 2, \ldots, 10$ : ces $10$ rangements sont différents, puisque Alice n'y est pas à la même place.
- Une rotation suivie d'un renversement place aussi Alice sur l'une des dix chaises, une fois chacune : ces $10$ rangements-là sont également deux à deux différents.
- Enfin, un rangement du premier groupe et un rangement du second ne peuvent pas coïncider. En effet, dans le premier groupe, le voisin de droite d'Alice est toujours la même personne (celle qui était à sa droite au départ) ; dans le second, c'est toujours son **voisin de gauche** de départ. Comme il y a $10 \geqslant 3$ convives, ces deux personnes sont distinctes.

Chaque disposition de la table ronde correspond donc exactement à $20$ rangements sur chaises numérotées.

**Étape 3 : conclure.**

$$\frac{10!}{20} = \frac{3\,628\,800}{20} = 181\,440.$$

**Conclusion.** Il y a $181\,440$ dispositions différentes. De façon générale, pour $n \geqslant 3$ convives, la réponse est
$$\frac{n!}{2n} = \frac{(n-1)!}{2}.$$

**Contrôle sur un petit cas.** Avec $4$ amis $A$, $B$, $C$, $D$, la formule donne $\frac{3!}{2} = 3$. À la main, les seules dispositions possibles sont celles où $A$ a pour voisins deux des trois autres : $A$ est encadré par $\{B, C\}$, ou par $\{B, D\}$, ou par $\{C, D\}$. Il y en a bien $3$.

## Going further

1. Reprendre le problème lorsque l'on distingue les deux sens de parcours (les convives regardent vers le centre : la disposition « dans le sens des aiguilles d'une montre » et son miroir ne sont plus les mêmes). Combien de dispositions alors ?
2. Pourquoi la condition $n \geqslant 3$ est-elle nécessaire dans la formule $\frac{(n-1)!}{2}$ ? Que se passe-t-il pour $n = 2$ ?
3. Parmi les $181\,440$ dispositions, combien laissent Alice et Basile côte à côte ?
