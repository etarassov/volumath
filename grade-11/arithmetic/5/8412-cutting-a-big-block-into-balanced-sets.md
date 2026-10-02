---
id: "8412"
title: "Découper un grand bloc en ensembles équilibrés"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [moyenne, partition, somme, carre, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de lycée, exercice 16"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On dit qu'un ensemble fini et non vide d'entiers est **équilibré** si son nombre d'éléments est égal à la moyenne de ses éléments.

Par exemple, $\{1, 2, 6\}$ est équilibré : il a $3$ éléments, et la moyenne de ses éléments vaut $\frac{1+2+6}{3} = 3$. En revanche, pour $n \geqslant 2$, l'ensemble $\{1, 2, \ldots, n\}$ ne l'est pas : il a $n$ éléments, mais la moyenne de ses éléments vaut $\frac{n+1}{2}$.

Peut-on partager l'ensemble $\{1, 2, \ldots, 2021^2\}$ en plusieurs ensembles équilibrés deux à deux disjoints ?

## Hints

1. Commence par te débarrasser de la fraction : un ensemble de $m$ entiers est équilibré exactement quand la somme de ses éléments vaut $m^2$. Toute la suite est plus simple avec cette formulation.
2. Regarde les petits cas pour deviner la réponse. Peux-tu partager $\{1, 2, 3, 4\}$ ? Et $\{1, 2, \ldots, 9\}$ ? Combien de morceaux te faut-il à chaque fois ?
3. Suppose que $\{1, \ldots, N^2\}$ se partage en **deux** ensembles équilibrés, de tailles $p$ et $q$. Tu connais $p + q$. Et la condition sur les sommes te donne la valeur de $p^2 + q^2$. Cela suffit pour trouver $p$ et $q$.
4. Il ne reste plus qu'à fabriquer un ensemble de $p$ entiers de $\{1, \ldots, N^2\}$ dont la somme vaut $p^2$. Un paquet d'entiers consécutifs symétrique autour de $p$ a une moyenne très facile à calculer.
5. Une fois le premier morceau construit, n'essaie pas de vérifier le second à la main : sa somme est ce qui reste, et le calcul se fait tout seul.

## Solution

La réponse est **oui**, et deux morceaux suffisent.

Posons $N = 2021$ et $E = \{1, 2, \ldots, N^2\}$, avec $N^2 = 4\,084\,441$.

### Étape 0. Une reformulation sans fraction

Soit $S$ un ensemble fini non vide d'entiers, de cardinal $m$. Dire que la moyenne de ses éléments vaut $m$, c'est dire que

$$\frac{\text{somme des éléments de } S}{m} = m, \qquad \text{c'est-à-dire} \qquad \text{somme des éléments de } S = m^2.$$

**Un ensemble est équilibré exactement quand la somme de ses éléments est le carré de son nombre d'éléments.** C'est cette formulation que nous utiliserons.

### Étape 1. Deviner les tailles des morceaux

Cherchons un partage de $E$ en **deux** ensembles équilibrés $A$ et $B$, de tailles respectives $p$ et $q$. Voyons ce que cela impose.

D'une part, $A$ et $B$ forment une partition de $E$, donc

$$p + q = N^2.$$

D'autre part, la somme de tous les entiers de $E$ vaut

$$1 + 2 + \cdots + N^2 = \frac{N^2(N^2+1)}{2},$$

et comme $A$ et $B$ sont équilibrés, cette somme vaut aussi $p^2 + q^2$. Donc

$$p^2 + q^2 = \frac{N^2(N^2+1)}{2}.$$

Or $p^2 + q^2 = (p+q)^2 - 2pq = N^4 - 2pq$, d'où

$$2pq = N^4 - \frac{N^2(N^2+1)}{2} = \frac{2N^4 - N^4 - N^2}{2} = \frac{N^2(N^2-1)}{2},$$

puis

$$pq = \frac{N^2(N^2-1)}{4} = \frac{N(N-1)}{2} \times \frac{N(N+1)}{2}.$$

Posons

$$a = \frac{N(N-1)}{2} \qquad \text{et} \qquad b = \frac{N(N+1)}{2}.$$

On constate que $a + b = \dfrac{N(N-1) + N(N+1)}{2} = N^2$ et que $ab = pq$. Les deux nombres $p$ et $q$ ont donc la même somme et le même produit que $a$ et $b$ : ce sont les mêmes, à l'ordre près.

Pour $N = 2021$ :

$$a = 2021 \times 1010 = 2\,041\,210, \qquad b = 2021 \times 1011 = 2\,043\,231.$$

Ce calcul ne prouve encore rien : il nous dit seulement **où chercher**. Passons à la construction.

### Étape 2. Construire le premier morceau

Il nous faut $a$ entiers distincts de $E$ dont la somme vaut $a^2$, autrement dit de moyenne $a$. L'idée la plus simple : les prendre consécutifs et répartis symétriquement autour de $a$.

Le nombre $a = 2\,041\,210$ est pair. Posons $h = \dfrac{a}{2} = 1\,020\,605$ et prenons

$$A = \{\, a - k \;:\; 1 \leqslant k \leqslant h \,\} \;\cup\; \{\, a + k \;:\; 1 \leqslant k \leqslant h \,\},$$

c'est-à-dire tous les entiers de $a - h$ à $a + h$, sauf $a$ lui-même :

$$A = \{1\,020\,605,\; 1\,020\,606,\; \ldots,\; 3\,061\,815\} \setminus \{2\,041\,210\}.$$

**Sa taille.** Il y a $h$ entiers en dessous de $a$ et $h$ au-dessus, soit $2h = a$ éléments.

**Sa somme.** Regroupons les éléments deux par deux : $(a-k)$ avec $(a+k)$. Chaque paire a pour somme $2a$, et il y a $h = \frac{a}{2}$ paires, donc

$$\text{somme de } A = \frac{a}{2} \times 2a = a^2.$$

L'ensemble $A$ est donc équilibré.

**Il est bien contenu dans $E$.** Son plus petit élément est $a - h = h \geqslant 1$. Son plus grand est $a + h = \dfrac{3a}{2}$, et

$$\frac{3a}{2} = \frac{3N(N-1)}{4} \leqslant N^2 \quad \Longleftrightarrow \quad 3(N-1) \leqslant 4N,$$

ce qui est vrai. Numériquement : $3\,061\,815 \leqslant 4\,084\,441$.

### Étape 3. Le second morceau s'équilibre tout seul

Posons $B = E \setminus A$, c'est-à-dire

$$B = \{1, \ldots, 1\,020\,604\} \;\cup\; \{2\,041\,210\} \;\cup\; \{3\,061\,816, \ldots, 4\,084\,441\}.$$

**Sa taille** vaut $N^2 - a = b$.

**Sa somme** vaut la somme de tout $E$ moins celle de $A$ :

$$\frac{N^2(N^2+1)}{2} - a^2 = \frac{N^2(N^2+1)}{2} - \frac{N^2(N-1)^2}{4} = \frac{N^2 ( 2N^2 + 2 - (N-1)^2 )}{4}.$$

Développons le crochet :

$$2N^2 + 2 - (N^2 - 2N + 1) = N^2 + 2N + 1 = (N+1)^2.$$

Donc

$$\text{somme de } B = \frac{N^2 (N+1)^2}{4} = \left( \frac{N(N+1)}{2} \right)^2 = b^2.$$

L'ensemble $B$ est donc équilibré lui aussi.

### Conclusion

Les ensembles $A$ et $B$ sont disjoints, équilibrés, et leur réunion est $\{1, 2, \ldots, 2021^2\}$.

**Oui**, un tel partage existe, et deux morceaux suffisent.

## Going further

La même construction marche pour $\{1, 2, \ldots, n^2\}$ quel que soit $n \geqslant 2$. Les premiers cas se lisent à la main :

| $n$ | premier morceau | second morceau |
|---|---|---|
| $2$ | $\{1\}$ | $\{2, 3, 4\}$ |
| $3$ | $\{2, 3, 4\}$ | $\{1, 5, 6, 7, 8, 9\}$ |

On remarque que le second morceau du cas $n$ devient le premier morceau du cas $n+1$ : ce n'est pas un hasard, il a $\frac{n(n+1)}{2}$ éléments, ce qui est exactement la taille voulue au rang suivant. Cela donne une deuxième démonstration, par récurrence.

Et si $a$ était impair ? Il suffirait de prendre $A$ formé des entiers $a + k$ pour $-\frac{a-1}{2} \leqslant k \leqslant \frac{a-1}{2}$, soit $a$ entiers consécutifs centrés sur $a$ : la moyenne vaut encore $a$.

Enfin, on peut parfois faire plus de deux morceaux. Par exemple $\{1, \ldots, 36\}$ se partage en trois ensembles équilibrés :

$$\{2, 3, 4\}, \qquad \{1, 5, 6, \ldots, 11, 24\}, \qquad \{12, 13, \ldots, 23, 25, 26, \ldots, 36\}$$

de tailles et de moyennes $3$, $9$ et $24$.
