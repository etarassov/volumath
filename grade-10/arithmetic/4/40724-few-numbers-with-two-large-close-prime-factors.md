---
id: "40724"
title: "Peu d'entiers ont deux grands facteurs premiers voisins"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [nombres-premiers, multiples, denombrement, ensembles, majoration, telescopage, puissances-de-2]
adapted_from: null
see_also: ["40721", "40722", "40723", "40725"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 1 « Nombres pointus », partie III « Des ensembles à peu d'éléments », questions 11 à 13"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Pour tout entier $N \geq 1$, on note $\mathbb{P}_N$ l'ensemble des nombres premiers $p$ tels que
$N + 1 \leq p \leq 2N$, et $\pi_N$ le nombre d'éléments de $\mathbb{P}_N$. On admet que, pour tout
entier $N \geq 1$,

$$N^{\pi_N} \leq 2^{2N}.$$

Dans tout l'exercice, on fixe un entier $n \geq 2$, et on ne s'intéresse qu'aux entiers de $1$ à
$n$.

1. Soit $k$ un entier supérieur ou égal à $1$. On rappelle que $\mathbb{P}_{2^k}$ est l'ensemble des
   nombres premiers $p$ tels que $2^k + 1 \leq p \leq 2 \times 2^k$.

   a) Écrire la liste des éléments de $\mathbb{P}_{2^1}$ et de $\mathbb{P}_{2^2}$.

   On note $B_{k,1}$ l'ensemble des entiers $a \geq 1$ qui ont au moins un facteur premier dans
   $\mathbb{P}_{2^k}$, et $B_{k,2}$ l'ensemble des entiers $a \geq 1$ qui ont au moins deux facteurs
   premiers différents dans $\mathbb{P}_{2^k}$.

   b) Quel est le plus petit élément de $B_{2,2}$ ?

   c) Soit $p$ un nombre premier. Démontrer qu'il y a au plus $\frac{n}{p}$ multiples de $p$ entre
   $1$ et $n$.

   d) Démontrer que $B_{k,1}$ a au plus $\frac{n \times \pi_{2^k}}{2^k}$ éléments entre $1$ et $n$.

   e) En déduire que $B_{k,1}$ a au plus $\frac{2n}{k}$ éléments entre $1$ et $n$.

   f) Soit $p_1$ et $p_2$ deux nombres premiers différents. Démontrer qu'il y a au plus
   $\frac{n}{p_1 p_2}$ entiers entre $1$ et $n$ qui sont à la fois multiples de $p_1$ et de $p_2$.

   g) En déduire que $B_{k,2}$ a au plus $\frac{4n}{k^2}$ éléments entre $1$ et $n$.

2. Pour tout entier $k \geq 2$, on note $C_k$ l'ensemble des entiers qui sont à la fois dans
   $B_{k-1,1}$ et dans $B_{k,1}$, ou bien qui sont dans $B_{k,2}$ :
   $C_k = (B_{k-1,1} \cap B_{k,1}) \cup B_{k,2}$.

   a) Quel est le plus petit élément de $C_2$ ?

   b) Démontrer que $C_k$ a au plus $\frac{4n}{k^2} + \frac{4n}{k(k-1)}$ éléments entre $1$ et $n$.

3. On fixe un entier $\ell \geq 2$, et on note $D_\ell$ l'ensemble des entiers qui appartiennent à
   au moins l'un des ensembles $C_k$ avec $k \geq \ell$.

   a) Démontrer que tout élément de $D_\ell$ compris entre $1$ et $n$ appartient à l'un des
   ensembles $C_\ell, C_{\ell+1}, \ldots, C_n$.

   b) Démontrer que, pour tout entier $k \geq 2$,

   $$\frac{1}{k^2} + \frac{1}{k(k-1)} \leq \frac{2}{k-1} - \frac{2}{k}.$$

   c) En déduire que $D_\ell$ a au plus $\frac{8n}{\ell - 1}$ éléments entre $1$ et $n$.

