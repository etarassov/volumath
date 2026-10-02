---
id: "13007"
title: "Autant de grands que de petits autour de la table"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [cercle, alternance, construction, maximum, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercices pour les élèves de première et terminale, exercice 11 (la question a est aussi l'exercice 4 de l'épreuve collège et seconde) ; corrigé 2017-09_coupe_automne_2012_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Autour d'une table ronde sont assises $2013$ personnes, qui ont toutes des tailles différentes.

On dit qu'une personne est **grande** si elle est plus grande que ses deux voisins, et qu'elle est **petite** si elle est plus petite que ses deux voisins. (Une personne peut n'être ni grande ni petite.)

1. Montrer que, quelle que soit la façon dont les personnes sont placées, il y a autant de personnes grandes que de personnes petites.
2. Pour quels entiers $n$ peut-on placer les $2013$ personnes de sorte qu'exactement $n$ d'entre elles soient grandes ?

## Hints

1. Essaie d'abord avec $5$ ou $6$ personnes. Dessine les tailles comme un profil de montagne qui monte et descend quand on fait le tour de la table.
2. En faisant le tour de la table dans le sens des aiguilles d'une montre, note entre deux voisins si l'on **monte** (le suivant est plus grand) ou si l'on **descend**. Que se passe-t-il au niveau d'une personne grande ? D'une personne petite ?
3. Une personne grande est un endroit où l'on passe de « monter » à « descendre ». Après un tel changement, quel est forcément le changement suivant ?
4. Pour la question 2 : s'il y a $g$ personnes grandes, combien y en a-t-il de petites ? Qu'en déduis-tu sur $2g$ ? Peut-il n'y avoir aucune personne grande ?
5. Pour construire un placement avec $g$ personnes grandes, alterne les $g$ plus grandes personnes et les $g$ plus petites, puis place toutes les autres par taille croissante.

## Solution

**Question 1.** Faisons le tour de la table dans le sens des aiguilles d'une montre. Entre chaque personne et la suivante, on écrit « $\nearrow$ » si la suivante est plus grande, et « $\searrow$ » si elle est plus petite. Comme les tailles sont toutes différentes, on écrit toujours l'un des deux. On obtient $2013$ flèches disposées en cercle.

Une personne est entourée de deux flèches : celle qui arrive vers elle et celle qui part d'elle.

- Elle est **grande** exactement quand on arrive en montant et qu'on repart en descendant : la flèche $\nearrow$ est suivie de $\searrow$. C'est un **sommet**.
- Elle est **petite** exactement quand on arrive en descendant et qu'on repart en montant : $\searrow$ est suivie de $\nearrow$. C'est un **creux**.
- Sinon, les deux flèches sont pareilles et la personne n'est ni grande ni petite.

Il existe au moins un sommet : la personne la plus grande de toutes est plus grande que ses deux voisins.

Partons de ce sommet et faisons le tour. Juste après un sommet, on descend. On continue à descendre jusqu'au premier changement de sens, qui est forcément un passage de « descendre » à « monter », donc un creux. Ensuite on monte jusqu'au changement suivant, qui est forcément un sommet. Et ainsi de suite : **en faisant le tour, sommets et creux se succèdent en alternant.** On finit par revenir au sommet de départ.

La liste des changements rencontrés pendant le tour s'écrit donc sommet, creux, sommet, creux, ..., sommet, creux, puis on retrouve le sommet du début. Elle contient autant de sommets que de creux.

Il y a donc autant de personnes grandes que de personnes petites.

**Question 2. Ce qui est impossible.** Pour un placement donné, notons $g$ le nombre de personnes grandes, $p$ le nombre de personnes petites et $m$ le nombre des autres. On a $g + p + m = 2013$, et $p = g$ d'après la question 1, donc
$$2g + m = 2013 .$$
Ainsi $2g \leqslant 2013$, et comme $g$ est entier, $g \leqslant 1006$. D'autre part, la plus grande personne est grande, donc $g \geqslant 1$.

**Question 2. Tout le reste est possible.** Soit $g$ un entier entre $1$ et $1006$. Posons $m = 2013 - 2g$ ; comme $2013$ est impair, $m \geqslant 1$. Rangeons les personnes par taille et formons trois groupes :

- les $g$ plus grandes, nommées $G_1, G_2, \ldots, G_g$ ;
- les $g$ plus petites, nommées $P_1, P_2, \ldots, P_g$ ;
- les $m$ autres, nommées $M_1, M_2, \ldots, M_m$ par taille croissante.

Toute personne $G$ est plus grande que toute personne $M$, et toute personne $M$ est plus grande que toute personne $P$. On les place autour de la table dans cet ordre :
$$G_1,\ P_1,\ G_2,\ P_2,\ \ldots,\ G_g,\ P_g,\ M_1,\ M_2,\ \ldots,\ M_m,$$
puis on revient à $G_1$.

- Chaque $G_i$ a pour voisins des personnes $P$, ou bien (pour $G_1$) la personne $P_1$ et la personne $M_m$. Tous sont plus petits : **chaque $G_i$ est grande.**
- Chaque $P_i$ a pour voisins des personnes $G$, ou bien (pour $P_g$) la personne $G_g$ et la personne $M_1$. Tous sont plus grands : chaque $P_i$ est petite.
- Les $M_j$ sont rangés par taille croissante : $M_1$ est entre $P_g$ (plus petite) et $M_2$ (plus grand), ou $G_1$ si $m = 1$. Chaque $M_j$ du milieu est entre un plus petit et un plus grand. Enfin $M_m$ est entre $M_{m-1}$, plus petit, et $G_1$, plus grande. Aucun $M_j$ n'est grand.

Ce placement a exactement $g$ personnes grandes.

**Conclusion.**

1. Il y a toujours autant de personnes grandes que de personnes petites.
2. Le nombre de personnes grandes peut prendre exactement les valeurs $n = 1, 2, 3, \ldots, 1006$.

## Going further

1. Que deviennent les réponses de la question 2 avec $2014$ personnes au lieu de $2013$ ?
2. Les mêmes personnes s'assoient maintenant sur un banc (en ligne droite) : les deux personnes des bouts n'ont qu'un voisin, et on ne les compte ni grandes ni petites. Le nombre de personnes grandes et le nombre de personnes petites peuvent-ils être différents ? De combien au plus ?
