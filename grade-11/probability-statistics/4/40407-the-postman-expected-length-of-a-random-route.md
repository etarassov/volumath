---
id: "40407"
title: "Le facteur : longueur moyenne d'un trajet au hasard"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [esperance, variable-aleatoire, equiprobabilite, permutations, double-comptage, somme-de-carres, denombrement]
adapted_from: null
see_also: ["40405", "40406"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 3 « Le facteur sonne toujours une fois (et une seule) », question 4. La question 1 (cas n = 3 et n = 4) est ajoutée comme échauffement."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Un facteur doit distribuer le courrier dans une rue. Elle ne comporte qu'une seule rangée de
maisons, régulièrement espacées et numérotées $1, 2, \ldots, n$, où $n \geq 2$. La distance entre
deux maisons voisines vaut $1$, donc la distance entre les maisons $a$ et $b$ vaut $|a - b|$.

Le facteur doit déposer une lettre dans chaque maison. Il laisse son vélo à la maison $1$, y dépose
le courrier, puis distribue les autres lettres dans un ordre quelconque, en passant une seule fois
par chaque maison, et revient enfin à la maison $1$ chercher son vélo. Son **trajet** est la liste
des numéros des maisons, dans l'ordre où il les visite. La distance totale parcourue s'appelle la
**longueur** du trajet.

Par exemple, pour $n = 5$, un trajet possible est $1, 5, 2, 4, 3, 1$, de longueur
$$|5 - 1| + |2 - 5| + |4 - 2| + |3 - 4| + |1 - 3| = 4 + 3 + 2 + 1 + 2 = 12 .$$
Il y a $(n - 1)! = (n - 1) \times (n - 2) \times \cdots \times 1$ trajets possibles, puisque le
facteur visite les maisons $2, \ldots, n$ dans un ordre quelconque.

On tire un trajet au hasard, tous les trajets étant équiprobables, et on note $L$ sa longueur.

1. Calculer l'espérance de $L$ pour $n = 3$, puis pour $n = 4$.

2. Pour $n$ quelconque, calculer l'espérance de $L$.

On rappelle que $1^2 + 2^2 + \cdots + p^2 = \frac{p(p + 1)(2p + 1)}{6}$ pour tout entier $p \geq 1$.

## Hints

1. **Question 1.** Pour $n = 4$, écrire les $6$ trajets et leurs longueurs.
2. **Question 2.** La longueur est la somme des longueurs des $n$ déplacements du trajet. Ranger
   les longueurs de ces déplacements dans un tableau, une ligne par trajet et une colonne par
   déplacement. Calculer la moyenne de chaque colonne, puis les additionner.
3. **Question 2.** Premier déplacement : de la maison $1$ à la maison $x_2$ visitée en deuxième.
   Dans combien de trajets a-t-on $x_2 = h$, pour un $h$ donné entre $2$ et $n$ ?
4. **Question 2.** Pour un déplacement du milieu, de $x_k$ à $x_{k+1}$ : chaque couple $(a, b)$
   de maisons distinctes prises parmi $2, \ldots, n$ apparaît dans le même nombre de trajets. Il
   suffit donc de calculer la moyenne de $|a - b|$ sur tous ces couples.
5. **Question 2.** Parmi $N$ nombres consécutifs, combien de couples $(a, b)$ vérifient
   $|a - b| = d$ ? Il y en a $2(N - d)$.

## Solution

**1.** *Pour $n = 3$.* Les deux trajets $1, 2, 3, 1$ et $1, 3, 2, 1$ ont pour longueurs
$1 + 1 + 2 = 4$ et $2 + 1 + 1 = 4$. Donc $E(L) = 4$.

*Pour $n = 4$.* Les six trajets et leurs longueurs :

| trajet | longueur |
|---|---|
| $1, 2, 3, 4, 1$ | $1 + 1 + 1 + 3 = 6$ |
| $1, 2, 4, 3, 1$ | $1 + 2 + 1 + 2 = 6$ |
| $1, 3, 2, 4, 1$ | $2 + 1 + 2 + 3 = 8$ |
| $1, 3, 4, 2, 1$ | $2 + 1 + 2 + 1 = 6$ |
| $1, 4, 2, 3, 1$ | $3 + 2 + 1 + 2 = 8$ |
| $1, 4, 3, 2, 1$ | $3 + 1 + 1 + 1 = 6$ |

Donc $E(L) = \frac{40}{6} = \frac{20}{3}$.

**2.** On écrit un trajet $1, x_2, x_3, \ldots, x_n, 1$. Il comporte $n$ déplacements, de
longueurs
$$D_1 = |x_2 - 1|, \qquad D_k = |x_{k+1} - x_k| \ \text{ pour } 2 \leq k \leq n - 1, \qquad D_n = |1 - x_n| ,$$
et $L = D_1 + D_2 + \cdots + D_n$.

*La moyenne d'une somme.* Notons $T = (n - 1)!$ le nombre de trajets. Rangeons les nombres
$D_k$ dans un tableau, avec une ligne par trajet et une colonne par déplacement. L'espérance
$E(L)$ est la somme de toutes les cases du tableau, divisée par $T$. On peut faire cette somme
colonne par colonne :
$$E(L) = E(D_1) + E(D_2) + \cdots + E(D_n) ,$$
où $E(D_k)$ est la somme de la colonne $k$ divisée par $T$, c'est-à-dire la moyenne de $D_k$ sur
tous les trajets.

*Le premier et le dernier déplacement.* Pour un $h$ fixé entre $2$ et $n$, les trajets tels que
$x_2 = h$ s'obtiennent en rangeant les $n - 2$ autres maisons dans un ordre quelconque : il y en
a $(n - 2)!$. Comme $(2 - 1) + (3 - 1) + \cdots + (n - 1) = \frac{(n - 1)n}{2}$, la somme de la
colonne $1$ vaut
$$(n - 2)! \times \frac{(n - 1)n}{2} .$$
En divisant par $T = (n - 1)! = (n - 1) \times (n - 2)!$ :
$$E(D_1) = \frac{1}{n - 1} \times \frac{(n - 1)n}{2} = \frac{n}{2} .$$
De la même façon, $x_n$ prend chaque valeur $h$ dans $(n - 2)!$ trajets, et $E(D_n) = \frac{n}{2}$.

*Un déplacement du milieu* ($n \geq 3$ et $2 \leq k \leq n - 1$). Soit $(a, b)$ un couple de
maisons distinctes prises parmi $2, \ldots, n$. Les trajets tels que $x_k = a$ et $x_{k+1} = b$
s'obtiennent en rangeant les $n - 3$ autres maisons : il y en a $(n - 3)!$. Il y a
$(n - 1)(n - 2)$ couples $(a, b)$, et chacun apparaît dans le même nombre de trajets, donc
$E(D_k)$ est la moyenne de $|a - b|$ sur tous ces couples :
$$E(D_k) = \frac{S}{(n - 1)(n - 2)}, \qquad \text{où } S \text{ est la somme des } |a - b| \text{ sur tous les couples}.$$

Posons $N = n - 1$ : les maisons $2, \ldots, n$ sont $N$ nombres consécutifs. Pour $d$ entre
$1$ et $N - 1$, il y a $N - d$ paires de ces maisons à distance $d$, donc $2(N - d)$ couples
$(a, b)$. Ainsi
$$S = 2 \sum_{d=1}^{N-1} d(N - d) = 2N \sum_{d=1}^{N-1} d \; - \; 2 \sum_{d=1}^{N-1} d^2 .$$
Avec $1 + \cdots + (N - 1) = \frac{(N - 1)N}{2}$ et la formule rappelée pour $p = N - 1$ :
$$S = N^2(N - 1) - \frac{(N - 1)N(2N - 1)}{3} = N(N - 1) \times \frac{3N - (2N - 1)}{3} = \frac{N(N - 1)(N + 1)}{3} .$$
Comme $(n - 1)(n - 2) = N(N - 1)$, on obtient
$$E(D_k) = \frac{N + 1}{3} = \frac{n}{3} .$$

*Le total.* Il y a $n - 2$ déplacements du milieu, donc
$$E(L) = \frac{n}{2} + \frac{n}{2} + (n - 2) \times \frac{n}{3} = \frac{3n + n^2 - 2n}{3} = \frac{n(n + 1)}{3} .$$
Cela reste vrai pour $n = 2$, où il n'y a pas de déplacement du milieu : $E(L) = 2$.

**Conclusion :** l'espérance de la longueur d'un trajet tiré au hasard est $\frac{n(n + 1)}{3}$.
On retrouve $4$ pour $n = 3$ et $\frac{20}{3}$ pour $n = 4$ ; pour $n = 5$, elle vaut $10$.

**Bilan.** Pour calculer la longueur moyenne d'un trajet, on n'a pas besoin de connaître la loi
de $L$ : il suffit de faire la moyenne déplacement par déplacement. Chaque déplacement du milieu
mesure en moyenne $\frac{n}{3}$, et le trajet moyen mesure $\frac{n(n + 1)}{3}$, entre le
minimum $2(n - 1)$ et le maximum, qui vaut environ $\frac{n^2}{2}$.

## Going further

- En Terminale, la règle « la moyenne d'une somme est la somme des moyennes » s'appelle la
  linéarité de l'espérance : $E(X + Y) = E(X) + E(Y)$. Elle vaut même quand les variables ne
  sont pas indépendantes, comme ici.
- Deux points choisis au hasard dans un segment de longueur $1$ sont en moyenne à la distance
  $\frac{1}{3}$. Quel est le lien avec le résultat $E(D_k) = \frac{n}{3}$ ?
- Le trajet le plus court et le trajet le plus long sont étudiés dans les exercices 40405 et
  40406.
