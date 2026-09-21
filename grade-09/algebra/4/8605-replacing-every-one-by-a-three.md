---
id: "8605"
title: "Remplacer tous les 1 par des 3"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [moyenne, inegalite, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices collégiens, exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Théo reçoit son bulletin. Toutes ses notes sont des entiers compris entre $1$ et $5$ (bornes comprises), et il constate que leur moyenne est inférieure ou égale à $3$.

Pour éviter d'être privé de dessert pendant une semaine, il décide de tricher : sur le bulletin, il remplace **chacune** de ses notes égales à $1$ par une note égale à $3$. Les autres notes ne bougent pas.

Montrer qu'après cette opération, la moyenne des notes est encore inférieure ou égale à $4$.

## Hints

1. Donne un nom à ce dont tu as besoin : $n$ le nombre de notes, $a$ le nombre de notes égales à $1$, $S$ la somme de toutes les notes.
2. Une moyenne inférieure à $3$, c'est exactement $S \leqslant 3n$. Et la moyenne finale est inférieure à $4$ exactement quand la nouvelle somme est $\leqslant 4n$. Travaille avec les sommes, pas avec les moyennes.
3. Chaque $1$ devient un $3$ : de combien la somme augmente-t-elle en tout ?
4. Tu disposes de deux informations très différentes : d'un côté $S \leqslant 3n$, de l'autre le fait que les notes qui ne sont pas des $1$ valent au plus $5$. Aucune des deux ne suffit seule. Essaie l'une quand il y a peu de $1$, l'autre quand il y en a beaucoup.
5. Sépare les deux cas selon que $2a \leqslant n$ ou $2a \geqslant n$.

## Solution

**Mise en place.** Notons

- $n$ le nombre de notes de Théo,
- $a$ le nombre de notes égales à $1$,
- $S$ la somme de toutes les notes,
- $T$ la somme des notes qui ne sont **pas** égales à $1$.

Les $a$ notes égales à $1$ apportent $a$ à la somme, donc

$$S = a + T .$$

L'hypothèse « la moyenne est inférieure ou égale à $3$ » s'écrit $\dfrac{S}{n} \leqslant 3$, c'est-à-dire

$$(\star) \qquad S \leqslant 3n .$$

Après la triche, chacune des $a$ notes égales à $1$ devient un $3$ : elle gagne $2$. La nouvelle somme est donc

$$S' = S + 2a, \qquad \text{ce qu'on peut aussi écrire} \qquad S' = 3a + T .$$

Le but est de montrer que $S' \leqslant 4n$.

**Une deuxième information, à ne pas oublier.** Une note qui n'est pas égale à $1$ vaut au moins $2$ et au plus $5$. Il y a $n - a$ telles notes, donc

$$(\star\star) \qquad T \leqslant 5(n-a) .$$

**Pourquoi il faut deux cas.** Si l'on n'utilise que $(\star)$, on obtient $S' = S + 2a \leqslant 3n + 2a$, ce qui ne dépasse $4n$ que si $2a \leqslant n$ : insuffisant quand il y a beaucoup de $1$. Si l'on n'utilise que $(\star\star)$, on obtient une borne qui devient bonne justement quand $a$ est grand. On traite donc séparément les deux situations.

**Premier cas : $2a \leqslant n$** (il y a peu de $1$).

En partant de $S' = S + 2a$ et en utilisant $(\star)$ :

$$S' = S + 2a \leqslant 3n + 2a \leqslant 3n + n = 4n .$$

**Deuxième cas : $2a \geqslant n$** (il y a beaucoup de $1$).

En partant cette fois de $S' = 3a + T$ et en utilisant $(\star\star)$ :

$$S' = 3a + T \leqslant 3a + 5(n-a) = 5n - 2a \leqslant 5n - n = 4n .$$

**Conclusion.** Dans les deux cas $S' \leqslant 4n$, donc la nouvelle moyenne $\dfrac{S'}{n}$ est inférieure ou égale à $4$. La triche de Théo ne peut pas faire remonter sa moyenne au-dessus de $4$.

## Going further

La borne $4$ ne peut pas être améliorée. Prends par exemple la moitié des notes égales à $1$ et l'autre moitié égale à $5$ : la moyenne de départ vaut exactement $3$, et après la triche les notes sont moitié $3$, moitié $5$, de moyenne exactement $4$.

C'est d'ailleurs ce cas d'égalité qui a piégé beaucoup de candidats : ils l'ont exhibé en le baptisant « le pire cas », sans jamais démontrer que c'était bien le pire. Un exemple, même bien choisi, ne démontre jamais une inégalité.
