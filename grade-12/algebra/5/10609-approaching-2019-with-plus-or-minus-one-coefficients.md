---
id: "10609"
title: "Approcher 2019 avec des coefficients ±1"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [polynome, puissances, approximation, numeration-binaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 16 ; corrigé 2020-01_corrige-commente-envoi-2.pdf. Dans le corrigé, la description de l'ordre des d-uplets est confuse (le sens de lecture annoncé ne correspond pas à l'exemple) ; la solution ci-dessous est réécrite avec des 0 et des 1."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Soit $t$ un nombre réel tel que $1 < t < 2$. Montrer que, pour tout entier $d$ assez grand, il existe un polynôme

$$P(X) = X^d + a_{d-1} X^{d-1} + \cdots + a_1 X + a_0$$

dont tous les coefficients $a_0, a_1, \ldots, a_{d-1}$ valent $1$ ou $-1$, et tel que

$$|P(t) - 2019| \leqslant 1$$

## Hints

1. Écris chaque coefficient sous la forme $a_k = 2b_k - 1$ avec $b_k \in \{0, 1\}$. Que devient $P(t)$ ? Il s'agit maintenant de choisir des puissances $t^k$ (celles où $b_k = 1$) dont la somme est proche d'un nombre donné.
2. Range les choix de $(b_0, \ldots, b_{d-1})$ comme on compte en binaire : $b_0$ est le chiffre des unités. Quand on passe d'un nombre au suivant, de combien la somme $\sum b_k t^k$ peut-elle augmenter ?
3. Passer au nombre suivant remplace $t^0 + t^1 + \cdots + t^{l-1}$ par $t^l$ pour un certain $l$. Montre que $t^l - (1 + t + \cdots + t^{l-1}) \leqslant 1$ en multipliant par $t - 1$.
4. Une suite de nombres qui part de $0$, finit à $M$, et ne monte jamais de plus de $1$ d'un coup (elle peut descendre) passe forcément à distance au plus $\frac{1}{2}$ de chaque nombre de $[0, M]$.

## Solution

Notons $M = 1 + t + t^2 + \cdots + t^{d-1}$. Comme $t > 1$, la formule de la somme des termes d'une suite géométrique donne $M = \frac{t^d - 1}{t - 1}$.

**Étape 1. Remplacer les $\pm 1$ par des $0$ et des $1$.**

Écrivons chaque coefficient sous la forme $a_k = 2b_k - 1$, où $b_k$ vaut $0$ (quand $a_k = -1$) ou $1$ (quand $a_k = 1$). Posons $S = b_0 + b_1 t + \cdots + b_{d-1} t^{d-1}$. Alors

$$P(t) = t^d + 2S - M$$

et l'inégalité $|P(t) - 2019| \leqslant 1$ s'écrit $|2S - (2019 + M - t^d)| \leqslant 1$, c'est-à-dire

$$|S - C| \leqslant \frac{1}{2} \qquad \text{avec} \qquad C = \frac{2019 + M - t^d}{2}$$

Il s'agit donc de choisir des $b_k$ pour que $S$ soit à distance au plus $\frac{1}{2}$ du nombre $C$.

**Étape 2. Pour $d \geqslant 2019$, le nombre $C$ est entre $0$ et $M$.**

- $C \geqslant 0$ : comme $0 < t - 1 < 1$, on a $M = \frac{t^d - 1}{t - 1} \geqslant t^d - 1$. Donc $2019 + M - t^d \geqslant 2018 > 0$.
- $C \leqslant M$ : cela revient à $2019 - t^d \leqslant M$. Or $M$ est une somme de $d$ termes tous au moins égaux à $1$, donc $M \geqslant d \geqslant 2019 > 2019 - t^d$.

**Étape 3. Compter en binaire.**

À chaque choix de $(b_0, b_1, \ldots, b_{d-1})$, associons l'entier $N = b_0 + 2b_1 + 4b_2 + \cdots + 2^{d-1} b_{d-1}$, écrit en binaire avec $b_0$ comme chiffre des unités. Quand $N$ va de $0$ à $2^d - 1$, on obtient chaque choix une fois. Notons $S_N$ la valeur de $S$ correspondante. Alors $S_0 = 0$ (tous les $b_k$ nuls) et $S_{2^d - 1} = M$ (tous les $b_k$ égaux à $1$).

Comment passe-t-on de $N$ à $N + 1$ ? Comme en base dix quand on ajoute $1$ à $1999$ : si les $l$ derniers chiffres de $N$ valent $1$ et le suivant vaut $0$, ces $l$ chiffres deviennent $0$ et le chiffre suivant devient $1$. Donc

$$S_{N+1} - S_N = t^l - (1 + t + \cdots + t^{l-1})$$

(si $l = 0$, la parenthèse est vide et la différence vaut $t^0 = 1$).

**Étape 4. La somme ne monte jamais de plus de $1$.**

Montrons que $t^l - (1 + t + \cdots + t^{l-1}) \leqslant 1$. C'est clair si $l = 0$. Si $l \geqslant 1$, multiplions par $t - 1 > 0$, ce qui ne change pas le sens de l'inégalité. Comme $(t - 1)(1 + t + \cdots + t^{l-1}) = t^l - 1$, l'inégalité devient

$$t^{l+1} - t^l - (t^l - 1) \leqslant t - 1$$

c'est-à-dire $t^{l+1} - 2t^l + 2 - t \leqslant 0$, soit $(t - 2)(t^l - 1) \leqslant 0$. C'est vrai, car $t - 2 < 0$ et $t^l - 1 \geqslant 0$.

Ainsi $S_{N+1} \leqslant S_N + 1$ pour tout $N$. Attention, la somme peut aussi descendre beaucoup d'un coup : cela ne gêne pas.

**Étape 5. Trouver le bon $N$.**

- Si $C \leqslant \frac{1}{2}$, alors $N = 0$ convient : $|S_0 - C| = C \leqslant \frac{1}{2}$.
- Sinon, $S_0 = 0 < C - \frac{1}{2}$, et $S_{2^d - 1} = M \geqslant C > C - \frac{1}{2}$. Soit $N$ le premier entier tel que $S_N \geqslant C - \frac{1}{2}$. Il vaut au moins $1$, et $S_{N-1} < C - \frac{1}{2}$. Par l'étape 4, $S_N \leqslant S_{N-1} + 1 < C + \frac{1}{2}$. Donc $C - \frac{1}{2} \leqslant S_N < C + \frac{1}{2}$.

Dans les deux cas, on a trouvé des $b_k$ tels que $|S - C| \leqslant \frac{1}{2}$. Le polynôme $P$ dont les coefficients sont $a_k = 2b_k - 1$ vérifie alors $|P(t) - 2019| \leqslant 1$.

**Conclusion : pour tout entier $d \geqslant 2019$, un tel polynôme existe.**

## Going further

Où a-t-on utilisé $t < 2$ ? À deux endroits, dans l'étape 2 et dans l'étape 4. Pour $t = 3$, montre que tout polynôme de la forme demandée vérifie $P(3) \geqslant \frac{3^d + 1}{2}$ : le résultat devient faux dès que $d$ est assez grand.