## Hints

1. **Question 1 c).** Les multiples de $p$ s'écrivent $p \times j$. Quelles valeurs de $j$ donnent un
   nombre entre $1$ et $n$ ?
2. **Question 1 d).** Un élément de $B_{k,1}$ est un multiple de l'un des nombres premiers de
   $\mathbb{P}_{2^k}$. Compter les multiples de chacun et additionner, sans s'inquiéter de compter
   certains nombres plusieurs fois. Que sait-on de la taille de chaque $p$ de $\mathbb{P}_{2^k}$ ?
3. **Question 1 e).** Appliquer l'inégalité admise avec $N = 2^k$, et comparer deux puissances de
   $2$.
4. **Question 1 g).** Un élément de $B_{k,2}$ est multiple de $p_1$ et de $p_2$ pour un couple
   $(p_1, p_2)$ d'éléments de $\mathbb{P}_{2^k}$. Combien y a-t-il de couples au plus ? Et que
   vaut au moins le produit $p_1 p_2$ ?
5. **Question 2 b).** Un élément de $B_{k-1,1} \cap B_{k,1}$ est multiple d'un $p$ de
   $\mathbb{P}_{2^{k-1}}$ et d'un $q$ de $\mathbb{P}_{2^k}$. Ces deux nombres premiers peuvent-ils
   être égaux ?
6. **Question 3 a).** Un élément de $C_k$ a un facteur premier plus grand que $2^k$. Que peut-on en
   dire s'il est au plus $n$ ?
7. **Question 3 c).** Additionner les bornes de 2 b) pour $k = \ell, \ell + 1, \ldots, n$, puis
   utiliser 3 b) : presque tous les termes s'en vont.

## Solution

**1. a)** $\mathbb{P}_{2^1} = \mathbb{P}_2$ contient les nombres premiers entre $3$ et $4$ :
$\mathbb{P}_2 = \{3\}$. $\mathbb{P}_{2^2} = \mathbb{P}_4$ contient les nombres premiers entre $5$
et $8$ : $\mathbb{P}_4 = \{5, 7\}$.

**1. b)** Un élément de $B_{2,2}$ a au moins deux facteurs premiers différents dans $\{5, 7\}$, donc
il est multiple de $5$ et de $7$, donc de $35$. Et $35$ est bien dans $B_{2,2}$. Le plus petit
élément de $B_{2,2}$ est **$35$**.

**1. c)** Les multiples de $p$ entre $1$ et $n$ s'écrivent $p \times j$ avec $j$ entier et
$1 \leq p \times j \leq n$, c'est-à-dire $1 \leq j \leq \frac{n}{p}$. Il y a au plus $\frac{n}{p}$
entiers $j$ dans cet intervalle. Il y a donc au plus $\frac{n}{p}$ multiples de $p$ entre $1$ et
$n$.

**1. d)** Tout élément de $B_{k,1}$ compris entre $1$ et $n$ est un multiple d'au moins un nombre
premier $p$ de $\mathbb{P}_{2^k}$. Le nombre de ces éléments est donc au plus la somme, sur les
$\pi_{2^k}$ nombres premiers $p$ de $\mathbb{P}_{2^k}$, du nombre de multiples de $p$ entre $1$ et
$n$ (un nombre qui a plusieurs facteurs premiers dans $\mathbb{P}_{2^k}$ est compté plusieurs fois,
ce qui ne fait qu'augmenter la somme). D'après c), chaque terme est au plus $\frac{n}{p}$, et comme
$p \geq 2^k + 1 > 2^k$, on a $\frac{n}{p} < \frac{n}{2^k}$. La somme est donc au plus

$$\pi_{2^k} \times \frac{n}{2^k} = \frac{n \times \pi_{2^k}}{2^k}.$$

