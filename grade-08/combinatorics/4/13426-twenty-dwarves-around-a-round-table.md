---
id: "13426"
title: "Vingt nains autour d'une table ronde"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [cercle, maximum, construction, majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 4 (et épreuve lycée, exercice 11) ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

En sortant de la mine, $20$ nains s'assoient autour d'une table ronde pour compter les pépites d'or que chacun a trouvées. Ils remarquent deux choses :

- entre deux nains assis côte à côte, la différence du nombre de pépites est toujours $2$ ou $3$ ;
- deux nains n'ont jamais le même nombre de pépites.

Quelle est la plus grande différence possible entre le nombre de pépites du nain qui en a le plus et celui du nain qui en a le moins ?

## Hints

1. Appelle $P$ le nain qui a le plus de pépites et $M$ celui qui en a le moins. Pour aller de $M$ à $P$ en passant d'un nain à son voisin, il y a deux chemins autour de la table. Combien de pas compte le plus court des deux, au plus ?
2. À chaque pas, le nombre de pépites augmente d'au plus $3$. Quelle différence entre $P$ et $M$ obtiens-tu au plus ?
3. Peut-on atteindre exactement cette valeur ? Si oui, que valent alors les deux voisins de $M$ ?
4. Pour la construction, monte de $3$ en $3$ d'un côté de la table, et de l'autre côté, monte aussi de $3$ en $3$ mais en partant d'un autre nombre.

## Solution

On note $m$ le nombre de pépites du nain $M$ qui en a le moins, $p$ celui du nain $P$ qui en a le plus, et $d = p - m$ la différence cherchée. On appelle **pas** le passage d'un nain à l'un de ses deux voisins.

### On a toujours $d \leqslant 29$

**Une première borne.** Partons de $M$ et tournons autour de la table, dans un sens, jusqu'à $P$. Cela prend un certain nombre de pas, disons $s$. Dans l'autre sens, il faut $20 - s$ pas, car les deux chemins font ensemble le tour complet de la table. L'un des deux nombres $s$ et $20 - s$ est au plus $10$, sinon leur somme dépasserait $20$.

Prenons le chemin le plus court, avec au plus $10$ pas. À chaque pas, le nombre de pépites change de $2$ ou de $3$, donc il augmente d'au plus $3$. En partant de $m$, après au plus $10$ pas, on arrive donc à au plus $m + 3 \times 10$. Ainsi

$$d = p - m \leqslant 30.$$

**Le cas $d = 30$ est impossible.** Supposons que $d = 30$. Pour arriver à $30$, il faut que les deux chemins aient au moins $10$ pas chacun, donc exactement $10$ pas chacun : $P$ est juste en face de $M$. Il faut aussi qu'à chaque pas de chaque chemin, le nombre de pépites augmente d'exactement $3$, sinon on arriverait à moins de $m + 30$.

Mais alors les deux voisins de $M$, qui sont les premiers nains de chacun des deux chemins, ont tous les deux $m + 3$ pépites. C'est interdit, puisque deux nains n'ont jamais le même nombre de pépites.

Donc $d \leqslant 29$.

### On peut avoir $d = 29$

Voici le nombre de pépites des $20$ nains, dans l'ordre où ils sont assis autour de la table, le dernier étant assis à côté du premier :

$$1,\ 3,\ 6,\ 9,\ 12,\ 15,\ 18,\ 21,\ 24,\ 27,\ 30,\ 28,\ 25,\ 22,\ 19,\ 16,\ 13,\ 10,\ 7,\ 4.$$

On vérifie les deux règles.

- **Les différences entre voisins.** De $1$ à $3$ : $2$. Puis de $3$ en $3$ jusqu'à $30$. De $30$ à $28$ : $2$. Puis de $3$ en $3$ en descendant jusqu'à $4$. Enfin, le dernier nain ($4$) est à côté du premier ($1$) : $3$.
- **Tous les nombres sont différents.** Les nombres $3, 6, \ldots, 30$ sont des multiples de $3$. Les nombres $28, 25, \ldots, 4$ et le nombre $1$ ont tous un reste de $1$ dans la division par $3$, et ils sont différents entre eux.

Le plus grand nombre est $30$ et le plus petit est $1$, donc $d = 29$.

**Conclusion.** La plus grande différence possible est $29$.

## Going further

Que devient la réponse avec $21$ nains ? Et avec $19$ nains ?
