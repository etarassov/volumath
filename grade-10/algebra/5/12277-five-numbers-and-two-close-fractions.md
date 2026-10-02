---
id: "12277"
title: "Cinq nombres et deux fractions proches"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [fractions, principe des tiroirs, rangement, contre-exemple, plus petite constante]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de mars 2017"
  reference: "2017-10_ofm-2016-2017-test-mars.pdf, test du 22 mars 2017, exercice 5 (groupe A, élèves nés en 2001 ou avant) ; pas de corrigé publié, solution rédigée pour cette base et vérifiée numériquement sur 20 000 quintuplets tirés au hasard. L'énoncé original dit « pour tous réels a1, …, a5 » : il faut des réels strictement positifs, sinon certaines fractions n'existent pas. Il s'agit du problème A2 de la liste courte des Olympiades internationales 2016"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mars.pdf"
---

## Statement

On cherche le plus petit nombre réel $C$ qui a la propriété suivante : pour tous réels **strictement positifs** $a_1, a_2, a_3, a_4, a_5$, pas forcément distincts, on peut trouver quatre indices $i, j, k, \ell$ **distincts** tels que
$$\left|\frac{a_i}{a_j} - \frac{a_k}{a_\ell}\right| \leqslant C.$$

Montrer que ce plus petit nombre est $C = \frac{1}{2}$. Autrement dit, montrer que :

1. le nombre $\frac{1}{2}$ a cette propriété ;
2. aucun nombre $C < \frac{1}{2}$ ne l'a.

## Hints

1. Pour la première partie, commence par ranger les nombres : on peut supposer que $a_1 \leqslant a_2 \leqslant a_3 \leqslant a_4 \leqslant a_5$. Dans quel intervalle se trouve une fraction $\frac{a_i}{a_j}$ avec $i < j$ ?
2. Deux nombres de l'intervalle $]0, \frac{1}{2}]$ sont à distance au plus $\frac{1}{2}$, et de même pour deux nombres de l'intervalle $]\frac{1}{2}, 1]$. Pense au principe des tiroirs.
3. La difficulté est que les deux fractions doivent utiliser quatre indices différents. Cherche cinq fractions $\frac{a_i}{a_j}$ avec $i < j$, que l'on place en cercle, de sorte que deux fractions voisines utilisent toujours quatre indices différents.
4. Pour la seconde partie, essaie les nombres $1, 2, 2, 2, n$, avec $n$ très grand.

## Solution

### Première partie : le nombre $\frac{1}{2}$ a la propriété

Soient $a_1, \ldots, a_5$ des réels strictement positifs.

**Étape 1. On range les nombres.**

L'énoncé demande seulement que les quatre indices soient distincts. On peut donc renuméroter les cinq nombres sans rien changer au problème, et l'on suppose que
$$a_1 \leqslant a_2 \leqslant a_3 \leqslant a_4 \leqslant a_5.$$
Alors, pour $i < j$, on a $0 < a_i \leqslant a_j$, donc $0 < \frac{a_i}{a_j} \leqslant 1$.

**Étape 2. Cinq fractions placées en cercle.**

On considère les cinq fractions suivantes, qui sont toutes dans l'intervalle $]0, 1]$ d'après l'étape 1 :
$$q_1 = \frac{a_1}{a_2}, \qquad q_2 = \frac{a_3}{a_4}, \qquad q_3 = \frac{a_1}{a_5}, \qquad q_4 = \frac{a_2}{a_3}, \qquad q_5 = \frac{a_4}{a_5}.$$
On les place dans cet ordre autour d'un cercle, de sorte que $q_5$ et $q_1$ sont aussi voisines. Deux fractions voisines utilisent toujours quatre indices distincts :

| voisines | $q_1$ et $q_2$ | $q_2$ et $q_3$ | $q_3$ et $q_4$ | $q_4$ et $q_5$ | $q_5$ et $q_1$ |
|---|---|---|---|---|---|
| indices | $1, 2, 3, 4$ | $3, 4, 1, 5$ | $1, 5, 2, 3$ | $2, 3, 4, 5$ | $4, 5, 1, 2$ |

**Étape 3. Le principe des tiroirs.**

Chacune des cinq fractions est dans l'un des deux intervalles $]0, \frac{1}{2}]$ ou $]\frac{1}{2}, 1]$. Si chaque intervalle en contenait au plus deux, il y aurait au plus $2 + 2 = 4$ fractions. L'un des deux intervalles contient donc au moins trois des cinq fractions.

**Étape 4. Parmi ces trois fractions, deux sont voisines.**

