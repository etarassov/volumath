---
id: "7515"
title: "La somme des chiffres d'une moitié"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, somme-des-chiffres, division-par-deux, retenues, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 115 (solution p. 259, résolu par Nathanaël Courant)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Deux nombres $A$ et $B$ sont pairs, et ils s'écrivent avec exactement les mêmes chiffres, seulement rangés dans un ordre différent.

Par exemple $A = 15\,652$ et $B = 55\,216$.

Montrer que la somme des chiffres de $\dfrac{A}{2}$ est égale à la somme des chiffres de $\dfrac{B}{2}$.

## Hints

1. Vérifie sur l'exemple : $15\,652 \div 2 = 7\,826$ et $55\,216 \div 2 = 27\,608$. Les sommes de chiffres valent-elles bien la même chose ?
2. L'idée est de montrer que la somme des chiffres de $A/2$ ne dépend **que de la liste des chiffres** de $A$, pas de leur ordre.
3. Divise en deux temps : d'abord remplace chaque chiffre par la moitié de sa partie paire, puis occupe-toi des chiffres impairs. Qu'est-ce qu'un chiffre impair « laisse » à son voisin de droite ?
4. Après la première étape tous les chiffres sont au plus $4$. Pourquoi est-ce important ?
5. Le chiffre des unités de $A$ est pair. Pourquoi cela simplifie-t-il la fin du raisonnement ?

## Solution

**Étape 1. Comment on divise par 2, chiffre par chiffre.**

Écrivons $A$ avec ses chiffres :

$$A = c_k\,10^k + c_{k-1}\,10^{k-1} + \cdots + c_1\,10 + c_0.$$

Divisons chaque terme séparément. Pour un chiffre $c$ :

Si $c$ est pair :

$$\frac{c \cdot 10^i}{2} = \frac{c}{2}\cdot 10^i.$$

Si $c$ est impair :

$$\frac{c \cdot 10^i}{2} = \frac{c-1}{2}\cdot 10^i + \frac{10^i}{2} = \left\lfloor \frac{c}{2}\right\rfloor 10^i \;+\; 5 \cdot 10^{\,i-1}.$$

Autrement dit : chaque chiffre devient sa **moitié arrondie vers le bas**, et un chiffre impair **ajoute $5$ au rang immédiatement à droite**.

Comme $A$ est pair, son chiffre des unités $c_0$ est pair : il n'y a donc rien à « faire déborder » au-delà de la virgule, et le résultat est bien un entier.

**Étape 2. Il n'y a jamais de retenue.**

Regardons le chiffre de rang $i$ du nombre $A/2$. Il vaut $\left\lfloor \dfrac{c_i}{2}\right\rfloor$ si le chiffre $c_{i+1}$ est pair, et

$$\left\lfloor \frac{c_i}{2}\right\rfloor + 5$$

si le chiffre $c_{i+1}$ est impair.

Or $\left\lfloor \dfrac{c_i}{2}\right\rfloor \leqslant \left\lfloor \dfrac{9}{2}\right\rfloor = 4$. Donc ce nombre vaut au plus $4 + 5 = 9$ : **c'est bien un chiffre**, et aucune retenue ne se propage. Les chiffres de $A/2$ sont donc exactement ces nombres-là.

**Étape 3. On somme.**

La somme des chiffres de $A/2$ vaut donc

$$S(A/2) = \sum_{i} \left\lfloor \frac{c_i}{2}\right\rfloor \;+\; 5 \times m,$$

où $m$ désigne le nombre de rangs $i \geqslant 1$ pour lesquels $c_i$ est impair.

Et comme $c_0$ est pair, ce nombre $m$ est tout simplement le nombre de chiffres impairs de $A$. D'où

$$\boxed{\,S(A/2) \;=\; \sum_{c \text{ chiffre de } A} \left\lfloor \frac{c}{2}\right\rfloor \;+\; 5 \times (\text{nombre de chiffres impairs de } A).\,}$$

**Étape 4. On conclut.**

Le membre de droite ne dépend que de la **liste** des chiffres de $A$, et pas du tout de l'ordre dans lequel ils sont écrits. Comme $B$ a exactement les mêmes chiffres que $A$, et qu'il est lui aussi pair, la même formule lui donne la même valeur. Donc

$$S(A/2) = S(B/2).$$

**Vérification sur l'exemple.** Les chiffres sont $1, 5, 6, 5, 2$. On a $\left\lfloor 1/2\right\rfloor + \left\lfloor 5/2\right\rfloor + \left\lfloor 6/2\right\rfloor + \left\lfloor 5/2\right\rfloor + \left\lfloor 2/2\right\rfloor = 0+2+3+2+1 = 8$, et il y a trois chiffres impairs. La formule donne $8 + 15 = 23$. Et en effet $7+8+2+6 = 23$ et $2+7+6+0+8 = 23$.

## Going further

L'hypothèse « $A$ et $B$ sont pairs » est indispensable, et pas seulement pour que les divisions tombent juste : c'est elle qui garantit que le dernier chiffre ne produit pas de reste, et donc que la formule de l'étape 3 compte bien **tous** les chiffres impairs.

On peut d'ailleurs pousser plus loin : la formule montre que la somme des chiffres de $A/2$ vaut au plus $4 \times (\text{nombre de chiffres}) + 5 \times (\text{nombre de chiffres impairs})$. Sais-tu construire un nombre pair de $5$ chiffres dont la moitié a la plus grande somme de chiffres possible ?
