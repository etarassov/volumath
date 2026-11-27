---
id: "41082"
title: "Une marche au hasard sur trois points, écrite avec une matrice"
grade: 12
theme: probability-statistics
difficulty: 2
duration_min: 45
tags: [marche-aleatoire, matrices, maths-expertes, probabilites-totales, esperance, suite-geometrique, limite]
adapted_from: null
see_also: ["41081", "41083", "41084"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème I « Marche aléatoire », question 1° (f) (ici question 1) et question 2° (a) à (i) (ici question 2)"
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
l'instant $n$. On note $P(A)$ la probabilité d'un évènement $A$ et $E(X)$ l'espérance d'une
variable aléatoire $X$.

1. Dans cette question, $q = 1$. On admet que, pour tout entier naturel $n$,
   $$P(X_{n+1} = 1) = \frac{1}{2}\,P(X_n = 1) \quad \text{et} \quad P(X_{n+1} = 0) = P(X_n = 0) + \frac{1}{2}\,P(X_n = 1).$$
   Soit $U_n$ la matrice ligne
   $$U_n = \begin{pmatrix} P(X_n = 0) \quad & \quad P(X_n = 1) \end{pmatrix}.$$
   Déterminer une matrice carrée $M$ à deux lignes et deux colonnes telle que, pour tout entier
   naturel $n$, $U_{n+1} = U_n M$.

2. Dans toute la suite, $q = 2$.

   a) Exprimer $P(X_{n+1} = 0)$ à l'aide de $P(X_n = 0)$, $P(X_n = 1)$ et $P(X_n = 2)$.
   Exprimer de même $P(X_{n+1} = 1)$ et $P(X_{n+1} = 2)$.

   b) Pour tout entier naturel $n$, soit $U_n$ la matrice ligne
   $$U_n = \begin{pmatrix} P(X_n = 0) \quad & \quad P(X_n = 1) \quad & \quad P(X_n = 2) \end{pmatrix}.$$
   Déterminer une
   matrice carrée $M$ à trois lignes et trois colonnes telle que, pour tout entier naturel $n$,
   $U_{n+1} = U_n M$.

   c) On considère la matrice colonne
   $$A = \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix}.$$
   Exprimer le produit
   $$\begin{pmatrix} 1 & 0 & 0 \\ 1/2 & 1/2 & 0 \\ 1/3 & 1/3 & 1/3 \end{pmatrix} \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix}$$
   à l'aide de $A$.

   d) Exprimer $E(X_{n+1})$ à l'aide de $U_{n+1}$ et de $A$.

   e) En déduire une relation entre $E(X_{n+1})$ et $E(X_n)$. Déterminer la limite de $E(X_n)$
   quand $n$ tend vers l'infini.

   f) Montrer que la suite $(P(X_n = 2))_{n \in \mathbb{N}}$ est une suite géométrique, et la
   déterminer.

   g) En combinant les deux questions précédentes, montrer que, pour tout entier naturel $n$,
   $$P(X_n = 1) = 2\left(\frac{1}{2^n} - \frac{1}{3^n}\right).$$

   h) En déduire que, pour tout entier naturel $n$,
   $$P(X_n = 0) = 1 - 2 \times \frac{1}{2^n} + \frac{1}{3^n}.$$

   i) Donner les limites de $P(X_n = 0)$, $P(X_n = 1)$ et $P(X_n = 2)$ quand $n$ tend vers
   l'infini. Interpréter le résultat.

## Hints

1. **Question 1.** Écrire le produit $U_n M$ avec une matrice $M$ inconnue, de première ligne
   $a$, $b$ et de deuxième ligne $c$, $d$, et identifier avec $U_{n+1}$.
2. **Question 2 a.** Formule des probabilités totales avec les trois évènements
   $\{X_n = 0\}$, $\{X_n = 1\}$, $\{X_n = 2\}$. Depuis le point $k$, quelle est la probabilité
   d'aller au point $j$ ?
3. **Question 2 b.** Le coefficient de la ligne $k$ et de la colonne $j$ de $M$ (en numérotant
   à partir de $0$) est la probabilité d'aller du point $k$ au point $j$.
4. **Question 2 d.** Écrire l'espérance avec la définition, puis reconnaître un produit d'une
   matrice ligne par une matrice colonne.
5. **Question 2 e.** $U_{n+1} A = (U_n M) A = U_n (M A)$, et la matrice de la question c est
   justement $M$.
6. **Question 2 g.** Écrire $E(X_n)$ à l'aide de $P(X_n = 1)$ et de $P(X_n = 2)$.

## Solution

**1.** Pour une matrice $M$ de première ligne $a$, $b$ et de deuxième ligne $c$, $d$, on a
$$U_n M = \begin{pmatrix} a\,P(X_n = 0) + c\,P(X_n = 1) \quad & \quad b\,P(X_n = 0) + d\,P(X_n = 1) \end{pmatrix}.$$
En comparant avec les relations admises, il suffit de prendre $a = 1$, $c = \frac{1}{2}$,
$b = 0$, $d = \frac{1}{2}$ :
$$M = \begin{pmatrix} 1 & 0 \\ 1/2 & 1/2 \end{pmatrix}.$$
Alors, pour tout $n$,
$$U_n M = \begin{pmatrix} P(X_n = 0) + \frac{1}{2}P(X_n = 1) \quad & \quad \frac{1}{2}P(X_n = 1) \end{pmatrix} = U_{n+1}.$$

