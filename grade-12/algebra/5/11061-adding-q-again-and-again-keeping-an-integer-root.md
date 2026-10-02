---
id: "11061"
title: "Ajouter Q encore et encore en gardant une racine entière"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [polynomes, divisibilite, hors-programme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Seniors, exercice 15 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Un polynôme est dit *unitaire* si son coefficient dominant vaut $1$.

Soit $(P_n)_{n \geqslant 0}$ une suite de polynômes à coefficients entiers. On suppose qu'il existe un polynôme unitaire $Q$ à coefficients entiers tel que
$$P_{n+1} - P_n = Q \qquad \text{pour tout } n \geqslant 0 .$$
On suppose de plus que, pour tout $n \geqslant 0$, le polynôme $P_n$ a une racine entière.

Montrer qu'on est dans l'un des deux cas suivants :

- $P_0$ et $Q$ ont une racine entière en commun ;
- il existe un polynôme $R$ à coefficients entiers, de degré $1$, tel que $P_0 = R\,Q$.

## Hints

1. Exprime $P_n$ à l'aide de $P_0$, de $Q$ et de $n$. Appelle $x_n$ une racine entière de $P_n$.
2. Suppose que $P_0$ et $Q$ n'ont pas de racine entière commune. Montre que $Q(x_n) \neq 0$ et que les entiers $x_0, x_1, x_2, \ldots$ sont deux à deux distincts.
3. Comme $Q$ est unitaire, tu peux faire la division euclidienne $P_0 = Q\,R + S$ avec $R$ et $S$ à coefficients entiers et $S$ de degré plus petit que $Q$. Montre que $Q(x_n)$ divise $S(x_n)$, puis que $S = 0$.
4. Tu dois alors avoir $R(x_n) = -n$. Utilise le fait que $x_{n+1} - x_n$ divise $R(x_{n+1}) - R(x_n)$.

## Solution

**Rappel.** On utilise trois résultats sur les polynômes, qui ne sont pas au programme du lycée.

1. *Division par un polynôme unitaire.* Si $A$ et $B$ sont des polynômes à coefficients entiers et si $B$ est unitaire, il existe des polynômes $C$ et $D$ à coefficients entiers tels que $A = B\,C + D$, avec $D = 0$ ou $\deg D < \deg B$. On l'obtient comme une division posée : tant que le degré $k$ du reste est au moins $\deg B = d$, on lui retire $c\,X^{k-d} B$, où $c$ est son coefficient dominant. Comme le coefficient dominant de $B$ vaut $1$, tous les coefficients restent entiers.
2. *Nombre de racines.* Un polynôme non nul de degré $d$ a au plus $d$ racines. Donc un polynôme qui a une infinité de racines est le polynôme nul.
3. *Différences.* Si $A$ est à coefficients entiers et si $x$ et $y$ sont des entiers, alors $x - y$ divise $A(x) - A(y)$. En effet $x^k - y^k = (x - y)(x^{k-1} + x^{k-2}y + \cdots + y^{k-1})$ pour tout $k \geqslant 1$, et $A(x) - A(y)$ est une somme de termes $a_k\,(x^k - y^k)$.

**Mise en place.** Par récurrence, $P_n = P_0 + n\,Q$ pour tout $n \geqslant 0$. Pour chaque $n$, on choisit une racine entière $x_n$ de $P_n$ :
$$P_0(x_n) + n\,Q(x_n) = 0 . \qquad (1)$$

Supposons que $P_0$ et $Q$ n'ont pas de racine entière commune, et montrons qu'on est dans le second cas.

**Étape 1 : les $x_n$ sont deux à deux distincts.**

Si l'on avait $Q(x_n) = 0$, l'égalité (1) donnerait $P_0(x_n) = 0$, et $x_n$ serait une racine entière commune. Donc $Q(x_n) \neq 0$ pour tout $n$, et (1) donne
$$n = -\frac{P_0(x_n)}{Q(x_n)} .$$
Si $x_n = x_m$, les deux membres donnent donc $n = m$. Les entiers $x_n$ sont deux à deux distincts. En particulier, pour tout nombre $M$, seuls un nombre fini d'entre eux vérifient $|x_n| \leqslant M$.

**Étape 2 : $Q$ divise $P_0$.**

Par la division du rappel, $P_0 = Q\,R + S$ avec $R$ et $S$ à coefficients entiers, et $S = 0$ ou $\deg S < \deg Q$.

D'après (1), $P_0(x_n) = -n\,Q(x_n)$ est un multiple de l'entier $Q(x_n)$, donc
$$S(x_n) = P_0(x_n) - Q(x_n)\,R(x_n)$$
est aussi un multiple de $Q(x_n)$.

Si $Q$ est constant, il vaut $1$ car il est unitaire : on prend alors $R = P_0$ et $S = 0$, et il n'y a rien à démontrer. Sinon, $\deg S < \deg Q$ et $Q$ est unitaire, donc $\dfrac{S(x)}{Q(x)}$ tend vers $0$ quand $x$ tend vers $+\infty$ ou vers $-\infty$. Il existe donc $M$ tel que $|S(x)| < |Q(x)|$ pour tout $x$ avec $|x| > M$.

D'après l'étape 1, il y a une infinité d'indices $n$ avec $|x_n| > M$. Pour chacun, $S(x_n)$ est un multiple de $Q(x_n)$ et vérifie $|S(x_n)| < |Q(x_n)|$, donc $S(x_n) = 0$. Le polynôme $S$ a une infinité de racines distinctes, donc $S = 0$.

Ainsi $P_0 = Q\,R$ et, pour tout $n$, $P_n = Q\,(R + n)$.

**Étape 3 : $R$ est de degré 1.**

On a $Q(x_n)\,(R(x_n) + n) = P_n(x_n) = 0$ et $Q(x_n) \neq 0$, donc
$$R(x_n) = -n \qquad \text{pour tout } n \geqslant 0 .$$

D'après le rappel, $x_{n+1} - x_n$ divise $R(x_{n+1}) - R(x_n) = -(n + 1) + n = -1$. Donc $x_{n+1} - x_n$ vaut $1$ ou $-1$.

Le signe ne change jamais. En effet, si l'on avait $x_{n+1} = x_n + 1$ et $x_{n+2} = x_{n+1} - 1$ (ou l'inverse), on aurait $x_{n+2} = x_n$, ce qui contredit l'étape 1. Il existe donc $\varepsilon \in \{1, -1\}$ tel que $x_n = x_0 + \varepsilon\,n$ pour tout $n$.

