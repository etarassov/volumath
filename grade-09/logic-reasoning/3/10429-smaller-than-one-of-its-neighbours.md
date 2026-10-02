---
id: "10429"
title: "Plus petit que l'un de ses voisins"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [maximum, contre-exemple, raisonnement-par-l-absurde, suites-finies]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier, et soient $a_1, a_2, \ldots, a_n$ des nombres réels écrits en ligne, dans cet ordre. Pour deux nombres $x$ et $y$, on note $\max(x, y)$ le plus grand des deux (leur valeur commune s'ils sont égaux).

Les nombres $a_2, a_3, \ldots, a_{n-1}$ sont ceux qui ne sont pas au bout de la ligne : chacun d'eux a deux voisins.

1. On suppose que chacun de ces nombres est strictement plus petit que l'un de ses deux voisins :
   $$a_i < \max(a_{i-1}, a_{i+1}) \qquad \text{pour tout } i \in \{2, 3, \ldots, n - 1\} .$$
   Montrer que chacun de ces nombres est strictement plus petit que l'un des deux nombres des bouts :
   $$a_i < \max(a_1, a_n) \qquad \text{pour tout } i \in \{2, 3, \ldots, n - 1\} .$$
2. On suppose seulement que $a_i \leqslant \max(a_{i-1}, a_{i+1})$ pour tout $i \in \{2, 3, \ldots, n - 1\}$. Est-il vrai que $a_i \leqslant \max(a_1, a_n)$ pour tout $i \in \{2, 3, \ldots, n - 1\}$ ?

## Hints

1. Regarde le plus grand des nombres $a_1, a_2, \ldots, a_n$. À quelle place de la ligne peut-il se trouver ?
2. Si ce plus grand nombre était l'un des $a_i$ avec $2 \leqslant i \leqslant n - 1$, que dirait l'hypothèse sur ses deux voisins ?
3. Pour la question 2, traite à part le cas $n = 3$. Pour $n \geqslant 4$, essaie une ligne qui n'utilise que deux valeurs différentes.

## Solution

**Question 1.** Notons $M$ le plus grand des nombres $a_1, a_2, \ldots, a_n$, et $k$ une place où il est atteint : $a_k = M$.

*Le maximum est à un bout.* Supposons que $2 \leqslant k \leqslant n - 1$. L'hypothèse donne $a_k < \max(a_{k-1}, a_{k+1})$. Mais les deux voisins sont au plus égaux à $M$, donc $\max(a_{k-1}, a_{k+1}) \leqslant M$. On obtiendrait $M < M$, ce qui est impossible. Donc $k = 1$ ou $k = n$.

Ainsi l'un des deux nombres $a_1$, $a_n$ vaut $M$, et l'autre est au plus égal à $M$. Donc $\max(a_1, a_n) = M$.

*Conclusion.* Soit $i \in \{2, \ldots, n - 1\}$. Par hypothèse, et parce que les voisins de $a_i$ sont au plus égaux à $M$,

$$a_i < \max(a_{i-1}, a_{i+1}) \leqslant M = \max(a_1, a_n) .$$

C'est l'inégalité demandée.

**Question 2.** La réponse dépend de $n$.

*Si $n = 3$, c'est vrai.* Il n'y a qu'un nombre qui n'est pas au bout, $a_2$, et ses deux voisins sont justement $a_1$ et $a_3$. L'hypothèse $a_2 \leqslant \max(a_1, a_3)$ est donc exactement la conclusion.

*Si $n \geqslant 4$, c'est faux.* Prenons $a_1 = a_n = 1$, et tous les autres nombres égaux à $2$. Par exemple, pour $n = 4$, la ligne est

$$1, \quad 2, \quad 2, \quad 1 .$$

Vérifions l'hypothèse. Soit $i \in \{2, \ldots, n - 1\}$, de sorte que $a_i = 2$. Au moins un voisin de $a_i$ n'est pas au bout de la ligne : pour $i = 2$, c'est $a_3$, car $3 \leqslant n - 1$ ; pour $i = n - 1$, c'est $a_{n-2}$, car $n - 2 \geqslant 2$ ; pour les autres $i$, ce sont les deux voisins. Ce voisin vaut $2$, donc $\max(a_{i-1}, a_{i+1}) = 2$, et l'on a bien $a_i = 2 \leqslant 2$.

Pourtant $a_2 = 2$ et $\max(a_1, a_n) = 1$, donc $a_2 > \max(a_1, a_n)$. La conclusion est fausse.

**Où la démonstration de la question 1 ne marche plus.** Avec « $\leqslant$ », le plus grand nombre peut se trouver au milieu de la ligne, à condition d'avoir un voisin qui lui est égal. C'est ce qui se passe avec les deux $2$ côte à côte.

**Conclusion.** 1. C'est démontré. 2. C'est vrai pour $n = 3$, et faux pour tout $n \geqslant 4$.

## Going further

1. Dans la question 2 avec $n \geqslant 4$, on suppose en plus que les nombres $a_1, \ldots, a_n$ sont deux à deux différents. La conclusion devient-elle vraie ?
2. Sous l'hypothèse de la question 1, montrer que, dès que la ligne cesse de descendre, elle monte strictement jusqu'au bout : si $a_j \leqslant a_{j+1}$ pour un indice $j \leqslant n - 2$, alors $a_{j+1} < a_{j+2} < \cdots < a_n$.
