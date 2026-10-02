---
id: "11261"
title: "Pas de grand tableau auto-descriptif"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [tableau, autodescriptif, double-comptage, majoration, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices du groupe Senior, exercice 9 ; corrigé 2019-02_envoi-4-corr-def.pdf (le corrigé recopie la définition avec « le nombre de fois que i apparaît à la colonne j », ce qui ne colle pas avec son propre exemple : il faut lire « à la ligne j », comme dans l'énoncé ; il écrit aussi x_i > 1 au lieu de x_i ⩾ 1, et ses calculs finaux contiennent des coquilles ; la preuve ici suit la même idée avec des constantes différentes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On remplit un tableau de $n$ lignes et $n$ colonnes avec des entiers
compris entre $0$ et $n - 1$. On numérote les lignes de $0$ à $n - 1$ de haut en bas, et les colonnes
de $0$ à $n - 1$ de gauche à droite.

On dit que le tableau est **auto-descriptif** si, pour tous $i$ et $j$, le nombre écrit à la ligne $i$
et à la colonne $j$ est égal au nombre de fois où le nombre $i$ apparaît dans la ligne $j$.
Autrement dit, la colonne $j$ indique, de haut en bas, combien la ligne $j$ contient de $0$, de $1$,
de $2$, et ainsi de suite.

Par exemple, le tableau suivant, pour $n = 5$, est auto-descriptif. Sa colonne $0$ se lit $1, 1, 0, 2,
1$ : la ligne $0$ contient bien un $0$, un $1$, aucun $2$, deux $3$ et un $4$.

|             | colonne 0 | colonne 1 | colonne 2 | colonne 3 | colonne 4 |
|-------------|:---------:|:---------:|:---------:|:---------:|:---------:|
| **ligne 0** | 1         | 0         | 3         | 3         | 4         |
| **ligne 1** | 1         | 3         | 2         | 1         | 1         |
| **ligne 2** | 0         | 1         | 0         | 1         | 0         |
| **ligne 3** | 2         | 1         | 0         | 0         | 0         |
| **ligne 4** | 1         | 0         | 0         | 0         | 0         |

Montrer que les tableaux auto-descriptifs ne peuvent pas être arbitrairement grands : il existe un
entier $M$ tel que tout tableau auto-descriptif a au plus $M$ lignes.

## Hints

1. Que vaut la somme des nombres d'une colonne ? Et la somme de tous les nombres du tableau ?
2. Note $x_k$ le nombre de fois où le nombre $k$ apparaît dans tout le tableau. Montre que $x_k$ est
   la somme des nombres de la ligne $k$, et que la somme de tous les nombres du tableau vaut
   $0 \times x_0 + 1 \times x_1 + \cdots + (n - 1) \times x_{n-1}$.
3. Montre que chaque nombre de $0$ à $n - 1$ apparaît au moins une fois dans le tableau. Puis, si un
   nombre $k$ apparaît peu souvent, que peut-on dire du nombre écrit à la ligne $0$ et à la
   colonne $k$ ?
4. Il ne peut pas y avoir beaucoup de nombres qui apparaissent souvent, car la somme de tout le
   tableau vaut seulement $n^2$. Mais alors la ligne $0$ contient beaucoup de grands nombres.

## Solution

Prenons un tableau auto-descriptif de $n$ lignes. Notons $a_{i,j}$ le nombre écrit à la ligne $i$ et
à la colonne $j$, et $x_k$ le nombre de fois où le nombre $k$ apparaît dans tout le tableau. Nous
allons montrer que $n \leqslant 178$.

### Quatre remarques

**1. La somme de tout le tableau vaut $n^2$.** La colonne $j$ compte les $0$, les $1$, …, les
$n - 1$ de la ligne $j$. Comme la ligne $j$ contient $n$ nombres, tous entre $0$ et $n - 1$, la somme
de la colonne $j$ vaut $n$. Avec $n$ colonnes, la somme de tout le tableau vaut $n^2$.

**2. Une autre façon de calculer cette somme.** Regroupons les nombres du tableau selon leur valeur :
le nombre $k$ apparaît $x_k$ fois, et ces cases apportent $k \times x_k$ à la somme. Donc
$$0 \times x_0 + 1 \times x_1 + 2 \times x_2 + \cdots + (n - 1) \times x_{n-1} = n^2 . \qquad (1)$$
De plus, la ligne $k$ contient les nombres $a_{k,0}, a_{k,1}, \ldots, a_{k,n-1}$, qui comptent les
$k$ de la ligne $0$, de la ligne $1$, …, de la ligne $n - 1$. Leur somme est donc le nombre total de
$k$ dans le tableau :
$$\text{la somme de la ligne } k \text{ vaut } x_k .$$

**3. Chaque nombre apparaît.** Supposons qu'un nombre $k$ entre $0$ et $n - 1$ n'apparaisse nulle
part. Alors la ligne $k$, qui compte les $k$ de chaque ligne, ne contient que des $0$, et elle en
contient $n$. Le nombre $a_{0,k}$, qui compte les $0$ de la ligne $k$, vaudrait donc $n$, alors que
les nombres du tableau sont au plus $n - 1$. C'est impossible. Donc $x_k \geqslant 1$ pour tout $k$.

**4. Un nombre rare donne un grand nombre sur la ligne $0$.** Si $x_k \leqslant 17$, la ligne $k$ a
une somme au plus égale à $17$, donc elle contient au plus $17$ nombres non nuls, et au moins
$n - 17$ zéros. Le nombre $a_{0,k}$, qui compte ces zéros, vérifie donc
$$a_{0,k} \geqslant n - 17 .$$

### Peu de nombres apparaissent souvent

Supposons $n \geqslant 179$. Notons $b$ le nombre d'entiers $k \geqslant 1$ tels que
$x_k \geqslant 18$. Ce sont $b$ entiers différents, au moins égaux à $1$, donc leur somme vaut au moins
$1 + 2 + \cdots + b = \frac{b(b + 1)}{2}$. D'après $(1)$,
$$n^2 \geqslant 18 \times \frac{b(b + 1)}{2} = 9\,b(b + 1) > 9\,b^2 .$$
Donc $b^2 < \frac{n^2}{9}$, c'est-à-dire $b < \frac{n}{3}$.

### La ligne $0$ contient beaucoup de grands nombres

Parmi les $n - 1$ entiers $k$ de $1$ à $n - 1$, il y en a donc $n - 1 - b$ pour lesquels
$x_k \leqslant 17$, et
$$n - 1 - b > n - 1 - \frac{n}{3} = \frac{2n}{3} - 1 .$$
Pour chacun d'eux, d'après la remarque 4, la ligne $0$ contient à la colonne $k$ un nombre au moins
égal à $n - 17$. Ainsi, plus de $\frac{2n}{3} - 1$ cases du tableau contiennent un nombre au moins
égal à $n - 17$.

Reprenons la somme $(1)$ et coupons-la en deux.

- Les termes $k \times x_k$ avec $k \geqslant n - 17$ comptent toutes les cases qui contiennent un
  nombre au moins égal à $n - 17$, et chacune apporte au moins $n - 17$. Leur somme est donc plus
  grande que $(n - 17)\left(\frac{2n}{3} - 1\right)$.
- Les termes $k \times x_k$ avec $k \leqslant n - 18$ sont au moins égaux à $k$, car $x_k \geqslant 1$
  d'après la remarque 3. Leur somme est donc au moins
  $0 + 1 + \cdots + (n - 18) = \frac{(n - 18)(n - 17)}{2}$.

En additionnant :
$$n^2 > (n - 17)\left(\frac{2n}{3} - 1\right) + \frac{(n - 18)(n - 17)}{2} = (n - 17) \times \frac{4n - 6 + 3n - 54}{6} = \frac{(n - 17)(7n - 60)}{6} .$$
En multipliant par $6$ et en développant :
$$6n^2 > 7n^2 - 179n + 1020 , \qquad \text{donc} \qquad n^2 - 179n + 1020 < 0 .$$
Or $n^2 - 179n = n(n - 179) \geqslant 0$ puisque $n \geqslant 179$, donc
$n^2 - 179n + 1020 > 0$. C'est une contradiction.

**Conclusion : un tableau auto-descriptif a au plus $178$ lignes. Il n'existe donc pas de tableaux
auto-descriptifs arbitrairement grands.**

## Going further

- Montre qu'un tableau auto-descriptif de $n$ lignes contient au moins $\frac{(n - 1)(n - 2)}{2}$
  zéros. (Compte les cases du tableau de deux façons : $x_0 + x_1 + \cdots + x_{n-1} = n^2$, et
  compare avec $(1)$.)
- Le raisonnement donne $n \leqslant 178$. Quelle borne obtiens-tu si tu remplaces le seuil $17$
  par un autre nombre ?
