---
id: "7512"
title: "Des enfants qui changent de siège"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, recurrence, fibonacci, echanges]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 69 (une étoile ; solution p. 249, résolu par Aymeric Jacquin). La liste de valeurs imprimée à la fin de cette solution, « 1,2,3,5,8,11,19 », contient deux erreurs de calcul : il faut lire 1, 2, 3, 5, 8, 13, 21."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

$n$ sièges sont alignés côte à côte, numérotés de $1$ à $n$, et un enfant est assis sur chacun.

Au signal, tous les enfants se lèvent et se rasseyent, de façon qu'il y ait de nouveau exactement un enfant par siège. La seule contrainte est que **chaque enfant se rasseye sur son siège ou sur un siège voisin** : il se déplace d'un siège au plus, vers la gauche ou vers la droite.

Combien y a-t-il de façons différentes de faire cela ?

## Hints

1. Traite à la main $n = 1$, $n = 2$, $n = 3$ et $n = 4$. Note bien chaque possibilité.
2. Réfléchis à ce qui peut arriver à l'enfant du siège $n$, tout au bout de la rangée. Il n'a que deux possibilités.
3. Si l'enfant du bout reste en place, que reste-t-il à décider ? Et s'il bouge, où va-t-il, et qui prend son siège ?
4. Montre qu'un enfant qui bouge est toujours **échangé** avec un voisin : personne ne peut se décaler « en chaîne ».
5. Tu dois obtenir une relation entre le nombre de façons pour $n$ sièges et ceux pour $n-1$ et $n-2$ sièges.

## Solution

Notons $a_n$ le nombre de façons de procéder avec $n$ sièges.

**Étape 1. Les petits cas.**

- $n = 1$ : l'unique enfant ne peut que rester. $a_1 = 1$.
- $n = 2$ : soit les deux restent, soit ils échangent. $a_2 = 2$.
- $n = 3$ : personne ne bouge ; les enfants 1 et 2 échangent ; les enfants 2 et 3 échangent. $a_3 = 3$.
- $n = 4$ : rien ; $1\!\leftrightarrow\!2$ ; $2\!\leftrightarrow\!3$ ; $3\!\leftrightarrow\!4$ ; $1\!\leftrightarrow\!2$ et $3\!\leftrightarrow\!4$ en même temps. $a_4 = 5$.

**Étape 2. Un enfant qui bouge échange avec un voisin.**

Regardons l'enfant qui, parmi tous ceux qui ont bougé, occupait le siège le plus à gauche ; disons le siège $i$. Tous les enfants des sièges $1, \ldots, i-1$ sont restés en place, donc les sièges $1, \ldots, i-1$ sont déjà occupés. L'enfant du siège $i$ ne peut donc pas aller en $i-1$ : il va en $i+1$.

Le siège $i$ doit alors être occupé par quelqu'un, et le seul candidat possible est l'enfant du siège $i+1$ (les autres sont trop loin, et celui du siège $i-1$ n'a pas bougé). Donc les enfants $i$ et $i+1$ ont simplement **échangé** leurs places.

En répétant le raisonnement sur les sièges $i+2, \ldots, n$, on voit que toute façon de faire consiste à choisir des **paires de sièges voisins**, deux à deux disjointes, et à échanger les enfants de chaque paire. Les autres ne bougent pas.

**Étape 3. La relation de récurrence.**

Comptons ces choix en regardant le siège $n$, tout à droite. Deux cas, qui ne se recoupent pas :

- L'enfant du siège $n$ ne bouge pas. Il reste à choisir les échanges sur les sièges $1, \ldots, n-1$ : il y a $a_{n-1}$ façons.
- L'enfant du siège $n$ échange avec celui du siège $n-1$. Il reste à choisir les échanges sur les sièges $1, \ldots, n-2$ : il y a $a_{n-2}$ façons.

Donc, pour tout $n \geqslant 3$ :

$$a_n = a_{n-1} + a_{n-2}.$$

**Étape 4. On conclut.**

Avec $a_1 = 1$ et $a_2 = 2$, on obtient

$$1,\; 2,\; 3,\; 5,\; 8,\; 13,\; 21,\; 34,\; 55,\; \ldots$$

**Réponse.** Le nombre cherché suit la règle « chaque terme est la somme des deux précédents », avec $a_1 = 1$ et $a_2 = 2$. C'est la suite de Fibonacci, décalée de deux rangs : $a_n = F_{n+1}$ si l'on pose $F_1 = F_2 = 1$.

## Going further

Cette suite apparaît chaque fois qu'on doit découper une ligne de $n$ objets en morceaux de taille $1$ ou $2$ : ici, les morceaux de taille $2$ sont les paires qui échangent, et ceux de taille $1$ les enfants qui restent. C'est exactement le même compte que le nombre de façons de paver une bande de $1 \times n$ avec des carrés $1\times 1$ et des dominos $1 \times 2$.

Question de prolongement : que devient la réponse si les sièges sont disposés **en cercle** plutôt qu'en ligne ? Le raisonnement du siège du bout ne marche plus, car il n'y a plus de bout. Attention, il apparaît deux possibilités supplémentaires quand tout le monde tourne d'un cran.
