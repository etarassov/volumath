---
id: "40766"
title: "On garde la boule du milieu : la boule n est la plus probable"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 60
tags: [probabilite, probabilite-conditionnelle, probabilites-totales, recurrence, symetrie, bijection, disjonction-de-cas, maximum]
adapted_from: null
see_also: ["40764", "40765"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 2 « La loi du milieu », partie IV « Résultat le plus probable », questions 11 à 17. Pour la question 17, le cas k = n − 1 demande un argument de plus, ajouté ici."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. Dans un sac, on place $2n + 1$ boules indiscernables au toucher, numérotées $0, 1, 2, \ldots, 2n$. On vide peu à peu le sac selon le protocole suivant :

- on tire trois boules simultanément, au hasard ;
- si les trois boules tirées portent les numéros $a$, $b$ et $c$, avec $a < b < c$, on élimine les boules $a$ et $c$ et on remet dans le sac la boule $b$ ;
- on recommence.

Au bout de $n$ tirages, il ne reste qu'une seule boule, et on note $D_n$ son numéro. On note $M_n$ la plus grande des probabilités $P(D_n = j)$ pour $0 \leqslant j \leqslant 2n$. Pour deux événements $A$ et $B$, on note $A \setminus B$ l'événement « $A$ est réalisé mais pas $B$ », et, si $P(B) \neq 0$, on note $P_B(A)$ la probabilité de $A$ sachant $B$.

On admet que la loi de $D_n$ est symétrique : $P(D_n = i) = P(D_n = 2n - i)$ pour tout entier $i$ entre $0$ et $2n$.

Le but est de démontrer que $P(D_n = n) = M_n$ pour tout $n \geqslant 1$. Pour cela, on considère la propriété $\mathcal{P}_n$ suivante :

$$\text{pour tout entier } k \text{ tel que } 0 \leqslant k \leqslant n - 1, \quad P(D_n = k) \leqslant P(D_n = k + 1).$$

1. Démontrer que, si $\mathcal{P}_n$ est vraie, alors $P(D_n = n) = M_n$.
2. Démontrer $\mathcal{P}_1$.

Dans la suite, on fixe un entier $n \geqslant 2$ tel que $\mathcal{P}_{n-1}$ est vraie, et un entier $k$ tel que $0 \leqslant k \leqslant n - 1$. Toutes les probabilités conditionnelles ci-dessous sont prises sachant des événements de probabilité non nulle.

3. Pour tout entier $\ell$ entre $0$ et $2n$, différent de $k$ et de $k + 1$, on note $X_\ell$ l'événement « le premier tirage est formé des boules $k$, $k + 1$ et $\ell$ ».

   a) Expliquer pourquoi, si $\ell > k + 1$, on a $P_{X_\ell}(D_n = k) = 0$ et $P_{X_\ell}(D_n = k + 1) = P(D_{n-1} = k)$.

   b) Donner des résultats analogues pour $P_{X_\ell}(D_n = k)$ et $P_{X_\ell}(D_n = k + 1)$ lorsque $\ell < k$.

   c) On note $X$ l'événement « les boules $k$ et $k + 1$ font toutes les deux partie du premier tirage ». Démontrer que $P_X(D_n = k) \leqslant P_X(D_n = k + 1)$.
4. On note $Y$ l'événement « l'une au moins des boules $k$ et $k + 1$ est éliminée lors du premier tirage ».

   a) Démontrer que $P_{Y \setminus X}(D_n = k) = P_{Y \setminus X}(D_n = k + 1)$.

   b) En déduire que $P_Y(D_n = k) \leqslant P_Y(D_n = k + 1)$.
5. On note $a < b < c$ les numéros des trois boules du premier tirage.

   a) Soit $G$ l'événement « $c < k$ ». Démontrer que $P_G(D_n = k) \leqslant P_G(D_n = k + 1)$.

   b) Soit $H$ l'événement « $a < k$ et $k + 1 < c$ ». Démontrer que $P_H(D_n = k) \leqslant P_H(D_n = k + 1)$.

   c) Soit $I$ l'événement « $k + 1 < a$ ». Démontrer que, si $k \leqslant n - 2$, alors $P_I(D_n = k) \leqslant P_I(D_n = k + 1)$.
6. Démontrer que, si $k \leqslant n - 2$, alors $P(D_n = k) \leqslant P(D_n = k + 1)$.
7. Démontrer $\mathcal{P}_n$, puis conclure.

## Hints