Considérons le polynôme $T(Y) = R(Y) + \varepsilon\,(Y - x_0)$. Pour $Y = x_n = x_0 + \varepsilon n$, on a $\varepsilon\,(x_n - x_0) = \varepsilon^2 n = n$, donc
$$T(x_n) = R(x_n) + n = 0 .$$
Le polynôme $T$ a une infinité de racines distinctes, donc $T = 0$, c'est-à-dire
$$R(Y) = -\varepsilon\,(Y - x_0) .$$
C'est un polynôme à coefficients entiers de degré $1$, et $P_0 = R\,Q$.

**Conclusion.** Si $P_0$ et $Q$ n'ont pas de racine entière commune, alors $P_0 = R\,Q$ avec $R$ à coefficients entiers de degré $1$. On est donc toujours dans l'un des deux cas.

## Going further

1. Le second cas se produit vraiment. Par exemple, avec $Q = X^2 + 1$ et $P_0 = -X\,Q$, on a $P_n = (n - X)(X^2 + 1)$, qui a la racine entière $n$, et $X^2 + 1$ n'a aucune racine entière.
2. L'hypothèse « $Q$ unitaire » est indispensable. Avec $Q = 2$ et $P_0 = -X$, le polynôme $P_n = 2n - X$ a la racine entière $2n$ pour tout $n$. Pourtant $Q$ n'a aucune racine, et $P_0 = R\,Q$ forcerait $R = -\tfrac{1}{2}X$, qui n'est pas à coefficients entiers.
