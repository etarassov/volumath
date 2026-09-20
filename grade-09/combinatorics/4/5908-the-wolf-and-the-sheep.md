---
id: "5908"
title: "Le loup et les moutons"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [echiquier, denombrement, optimisation, diagonales, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Wolves & Sheep (Julia Robinson Mathematics Festival)"
  reference: "Wolves-Sheep.pdf, question 7, et Wolves-Sheep-Teacher-Guide.pdf, « Challenge #3 »"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/Wolves-Sheep.pdf"
---

## Statement

On dispose d'un plateau carré de $n$ lignes et $n$ colonnes. On y pose **un loup**, sur une case, puis des **moutons**, au plus un par case.

Le loup dévore tout mouton qui se trouve sur sa ligne, sur sa colonne, ou sur l'une de ses deux diagonales, à n'importe quelle distance. Rien ne l'arrête : un autre mouton placé entre eux ne protège personne.

Un mouton est *en sécurité* lorsque le loup ne peut pas l'atteindre.

Quel est le plus grand nombre de moutons que l'on peut mettre en sécurité, si l'on choisit au mieux la case du loup ? Donner la réponse en fonction de $n$ et la démontrer.

## Hints

1. Commence sur un plateau $4 \times 4$, puis $5 \times 5$. Essaie le loup dans un coin, puis au milieu d'un bord, puis au centre. Que vaut ton record à chaque fois ?
2. Un mouton est en sécurité exactement quand sa case n'est ni sur la ligne, ni sur la colonne, ni sur une diagonale du loup. Le nombre cherché est donc simplement le nombre de cases que le loup ne surveille pas.
3. Commence par le cas facile : le loup dans un coin. Quelles cases restent ? Compte-les, la réponse est jolie.
4. Pour montrer qu'aucune autre position ne fait mieux : enlève du plateau la ligne et la colonne du loup. Combien de cases reste-t-il ? Et combien d'entre elles sont sur une diagonale du loup ?
5. Il s'agit donc de montrer que les deux diagonales du loup contiennent toujours au moins $n-1$ cases en plus de celle du loup. Note $a$, $b$, $c$, $d$ les nombres de cases situées au-dessus, au-dessous, à gauche et à droite du loup, avec $a + b = c + d = n - 1$, et exprime la longueur de chaque diagonale.

## Solution

**Réponse : $(n-1)(n-2)$ moutons, en posant le loup sur une case du bord.**

Pour $n = 4$ cela fait $3 \times 2 = 6$ moutons, pour $n = 5$ cela fait $4 \times 3 = 12$, et pour un plateau $100 \times 100$ cela fait $99 \times 98 = 9702$.

### Reformulation

Les moutons ne se gênent pas entre eux : un mouton est en sécurité si et seulement si sa case n'est surveillée par personne. On peut donc remplir toutes les cases non surveillées. **Le nombre cherché est le nombre de cases que le loup ne surveille pas.**

### On atteint $(n-1)(n-2)$

Mettons le loup dans le coin en haut à gauche, case $(1,1)$.

Il surveille toute la première ligne, toute la première colonne, et la grande diagonale $(1,1), (2,2), \ldots, (n,n)$. Sa seconde diagonale sort tout de suite du plateau : elle ne contient aucune autre case.

Les cases restantes sont donc les cases $(k, \ell)$ avec $k \geq 2$ et $\ell \geq 2$, c'est-à-dire un carré de $(n-1) \times (n-1)$ cases, dont il faut retirer les cases $(2,2), (3,3), \ldots, (n,n)$ de la diagonale, au nombre de $n-1$.

Il reste
$$(n-1)^2 - (n-1) = (n-1)(n-2)$$
cases libres, donc autant de moutons en sécurité.

### On ne peut pas faire mieux

Plaçons maintenant le loup n'importe où et comptons.

Enlevons du plateau la ligne et la colonne du loup. Il reste un tableau de $(n-1) \times (n-1)$ cases. Parmi celles-ci, il faut encore retirer les cases des deux diagonales du loup (la case du loup, elle, a déjà été enlevée). Donc

$$\text{cases libres} = (n-1)^2 - \big(\text{nombre de cases des deux diagonales, celle du loup exclue}\big).$$

Il suffit donc de montrer que **les deux diagonales du loup contiennent toujours au moins $n-1$ cases autres que celle du loup**.

Notons

- $a$ le nombre de cases au-dessus du loup, $b$ le nombre en dessous : $a + b = n-1$ ;
- $c$ le nombre de cases à gauche, $d$ le nombre à droite : $c + d = n-1$.

*Première diagonale (celle qui descend vers la droite).* En partant du loup et en montant vers la gauche, on fait autant de pas qu'on peut : on est arrêté soit par le haut, soit par la gauche, donc on parcourt $\min(a, c)$ cases. De même, en descendant vers la droite, on parcourt $\min(b, d)$ cases. Cette diagonale contient donc $\min(a,c) + \min(b,d)$ cases autres que celle du loup.

*Seconde diagonale (celle qui descend vers la gauche).* Le même raisonnement donne $\min(a, d) + \min(b, c)$ cases autres que celle du loup.

Au total, le nombre de cases des deux diagonales autres que celle du loup vaut
$$\big(\min(a,c) + \min(b,c)\big) + \big(\min(a,d) + \min(b,d)\big).$$

**Un petit lemme.** Si $a + b = n - 1$ et si $c$ est un entier compris entre $0$ et $n-1$, alors
$$\min(a,c) + \min(b,c) \geq c.$$

*Démonstration.* Si $c \leq a$, alors $\min(a,c) = c$ et l'autre terme est positif ou nul : la somme est au moins $c$. Même chose si $c \leq b$. Sinon $c > a$ et $c > b$, et alors $\min(a,c) + \min(b,c) = a + b = n-1 \geq c$. $\square$

En appliquant le lemme deux fois, une fois avec $c$ et une fois avec $d$ :
$$\big(\min(a,c) + \min(b,c)\big) + \big(\min(a,d) + \min(b,d)\big) \geq c + d = n-1.$$

Donc le nombre de cases libres est au plus
$$(n-1)^2 - (n-1) = (n-1)(n-2).$$

### Conclusion

Le maximum vaut $(n-1)(n-2)$, et il est atteint en posant le loup dans un coin.

*Remarque.* Le coin n'est pas la seule bonne place : le calcul ci-dessus donne l'égalité dès que $a = 0$, $b = 0$, $c = 0$ ou $d = 0$, c'est-à-dire **dès que le loup est sur une case du bord**. En revanche, au centre du plateau il surveille beaucoup plus de cases, et le nombre de moutons en sécurité tombe nettement.

## Going further

1. Vérifie sur un plateau $5 \times 5$ que le loup au centre ne laisse que $8$ moutons en sécurité, contre $12$ depuis un bord.
2. Avec deux loups sur un plateau $5 \times 5$, quel est le plus grand nombre de moutons en sécurité ?
3. Combien de loups faut-il, au minimum, pour qu'aucun mouton ne soit en sécurité sur un plateau $5 \times 5$ ? Et sur un plateau $8 \times 8$ ?
4. Le loup ne se déplace plus qu'en ligne et en colonne, plus en diagonale. Que devient le nombre maximum de moutons en sécurité ?
