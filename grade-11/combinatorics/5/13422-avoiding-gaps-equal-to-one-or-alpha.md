---
id: "13422"
title: "Éviter les écarts égaux à 1 ou à α"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [partie-entiere, irrationnel, parite, coloriage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve lycée, exercice 15 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf. L'énoncé recopié dans le corrigé dit « n impair », le sujet dit « n strictement positif » ; la solution du corrigé traite les deux parités, on suit le sujet."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On dit qu'un ensemble d'indices $I \subset \{1, 2, \ldots, n\}$ est **bon** pour une liste de réels $a_1, \ldots, a_n$ si, pour tous $i$ et $j$ dans $I$, la différence $a_i - a_j$ n'est jamais égale à $1$.

1. Déterminer, en fonction de $n$, le plus grand entier $r$ tel que : pour tous réels $a_1, \ldots, a_n$, il existe un ensemble bon formé de $r$ indices.
2. Soit $\alpha$ un nombre irrationnel. On change la définition : désormais $I$ est bon si, pour tous $i$ et $j$ dans $I$, la différence $a_i - a_j$ n'est égale ni à $1$, ni à $\alpha$. Déterminer, en fonction de $n$, le plus grand entier $r$ tel que : pour tous réels $a_1, \ldots, a_n$, il existe un ensemble bon formé de $r$ indices.

On rappelle qu'un nombre irrationnel est un réel qui ne peut pas s'écrire $\frac{a}{b}$ avec $a$ et $b$ entiers et $b \neq 0$.

## Hints

1. Essaie la liste $a_i = i$, c'est-à-dire $1, 2, \ldots, n$. Combien d'indices peux-tu garder au plus ? Cela donne une borne supérieure pour $r$, dans les deux questions.
2. Pour la question 1, regarde la partie entière $\lfloor a_i \rfloor$ de chaque nombre. Si $a_i - a_j = 1$, que dire des parties entières de $a_i$ et de $a_j$ ? Pense à leur parité.
3. Pour la question 2, regroupe les nombres dont la différence peut s'écrire $m + p\alpha$, avec $m$ et $p$ entiers. Pourquoi, comme $\alpha$ est irrationnel, cette écriture est-elle unique ?
4. Dans chaque groupe, choisis un nombre de départ $c$. Tout autre nombre du groupe s'écrit $c + m + p\alpha$. Colorie-le selon la parité de $m + p$.

## Solution

On note $\lceil \frac{n}{2} \rceil$ le plus petit entier supérieur ou égal à $\frac{n}{2}$ : il vaut $\frac{n}{2}$ si $n$ est pair, et $\frac{n + 1}{2}$ si $n$ est impair. On va montrer que **la réponse est $r = \lceil \frac{n}{2} \rceil$ dans les deux questions.**

Une remarque utile pour les deux questions : si l'on partage les $n$ indices en deux paquets, l'un des deux contient au moins $\frac{n}{2}$ indices, donc, comme c'est un nombre entier, au moins $\lceil \frac{n}{2} \rceil$ indices.

### On ne peut pas faire mieux que $\lceil \frac{n}{2} \rceil$

Prenons $a_i = i$ pour tout $i$, c'est-à-dire la liste $1, 2, 3, \ldots, n$. Rangeons les indices par paires : $\{1, 2\}$, $\{3, 4\}$, $\{5, 6\}$, et ainsi de suite, avec, si $n$ est impair, l'indice $n$ tout seul à la fin. Cela fait $\lceil \frac{n}{2} \rceil$ paquets.

Dans une paire $\{2j - 1, 2j\}$, on a $a_{2j} - a_{2j - 1} = 1$ : un ensemble bon ne peut pas contenir les deux. Il contient donc au plus un indice de chaque paquet, soit au plus $\lceil \frac{n}{2} \rceil$ indices.

Cette liste ne dépend pas de $\alpha$, et un ensemble bon au sens de la question 2 est aussi bon au sens de la question 1. Dans les deux questions, on a donc $r \leqslant \lceil \frac{n}{2} \rceil$.

### Question 1 : on trouve toujours $\lceil \frac{n}{2} \rceil$ indices

Prenons une liste quelconque $a_1, \ldots, a_n$. On note $\lfloor x \rfloor$ la partie entière d'un réel $x$, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

Si $a_i - a_j = 1$, alors $a_i = a_j + 1$, et donc $\lfloor a_i \rfloor = \lfloor a_j \rfloor + 1$. Les deux parties entières sont deux entiers consécutifs : l'une est paire et l'autre impaire.

Partageons les indices en deux paquets : ceux pour lesquels $\lfloor a_i \rfloor$ est pair, et ceux pour lesquels $\lfloor a_i \rfloor$ est impair. Dans un même paquet, deux nombres ont des parties entières de même parité, donc leur différence n'est jamais $1$ : **chaque paquet est un ensemble bon.** L'un des deux contient au moins $\lceil \frac{n}{2} \rceil$ indices.

Avec la borne précédente, la réponse à la question 1 est $r = \lceil \frac{n}{2} \rceil$.

### Question 2 : on trouve encore $\lceil \frac{n}{2} \rceil$ indices

L'idée est la même, mais il faut une « parité » qui change à la fois quand on ajoute $1$ et quand on ajoute $\alpha$.

**L'écriture $m + p\alpha$ est unique.** Supposons que $m + p\alpha = m' + p'\alpha$ avec $m, p, m', p'$ entiers. Si $p \neq p'$, on aurait $\alpha = \frac{m - m'}{p' - p}$, un quotient de deux entiers, ce qui est impossible car $\alpha$ est irrationnel. Donc $p = p'$, puis $m = m'$.

**Des groupes.** Rangeons les nombres $a_1, \ldots, a_n$ en groupes : deux nombres sont dans le même groupe quand leur différence s'écrit $m + p\alpha$ avec $m$ et $p$ entiers. Ces groupes sont bien définis : si $a - b$ et $b - c$ sont de cette forme, alors $a - c = (a - b) + (b - c)$ l'est aussi. Deux nombres de groupes différents n'ont donc jamais une différence égale à $1$ ou à $\alpha$, qui sont de cette forme ($1 = 1 + 0\alpha$ et $\alpha = 0 + 1\alpha$).

**Une couleur dans chaque groupe.** Dans chaque groupe, on choisit un nombre de départ $c$. Tout nombre $a$ du groupe s'écrit $a = c + m + p\alpha$, avec $m$ et $p$ entiers, et d'une seule façon d'après la remarque sur l'unicité. On colorie $a$ en **rouge** si $m + p$ est pair, et en **bleu** si $m + p$ est impair.

Si $a_i - a_j = 1$, les deux nombres sont dans le même groupe, et si $a_j = c + m + p\alpha$, alors $a_i = c + (m + 1) + p\alpha$ : la somme passe de $m + p$ à $m + p + 1$, elle change de parité. De même, si $a_i - a_j = \alpha$, alors $a_i = c + m + (p + 1)\alpha$, et la parité change aussi. Dans les deux cas, $a_i$ et $a_j$ sont de couleurs différentes.

Ainsi, deux nombres de la même couleur, qu'ils soient dans le même groupe ou non, n'ont jamais une différence égale à $1$ ou à $\alpha$. **Les indices rouges forment un ensemble bon, et les indices bleus aussi.** L'un des deux contient au moins $\lceil \frac{n}{2} \rceil$ indices.

Avec la borne du début, la réponse à la question 2 est aussi $r = \lceil \frac{n}{2} \rceil$.

**Conclusion.** Dans les deux questions, le plus grand entier possible est $r = \lceil \frac{n}{2} \rceil$, c'est-à-dire $\frac{n}{2}$ si $n$ est pair et $\frac{n + 1}{2}$ si $n$ est impair.

*Pourquoi $\alpha$ doit être irrationnel.* Avec $\alpha = 2$ et la liste $0, 1, 2$, chacune des trois différences $1 - 0$, $2 - 1$ et $2 - 0$ vaut $1$ ou $2$ : on ne peut garder qu'un seul indice, alors que $\lceil \frac{3}{2} \rceil = 2$.

## Going further

Reprendre la question 2 avec deux irrationnels $\alpha$ et $\beta$, en interdisant les différences $1$, $\alpha$ et $\beta$. Montrer que, si aucune égalité $m + p\alpha + q\beta = 0$ n'est possible avec $m, p, q$ entiers non tous nuls, la réponse est encore $\lceil \frac{n}{2} \rceil$. Que se passe-t-il avec $\alpha = \sqrt{2}$ et $\beta = \sqrt{2} + 1$ ?
