---
id: "11854"
title: "Une grenouille qui revient en 0 au bout de p − 1 mouvements"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [denombrement, nombres premiers, restes, recurrence, rotations, telescopage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Seniors, exercice 16 ; corrigé 2023-07_corrige-envoi-5.pdf, première solution. Dans le corrigé, la ligne intermédiaire du calcul de s_{p-1}(k) - s_{p-1}(k+3) porte un signe faux, et la phrase de conclusion est mal recopiée ; le résultat final est juste."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Soit $p$ un nombre premier. Une grenouille est posée sur le point $0$ d'une droite graduée. À chaque seconde, elle fait un mouvement : soit elle reste sur place, soit elle saute de $1$ vers la droite, soit elle saute de $1$ vers la gauche.

On note $s_p$ le nombre de suites de $p - 1$ mouvements à l'issue desquelles la grenouille est revenue au point $0$.

Quel est le reste de la division de $s_p$ par $p$ ?

Par exemple, pour $p = 3$, on a $s_3 = 3$ : en deux mouvements, la grenouille peut rester deux fois sur place, sauter à droite puis à gauche, ou sauter à gauche puis à droite.

## Hints

1. Calcule $s_5$ et $s_7$ en notant, après chaque mouvement, de combien de façons la grenouille peut se trouver sur chaque point. Compare les restes obtenus.
2. Note $a_n(k)$ le nombre de suites de $n$ mouvements qui mènent la grenouille de $0$ à $k$. Exprime $a_n(k)$ à l'aide de $a_{n-1}(k-1)$, $a_{n-1}(k)$ et $a_{n-1}(k+1)$.
3. Les suites de $p$ mouvements sont plus faciles à étudier que celles de $p - 1$ mouvements. Fais « tourner » une suite de $p$ mouvements, en mettant le premier mouvement à la fin, et regarde combien de suites différentes on obtient ainsi. Qu'en déduis-tu pour le reste de $a_p(k)$ dans la division par $p$ ?
4. Montre que $a_{p-1}(k) - a_{p-1}(k+3) = a_p(k+1) - a_p(k+2)$, puis additionne ces égalités pour $k = 0, 3, 6, \ldots, 3(p-1)$.

## Solution

On code un mouvement par un nombre : $+1$ pour un saut à droite, $-1$ pour un saut à gauche, $0$ pour rester sur place. Une suite de $n$ mouvements est alors une liste $(m_1, m_2, \ldots, m_n)$ de nombres pris dans $\{-1, 0, 1\}$, et la grenouille arrive au point $m_1 + m_2 + \cdots + m_n$.

Pour tout entier $n \geqslant 0$ et tout entier relatif $k$, on note $a_n(k)$ le nombre de listes de longueur $n$, à valeurs dans $\{-1, 0, 1\}$, dont la somme vaut $k$. On cherche donc le reste de $s_p = a_{p-1}(0)$ dans la division par $p$.

Deux remarques simples serviront :

- une liste de longueur $n$ a une somme comprise entre $-n$ et $n$, donc $a_n(k) = 0$ dès que $k > n$ ;
- pour $k = n$, il n'y a qu'une liste, $(1, 1, \ldots, 1)$, donc $a_n(n) = 1$.

**Étape 1 : une relation de récurrence.** Pour $n \geqslant 1$ et tout $k$,
$$a_n(k) = a_{n-1}(k-1) + a_{n-1}(k) + a_{n-1}(k+1).$$
En effet, une liste de longueur $n$ et de somme $k$ se termine par $1$, par $0$ ou par $-1$. Si elle se termine par $1$, ses $n - 1$ premiers termes forment une liste de somme $k - 1$, et toute liste de longueur $n - 1$ et de somme $k - 1$ s'obtient ainsi une seule fois. De même, les listes qui se terminent par $0$ correspondent aux listes de longueur $n - 1$ et de somme $k$, et celles qui se terminent par $-1$ aux listes de somme $k + 1$.

**Étape 2 : les listes de longueur $p$.** Montrons que $a_p(k)$ est un multiple de $p$ pour tout entier $k$ différent de $0$, $p$ et $-p$, et que $a_p(p) = 1$.

Pour une liste $x = (x_1, x_2, \ldots, x_p)$ de longueur $p$, on appelle **rotation** de $x$ la liste $R(x) = (x_2, x_3, \ldots, x_p, x_1)$ : le premier terme passe à la fin. Une rotation ne change pas la somme. On note $R^2(x) = R(R(x))$, et ainsi de suite ; au bout de $p$ rotations, on retrouve $x$.

*Si $x$ n'est pas constante, les $p$ listes $x, R(x), R^2(x), \ldots, R^{p-1}(x)$ sont deux à deux distinctes.* Supposons au contraire que $R^i(x) = R^j(x)$ avec $0 \leqslant i < j \leqslant p - 1$, et posons $h = j - i$, de sorte que $1 \leqslant h \leqslant p - 1$. On convient de lire les indices modulo $p$, c'est-à-dire $x_{p+1} = x_1$, $x_{p+2} = x_2$, etc. Le terme numéro $t$ de $R^i(x)$ est $x_{t+i}$, donc l'égalité $R^i(x) = R^j(x)$ dit que $x_{t+i} = x_{t+j}$ pour tout $t$, autrement dit $x_s = x_{s+h}$ pour tout indice $s$. On en tire
$$x_1 = x_{1+h} = x_{1+2h} = \cdots = x_{1+(p-1)h}.$$
Or les $p$ indices $1, 1 + h, 1 + 2h, \ldots, 1 + (p-1)h$ ont des restes deux à deux différents dans la division par $p$. Sinon, deux d'entre eux, $1 + ah$ et $1 + bh$ avec $0 \leqslant b < a \leqslant p - 1$, auraient le même reste, et $p$ diviserait leur différence $(a - b)h$. Comme $p$ est premier, il diviserait $a - b$ ou $h$ (un nombre premier qui divise un produit divise l'un des facteurs, ce que dit l'unicité de la décomposition en facteurs premiers). C'est impossible, car $a - b$ et $h$ sont tous deux compris entre $1$ et $p - 1$. Ces $p$ indices désignent donc tous les termes de $x$, et ils sont tous égaux : $x$ est constante, ce qui est contraire à l'hypothèse.

*Les listes non constantes se rangent par paquets de $p$.* Le paquet d'une liste $x$ est l'ensemble de ses rotations $x, R(x), \ldots, R^{p-1}(x)$ ; toutes ont la même somme. Si $y$ est une rotation de $x$, toute rotation de $y$ est une rotation de $x$, et inversement $x$ est une rotation de $y$ (il suffit de continuer à faire tourner $y$ jusqu'à $p$ rotations au total). Les paquets de $x$ et de $y$ sont donc les mêmes. Ainsi deux paquets sont soit égaux, soit sans liste commune, et d'après le point précédent chaque paquet d'une liste non constante contient exactement $p$ listes. Parmi les listes de somme $k$, le nombre de listes non constantes est donc un multiple de $p$.

*Les listes constantes* sont seulement $(0, \ldots, 0)$, de somme $0$, $(1, \ldots, 1)$, de somme $p$, et $(-1, \ldots, -1)$, de somme $-p$. Pour $k$ différent de $0$, $p$ et $-p$, il n'y en a aucune de somme $k$, donc $a_p(k)$ est un multiple de $p$. Et $a_p(p) = 1$, comme on l'a vu.

**Étape 3 : un télescopage.** Écrivons la relation de l'étape 1 avec $n = p$, en $k + 1$ et en $k + 2$ :
$$a_p(k+1) = a_{p-1}(k) + a_{p-1}(k+1) + a_{p-1}(k+2),$$
$$a_p(k+2) = a_{p-1}(k+1) + a_{p-1}(k+2) + a_{p-1}(k+3).$$
En soustrayant, il reste
$$a_{p-1}(k) - a_{p-1}(k+3) = a_p(k+1) - a_p(k+2).$$
Écrivons cette égalité pour $k = 0, 3, 6, \ldots, 3(p-1)$, c'est-à-dire $k = 3j$ avec $j$ allant de $0$ à $p - 1$, et additionnons les $p$ égalités obtenues. À gauche, presque tout se simplifie :
$$(a_{p-1}(0) - a_{p-1}(3)) + (a_{p-1}(3) - a_{p-1}(6)) + \cdots = a_{p-1}(0) - a_{p-1}(3p).$$
Comme $3p > p - 1$, on a $a_{p-1}(3p) = 0$, et la somme de gauche vaut $s_p$. On obtient
$$s_p = \sum_{j=0}^{p-1} (a_p(3j+1) - a_p(3j+2)).$$

**Étape 4 : conclusion.** Dans cette somme, les nombres $3j + 1$ et $3j + 2$ parcourent les entiers de $1$ à $3p - 1$ qui ne sont pas multiples de $3$. Aucun d'eux ne vaut $0$ ou $-p$. D'après l'étape 2, chaque terme $a_p(3j+1)$ ou $a_p(3j+2)$ est donc un multiple de $p$, sauf peut-être celui d'indice $p$, qui vaut $1$, et seulement si $p$ figure dans la liste.

- Si $p = 3$, l'entier $p$ est un multiple de $3$, il ne figure pas dans la liste, et $s_p$ est une somme de multiples de $3$ : le reste est $0$. On retrouve bien $s_3 = 3$.
- Si $p$ a pour reste $1$ dans la division par $3$, alors $p = 3j + 1$ pour un $j$ entre $0$ et $p - 1$, et le terme $a_p(p) = 1$ apparaît avec le signe $+$. Donc $s_p = 1 + (\text{un multiple de } p)$, et le reste est $1$.
- Si $p$ a pour reste $2$ dans la division par $3$, alors $p = 3j + 2$, et le terme $a_p(p) = 1$ apparaît avec le signe $-$. Donc $s_p = -1 + (\text{un multiple de } p) = (p - 1) + (\text{un multiple de } p)$, et le reste est $p - 1$.

**Conclusion.** Le reste de $s_p$ dans la division par $p$ vaut $0$ si $p = 3$, vaut $1$ si $p$ a pour reste $1$ dans la division par $3$, et vaut $p - 1$ si $p$ a pour reste $2$ dans la division par $3$ (en particulier pour $p = 2$, où $s_2 = 1$).

Vérification sur les premières valeurs : $s_5 = 19 = 3 \times 5 + 4$ et $5$ a pour reste $2$ dans la division par $3$ ; $s_7 = 141 = 20 \times 7 + 1$ et $7$ a pour reste $1$.

## Going further

- Les nombres $a_n(0)$, qui valent $1, 1, 3, 7, 19, 51, 141, 393, \ldots$, s'appellent les **nombres trinomiaux centraux** : $a_n(0)$ est le coefficient de $X^n$ dans le développement de $(1 + X + X^2)^n$.
- L'argument des rotations de l'étape 2 démontre aussi le petit théorème de Fermat. Pour un entier $a \geqslant 1$, il y a $a^p$ listes de longueur $p$ à valeurs dans $\{1, 2, \ldots, a\}$, dont $a$ constantes. Les $a^p - a$ autres se rangent par paquets de $p$, donc $p$ divise $a^p - a$.
- Le corrigé officiel propose une seconde solution, au niveau de la spécialité maths expertes : on calcule modulo $p$ la somme des valeurs de $(1 + X + X^2)^{p-1}$ en $0, 1, \ldots, p - 1$ avec le petit théorème de Fermat, ce qui ramène la question au nombre de solutions de $x^2 + x + 1 \equiv 0 \pmod p$.