**1. e)** Avec $N = 2^k$, l'inégalité admise donne $(2^k)^{\pi_{2^k}} \leq 2^{2 \times 2^k}$,
c'est-à-dire $2^{k \pi_{2^k}} \leq 2^{2^{k+1}}$. Les puissances de $2$ sont rangées dans le même ordre
que leurs exposants, donc $k\,\pi_{2^k} \leq 2^{k+1}$, soit

$$\pi_{2^k} \leq \frac{2^{k+1}}{k}, \qquad \text{donc} \qquad \frac{n \times \pi_{2^k}}{2^k} \leq \frac{n}{2^k} \times \frac{2 \times 2^k}{k} = \frac{2n}{k}.$$

D'après d), $B_{k,1}$ a au plus $\frac{2n}{k}$ éléments entre $1$ et $n$.

**1. f)** Un entier $a$ multiple de $p_1$ et de $p_2$ contient $p_1$ et $p_2$ dans sa décomposition
en facteurs premiers. Comme $p_1 \neq p_2$, il contient le produit $p_1 p_2$ : $a$ est un multiple de
$p_1 p_2$. Le raisonnement de c), avec $p_1 p_2$ à la place de $p$, montre qu'il y a au plus
$\frac{n}{p_1 p_2}$ multiples de $p_1 p_2$ entre $1$ et $n$.

**1. g)** Tout élément de $B_{k,2}$ compris entre $1$ et $n$ est multiple de $p_1$ et de $p_2$, pour
deux éléments différents $p_1$, $p_2$ de $\mathbb{P}_{2^k}$. Il y a au plus $\pi_{2^k}^2$ couples
$(p_1, p_2)$ d'éléments de $\mathbb{P}_{2^k}$. Pour chacun, d'après f), il y a au plus
$\frac{n}{p_1 p_2}$ multiples communs, et $p_1 p_2 > 2^k \times 2^k = 4^k$, donc ce nombre est au plus
$\frac{n}{4^k}$. En additionnant, et avec la borne de e),

$$\pi_{2^k}^2 \times \frac{n}{4^k} \leq \left( \frac{2^{k+1}}{k} \right)^2 \times \frac{n}{4^k} = \frac{4 \times 4^k}{k^2} \times \frac{n}{4^k} = \frac{4n}{k^2}.$$

**2. a)** On a $B_{1,1}$ : les multiples de $3$ ; $B_{2,1}$ : les multiples de $5$ ou de $7$ ;
$B_{2,2}$ : les multiples de $35$. Le plus petit nombre multiple de $3$ et de $5$ ou $7$ est
$15$, et le plus petit élément de $B_{2,2}$ est $35$. Le plus petit élément de $C_2$ est **$15$**.

**2. b)** *Les éléments de $B_{k-1,1} \cap B_{k,1}$.* Un tel élément $a$ est multiple d'un nombre
premier $p$ de $\mathbb{P}_{2^{k-1}}$ et d'un nombre premier $q$ de $\mathbb{P}_{2^k}$. On a
$p \leq 2^k < q$, donc $p \neq q$, et $a$ est un multiple commun de $p$ et $q$. Il y a au plus
$\pi_{2^{k-1}} \times \pi_{2^k}$ couples $(p, q)$, et pour chacun au plus $\frac{n}{pq}$ multiples
communs entre $1$ et $n$, d'après 1. f). Comme $p > 2^{k-1}$ et $q > 2^k$, on a $pq > 2^{2k-1}$.
D'après 1. e), appliqué à $k - 1 \geq 1$ et à $k$, on a $\pi_{2^{k-1}} \leq \frac{2^k}{k-1}$ et
$\pi_{2^k} \leq \frac{2^{k+1}}{k}$. Le nombre d'éléments est donc au plus

$$\frac{2^k}{k-1} \times \frac{2^{k+1}}{k} \times \frac{n}{2^{2k-1}} = \frac{2^{2k+1}}{2^{2k-1}} \times \frac{n}{k(k-1)} = \frac{4n}{k(k-1)}.$$

