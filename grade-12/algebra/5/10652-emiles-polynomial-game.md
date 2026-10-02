---
id: "10652"
title: "Le jeu d'Émile avec un polynôme"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [polynome, racines, jeu, parite, valeurs-intermediaires, derivee]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 18 ; corrigé 2023-01_corrige-envoi-2.pdf. Les passages « pour c assez grand » du corrigé sont remplacés ici par une majoration explicite."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $P(X)$ un polynôme unitaire de degré $2022$, à coefficients réels. Émile écrit $P(X)$ au tableau. Ensuite, à chaque étape, si le polynôme $f(X)$ est écrit au tableau, Émile peut le remplacer :

- soit par le polynôme $f(X) + c$, pour un réel $c$ de son choix ;
- soit par le polynôme $P(f(X))$.

Trouver tous les entiers $n \geqslant 0$ tels que, quel que soit le polynôme $P$ de départ, Émile puisse trouver une suite d'opérations après laquelle le polynôme écrit au tableau a exactement $n$ racines réelles distinctes.

## Hints

1. Montre que tous les polynômes écrits au tableau sont unitaires de degré pair. Pourquoi Émile peut-il toujours obtenir $0$ racine ?
2. Suppose qu'Émile sait obtenir un polynôme $f$ avec $n$ racines. Pour en obtenir $n + 2$, essaie $P(f(X) + a) - P(a)$, avec $a$ négatif et très grand en valeur absolue.
3. Pour obtenir un nombre impair de racines, regarde les « sommets » de la courbe de $P$, c'est-à-dire les points où $P'$ change de signe. Combien y en a-t-il, en parité ?
4. Pour montrer qu'un nombre impair plus petit que $2021$ ne marche pas toujours, essaie un polynôme pair qui a beaucoup de racines : $X^2(X^2 - 1)(X^2 - 2) \cdots (X^2 - 1010)$.

## Solution

On dit qu'un entier $n$ **marche** si, pour tout $P$, Émile peut obtenir un polynôme qui a exactement $n$ racines réelles distinctes. On va montrer que **$n$ marche si et seulement si $n$ est pair ou $n \geqslant 2021$.**

**Étape 0. Tous les polynômes du tableau sont unitaires de degré pair.**

C'est vrai pour $P$. Ajouter une constante ne change pas le terme de plus haut degré. Si $f$ est unitaire de degré $d$, alors $P(f(X))$ est unitaire de degré $2022\,d$, qui est pair.

**Étape 1. Un lemme sur les polynômes unitaires de degré pair.**

*Lemme.* Soit $g$ un polynôme unitaire de degré pair $d \geqslant 2$. Il existe des réels $B > 0$ et $M$ tels que :

- (a) $g(x) \geqslant -M$ pour tout réel $x$ ;
- (b) pour tout réel $c > M$, l'équation $g(x) = c$ a exactement deux solutions, l'une plus petite que $-B$ et l'autre plus grande que $B$.

