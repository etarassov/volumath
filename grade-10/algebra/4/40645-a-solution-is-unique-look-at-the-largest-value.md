---
id: "40645"
title: "Chaque point bleu est la moyenne de ses voisins : la solution est unique"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [moyenne, graphe, voisins, principe-extremal, maximum, unicite, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40643", "40644", "8836"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème II « Un si discret Monsieur Dirichlet », partie B « Étude du cas général », sous-partie « Unicité de la solution », questions 4 à 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

Soit $\mathcal{S}$ un ensemble fini de points du plan. Certaines paires de points de
$\mathcal{S}$ sont reliées par des traits, de sorte qu'en suivant les traits on peut aller de
n'importe quel point à n'importe quel autre (un point n'est jamais relié à lui-même). Deux points
reliés par un trait sont dits *voisins*. Le *degré* $d(M)$ d'un point $M$ est son nombre de
voisins.

Chaque point est colorié en jaune ou en bleu, et il y a au moins un point jaune. On note
$\mathcal{J}$ l'ensemble des points jaunes. On se donne une fonction $k$ de $\mathcal{J}$ dans
$\mathbb{R}$ (un nombre par point jaune), que l'on appelle une *attribution*, et l'on note $K$
le plus grand des nombres $k(M)$ pour $M \in \mathcal{J}$.

Une *solution pour l'attribution $k$* est une fonction $f : \mathcal{S} \to \mathbb{R}$ telle que

- **(1)** $f(M) = k(M)$ si $M$ est jaune ;
- **(2)** si $M$ est bleu, de degré $d = d(M)$ et de voisins $P_1, \ldots, P_d$ :
  $$f(M) = \frac{f(P_1) + \cdots + f(P_d)}{d}.$$

Autrement dit, la valeur en chaque point bleu est la moyenne des valeurs en ses voisins. Dans
tout l'exercice, $f$ est une solution pour l'attribution $k$.

1. Démontrer que $f(M) \leqslant K$ pour tout point $M \in \mathcal{S}$.
2. Soit $g$ une autre solution pour la même attribution $k$.

   a) Justifier que la fonction $f - g$ vérifie la condition (2).

   b) Que vaut $f - g$ sur $\mathcal{J}$ ?

   c) En déduire que $f = g$.
3. Que peut-on dire de $f$ s'il n'y a qu'un seul point jaune ?

## Hints

1. **Question 1.** L'ensemble $\mathcal{S}$ est fini : $f$ prend une plus grande valeur $m$, en
   un point $M_0$. Raisonner par l'absurde en supposant $m > K$. Le point $M_0$ peut-il être
   jaune ?
2. **Question 1.** Si un point bleu porte la plus grande valeur $m$, que dire des valeurs de ses
   voisins ? (Une moyenne de nombres tous inférieurs ou égaux à $m$ ne peut valoir $m$ que
   si...)
3. **Question 1.** Suivre un chemin de traits qui va de $M_0$ à un point jaune.
4. **Question 2 c.** La fonction $f - g$ est une solution pour une attribution très simple.
   Appliquer la question 1 à $f - g$, puis à $g - f$.
5. **Question 3.** Essayer une fonction constante.

## Solution

**1.** L'ensemble $\mathcal{S}$ est fini, donc $f$ prend une plus grande valeur $m$, atteinte en
un point $M_0$. Supposons, par l'absurde, que $m > K$.

*Un point de valeur $m$ est bleu.* En effet, en un point jaune $M$, $f(M) = k(M) \leqslant K < m$.

*Si un point bleu $M$ a la valeur $m$, tous ses voisins ont la valeur $m$.* En effet, soit
$P_1, \ldots, P_d$ ses voisins. On a $f(P_j) \leqslant m$ pour tout $j$, car $m$ est la plus
grande valeur. Si l'un des $f(P_j)$ était strictement plus petit que $m$, la somme
$f(P_1) + \cdots + f(P_d)$ serait strictement plus petite que $dm$, et la moyenne $f(M)$
strictement plus petite que $m$ : contradiction.

*Conclusion.* Il y a au moins un point jaune $Y$, et on peut aller de $M_0$ à $Y$ en suivant des
traits : il existe des points $M_0 = Q_0, Q_1, \ldots, Q_r = Y$ tels que $Q_i$ et $Q_{i+1}$ sont
voisins. Le point $Q_0$ a la valeur $m$. Si $Q_i$ a la valeur $m$, il est bleu (premier point),
donc son voisin $Q_{i+1}$ a la valeur $m$ (deuxième point). De proche en proche, $Y = Q_r$ a la
valeur $m$. Mais $Y$ est jaune, donc sa valeur est au plus $K < m$ : c'est absurde.

**Conclusion :** $m \leqslant K$, c'est-à-dire $f(M) \leqslant K$ pour tout $M \in \mathcal{S}$.

**2.** a) Soit $M$ un point bleu, de voisins $P_1, \ldots, P_d$. Comme $f$ et $g$ vérifient (2),
$$(f - g)(M) = \frac{f(P_1) + \cdots + f(P_d)}{d} - \frac{g(P_1) + \cdots + g(P_d)}{d} = \frac{(f - g)(P_1) + \cdots + (f - g)(P_d)}{d}.$$

b) Si $M$ est jaune, $f(M) = g(M) = k(M)$, donc $(f - g)(M) = 0$.

c) D'après a) et b), $h = f - g$ est une solution pour l'attribution nulle, celle qui vaut $0$ en
chaque point jaune. Le plus grand nombre de cette attribution est $0$, donc, d'après la question
1 appliquée à $h$, $f(M) - g(M) \leqslant 0$ pour tout $M$. En échangeant les rôles de $f$ et
$g$, la fonction $g - f$ est aussi une solution pour l'attribution nulle, donc
$g(M) - f(M) \leqslant 0$ pour tout $M$.

**Conclusion :** $f(M) = g(M)$ pour tout $M$ : il y a au plus une solution.

**3.** Soit $Y$ l'unique point jaune et $c = k(Y)$. La fonction constante égale à $c$ est une
solution : elle vaut $c$ en $Y$, et en chaque point bleu, la moyenne des valeurs des voisins est
$\frac{c + \cdots + c}{d} = c$. D'après la question 2, c'est la seule.

**Conclusion :** s'il n'y a qu'un point jaune, $f$ est constante, égale au nombre choisi pour ce
point jaune.

**Bilan.** Si le schéma est relié et contient au moins un point jaune, une solution prend partout
des valeurs inférieures ou égales au plus grand nombre attribué aux points jaunes. On en déduit
qu'il existe au plus une solution : les nombres que Maryam doit attribuer aux points bleus sont
entièrement déterminés par ceux de Gustav.

## Going further

- En appliquant la question 1 à la fonction $-f$, montrer aussi que $f(M)$ est toujours supérieur
  ou égal au plus petit des nombres attribués aux points jaunes.
- L'hypothèse « on peut aller de tout point à tout autre » est indispensable. Trouver un schéma
  non relié, avec au moins un point jaune, pour lequel Maryam a plusieurs solutions.
- Dans la suite du sujet, on montrait qu'une solution existe toujours (exercice 40644). Les
  premiers exemples sont dans l'exercice 40643. La même idée (regarder la plus grande valeur)
  sert dans l'exercice 8836, où des nombres écrits sur un cercle sont chacun la moyenne de leurs
  deux voisins.