1. **Question 1.** Pour $j > n$, utiliser la symétrie de la loi.
2. **Question 3.** Après le premier tirage, il reste $2n - 1$ boules. Si on les renumérote de $0$ à $2n - 2$ dans l'ordre croissant, la suite de l'expérience est exactement l'expérience avec $n - 1$. Quel est le nouveau numéro de la boule $k + 1$ ?
3. **Question 3.** Pour c), $X$ est la réunion des $2n - 1$ événements $X_\ell$, qui sont disjoints et de même probabilité. Combien de $\ell$ sont plus petits que $k$, combien plus grands que $k + 1$ ?
4. **Question 4.** Sur l'événement $Y \setminus X$, une seule des deux boules $k$ et $k + 1$ est tirée, et elle est éliminée. Échanger les rôles de $k$ et $k + 1$ dans le premier tirage.
5. **Question 5.** Dans chaque cas, chercher les nouveaux numéros des boules $k$ et $k + 1$ après le premier tirage, puis utiliser $\mathcal{P}_{n-1}$.
6. **Question 6.** Montrer que les événements $Y$, $G$, $H$ et $I$ forment une partition de l'univers, puis utiliser la formule des probabilités totales.
7. **Question 7.** Il reste le cas $k = n - 1$, où la question 5 c) ne s'applique pas. Comparer les contributions de $H$ et de $I$, et montrer que $H$ contient au moins autant de tirages que $I$.

## Solution

Une remarque sert partout. Après le premier tirage, il reste $2n - 1$ boules. Le protocole ne dépend que de l'ordre des numéros. Si on renumérote les boules restantes $0, 1, \ldots, 2n - 2$ dans l'ordre croissant, la suite de l'expérience est donc l'expérience avec $n - 1$. Une boule qui reste et qui a $r$ boules restantes plus petites qu'elle reçoit le nouveau numéro $r$, et elle est la dernière avec la probabilité $P(D_{n-1} = r)$.

**1.** Si $\mathcal{P}_n$ est vraie, alors $P(D_n = 0) \leqslant P(D_n = 1) \leqslant \cdots \leqslant P(D_n = n)$, donc $P(D_n = j) \leqslant P(D_n = n)$ pour $0 \leqslant j \leqslant n$. Pour $n < j \leqslant 2n$, on a $0 \leqslant 2n - j < n$, donc $P(D_n = j) = P(D_n = 2n - j) \leqslant P(D_n = n)$. Ainsi $P(D_n = n)$ est la plus grande des probabilités : $P(D_n = n) = M_n$.

**2.** Pour $n = 1$, l'unique tirage prend les boules $0$, $1$, $2$ et garde la boule $1$ : $P(D_1 = 0) = 0 \leqslant 1 = P(D_1 = 1)$. C'est $\mathcal{P}_1$ (seul $k = 0$ est à vérifier).

**3. a)** Si $\ell > k + 1$, le premier tirage est $k < k + 1 < \ell$ : on élimine $k$ et $\ell$, on garde $k + 1$. La boule $k$ ne peut pas être la dernière : $P_{X_\ell}(D_n = k) = 0$. Les boules restantes plus petites que $k + 1$ sont $0, 1, \ldots, k - 1$ : il y en a $k$. La boule $k + 1$ reçoit le nouveau numéro $k$, donc $P_{X_\ell}(D_n = k + 1) = P(D_{n-1} = k)$.

**b)** Si $\ell < k$, le premier tirage est $\ell < k < k + 1$ : on élimine $\ell$ et $k + 1$, on garde $k$. Donc $P_{X_\ell}(D_n = k + 1) = 0$. Les boules restantes plus petites que $k$ sont $0, \ldots, k - 1$ sauf $\ell$ : il y en a $k - 1$. Donc $P_{X_\ell}(D_n = k) = P(D_{n-1} = k - 1)$.

**c)** L'événement $X$ est la réunion des $2n - 1$ événements $X_\ell$, disjoints et de même probabilité. Parmi les valeurs possibles de $\ell$, $k$ sont plus petites que $k$ et $2n - k - 1$ sont plus grandes que $k + 1$. Par la formule des probabilités totales,

$$P_X(D_n = k) = \frac{k}{2n-1}\, P(D_{n-1} = k - 1), \qquad P_X(D_n = k + 1) = \frac{2n - 1 - k}{2n-1}\, P(D_{n-1} = k).$$

Si $k = 0$, la première vaut $0$ et l'inégalité est claire. Si $k \geqslant 1$, on a $0 \leqslant k - 1 \leqslant n - 2$, donc $\mathcal{P}_{n-1}$ donne $P(D_{n-1} = k - 1) \leqslant P(D_{n-1} = k)$ ; de plus $k \leqslant 2n - 1 - k$ car $2k \leqslant 2n - 2$. En multipliant ces deux inégalités entre nombres positifs, $P_X(D_n = k) \leqslant P_X(D_n = k + 1)$.

