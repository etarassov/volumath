---
id: "12201"
title: "Une verte par ligne, une bleue par colonne ou par ligne"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, coloriage, tableau, inegalite, exponentielle, comparaison]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection pour le Romanian Master of Mathematics, novembre 2014"
  reference: "2017-10_ofm-2014-2015-test-rmm.pdf, exercice 1 ; corrigé 2017-10_ofm-2014-2015-test-rmm-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-rmm.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-rmm.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On veut colorier les $n^2$ cases d'un tableau carré $n \times n$ : $n$ cases en vert, $n$ cases en bleu, et toutes les autres en rouge. Chaque case reçoit une seule couleur.

- On note $A$ le nombre de coloriages qui ont **exactement une case verte dans chaque ligne** et **exactement une case bleue dans chaque colonne**.
- On note $B$ le nombre de coloriages qui ont **exactement une case verte dans chaque ligne** et **exactement une case bleue dans chaque ligne**.

Lequel des deux nombres $A$ et $B$ est le plus grand ?

## Hints

1. Commence par un petit cas : pour $n = 2$, compte $A$ et $B$ à la main.
2. Dans les deux cas, il y a une case verte par ligne. Place d'abord les cases vertes, puis compte de combien de façons on peut placer les cases bleues **une fois les vertes fixées**.
3. Pour $B$, les vertes étant placées, chaque ligne a $n - 1$ cases libres. Pour $A$, note $v_j$ le nombre de cases vertes de la colonne $j$ : combien de choix reste-t-il dans cette colonne ?
4. Il faut alors comparer le produit $(n - v_1)(n - v_2)\cdots(n - v_n)$ avec $(n-1)^n$, sachant que $v_1 + v_2 + \cdots + v_n = n$. Écris $n - v_j = (n-1)(1 + t_j)$ et utilise l'inégalité $1 + t \leqslant e^{t}$.

## Solution

**Réponse : $B > A$.**

**Étape 1. On place d'abord les cases vertes.**

Dans les deux sortes de coloriages, il y a exactement une case verte par ligne. On peut donc fabriquer chaque coloriage en deux temps : on choisit d'abord la position des $n$ cases vertes (une par ligne), puis on place les $n$ cases bleues sur des cases encore libres.

Fixons une position $V$ des cases vertes, avec une verte par ligne, et comptons les façons de placer les bleues.

**Étape 2. Les bleues, une par ligne.**

Dans chaque ligne, une case est déjà verte, il reste $n - 1$ cases libres, et on en choisit une pour le bleu. Les choix dans les différentes lignes sont indépendants, donc il y a

$$(n-1)^n$$

façons de placer les bleues. Ce nombre ne dépend pas de $V$.

**Étape 3. Les bleues, une par colonne.**

Notons $v_j$ le nombre de cases vertes dans la colonne numéro $j$. Comme il y a $n$ cases vertes en tout, $v_1 + v_2 + \cdots + v_n = n$.

Dans la colonne $j$, il reste $n - v_j$ cases libres, et on en choisit une pour le bleu. Les choix dans les différentes colonnes sont indépendants, donc il y a

$$P(V) = (n - v_1)(n - v_2)\cdots(n - v_n)$$

façons de placer les bleues. Ce nombre, lui, dépend de $V$.

**Étape 4. On compare $P(V)$ et $(n-1)^n$.**

Montrons que $P(V) \leqslant (n-1)^n$, avec égalité seulement quand chaque colonne contient exactement une case verte.

Si l'un des $v_j$ vaut $n$ (toute une colonne est verte), alors $P(V) = 0 < (n-1)^n$. Sinon, tous les facteurs $n - v_j$ sont strictement positifs. Posons

$$t_j = \frac{1 - v_j}{n - 1}, \qquad \text{de sorte que} \qquad n - v_j = (n-1)(1 + t_j).$$

La somme des $t_j$ est nulle :

$$t_1 + \cdots + t_n = \frac{n - (v_1 + \cdots + v_n)}{n-1} = \frac{n - n}{n-1} = 0.$$

On utilise maintenant l'inégalité $1 + t \leqslant e^{t}$, vraie pour tout réel $t$, avec égalité seulement pour $t = 0$ (la courbe de l'exponentielle est au-dessus de sa tangente en $0$). Tous les nombres $1 + t_j$ sont strictement positifs, on peut donc multiplier ces inégalités membre à membre :

$$(1 + t_1)(1 + t_2)\cdots(1 + t_n) \leqslant e^{t_1} e^{t_2} \cdots e^{t_n} = e^{t_1 + \cdots + t_n} = e^0 = 1.$$

En multipliant par $(n-1)^n$, on obtient $P(V) \leqslant (n-1)^n$. L'égalité demande que tous les $t_j$ soient nuls, c'est-à-dire $v_1 = v_2 = \cdots = v_n = 1$.

**Étape 5. On additionne sur toutes les positions des vertes.**

$B$ est la somme, sur toutes les positions $V$, du nombre $(n-1)^n$, et $A$ est la somme, sur les mêmes positions $V$, du nombre $P(V)$. Chaque terme de $A$ est inférieur ou égal au terme correspondant de $B$. De plus, au moins un terme est strictement plus petit : si on met toutes les cases vertes dans la première colonne, on obtient $P(V) = 0$ alors que $(n-1)^n \geqslant 1$. Donc $A < B$.

**Conclusion : pour tout $n \geqslant 2$, il y a strictement plus de coloriages avec une bleue par ligne que de coloriages avec une bleue par colonne : $B > A$.**

Vérification pour $n = 2$ : il y a $4$ positions des vertes. Chacune donne $1$ coloriage avec une bleue par ligne, donc $B = 4$. Pour $A$, seules les $2$ positions où les vertes sont dans des colonnes différentes donnent un coloriage (un seul chacune), donc $A = 2$.

## Going further

On peut éviter l'exponentielle par un argument de « rééquilibrage ». Si une colonne contient au moins deux vertes ($v_i \geqslant 2$), une autre colonne n'en contient aucune ($v_j = 0$), puisque la somme vaut $n$. Remplaçons $(v_i, v_j)$ par $(v_i - 1, 1)$ : le produit des deux facteurs concernés passe de $(n - v_i)\,n$ à $(n - v_i + 1)(n - 1) = n(n - v_i) + v_i - 1$, qui est strictement plus grand. En répétant, on arrive à tous les $v_j$ égaux à $1$, où le produit vaut $(n-1)^n$ : c'est donc le maximum.

Pour $n = 3$, on trouve $A = 156$ et $B = 216$.
