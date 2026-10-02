---
id: "11019"
title: "Tous les entiers, et des produits qui sont des puissances n-ièmes"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [decomposition-en-facteurs-premiers, puissances, construction, suites, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 15 ; corrigé 2021-02_Corrige-envoi-3.pdf. Le corrigé choisit les exposants par le théorème chinois ; on donne ici une formule explicite. Le sujet indexe la suite par n ∈ N mais fait partir les produits de i = 1 ; on l'indexe ici à partir de 1."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Existe-t-il une suite infinie $a_1, a_2, a_3, \ldots$ d'entiers strictement positifs ayant les deux
propriétés suivantes ?

1. Tout entier strictement positif apparaît exactement une fois dans la suite.
2. Pour tout entier $n \geqslant 1$, le produit $a_1 a_2 \cdots a_n$ est la puissance $n$-ième d'un entier.

## Hints

1. Cherche les premiers termes à la main. Avec $a_1 = 1$, tu ne peux pas prendre $a_2 = 2$. Mais peux-tu
   placer $2$ un peu plus loin ?
2. Plutôt que de placer tout de suite le plus petit entier $n$ pas encore utilisé, glisse d'abord devant
   lui un terme « de service » $c$ bien choisi.
3. Un entier est une puissance $\ell$-ième exactement quand tous les exposants de sa décomposition en
   facteurs premiers sont des multiples de $\ell$. Pour chaque nombre premier, il te faut donc un exposant
   $g$ tel que $e + g$ soit un multiple de $\ell$ et $e + g + \alpha$ un multiple de $\ell + 1$.
4. Essaie $g = \ell\,(\alpha + (\ell + 1)s) - e$, avec $s$ un entier assez grand.

## Solution

**Réponse : oui.** On construit la suite étape par étape.

**Un outil.** Pour un entier $N \geqslant 1$ et un nombre premier $p$, notons $e_p(N)$ l'exposant de $p$
dans la décomposition de $N$ en facteurs premiers ($e_p(N) = 0$ si $p$ ne divise pas $N$). L'exposant
d'un produit est la somme des exposants, et

*$N$ est une puissance $\ell$-ième si et seulement si tous les exposants $e_p(N)$ sont des multiples de
$\ell$.*

En effet, si $N = M^\ell$, alors $e_p(N) = \ell\, e_p(M)$. Inversement, si chaque $e_p(N)$ s'écrit
$\ell f_p$, alors $N$ est la puissance $\ell$-ième du produit des $p^{f_p}$.

**Un premier essai.** Avec $a_1 = 1$, le nombre $2$ ne peut pas venir en deuxième position, car $1 \times 2$
n'est pas un carré. En revanche $a_2 = 4$, $a_3 = 2$ convient : les produits successifs sont $1 = 1^1$,
$1 \times 4 = 2^2$ et $1 \times 4 \times 2 = 2^3$. L'idée générale est la même : avant de placer un
nombre, on glisse devant lui un terme de service.

**L'étape de construction.** Supposons construits des termes $a_1, \ldots, a_{\ell - 1}$ (avec
$\ell \geqslant 2$), tous différents, tels que $a_1 \cdots a_k$ soit une puissance $k$-ième pour tout
$k \leqslant \ell - 1$. Notons $P = a_1 \cdots a_{\ell - 1}$, et $n$ le plus petit entier strictement positif
qui n'est pas encore dans la suite. On va choisir un entier $c$ et poser
$$a_\ell = c, \qquad a_{\ell + 1} = n ,$$
de façon que :

- (i) $P c$ soit une puissance $\ell$-ième ;
- (ii) $P c\, n$ soit une puissance $(\ell + 1)$-ième ;
- (iii) $c$ soit plus grand que $n$ et que tous les termes déjà écrits, pour qu'il soit nouveau et
  différent de $n$.

*Le choix des exposants.* Pour des entiers $e \geqslant 0$, $\alpha \geqslant 0$ et $s \geqslant 0$,
posons
$$g = \ell\,(\alpha + (\ell + 1)s) - e .$$
Alors
$$e + g = \ell\,(\alpha + (\ell + 1)s) \quad \text{est un multiple de } \ell ,$$
$$e + g + \alpha = (\ell + 1)\alpha + \ell(\ell + 1)s = (\ell + 1)(\alpha + \ell s) \quad \text{est un multiple de } \ell + 1 .$$
De plus $g \geqslant \ell(\ell + 1)s - e \geqslant 6s - e$, donc $g \geqslant 0$ dès que $s \geqslant e$.

*Le choix de $c$.* Considérons la liste finie des nombres premiers formée de $2$ et de tous les nombres
premiers qui divisent $P$ ou $n$. Prenons un entier $s$ supérieur ou égal à tous les exposants $e_p(P)$,
et posons
$$c = \prod_{p \text{ dans la liste}} p^{\,g_p}, \qquad g_p = \ell\,(e_p(n) + (\ell + 1)s) - e_p(P) .$$
Pour chaque $p$ de la liste, on applique ce qui précède avec $e = e_p(P)$ et $\alpha = e_p(n)$ : l'exposant
de $p$ dans $Pc$ est $e_p(P) + g_p$, multiple de $\ell$, et dans $Pcn$ il vaut $e_p(P) + g_p + e_p(n)$,
multiple de $\ell + 1$. Pour un nombre premier hors de la liste, l'exposant est nul dans $P$, $c$ et $n$, et
$0$ est un multiple de tout entier. D'après l'outil, (i) et (ii) sont vérifiées.

Enfin $g_2 \geqslant 6s - e_2(P) \geqslant 5s$, donc $c \geqslant 2^{5s}$. En prenant $s$ assez grand, on
obtient (iii).

On a ainsi prolongé la suite de deux termes, toujours tous différents, et la propriété 2 est vraie
jusqu'au rang $\ell + 1$ : jusqu'au rang $\ell - 1$ par hypothèse, puis grâce à (i) et (ii).

**La suite complète.** On part de $a_1 = 1 = 1^1$, et on répète
l'étape indéfiniment. On obtient une suite infinie dont les termes sont tous différents et qui vérifie la
propriété 2.

Chaque entier y apparaît. En effet, à chaque étape, on place le plus petit entier qui manquait encore ; le
plus petit entier manquant augmente donc d'au moins $1$ à chaque étape. Il vaut $2$ au départ, donc au
moins $k + 2$ après $k$ étapes, et un entier $m \geqslant 2$ a été placé au plus tard à l'étape $m - 1$.
Comme les termes sont tous différents, chaque entier apparaît exactement une fois.

**Conclusion.** Une telle suite existe.