**4. a)** Sur $Y \setminus X$, une seule des boules $k$, $k + 1$ est tirée, et elle est éliminée (elle est la plus petite ou la plus grande des trois). Soit $T$ un premier tirage de ce type qui contient $k$, et soit $T'$ le tirage obtenu en remplaçant $k$ par $k + 1$. Les deux autres boules de $T$ ne sont ni $k$ ni $k + 1$, donc elles se comparent à $k + 1$ comme à $k$ : dans $T'$, la boule $k + 1$ est éliminée et $k$ n'est pas tirée. On obtient ainsi une correspondance un à un entre les tirages de $Y \setminus X$ qui contiennent $k$ et ceux qui contiennent $k + 1$.

Après $T$, il reste la boule $k + 1$ (pas $k$) ; après $T'$, il reste la boule $k$ (pas $k + 1$) ; toutes les autres boules restantes sont les mêmes. La boule $k + 1$ après $T$ et la boule $k$ après $T'$ ont donc le même nombre $r$ de boules restantes plus petites, et

$$P_T(D_n = k + 1) = P(D_{n-1} = r) = P_{T'}(D_n = k), \qquad P_T(D_n = k) = 0 = P_{T'}(D_n = k + 1).$$

Tous les tirages sont équiprobables. En additionnant sur tous les tirages de $Y \setminus X$, groupés par paires $(T, T')$, on obtient $P(\{D_n = k\} \cap (Y \setminus X)) = P(\{D_n = k + 1\} \cap (Y \setminus X))$, puis, en divisant par $P(Y \setminus X)$, l'égalité demandée.

**b)** Si les deux boules $k$ et $k + 1$ sont tirées, l'une des deux est éliminée (question 3) : $X \subset Y$. Donc $Y$ est la réunion disjointe de $X$ et de $Y \setminus X$, et

$$P(\{D_n = k\} \cap Y) = P(X)\, P_X(D_n = k) + P(Y \setminus X)\, P_{Y \setminus X}(D_n = k).$$

D'après 3 c) et 4 a), chaque terme est inférieur ou égal au terme correspondant pour $k + 1$. Donc $P(\{D_n = k\} \cap Y) \leqslant P(\{D_n = k + 1\} \cap Y)$, et en divisant par $P(Y)$ : $P_Y(D_n = k) \leqslant P_Y(D_n = k + 1)$.

**5.** Dans chaque cas, on fixe un premier tirage $T$ de l'événement considéré, on cherche les nouveaux numéros des boules $k$ et $k + 1$, et on conclut en faisant la moyenne sur tous les tirages de l'événement (ils sont équiprobables).

**a)** Si $c < k$, les boules $k$ et $k + 1$ restent, et deux boules plus petites que $k$ ont disparu ($a$ et $c$). Leurs nouveaux numéros sont $k - 2$ et $k - 1$. Ce cas n'arrive que si $k \geqslant 3$, et alors $0 \leqslant k - 2 \leqslant n - 3$, donc $\mathcal{P}_{n-1}$ donne $P_T(D_n = k) = P(D_{n-1} = k - 2) \leqslant P(D_{n-1} = k - 1) = P_T(D_n = k + 1)$.

**b)** Si $a < k$ et $k + 1 < c$, les boules $k$ et $k + 1$ restent (si l'une d'elles est tirée, c'est la boule du milieu $b$). Une boule plus petite que $k$ a disparu ($a$), et une plus grande que $k + 1$ ($c$). Les nouveaux numéros sont $k - 1$ et $k$. Ici $k \geqslant 1$, donc $0 \leqslant k - 1 \leqslant n - 2$, et $\mathcal{P}_{n-1}$ donne $P_T(D_n = k) = P(D_{n-1} = k - 1) \leqslant P(D_{n-1} = k) = P_T(D_n = k + 1)$.

**c)** Si $k + 1 < a$, les trois boules tirées sont plus grandes que $k + 1$ : les boules $k$ et $k + 1$ gardent les numéros $k$ et $k + 1$. Si $k \leqslant n - 2$, $\mathcal{P}_{n-1}$ donne $P_T(D_n = k) = P(D_{n-1} = k) \leqslant P(D_{n-1} = k + 1) = P_T(D_n = k + 1)$.

En moyennant sur les tirages de $G$, de $H$ et de $I$, on obtient les trois inégalités demandées.

**6.** *Les événements $Y$, $G$, $H$, $I$ forment une partition.* Prenons un premier tirage $a < b < c$. Si $k$ ou $k + 1$ est égal à $a$ ou à $c$, on est dans $Y$. Sinon, ni $a$ ni $c$ n'est égal à $k$ ou à $k + 1$, donc chacun est soit plus petit que $k$, soit plus grand que $k + 1$. Si $c < k$, on est dans $G$ ; si $a > k + 1$, on est dans $I$ ; sinon $a < k$ et $c > k + 1$, et on est dans $H$. Ces cas s'excluent : dans $G$, $H$ et $I$, aucune des boules $k$, $k + 1$ n'est éliminée.