**2. a)** Depuis le point $0$, l'individu reste en $0$. Depuis le point $1$, il va en $0$ ou en
$1$, avec la probabilité $\frac{1}{2}$ chacun. Depuis le point $2$, il va en $0$, $1$ ou $2$,
avec la probabilité $\frac{1}{3}$ chacun. Les évènements $\{X_n = 0\}$, $\{X_n = 1\}$,
$\{X_n = 2\}$ forment une partition de l'univers, et la formule des probabilités totales donne
$$P(X_{n+1} = 0) = P(X_n = 0) + \frac{1}{2}\,P(X_n = 1) + \frac{1}{3}\,P(X_n = 2),$$
$$P(X_{n+1} = 1) = \frac{1}{2}\,P(X_n = 1) + \frac{1}{3}\,P(X_n = 2),$$
$$P(X_{n+1} = 2) = \frac{1}{3}\,P(X_n = 2).$$

**2. b)** On place dans la ligne $k$ (lignes et colonnes numérotées $0$, $1$, $2$) les
probabilités d'aller du point $k$ aux points $0$, $1$, $2$ :
$$M = \begin{pmatrix} 1 & 0 & 0 \\ 1/2 & 1/2 & 0 \\ 1/3 & 1/3 & 1/3 \end{pmatrix}.$$
Le coefficient numéro $j$ du produit $U_n M$ est
$P(X_n = 0)\,M_{0j} + P(X_n = 1)\,M_{1j} + P(X_n = 2)\,M_{2j}$, c'est exactement le membre de
droite de la formule de la question a pour $P(X_{n+1} = j)$. Donc $U_{n+1} = U_n M$.

**2. c)** Ligne par ligne : $1 \times 0 = 0$, puis $\frac{1}{2} \times 0 + \frac{1}{2} \times 1 = \frac{1}{2}$,
puis $\frac{1}{3}(0 + 1 + 2) = 1$. Le produit vaut donc
$$\begin{pmatrix} 0 \\ 1/2 \\ 1 \end{pmatrix} = \frac{1}{2}A.$$
Autrement dit, $MA = \frac{1}{2}A$.

**2. d)** $X_{n+1}$ prend les valeurs $0$, $1$, $2$, donc
$$E(X_{n+1}) = 0 \times P(X_{n+1} = 0) + 1 \times P(X_{n+1} = 1) + 2 \times P(X_{n+1} = 2) = U_{n+1} A,$$
où le produit d'une matrice ligne par une matrice colonne est une matrice à un seul coefficient,
identifiée à un nombre.

**2. e)** Par associativité du produit des matrices et d'après la question c,
$$E(X_{n+1}) = U_{n+1} A = (U_n M) A = U_n (MA) = U_n \left(\frac{1}{2}A\right) = \frac{1}{2}\,U_n A = \frac{1}{2}\,E(X_n).$$
La suite $(E(X_n))$ est géométrique de raison $\frac{1}{2}$ et de premier terme $E(X_0) = 2$ (car
$X_0 = 2$ à coup sûr). Donc $E(X_n) = \frac{2}{2^n}$ pour tout $n$.

**Conclusion :** $E(X_{n+1}) = \frac{1}{2}E(X_n)$, et $E(X_n)$ tend vers $0$.

**2. f)** D'après la question a, $P(X_{n+1} = 2) = \frac{1}{3}\,P(X_n = 2)$, et
$P(X_0 = 2) = 1$. La suite est géométrique de raison $\frac{1}{3}$ et de premier terme $1$ :
$P(X_n = 2) = \frac{1}{3^n}$.

**2. g)** On a $E(X_n) = P(X_n = 1) + 2\,P(X_n = 2)$, donc
$$P(X_n = 1) = E(X_n) - 2\,P(X_n = 2) = \frac{2}{2^n} - \frac{2}{3^n} = 2\left(\frac{1}{2^n} - \frac{1}{3^n}\right).$$

**2. h)** Les trois probabilités ont pour somme $1$, donc
$$P(X_n = 0) = 1 - \frac{2}{2^n} + \frac{2}{3^n} - \frac{1}{3^n} = 1 - 2 \times \frac{1}{2^n} + \frac{1}{3^n}.$$

Vérification pour $n = 1$ : on trouve $P(X_1 = 0) = 1 - 1 + \frac{1}{3} = \frac{1}{3}$, ce qui
est bien la probabilité d'aller de $2$ à $0$ en un pas.

**2. i)** Comme $\frac{1}{2^n}$ et $\frac{1}{3^n}$ tendent vers $0$, $P(X_n = 0)$ tend vers $1$,
et $P(X_n = 1)$ et $P(X_n = 2)$ tendent vers $0$.

**Interprétation :** une fois en $0$, l'individu n'en bouge plus. Quand $n$ devient grand, il est
presque certain qu'il est déjà arrivé en $0$ : la probabilité qu'il soit encore en $1$ ou en $2$
devient aussi petite qu'on veut.

**Bilan.** Partant du point $2$, l'individu se trouve à l'instant $n$ en $2$, $1$ et $0$ avec les
probabilités $\frac{1}{3^n}$, $2\left(\frac{1}{2^n} - \frac{1}{3^n}\right)$ et
$1 - \frac{2}{2^n} + \frac{1}{3^n}$. Son abscisse moyenne est divisée par $2$ à chaque instant.
La matrice $M$ ne sert qu'à écrire d'un seul coup les trois formules des probabilités totales,
et la relation $MA = \frac{1}{2}A$ donne la suite des espérances sans calculer la loi de $X_n$.

## Going further

- On peut obtenir $E(X_{n+1}) = \frac{1}{2}E(X_n)$ sans matrice, directement à partir des
  formules de la question a. Essayez.
- Dans la suite du sujet, l'individu part du point $3$. Avec la matrice colonne
  $B$ de coefficients $0$, $0$, $1$, $3$, on trouve une deuxième suite géométrique,
  qui permet de calculer toute la loi de $X_n$ : voir l'exercice 41083.
