---
id: "12634"
title: "Le plus grand poids d'une permutation"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [permutations, valeur-absolue, double-comptage, majoration, construction, extremum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 novembre 2021"
  reference: "2021-12_Enonce-Web-Test-1.pdf, exercice 2 ; corrigé 2021-12_Corrige-Web-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Web-Test-1.pdf"
---

## Statement

Une *permutation* de l'ensemble $\{1, 2, \ldots, 2021\}$ est une suite $\sigma = (\sigma_1, \sigma_2, \ldots, \sigma_{2021})$ dans laquelle chaque élément de $\{1, 2, \ldots, 2021\}$ apparaît exactement une fois. Le *poids* d'une telle permutation est la somme
$$|\sigma_2 - \sigma_1| + |\sigma_3 - \sigma_2| + \cdots + |\sigma_{2021} - \sigma_{2020}|.$$
Quel est le plus grand poids possible d'une permutation de $\{1, 2, \ldots, 2021\}$ ?

## Hints

1. Commence par de petits cas. Avec $\{1, 2, 3\}$, quel est le plus grand poids ? Avec $\{1, 2, 3, 4, 5\}$, trouve une permutation de poids 11.
2. Place les nombres $1, 2, \ldots, 2021$ sur une droite. Une permutation est un trajet qui passe une fois par chaque point, et son poids est la longueur du trajet. Pour chaque $j$, compte combien de pas du trajet passent par-dessus le petit intervalle qui va de $j$ à $j + 1$.
3. Chaque nombre est le départ ou l'arrivée d'au plus deux pas. Un pas qui passe au-dessus de l'intervalle de $j$ à $j + 1$ a une extrémité parmi $1, \ldots, j$, et l'autre parmi $j + 1, \ldots, 2021$.
4. Tu dois obtenir le majorant $2 \times 1010 \times 1011$. Il n'est pas atteint : regarde un pas qui part du nombre du milieu, 1011, ou qui y arrive.

## Solution

On écrit $n = 2021 = 2k + 1$, avec $k = 1010$. Le trajet $\sigma_1 \to \sigma_2 \to \cdots \to \sigma_n$ fait $n - 1 = 2k$ *pas*. On va montrer que **le plus grand poids est $2k(k + 1) - 1 = 2\,042\,219$.**

**Le poids compte des passages.** Pour $1 \leqslant j \leqslant n - 1$, on appelle *intervalle $j$* le segment qui va de $j$ à $j + 1$ sur la droite des nombres. Un pas qui va de $x$ à $y$ passe au-dessus des intervalles $j$ tels que $\min(x, y) \leqslant j < \max(x, y)$, et il y en a exactement $|x - y|$. Si l'on note $N_j$ le nombre de pas qui passent au-dessus de l'intervalle $j$, on a donc
$$\text{poids} = N_1 + N_2 + \cdots + N_{n-1}.$$

**Une majoration de chaque $N_j$.** Chaque nombre est l'arrivée d'au plus un pas et le départ d'au plus un pas : il est donc l'extrémité d'au plus deux pas. Un pas qui passe au-dessus de l'intervalle $j$ a une extrémité parmi les $j$ nombres $1, \ldots, j$, donc $N_j \leqslant 2j$. Il a aussi une extrémité parmi les $n - j$ nombres $j + 1, \ldots, n$, donc $N_j \leqslant 2(n - j)$. Ainsi
$$N_j \leqslant 2j \quad \text{pour } j \leqslant k \qquad \text{et} \qquad N_j \leqslant 2(n - j) \quad \text{pour } j \geqslant k + 1.$$

**Le majorant.** En additionnant, et comme $n - j$ prend les valeurs $k, k - 1, \ldots, 1$ quand $j$ va de $k + 1$ à $2k$,
$$\text{poids} \leqslant 2(1 + 2 + \cdots + k) + 2(k + \cdots + 2 + 1) = 4 \times \frac{k(k + 1)}{2} = 2k(k + 1).$$

**Ce majorant n'est pas atteint.** Supposons que le poids vaille $2k(k + 1)$. Alors chacune des inégalités sur les $N_j$ est une égalité, en particulier $N_k = 2k$ et $N_{k+1} = 2k$. Il n'y a que $2k$ pas, donc *chaque* pas passe à la fois au-dessus de l'intervalle $k$ (de $k$ à $k + 1$) et de l'intervalle $k + 1$ (de $k + 1$ à $k + 2$). Or le nombre $k + 1$ est l'extrémité d'au moins un pas, qui le relie à un nombre $y$. Ce pas passe au-dessus de l'intervalle $k$ seulement si $y \leqslant k$, et au-dessus de l'intervalle $k + 1$ seulement si $y \geqslant k + 2$. Il ne peut pas faire les deux, ce qui est une contradiction. Le poids est un entier, donc
$$\text{poids} \leqslant 2k(k + 1) - 1.$$

**Une permutation qui atteint ce poids.** On prend
$$k + 2,\ 1,\ k + 3,\ 2,\ k + 4,\ 3,\ \ldots,\ 2k + 1,\ k,\ k + 1.$$
Elle commence par $k$ couples formés de $k + 1 + i$ puis $i$, pour $i = 1, 2, \ldots, k$, et finit par $k + 1$. Chaque nombre de 1 à $2k + 1$ y apparaît une fois. Ses pas sont :

- $k$ pas « vers le bas », de $k + 1 + i$ à $i$, de longueur $k + 1$ chacun ;
- $k - 1$ pas « vers le haut », de $i$ à $k + 2 + i$ pour $i = 1, \ldots, k - 1$, de longueur $k + 2$ chacun ;
- le dernier pas, de $k$ à $k + 1$, de longueur 1.

Son poids vaut
$$k(k + 1) + (k - 1)(k + 2) + 1 = k^2 + k + k^2 + k - 2 + 1 = 2k(k + 1) - 1.$$

**Conclusion.** Avec $k = 1010$, le plus grand poids possible est
$$2 \times 1010 \times 1011 - 1 = 2\,042\,220 - 1 = \mathbf{2\,042\,219}.$$

## Going further

- On peut aussi écrire le résultat avec $n$ : le plus grand poids vaut $(n^2 - 3)/2$ pour tout $n$ impair. Pour $n = 5$, c'est 11, atteint par $4, 1, 5, 2, 3$.
- Beaucoup de candidats ont proposé une permutation de poids $1010 \times 2021 = 2\,041\,210$, par exemple le zigzag $1, 2021, 2, 2020, \ldots, 1010, 1012, 1011$, dont les pas mesurent $2020, 2019, \ldots, 1$. Ils ont cru qu'elle était la meilleure. Le cas $n = 5$ suffit à voir que ce n'est pas le cas : c'est pourquoi on regarde toujours les petits cas d'abord.
- Que devient la réponse pour $n$ pair ? La même méthode donne $n^2/2 - 1$, et cette fois le majorant est atteint.