Par la formule des probabilités totales (en ne gardant que les événements de probabilité non nulle),

$$P(D_n = k) = P(Y)\, P_Y(D_n = k) + P(G)\, P_G(D_n = k) + P(H)\, P_H(D_n = k) + P(I)\, P_I(D_n = k).$$

Pour $k \leqslant n - 2$, les questions 4 b) et 5 montrent que chaque terme est inférieur ou égal au terme correspondant pour $k + 1$. Donc $P(D_n = k) \leqslant P(D_n = k + 1)$.

**7.** Il reste le cas $k = n - 1$ : il faut montrer $P(D_n = n - 1) \leqslant P(D_n = n)$. Les questions 4 b), 5 a) et 5 b) restent valables pour $k = n - 1$ ; seule la question 5 c) ne s'applique pas. Il suffit donc de montrer que

$$P(\{D_n = n-1\} \cap (H \cup I)) \leqslant P(\{D_n = n\} \cap (H \cup I)).$$

Posons $A = P(D_{n-1} = n - 1)$ et $B = P(D_{n-1} = n - 2)$. D'après $\mathcal{P}_{n-1}$ avec l'entier $n - 2$, on a $B \leqslant A$. D'après la symétrie de la loi de $D_{n-1}$ (dont les numéros vont de $0$ à $2n - 2$), $P(D_{n-1} = n) = P(D_{n-1} = n - 2) = B$.

- Pour un tirage de $H$, d'après 5 b), $P_T(D_n = n - 1) = B$ et $P_T(D_n = n) = A$.
- Pour un tirage de $I$, d'après 5 c), $P_T(D_n = n - 1) = P(D_{n-1} = n - 1) = A$ et $P_T(D_n = n) = P(D_{n-1} = n) = B$.

Donc

$$P(\{D_n = n\} \cap (H \cup I)) - P(\{D_n = n - 1\} \cap (H \cup I)) = (P(H) - P(I))(A - B).$$

Comme $A - B \geqslant 0$, il reste à voir que $P(H) \geqslant P(I)$, c'est-à-dire que $H$ contient au moins autant de tirages que $I$. Un tirage de $I$ est formé de trois boules $a < b < c$ prises parmi $n + 1, \ldots, 2n$. Associons-lui le tirage $\{2n - c, b, c\}$. Comme $c \geqslant n + 3$, on a $2n - c \leqslant n - 3 < k$ ; comme $c > n = k + 1$ et $2n - c < b < c$, ce nouveau tirage est dans $H$. Deux tirages différents de $I$ donnent deux tirages différents de $H$, puisqu'on retrouve $b$ et $c$. Donc $H$ contient au moins autant de tirages que $I$, et $P(H) \geqslant P(I)$.

Ainsi $P(D_n = n - 1) \leqslant P(D_n = n)$, et avec la question 6, $\mathcal{P}_n$ est démontrée.

*Conclusion.* $\mathcal{P}_1$ est vraie (question 2), et $\mathcal{P}_{n-1}$ entraîne $\mathcal{P}_n$ pour tout $n \geqslant 2$. Par récurrence, $\mathcal{P}_n$ est vraie pour tout $n \geqslant 1$, et d'après la question 1, $P(D_n = n) = M_n$.

**Bilan.** Les probabilités $P(D_n = 0), P(D_n = 1), \ldots, P(D_n = n)$ vont en croissant (au sens large), et la loi est symétrique par rapport à $n$. La boule du milieu, la boule $n$, est donc toujours la plus probable : $P(D_n = n) = M_n$ pour tout $n \geqslant 1$.

## Going further

- Pour la question 7, on ne peut pas se contenter de la question 6 : pour $k = n - 1$ et un premier tirage dans $I$, l'inégalité va dans l'autre sens, $P_I(D_n = n - 1) = A \geqslant B = P_I(D_n = n)$ (et le calcul montre qu'elle est stricte pour $n = 3$ à $9$). C'est l'événement $H$, plus probable, qui compense.
- Les inégalités de $\mathcal{P}_n$ sont-elles strictes ? Le calcul exact le confirme pour $n \leqslant 11$ ; pouvez-vous adapter la démonstration pour l'obtenir en général ? Pour $n = 3$, on trouve $P(D_3 = 1) = \frac{1}{35}$, $P(D_3 = 2) = \frac{4}{25}$ et $P(D_3 = 3) = \frac{109}{175}$.
