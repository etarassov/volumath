---
id: "7722"
title: "La somme des inverses n'est jamais entière"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [parite, puissances de deux, fractions, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 après-midi (Cécile Gachet), exercice 7 (solution du document par récurrence forte ; celle donnée ici passe par la plus grande puissance de 2)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on pose

$$H_n = 1 + \frac{1}{2} + \frac{1}{3} + \cdots + \frac{1}{n} .$$

Déterminer tous les entiers $n \geqslant 1$ pour lesquels $H_n$ est un nombre entier.

## Hints

1. Calcule $H_1$, $H_2$, $H_3$, $H_4$, $H_5$. Que remarques-tu sur les dénominateurs une fois la fraction réduite ?
2. La réponse est : seulement $n = 1$. Il faut donc montrer que $H_n$ n'est jamais entier pour $n \geqslant 2$, et c'est le dénominateur pair qui va l'interdire.
3. Parmi $1, 2, \ldots, n$, considère la plus grande puissance de $2$, appelons-la $2^k$. Montre qu'elle n'apparaît qu'une seule fois : aucun autre nombre de la liste n'est divisible par $2^k$.
4. Multiplie $H_n$ par un nombre bien choisi, de façon que **tous** les termes deviennent entiers **sauf un**. Le nombre à choisir est $2^{k-1} \times P$, où $P$ est le produit de tous les nombres impairs inférieurs ou égaux à $n$.
5. Vérifie que le terme exceptionnel est celui de dénominateur $2^k$, et qu'il vaut $\dfrac{P}{2}$, avec $P$ impair.

## Solution

**Le seul entier $n$ pour lequel $H_n$ est entier est $n = 1$, où $H_1 = 1$.**

Les premières valeurs confirment ce qu'on va démontrer :

$$H_2 = \frac{3}{2}, \qquad H_3 = \frac{11}{6}, \qquad H_4 = \frac{25}{12}, \qquad H_5 = \frac{137}{60} .$$

Les dénominateurs sont pairs et les numérateurs impairs : c'est exactement ce que l'on va établir en général.

Fixons donc $n \geqslant 2$ et montrons que $H_n$ n'est pas un entier.

**Étape 1 : la plus grande puissance de $2$ ne sert qu'une fois.**

Soit $2^k$ la plus grande puissance de $2$ qui soit inférieure ou égale à $n$. Comme $n \geqslant 2$, on a $k \geqslant 1$, et par définition

$$2^k \leqslant n < 2^{k+1} .$$

> **Fait.** Parmi les entiers $1, 2, \ldots, n$, le seul multiple de $2^k$ est $2^k$ lui-même.

En effet, les multiples de $2^k$ sont $2^k$, $2 \times 2^k = 2^{k+1}$, $3 \times 2^k$, etc. Or $2^{k+1} > n$, donc tous les multiples à partir du deuxième dépassent $n$.

Autrement dit, si $j$ est un entier compris entre $1$ et $n$ et différent de $2^k$, alors $j$ s'écrit

$$j = 2^{a} \times b \qquad \text{avec } b \text{ impair et } a \leqslant k-1 .$$

(Si l'on avait $a \geqslant k$, le nombre $j$ serait un multiple de $2^k$, donc égal à $2^k$ d'après le Fait, ce qui est exclu.)

**Étape 2 : on multiplie par un nombre bien choisi.**

Notons $P$ le produit de **tous les nombres impairs compris entre $1$ et $n$** :

$$P = 1 \times 3 \times 5 \times \cdots$$

C'est un produit d'entiers impairs, donc $P$ est **impair**. Posons

$$A = 2^{\,k-1} \times P \times H_n = \sum_{j=1}^{n} \frac{2^{\,k-1} \, P}{j} .$$

Le facteur $2^{k-1}$ a bien un sens puisque $k \geqslant 1$.

Examinons chaque terme de la somme.

*Les termes avec $j \neq 2^k$.* Écrivons $j = 2^a b$ avec $b$ impair et $a \leqslant k-1$, comme à l'étape 1. Alors

$$\frac{2^{\,k-1} P}{j} = \frac{2^{\,k-1} P}{2^{a} b} = 2^{\,k-1-a} \times \frac{P}{b} .$$

Ici $b$ est un nombre impair compris entre $1$ et $n$, donc $b$ est l'un des facteurs de $P$ et $\dfrac{P}{b}$ est un entier. Et $k-1-a \geqslant 0$, donc $2^{\,k-1-a}$ est un entier. **Ce terme est donc un entier.**

*Le terme avec $j = 2^k$.* Ici $b = 1$ et $a = k$, donc

$$\frac{2^{\,k-1} P}{2^{k}} = \frac{P}{2} .$$

Comme $P$ est impair, $\dfrac{P}{2}$ **n'est pas un entier** : c'est un entier plus $\dfrac12$.

**Étape 3 : on conclut.**

En regroupant, $A$ est une somme d'entiers, plus $\dfrac{P}{2}$. Donc $A$ n'est pas un entier : c'est un nombre de la forme $m + \dfrac12$ avec $m$ entier.

Or si $H_n$ était un entier, alors

$$A = 2^{\,k-1} \times P \times H_n$$

serait un produit de trois entiers, donc un entier. Contradiction.

**Conclusion : pour tout $n \geqslant 2$, le nombre $H_n$ n'est pas entier. Le seul cas où $H_n$ est un entier est $n = 1$.**

## Going further

Vérifions la méthode sur $n = 6$. Ici $2^k = 4$, donc $k = 2$, et $P = 1 \times 3 \times 5 = 15$. On multiplie $H_6 = \dfrac{49}{20}$ par $2^{1} \times 15 = 30$ :

$$30 \, H_6 = 30 + 15 + 10 + \frac{15}{2} + 6 + 5 .$$

Les cinq termes entiers font $66$, et il reste $\dfrac{15}{2}$ : le total vaut $\text{73,5}$, qui n'est pas entier.

Le même raisonnement, mené avec la plus grande puissance d'un nombre premier $p$ au lieu de $2$, montre que la somme $\dfrac{1}{a} + \dfrac{1}{a+1} + \cdots + \dfrac{1}{b}$ n'est jamais entière dès que $b > a \geqslant 1$.