*Les éléments de $B_{k,2}$* sont au plus $\frac{4n}{k^2}$ entre $1$ et $n$, d'après 1. g).

Un élément de $C_k$ est dans l'un des deux ensembles, donc $C_k$ a au plus
$\frac{4n}{k^2} + \frac{4n}{k(k-1)}$ éléments entre $1$ et $n$.

**3. a)** Soit $a$ un élément de $D_\ell$ avec $1 \leq a \leq n$, et $k \geq \ell$ tel que $a$ est
dans $C_k$. Dans les deux cas de la définition de $C_k$, $a$ est dans $B_{k,1}$ : il a un facteur
premier $p \geq 2^k + 1$. Comme $p \leq a \leq n$, on a $2^k < n$. Or $k < 2^k$ : c'est vrai pour $k = 1$, et quand on passe de $k$ à
$k + 1$, le nombre $k$ augmente de $1$ tandis que $2^k$ augmente de $2^k \geq 1$. Donc $k < n$. Ainsi
$\ell \leq k \leq n$ : $a$ appartient à l'un des ensembles $C_\ell, \ldots, C_n$. (Si $\ell > n$, il
n'y a aucun tel $a$.)

**3. b)** Pour $k \geq 2$, on a $k^2 \geq k(k-1) > 0$, donc $\frac{1}{k^2} \leq \frac{1}{k(k-1)}$.
Par ailleurs

$$\frac{2}{k-1} - \frac{2}{k} = \frac{2k - 2(k-1)}{k(k-1)} = \frac{2}{k(k-1)}.$$

Donc $\frac{1}{k^2} + \frac{1}{k(k-1)} \leq \frac{2}{k(k-1)} = \frac{2}{k-1} - \frac{2}{k}$.

**3. c)** Si $\ell > n$, $D_\ell$ n'a aucun élément entre $1$ et $n$ d'après a). Sinon, d'après a)
et 2. b), le nombre d'éléments de $D_\ell$ entre $1$ et $n$ est au plus la somme, pour
$k = \ell, \ell + 1, \ldots, n$, de $4n \left( \frac{1}{k^2} + \frac{1}{k(k-1)} \right)$. D'après b),
chaque terme est au plus $4n \left( \frac{2}{k-1} - \frac{2}{k} \right)$. Quand on additionne ces
majorants, les termes se simplifient deux à deux :

$$\left( \frac{2}{\ell - 1} - \frac{2}{\ell} \right) + \left( \frac{2}{\ell} - \frac{2}{\ell + 1} \right) + \cdots + \left( \frac{2}{n-1} - \frac{2}{n} \right) = \frac{2}{\ell - 1} - \frac{2}{n} \leq \frac{2}{\ell - 1}.$$

Le nombre d'éléments de $D_\ell$ entre $1$ et $n$ est donc au plus
$4n \times \frac{2}{\ell - 1} = \frac{8n}{\ell - 1}$.

**Bilan.** On a regardé les entiers qui ont deux facteurs premiers dans deux « tranches » voisines
$]2^{k-1} ; 2^k]$ et $]2^k ; 2^{k+1}]$, ou deux dans la même tranche, avec $k \geq \ell$. Parmi les
entiers de $1$ à $n$, il y en a au plus $\frac{8n}{\ell - 1}$ : en prenant $\ell$ grand, ils
forment une proportion aussi petite que l'on veut.

## Going further

- Ces ensembles servent à démontrer qu'il existe autant de nombres *pointus* consécutifs que l'on
  veut (un nombre est pointu s'il a au plus un facteur premier, ou si son plus grand facteur premier
  est au moins le double du suivant, voir l'exercice 40721). Si $p > q$ sont les deux plus grands facteurs premiers d'un nombre non
  pointu, et si $p > 2^\ell$, pouvez-vous montrer que ce nombre est dans $D_\ell$ ? La fin de la
  preuve est dans l'exercice 40725.
- L'inégalité admise au début est démontrée dans l'exercice 40722.