*Preuve.* La dérivée $g'$ est un polynôme de degré impair $d - 1$, de coefficient dominant $d > 0$. Elle a un nombre fini de racines ; choisissons $B > 0$ plus grand que la valeur absolue de chacune. Sur $]B, +\infty[$, $g'$ ne s'annule pas, donc garde un signe constant (théorème des valeurs intermédiaires), et ce signe est $+$ car $g'(x) \to +\infty$ quand $x \to +\infty$. De même $g' < 0$ sur $]-\infty, -B[$, car $g'(x) \to -\infty$ quand $x \to -\infty$ (le degré de $g'$ est impair). Donc $g$ est strictement décroissante sur $]-\infty, -B]$ et strictement croissante sur $[B, +\infty[$.

Écrivons $g(x) = x^d + c_{d-1} x^{d-1} + \cdots + c_1 x + c_0$ et posons $M = B^d + |c_{d-1}| B^{d-1} + \cdots + |c_1| B + |c_0|$. Pour $|x| \leqslant B$, l'inégalité triangulaire donne $|g(x)| \leqslant M$.

- (a) Sur $[-B, B]$, on a $g(x) \geqslant -M$. Si $x \geqslant B$, alors $g(x) \geqslant g(B) \geqslant -M$, et si $x \leqslant -B$, alors $g(x) \geqslant g(-B) \geqslant -M$.
- (b) Soit $c > M$. Sur $[-B, B]$, $g(x) \leqslant M < c$ : pas de solution. Sur $[B, +\infty[$, $g$ est continue et strictement croissante, $g(B) < c$ et $g(x) \to +\infty$ : il y a exactement une solution, et elle est plus grande que $B$. De même, il y a exactement une solution sur $]-\infty, -B]$, plus petite que $-B$.

**Étape 2. Si $n$ marche, alors $n + 2$ marche.**

Soit $P$ donné, et supposons qu'Émile sait obtenir un polynôme $f$ avec exactement $n$ racines réelles distinctes. Appliquons le lemme à $P$ (nombres $B_P$ et $M_P$) et à $f$ (nombres $B_f$ et $M_f$).

Comme $P(a) \to +\infty$ quand $a \to -\infty$, on peut choisir un réel $a < 0$ tel que

$$a < -B_P, \qquad P(a) > M_P, \qquad -a > M_f$$

Par le lemme (b) appliqué à $P$ et $c = P(a)$, l'équation $P(x) = P(a)$ a exactement deux solutions : l'une est $a$, l'autre, notée $a'$, est plus grande que $B_P > 0$. Donc $a' - a > -a > M_f$.

Émile ajoute $a$ à $f$, compose par $P$, puis ajoute $-P(a)$. Il obtient $g(X) = P(f(X) + a) - P(a)$. Un réel $x$ est racine de $g$ si et seulement si $f(x) + a$ vaut $a$ ou $a'$, c'est-à-dire si et seulement si

$$f(x) = 0 \qquad \text{ou} \qquad f(x) = a' - a$$

La première équation a exactement $n$ solutions. La seconde en a exactement deux, par le lemme (b) appliqué à $f$, car $a' - a > M_f$. Ces solutions sont distinctes des premières, car $a' - a \neq 0$. Donc $g$ a exactement $n + 2$ racines réelles distinctes.

**Étape 3. Tous les entiers pairs marchent.**

Par le lemme (a) appliqué à $P$, si Émile remplace $P$ par $P + c$ avec $c > M_P$, il obtient un polynôme strictement positif, sans racine réelle. Donc $0$ marche, et par l'étape 2, tous les entiers pairs marchent.

**Étape 4. Tous les entiers impairs $n \geqslant 2021$ marchent.**

Appelons **sommet** de $P$ un réel $s$ où $P'$ change de signe : $P'$ est d'un signe strict juste avant $s$ et du signe opposé juste après.

*Le nombre de sommets est impair.* Rangeons les racines distinctes de $P'$ dans l'ordre croissant. Entre deux racines voisines, et avant la première, et après la dernière, $P'$ garde un signe constant. Par la preuve du lemme, ce signe est $-$ tout à gauche et $+$ tout à droite. On change donc de signe un nombre impair de fois en allant de gauche à droite, et les sommets sont exactement les racines où le signe change.

*Un bon niveau $c$.* Regroupons les sommets selon la valeur que $P$ y prend. Si chaque valeur était prise en un nombre pair de sommets, le nombre total de sommets serait pair. Il existe donc un réel $c$ tel que $P(s) = c$ pour un nombre impair de sommets $s$.

*Le polynôme $Q = P - c$ a un nombre impair de racines.* Soit $s$ une racine de $Q$. Choisissons $\varepsilon > 0$ assez petit pour que $P'$ ne s'annule pas sur $]s - \varepsilon, s[$ ni sur $]s, s + \varepsilon[$.

- Si $s$ n'est pas un sommet, $P'$ a le même signe strict des deux côtés, donc $P$ est strictement monotone sur $[s - \varepsilon, s + \varepsilon]$, et $Q$ change de signe en $s$.
- Si $s$ est un sommet, par exemple avec $P' < 0$ avant et $P' > 0$ après, alors $P$ décroît strictement jusqu'à $s$ puis croît strictement : $Q > 0$ des deux côtés de $s$, et $Q$ ne change pas de signe en $s$. L'autre cas est pareil, avec $Q < 0$ des deux côtés.

Par le lemme, $Q(x) > 0$ quand $x$ est très petit ou très grand. Donc, de gauche à droite, $Q$ change de signe un nombre pair de fois : les racines de $Q$ qui ne sont pas des sommets sont en nombre pair. Les racines de $Q$ qui sont des sommets sont exactement les sommets où $P$ vaut $c$ : elles sont en nombre impair. Au total, $Q$ a un nombre impair de racines réelles distinctes.

Comme $Q$ est de degré $2022$, il a au plus $2022$ racines, donc au plus $2021$ puisque ce nombre est impair. Émile peut écrire $Q = P + (-c)$ en une étape. Ensuite, par l'étape 2, il peut ajouter $2$ au nombre de racines autant de fois qu'il veut : il atteint $2021$, puis tout entier impair plus grand.

**Étape 5. Les entiers impairs $n \leqslant 2019$ ne marchent pas.**

Prenons $P_0(X) = X^2(X^2 - 1)(X^2 - 2) \cdots (X^2 - 1010)$. Il est unitaire de degré $2 + 2 \times 1010 = 2022$. Ses racines sont $0$ et $\pm\sqrt{k}$ pour $k = 1, \ldots, 1010$ : il en a $2021$.

*Forme des polynômes du tableau.* Montrons que tout polynôme écrit au tableau s'écrit $G(P_0(X))$ avec $G$ un polynôme non constant. Au départ, $G(X) = X$. Si le tableau porte $G(P_0(X))$, alors $G(P_0(X)) + c$ s'écrit $H(P_0(X))$ avec $H = G + c$, et $P_0(G(P_0(X)))$ s'écrit $H(P_0(X))$ avec $H(X) = P_0(G(X))$. Dans les deux cas, $H$ n'est pas constant.

*Parité.* Soient $\rho_1, \ldots, \rho_k$ les racines réelles distinctes de $G$. Un réel $x$ est racine de $G(P_0(X))$ si et seulement si $P_0(x)$ est l'un des $\rho_i$. Si $N_i$ est le nombre de solutions de $P_0(x) = \rho_i$, le nombre de racines réelles distinctes de $G(P_0(X))$ est donc $N_1 + \cdots + N_k$.

Le polynôme $P_0$ est pair : $P_0(-x) = P_0(x)$. Si $\rho_i \neq 0$, la valeur $0$ n'est pas solution de $P_0(x) = \rho_i$ (car $P_0(0) = 0$), et les solutions vont par paires $x$, $-x$ : $N_i$ est pair. Si $\rho_i = 0$, alors $N_i = 2021$.

Si le total $N_1 + \cdots + N_k$ est impair, l'un des $N_i$ est impair. C'est donc celui où $\rho_i = 0$, et le total est au moins $2021$. Avec ce polynôme $P_0$, Émile ne peut donc jamais obtenir un nombre impair de racines plus petit que $2021$.

**Conclusion : les entiers $n$ cherchés sont les entiers pairs et tous les entiers $n \geqslant 2021$. Autrement dit, seuls les entiers impairs de $1$ à $2019$ ne marchent pas.**
