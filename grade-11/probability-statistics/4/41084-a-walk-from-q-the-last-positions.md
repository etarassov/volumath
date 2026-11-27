---
id: "41084"
title: "Une marche au hasard qui part du point q : les probabilités des derniers points"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 50
tags: [marche-aleatoire, probabilites-totales, suite-geometrique, identification-des-coefficients, conjecture]
adapted_from: null
see_also: ["41081", "41082", "41083"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème I « Marche aléatoire », question 4° (a) à (d)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-es-sujet.pdf"
---

## Statement

Soit $q$ un entier naturel. Un individu se déplace sur les points d'abscisses
$0, 1, 2, \ldots, q$ d'un axe, selon les règles suivantes :

- à l'instant $0$, il est placé au point d'abscisse $q$ ;
- si, à l'instant $n$, il est au point d'abscisse $k$, alors à l'instant $n + 1$ il est placé au
  hasard, de façon équiprobable, sur l'un des $k + 1$ points d'abscisses $0, 1, \ldots, k$.

Pour tout entier naturel $n$, on note $X_n$ l'abscisse du point où se trouve l'individu à
l'instant $n$. L'individu ne remonte jamais : il descend ou reste sur place.

1. Pour tout entier naturel $n$, déterminer $P(X_n = q)$.
2. On suppose ici $q \geq 1$ et, pour tout entier naturel $n$, on pose
   $$u_n = P(X_n = q - 1) + q\,P(X_n = q).$$
   Montrer que $(u_n)$ est une suite géométrique, et la déterminer. En déduire, pour tout entier
   naturel $n$, une expression de $P(X_n = q - 1)$.
3. On suppose ici $q \geq 2$. Que vaut $P(X_n = q - 2)$ ?
4. Plus généralement, voyez-vous une méthode pour déterminer $P(X_n = q - k)$ pour d'autres
   valeurs de l'entier $k$ ? Appliquer la méthode pour $k = 3$ (avec $q \geq 3$).

## Hints

1. **Question 1.** Pour être en $q$ à l'instant $n + 1$, où faut-il être à l'instant $n$ ?
2. **Question 2.** Avec la formule des probabilités totales, montrer que pour tout point $j$,
   $$P(X_{n+1} = j) = \frac{P(X_n = j)}{j + 1} + \frac{P(X_n = j + 1)}{j + 2} + \cdots + \frac{P(X_n = q)}{q + 1}.$$
   L'écrire pour $j = q - 1$ et pour $j = q$, puis calculer $u_{n+1}$.
3. **Question 3.** Imiter la question 2 : chercher deux nombres $a$ et $b$ tels que
   $w_n = P(X_n = q - 2) + a\,P(X_n = q - 1) + b\,P(X_n = q)$ soit une suite géométrique.
4. **Question 3.** Dans $w_{n+1}$, le coefficient de $P(X_n = q - 2)$ vaut $\frac{1}{q-1}$ : la
   raison ne peut être que $\frac{1}{q-1}$. Identifier ensuite les coefficients de
   $P(X_n = q - 1)$ et de $P(X_n = q)$.
5. **Question 4.** Les coefficients trouvés sont $1, q$ pour $k = 1$ et $1, q - 1, \frac{q(q-1)}{2}$
   pour $k = 2$. Pour $k = 3$, la raison sera $\frac{1}{q-2}$ : chercher les coefficients un par
   un, du point $q - 3$ vers le point $q$.

## Solution

**Une formule utile.** Depuis le point $k$, l'individu va au point $j$ avec la probabilité
$\frac{1}{k+1}$ si $j \leq k$, et $0$ si $j > k$. Les évènements $\{X_n = k\}$ pour
$k = 0, 1, \ldots, q$ forment une partition de l'univers ; la formule des probabilités totales
donne donc, pour tout point $j$,
$$P(X_{n+1} = j) = \frac{P(X_n = j)}{j + 1} + \frac{P(X_n = j + 1)}{j + 2} + \cdots + \frac{P(X_n = q)}{q + 1}. \qquad (\star)$$
Pour abréger, on note $p_n(j) = P(X_n = j)$.

**1.** Pour $j = q$, la formule $(\star)$ se réduit à $p_{n+1}(q) = \frac{1}{q+1}\,p_n(q)$. Comme
$p_0(q) = 1$, la suite $(p_n(q))$ est géométrique de raison $\frac{1}{q+1}$.

**Conclusion :** $P(X_n = q) = \frac{1}{(q+1)^n}$.

**2.** La formule $(\star)$ pour $j = q - 1$ donne
$p_{n+1}(q-1) = \frac{p_n(q-1)}{q} + \frac{p_n(q)}{q+1}$. Donc
$$u_{n+1} = \frac{p_n(q-1)}{q} + \frac{p_n(q)}{q+1} + q \cdot \frac{p_n(q)}{q+1} = \frac{p_n(q-1)}{q} + p_n(q) = \frac{1}{q}\left(p_n(q-1) + q\,p_n(q)\right) = \frac{1}{q}\,u_n.$$
La suite $(u_n)$ est géométrique de raison $\frac{1}{q}$, de premier terme
$u_0 = 0 + q \times 1 = q$. Donc $u_n = \frac{q}{q^n}$, et
$$P(X_n = q - 1) = u_n - q\,P(X_n = q) = q\left(\frac{1}{q^n} - \frac{1}{(q+1)^n}\right).$$
Pour $q = 1$, on retrouve $P(X_n = 0) = 1 - \frac{1}{2^n}$, et pour $q = 2$,
$P(X_n = 1) = 2\left(\frac{1}{2^n} - \frac{1}{3^n}\right)$.

**3.** Cherchons $a$ et $b$ pour que $w_n = p_n(q-2) + a\,p_n(q-1) + b\,p_n(q)$ vérifie
$w_{n+1} = r\,w_n$ pour un certain nombre $r$. D'après $(\star)$,
$$p_{n+1}(q-2) = \frac{p_n(q-2)}{q-1} + \frac{p_n(q-1)}{q} + \frac{p_n(q)}{q+1}, \quad p_{n+1}(q-1) = \frac{p_n(q-1)}{q} + \frac{p_n(q)}{q+1}, \quad p_{n+1}(q) = \frac{p_n(q)}{q+1}.$$
En regroupant,
$$w_{n+1} = \frac{1}{q-1}\,p_n(q-2) + \frac{1 + a}{q}\,p_n(q-1) + \frac{1 + a + b}{q+1}\,p_n(q).$$
Pour avoir $w_{n+1} = r\,w_n$, il suffit que les coefficients correspondent :

- devant $p_n(q-2)$ : $r = \frac{1}{q-1}$ ;
- devant $p_n(q-1)$ : $\frac{1 + a}{q} = \frac{a}{q-1}$, soit $(1 + a)(q - 1) = aq$, d'où
  $a = q - 1$ ;
- devant $p_n(q)$ : $\frac{1 + a + b}{q+1} = \frac{b}{q-1}$, soit $(q + b)(q - 1) = b(q + 1)$,
  d'où $q(q-1) = 2b$ et $b = \frac{q(q-1)}{2}$.

Avec ces valeurs, $(w_n)$ est géométrique de raison $\frac{1}{q-1}$ et de premier terme
$w_0 = b = \frac{q(q-1)}{2}$, donc $w_n = \frac{q(q-1)}{2} \times \frac{1}{(q-1)^n}$. Alors
$$p_n(q-2) = w_n - (q-1)\,p_n(q-1) - \frac{q(q-1)}{2}\,p_n(q).$$
On remplace $p_n(q-1)$ et $p_n(q)$ par les valeurs trouvées : $(q-1)\,p_n(q-1) = \frac{q(q-1)}{q^n} - \frac{q(q-1)}{(q+1)^n}$. En mettant $\frac{q(q-1)}{2}$ en facteur :

**Conclusion :** pour $q \geq 2$,
$$P(X_n = q - 2) = \frac{q(q-1)}{2}\left(\frac{1}{(q-1)^n} - \frac{2}{q^n} + \frac{1}{(q+1)^n}\right).$$
Pour $q = 2$, on retrouve $P(X_n = 0) = 1 - \frac{2}{2^n} + \frac{1}{3^n}$.

**4. La méthode.** Supposons déjà connues $p_n(q - k + 1), \ldots, p_n(q)$. On cherche des
coefficients $c_{q-k} = 1, c_{q-k+1}, \ldots, c_q$ tels que
$$z_n = c_{q-k}\,p_n(q-k) + c_{q-k+1}\,p_n(q-k+1) + \cdots + c_q\,p_n(q)$$
soit géométrique. D'après $(\star)$, la probabilité $p_n(j)$ apparaît dans $p_{n+1}(i)$ pour
chaque $i \leq j$, avec le coefficient $\frac{1}{j+1}$. Les probabilités $p_n(j)$ avec $j < q - k$ n'apparaissent que dans des $p_{n+1}(i)$ avec
$i < q - k$, absents de $z_{n+1}$. Donc dans $z_{n+1}$, pour $j \geq q - k$, le coefficient de
$p_n(j)$ est
$$\frac{c_{q-k} + c_{q-k+1} + \cdots + c_j}{j + 1},$$
c'est-à-dire la moyenne des $j + 1$ nombres $0, \ldots, 0, c_{q-k}, \ldots, c_j$. Pour
$j = q - k$, ce coefficient vaut $\frac{1}{q-k+1}$, qui est donc la raison $r$. Il suffit ensuite
que, pour chaque $j$ de $q - k + 1$ à $q$,
$$\frac{c_{q-k} + \cdots + c_{j-1} + c_j}{j + 1} = \frac{c_j}{q - k + 1}.$$
Cette équation est du premier degré en $c_j$ et, comme $j + 1 > q - k + 1$, elle a une solution :
on trouve les coefficients un par un. On calcule alors $z_n = \frac{c_q}{(q-k+1)^n}$ (car
$z_0 = c_q$), et on en tire $p_n(q-k)$ en retranchant les termes déjà connus. On peut ainsi
descendre, point par point, jusqu'au point $0$.

**Application pour $k = 3$** (avec $q \geq 3$). La raison est $\frac{1}{q-2}$ et $c_{q-3} = 1$.

Pour $j = q - 2$, l'équation est
$$\frac{1 + c_{q-2}}{q-1} = \frac{c_{q-2}}{q-2},$$
soit $(q-2) + (q-2)\,c_{q-2} = (q-1)\,c_{q-2}$, donc $c_{q-2} = q - 2$.

Pour $j = q - 1$, la somme des coefficients précédents est $1 + (q-2) = q - 1$, et l'équation est
$$\frac{(q-1) + c_{q-1}}{q} = \frac{c_{q-1}}{q-2},$$
soit $(q-1)(q-2) = c_{q-1}\left(q - (q-2)\right) = 2c_{q-1}$, donc $c_{q-1} = \frac{(q-1)(q-2)}{2}$.

Pour $j = q$, la somme des coefficients précédents est
$(q-1) + \frac{(q-1)(q-2)}{2} = \frac{(q-1)(2 + q - 2)}{2} = \frac{q(q-1)}{2}$. On la note $s$, et
l'équation est
$$\frac{s + c_q}{q+1} = \frac{c_q}{q-2},$$
soit $s\,(q-2) = c_q\left((q+1) - (q-2)\right) = 3c_q$, donc $c_q = \frac{q(q-1)(q-2)}{6}$.

Notons $C = \frac{q(q-1)(q-2)}{6}$. Alors $z_n = \frac{C}{(q-2)^n}$. D'autre part, avec les
résultats des questions 1 à 3,
$$(q-2)\,p_n(q-2) = 3C\left(\frac{1}{(q-1)^n} - \frac{2}{q^n} + \frac{1}{(q+1)^n}\right),$$
$$\frac{(q-1)(q-2)}{2}\,p_n(q-1) = 3C\left(\frac{1}{q^n} - \frac{1}{(q+1)^n}\right), \qquad C\,p_n(q) = \frac{C}{(q+1)^n}.$$
En retranchant ces trois termes de $z_n$ :
$$P(X_n = q - 3) = C\left(\frac{1}{(q-2)^n} - \frac{3}{(q-1)^n} + \frac{6}{q^n} - \frac{3}{(q+1)^n} - \frac{3}{q^n} + \frac{3}{(q+1)^n} - \frac{1}{(q+1)^n}\right).$$

**Conclusion :** pour $q \geq 3$,
$$P(X_n = q - 3) = \frac{q(q-1)(q-2)}{6}\left(\frac{1}{(q-2)^n} - \frac{3}{(q-1)^n} + \frac{3}{q^n} - \frac{1}{(q+1)^n}\right).$$
Pour $q = 3$, on obtient $P(X_n = 0) = 1 - \frac{3}{2^n} + \frac{3}{3^n} - \frac{1}{4^n}$ ; pour
$n = 1$, on obtient $\frac{1}{q+1}$, la probabilité d'aller de $q$ à $q - 3$ en un pas.

**Bilan.** Partant du point $q$, on a calculé exactement les probabilités d'être en $q$, $q - 1$,
$q - 2$ et $q - 3$ à l'instant $n$. La méthode : trouver, pour chaque $k$, une combinaison des
probabilités des points $q - k, \ldots, q$ qui forme une suite géométrique de raison
$\frac{1}{q-k+1}$ ; ses coefficients se trouvent un par un, et elle donne $P(X_n = q - k)$ à partir
des probabilités déjà connues.

## Going further

- Les coefficients trouvés sont $1, q$, puis $1, q-1, \frac{q(q-1)}{2}$, puis
  $1, q-2, \frac{(q-1)(q-2)}{2}, \frac{q(q-1)(q-2)}{6}$ : ce sont des coefficients binomiaux,
  $c_j = \binom{j}{q-k}$. En terminale, on peut démontrer que
  $$P(X_n = q - k) = \binom{q}{k} \sum_{i=0}^{k} (-1)^i \binom{k}{i} \frac{1}{(q-k+1+i)^n}.$$
  L'outil clé est l'égalité $\binom{0}{m} + \binom{1}{m} + \cdots + \binom{j}{m} = \binom{j+1}{m+1}$.
- Le cas $q = 1$ est étudié dans l'exercice 41081, les cas $q = 2$ et $q = 3$ avec des matrices
  dans les exercices 41082 et 41083.
