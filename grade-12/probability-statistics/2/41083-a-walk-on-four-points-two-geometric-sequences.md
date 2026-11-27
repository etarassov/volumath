---
id: "41083"
title: "Une marche au hasard sur quatre points : deux suites géométriques donnent toute la loi"
grade: 12
theme: probability-statistics
difficulty: 2
duration_min: 35
tags: [marche-aleatoire, matrices, maths-expertes, esperance, suite-geometrique, loi-de-probabilite]
adapted_from: null
see_also: ["41081", "41082", "41084"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème I « Marche aléatoire », question 3° (a) à (f). La relation U(n+1) = U(n) M, implicite dans le sujet, est rappelée dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-es-sujet.pdf"
---

## Statement

Un individu se déplace sur les points d'abscisses $0$, $1$, $2$, $3$ d'un axe, selon les règles
suivantes :

- à l'instant $0$, il est placé au point d'abscisse $3$ ;
- si, à l'instant $n$, il est au point d'abscisse $k$, alors à l'instant $n + 1$ il est placé au
  hasard, de façon équiprobable, sur l'un des $k + 1$ points d'abscisses $0, 1, \ldots, k$.

Pour tout entier naturel $n$, on note $X_n$ l'abscisse du point où se trouve l'individu à
l'instant $n$, et $E(X)$ désigne l'espérance d'une variable aléatoire $X$. On considère les
matrices
$$M = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1/2 & 1/2 & 0 & 0 \\ 1/3 & 1/3 & 1/3 & 0 \\ 1/4 & 1/4 & 1/4 & 1/4 \end{pmatrix}, \qquad A = \begin{pmatrix} 0 \\ 1 \\ 2 \\ 3 \end{pmatrix}, \qquad B = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 3 \end{pmatrix}.$$
On note $U_n$ la matrice ligne
$$U_n = \begin{pmatrix} P(X_n = 0) \quad & \quad P(X_n = 1) \quad & \quad P(X_n = 2) \quad & \quad P(X_n = 3) \end{pmatrix}.$$
On admet que $U_{n+1} = U_n M$ pour tout entier naturel $n$ : la ligne $k$ de $M$ contient les
probabilités d'aller du point $k$ aux points $0$, $1$, $2$, $3$, et le produit $U_n M$ écrit la
formule des probabilités totales.

1. Exprimer $MA$ à l'aide de $A$. Exprimer $MB$ à l'aide de $B$.
2. Pour tout entier naturel $n$, on pose
   $$\alpha_n = E(X_n) \qquad \text{et} \qquad \beta_n = E\left(\frac{1}{2}X_n(X_n - 1)\right).$$
   À l'aide de la question 1, montrer que $(\alpha_n)$ et $(\beta_n)$ sont des suites
   géométriques. En déduire $\alpha_n$ et $\beta_n$ en fonction de $n$.
3. Pour tout entier naturel $n$, déterminer $P(X_n = 3)$.
4. Pour tout entier naturel $n$, déterminer $P(X_n = 2)$. On pourra utiliser la suite
   $(\beta_n)$.
5. Pour tout entier naturel $n$, déterminer $P(X_n = 1)$. On pourra utiliser la suite
   $(\alpha_n)$.
6. Pour tout entier naturel $n$, déterminer $P(X_n = 0)$.

## Hints

1. **Question 2.** Écrire $\alpha_n$ et $\beta_n$ avec la définition de l'espérance. Que valent
   $\frac{1}{2}k(k-1)$ pour $k = 0, 1, 2, 3$ ? Reconnaître alors un produit $U_n A$ ou $U_n B$.
2. **Question 2.** $U_{n+1} B = (U_n M) B = U_n (MB)$.
3. **Question 3.** Pour être en $3$ à l'instant $n + 1$, il faut être en $3$ à l'instant $n$.
4. **Question 4.** Dans $\beta_n$, seules deux probabilités apparaissent, et l'une d'elles est
   connue.

## Solution

**1.** Ligne par ligne, $MA$ a pour coefficients $0$, puis $\frac{0 + 1}{2} = \frac{1}{2}$, puis
$\frac{0 + 1 + 2}{3} = 1$, puis $\frac{0 + 1 + 2 + 3}{4} = \frac{3}{2}$. Ce sont les
coefficients de $A$ divisés par $2$ : $MA = \frac{1}{2}A$.

De même, $MB$ a pour coefficients $0$, puis $\frac{0 + 0}{2} = 0$, puis
$\frac{0 + 0 + 1}{3} = \frac{1}{3}$, puis $\frac{0 + 0 + 1 + 3}{4} = 1$. Ce sont les
coefficients de $B$ divisés par $3$ : $MB = \frac{1}{3}B$.

**2.** Par définition de l'espérance,
$$\alpha_n = 0 \times P(X_n = 0) + 1 \times P(X_n = 1) + 2 \times P(X_n = 2) + 3 \times P(X_n = 3) = U_n A.$$
La variable $\frac{1}{2}X_n(X_n - 1)$ vaut $0$, $0$, $1$, $3$ quand $X_n$ vaut $0$, $1$, $2$, $3$.
Donc
$$\beta_n = 0 \times P(X_n = 0) + 0 \times P(X_n = 1) + 1 \times P(X_n = 2) + 3 \times P(X_n = 3) = U_n B.$$
(On identifie une matrice à un seul coefficient avec ce nombre.)

Par associativité du produit des matrices et grâce à la question 1,
$$\alpha_{n+1} = U_{n+1} A = (U_n M) A = U_n (MA) = \frac{1}{2}\,U_n A = \frac{1}{2}\,\alpha_n,$$
$$\beta_{n+1} = U_{n+1} B = (U_n M) B = U_n (MB) = \frac{1}{3}\,U_n B = \frac{1}{3}\,\beta_n.$$
Les deux suites sont géométriques, de raisons $\frac{1}{2}$ et $\frac{1}{3}$. Comme $X_0 = 3$ à coup
sûr, $\alpha_0 = 3$ et $\beta_0 = \frac{1}{2} \times 3 \times 2 = 3$.

**Conclusion :** pour tout entier naturel $n$,
$$\alpha_n = \frac{3}{2^n} \qquad \text{et} \qquad \beta_n = \frac{3}{3^n} = \frac{1}{3^{n-1}}.$$

**3.** Le coefficient de la dernière colonne de $U_n M$ est $\frac{1}{4}P(X_n = 3)$, donc
$P(X_{n+1} = 3) = \frac{1}{4}P(X_n = 3)$ : pour être en $3$ à l'instant $n + 1$, il faut y être
à l'instant $n$, puis y rester, avec la probabilité $\frac{1}{4}$. Avec $P(X_0 = 3) = 1$, la suite
est géométrique de raison $\frac{1}{4}$.

**Conclusion :** $P(X_n = 3) = \frac{1}{4^n}$.

**4.** On a $\beta_n = P(X_n = 2) + 3\,P(X_n = 3)$, donc
$$P(X_n = 2) = \beta_n - 3\,P(X_n = 3) = \frac{3}{3^n} - \frac{3}{4^n}.$$

**5.** On a $\alpha_n = P(X_n = 1) + 2\,P(X_n = 2) + 3\,P(X_n = 3)$, donc
$$P(X_n = 1) = \frac{3}{2^n} - \frac{6}{3^n} + \frac{6}{4^n} - \frac{3}{4^n} = \frac{3}{2^n} - \frac{6}{3^n} + \frac{3}{4^n}.$$

**6.** La somme des quatre probabilités vaut $1$, donc
$$P(X_n = 0) = 1 - \left(\frac{3}{2^n} - \frac{6}{3^n} + \frac{3}{4^n}\right) - \left(\frac{3}{3^n} - \frac{3}{4^n}\right) - \frac{1}{4^n} = 1 - \frac{3}{2^n} + \frac{3}{3^n} - \frac{1}{4^n}.$$

Vérification pour $n = 1$ : on trouve $P(X_1 = 0) = P(X_1 = 1) = P(X_1 = 2) = P(X_1 = 3) = \frac{1}{4}$,
ce qui est bien le premier pas depuis le point $3$. Pour $n = 0$, on retrouve
$P(X_0 = 3) = 1$ et les trois autres nulles.

**Bilan.** Partant du point $3$, la loi de $X_n$ est
$$P(X_n = 3) = \frac{1}{4^n}, \qquad P(X_n = 2) = \frac{3}{3^n} - \frac{3}{4^n},$$
$$P(X_n = 1) = \frac{3}{2^n} - \frac{6}{3^n} + \frac{3}{4^n}, \qquad P(X_n = 0) = 1 - \frac{3}{2^n} + \frac{3}{3^n} - \frac{1}{4^n}.$$
Le moyen de l'obtenir : deux matrices colonnes $A$ et $B$ que $M$ se contente de multiplier par
un nombre, ce qui rend géométriques les suites $E(X_n)$ et $E\left(\frac{1}{2}X_n(X_n-1)\right)$.

## Going further

- Les coefficients $1, 3, 3, 1$ de $P(X_n = 0)$ sont ceux de la ligne $3$ du triangle de Pascal.
  Pouvez-vous deviner la formule de $P(X_n = 0)$ quand l'individu part du point $4$ ?
- Avec la matrice colonne $C$ de coefficients $\frac{1}{6}k(k-1)(k-2)$ pour $k = 0, 1, 2, 3$,
  c'est-à-dire $0, 0, 0, 1$, que vaut $MC$ ?
- La fin du sujet traite un point de départ $q$ quelconque : voir l'exercice 41084.
