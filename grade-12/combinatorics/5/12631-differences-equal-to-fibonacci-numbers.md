---
id: "12631"
title: "Des différences égales aux nombres de Fibonacci"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [fibonacci, differences, construction, minoration, recurrence, regroupement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 mai 2021"
  reference: "2021-12_Sujet-test-5-2021.pdf, exercice 6 (senior) ; corrigé 2021-05_Corrige-Web-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-test-5-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Sujet-test-5-2021.pdf"
---

## Statement

Pour tout entier $k \geqslant 0$, on note $F_k$ le $k$-ième nombre de Fibonacci, défini par $F_0 = 0$, $F_1 = 1$ et $F_k = F_{k-2} + F_{k-1}$ pour $k \geqslant 2$.

Soit $n \geqslant 2$ un entier, et soit $S$ un ensemble d'entiers qui a la propriété suivante :

> pour tout entier $k$ tel que $2 \leqslant k \leqslant n$, l'ensemble $S$ contient deux entiers $x$ et $y$ tels que $x - y = F_k$.

Quel est le plus petit nombre possible d'éléments d'un tel ensemble $S$ ?

## Hints

1. Commence par de petites valeurs : $n = 2, 3, 4, 5$. Écris les différences à obtenir et cherche à chaque fois le plus petit ensemble qui convient.
2. Pour construire un petit ensemble, essaie les nombres de Fibonacci d'indice pair : $F_0, F_2, F_4, \ldots$ Une différence de deux d'entre eux peut-elle valoir un $F_k$ d'indice impair ?
3. Pour la minoration, ne garde que les différences d'indice impair : $F_1 = F_2$, puis $F_3$, $F_5$, ... Démontre par récurrence que $F_1 + F_3 + \cdots + F_{2i-1} = F_{2i}$.
4. Range les éléments de $S$ en groupes. Au départ, chaque élément est seul dans son groupe. Pour $k = 1, 3, 5, \ldots$ dans cet ordre, choisis $x$ et $y$ dans $S$ avec $x - y = F_k$, et réunis le groupe de $x$ et celui de $y$. Montre que $x$ et $y$ ne sont jamais déjà dans le même groupe. Compte alors les groupes.

## Solution

On note $m$ le nombre d'entiers impairs entre 1 et $n$ : $m = \frac{n}{2}$ si $n$ est pair, et $m = \frac{n+1}{2}$ si $n$ est impair. On va montrer que **le plus petit nombre d'éléments est $m + 1$**.

**Une identité.** Pour tout entier $i \geqslant 1$,
$$F_1 + F_3 + \cdots + F_{2i-1} = F_{2i}.$$
On le démontre par récurrence sur $i$. Pour $i = 1$, on a bien $F_1 = 1 = F_2$. Si l'égalité est vraie pour un entier $i$, alors
$$F_1 + F_3 + \cdots + F_{2i-1} + F_{2i+1} = F_{2i} + F_{2i+1} = F_{2i+2},$$
qui est l'égalité au rang $i + 1$.

**Un ensemble à $m + 1$ éléments qui convient.** On prend les nombres de Fibonacci d'indice pair jusqu'à $F_{2m}$ :
$$S = \{F_0, F_2, F_4, \ldots, F_{2m}\}.$$
Ces $m + 1$ nombres sont distincts, car la suite $F_2, F_3, F_4, \ldots$ est strictement croissante. Soit $k$ un entier tel que $2 \leqslant k \leqslant n$.

- Si $k$ est pair, alors $k \leqslant n \leqslant 2m$, donc $F_k$ est dans $S$, et $F_k - F_0 = F_k$.
- Si $k$ est impair, alors $k + 1$ est pair et $k + 1 \leqslant 2m$ (car $k \leqslant 2m - 1$, le plus grand impair inférieur ou égal à $n$). Les nombres $F_{k-1}$ et $F_{k+1}$ sont dans $S$, et par définition de la suite, $F_{k+1} - F_{k-1} = F_k$.

Cet ensemble a donc la propriété demandée.

**Tout ensemble qui convient a au moins $m + 1$ éléments.** Soit $S$ un ensemble qui a la propriété. Il est fini ou non. S'il est infini, il n'y a rien à démontrer. Sinon, on note $N$ son nombre d'éléments.

On utilise seulement les $m$ différences d'indice impair $F_1, F_3, \ldots, F_{2m-1}$. Elles sont toutes présentes dans $S$ :

- comme $F_1 = F_2$ et $2 \leqslant n$, l'ensemble $S$ contient deux éléments dont la différence vaut $F_1$ ;
- pour $k$ impair avec $3 \leqslant k \leqslant n$, c'est la propriété de l'énoncé.

On range alors les éléments de $S$ en groupes. Au départ, il y a $N$ groupes, chacun formé d'un seul élément. Puis, pour $j = 1, 2, \ldots, m$ dans cet ordre, on fait l'opération suivante, que l'on appelle le *lien* $j$ :

> on choisit $x$ et $y$ dans $S$ tels que $x - y = F_{2j-1}$, puis on réunit le groupe de $x$ et le groupe de $y$ en un seul groupe.

Pour un groupe $G$, on appelle *étendue* de $G$ la différence entre son plus grand et son plus petit élément. On appelle *poids* de $G$ la somme des $F_{2j-1}$ pour les liens $j$ qui ont servi à le fabriquer. Un groupe d'un seul élément a une étendue et un poids nuls.

*Propriété : à tout moment, l'étendue d'un groupe est au plus égale à son poids.* C'est vrai au départ. Supposons que ce soit vrai juste avant le lien $j$, et que ce lien réunisse un groupe $G$ qui contient $x$ et un groupe $H$ qui contient $y$, distincts. Les éléments de $G$ sont dans un intervalle de longueur au plus $\mathrm{poids}(G)$ qui contient $x$, et ceux de $H$ dans un intervalle de longueur au plus $\mathrm{poids}(H)$ qui contient $y$. Comme $|x - y| = F_{2j-1}$, tous les éléments du nouveau groupe sont dans un intervalle de longueur au plus
$$\mathrm{poids}(G) + F_{2j-1} + \mathrm{poids}(H),$$
qui est exactement le poids du nouveau groupe. La propriété reste donc vraie.

*Au lien $j$, les nombres $x$ et $y$ sont toujours dans deux groupes différents.* Juste avant le lien $j$, seuls les liens $1, 2, \ldots, j - 1$ ont servi, chacun une seule fois. Le poids de n'importe quel groupe vaut donc au plus
$$F_1 + F_3 + \cdots + F_{2j-3}.$$
Pour $j = 1$, cette somme est vide et vaut 0, qui est inférieur à $F_1 = 1$. Pour $j \geqslant 2$, elle vaut $F_{2j-2}$ d'après l'identité, et $F_{2j-2} < F_{2j-2} + F_{2j-3} = F_{2j-1}$ car $F_{2j-3} \geqslant 1$. Dans les deux cas, toute étendue est strictement inférieure à $F_{2j-1}$. Or $x - y = F_{2j-1}$. Les nombres $x$ et $y$ ne peuvent donc pas être dans le même groupe.

*On compte les groupes.* Chaque lien réunit deux groupes différents en un seul, donc le nombre de groupes diminue de 1 exactement. Après les $m$ liens, il reste $N - m$ groupes. Il en reste au moins un, donc $N - m \geqslant 1$, c'est-à-dire
$$N \geqslant m + 1.$$

**Conclusion.** Le plus petit nombre possible d'éléments de $S$ est $m + 1$, c'est-à-dire **$\frac{n}{2} + 1$ si $n$ est pair, et $\frac{n+3}{2}$ si $n$ est impair.**

## Going further

- Pour $n = 5$, il faut obtenir les différences 1, 2, 3 et 5. L'ensemble $\{0, 1, 3, 8\}$ convient, et la solution montre qu'aucun ensemble de 3 éléments ne convient. Pour $n = 4$, l'ensemble $\{0, 1, 3\}$ suffit, alors qu'il faut obtenir trois différences avec seulement trois éléments.
- Les groupes de la solution sont ce qu'on appelle en théorie des graphes les *composantes connexes* d'un graphe sans cycle (une *forêt*). Le corrigé officiel dit : le graphe a $m$ arêtes et aucun cycle, donc il a au moins $m + 1$ sommets.
- Le corrigé propose aussi une récurrence de $n - 2$ à $n$, qui utilise l'identité $F_2 + F_3 + \cdots + F_{k-2} = F_k - 3$. Une erreur fréquente des candidats a été d'affirmer sans preuve qu'un plus petit ensemble pour $n$ contient un plus petit ensemble pour $n - 2$.