Supposons que trois fractions placées sur le cercle n'aient aucune voisine parmi elles. En faisant le tour du cercle, entre deux de ces fractions qui se suivent, il y a au moins une autre fraction. Cela fait trois intervalles entre elles, donc au moins trois autres fractions, et au total au moins $3 + 3 = 6$ fractions. Or il n'y en a que cinq. Donc deux des trois fractions sont voisines.

**Étape 5. On conclut la première partie.**

On a trouvé deux fractions voisines, que l'on écrit $\frac{a_i}{a_j}$ et $\frac{a_k}{a_\ell}$. D'après l'étape 2, les indices $i, j, k, \ell$ sont distincts. Les deux fractions sont dans le même intervalle, $]0, \frac{1}{2}]$ ou $]\frac{1}{2}, 1]$, et deux nombres d'un même intervalle de longueur $\frac{1}{2}$ diffèrent d'au plus $\frac{1}{2}$. Donc
$$\left|\frac{a_i}{a_j} - \frac{a_k}{a_\ell}\right| \leqslant \frac{1}{2}.$$

### Seconde partie : aucun nombre plus petit ne convient

**Étape 6. Un exemple.**

Soit $n \geqslant 5$ un entier. On prend
$$a_1 = 1, \qquad a_2 = a_3 = a_4 = 2, \qquad a_5 = n.$$
Choisir quatre indices distincts parmi cinq, c'est laisser de côté exactement un des cinq nombres. On montre que, quel que soit le choix, la différence $\left|\frac{a_i}{a_j} - \frac{a_k}{a_\ell}\right|$ est au moins $\frac{1}{2} - \frac{2}{n}$.

- *On laisse de côté $n$.* Les quatre nombres utilisés sont $1, 2, 2, 2$. L'une des deux fractions contient le $1$ et un $2$, elle vaut $\frac{1}{2}$ ou $2$. L'autre est faite de deux $2$, elle vaut $1$. La différence vaut $\frac{1}{2}$ ou $1$.
- *On laisse de côté $1$.* Les nombres utilisés sont $2, 2, 2, n$. L'une des fractions contient $n$ et un $2$, elle vaut $\frac{n}{2}$ ou $\frac{2}{n}$. L'autre vaut $1$. La différence vaut $\frac{n}{2} - 1 \geqslant \frac{3}{2}$, ou $1 - \frac{2}{n}$.
- *On laisse de côté un des $2$.* Les nombres utilisés sont $1, 2, 2, n$.
  - Si le $1$ est avec $n$, les fractions sont $\frac{1}{n}$ ou $n$ d'un côté, et $1$ de l'autre. La différence vaut $1 - \frac{1}{n}$ ou $n - 1$, donc au moins $\frac{1}{2}$.
  - Si le $1$ est avec un $2$, une fraction vaut $\frac{1}{2}$ ou $2$, et l'autre $\frac{2}{n}$ ou $\frac{n}{2}$. Les quatre différences possibles sont
  $$\frac{1}{2} - \frac{2}{n}, \qquad \frac{n}{2} - \frac{1}{2}, \qquad 2 - \frac{2}{n}, \qquad \frac{n}{2} - 2.$$
  Comme $n \geqslant 5$, la dernière vaut au moins $\frac{5}{2} - 2 = \frac{1}{2}$, et la plus petite des quatre est $\frac{1}{2} - \frac{2}{n}$.

Dans tous les cas, la différence est au moins $\frac{1}{2} - \frac{2}{n}$, car chacune des valeurs $\frac{1}{2}$, $1 - \frac{2}{n}$ et $1 - \frac{1}{n}$ est au moins égale à $\frac{1}{2} - \frac{2}{n}$.

**Étape 7. On conclut la seconde partie.**

Soit $C < \frac{1}{2}$. On choisit un entier $n \geqslant 5$ assez grand pour que $\frac{2}{n} < \frac{1}{2} - C$, ce qui est possible car $\frac{2}{n}$ devient aussi petit que l'on veut quand $n$ grandit. Alors $\frac{1}{2} - \frac{2}{n} > C$. D'après l'étape 6, pour les nombres $1, 2, 2, 2, n$, aucun choix de quatre indices distincts ne donne une différence au plus égale à $C$. Le nombre $C$ n'a donc pas la propriété.

**Conclusion.** Le nombre $\frac{1}{2}$ a la propriété, et aucun nombre plus petit ne l'a : le plus petit nombre cherché est $C = \frac{1}{2}$.

## Going further

1. Avec les nombres $1, 2, 2, 2, 10$, quel choix d'indices donne la plus petite différence possible ? Que vaut-elle ?
2. Pourquoi l'énoncé demande-t-il des nombres strictement positifs ? Que se passe-t-il si l'un des cinq nombres est nul ?
