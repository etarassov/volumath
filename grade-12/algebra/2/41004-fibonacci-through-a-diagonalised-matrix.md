---
id: "41004"
title: "La suite de Fibonacci par une matrice diagonalisée"
grade: 12
theme: algebra
difficulty: 2
duration_min: 40
tags: [fibonacci, matrices, maths-expertes, nombre-d-or, suite-recurrente, recurrence]
adapted_from: null
see_also: ["41003"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série ES"
  reference: "cg-2017-es-sujet.pdf, problème II « Étude d'une suite », partie B (questions 1 à 5) et partie D (question 1) ; les résultats de la partie A sont rappelés dans l'énoncé"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-es-sujet.pdf"
---

## Statement

On étudie la suite $(u_n)$ définie par
$$u_0 = 0, \qquad u_1 = 1 \qquad \text{et} \qquad u_{n+2} = u_{n+1} + u_n
\quad \text{pour tout entier } n \geq 0 .$$

On note $\alpha = \frac{1 + \sqrt{5}}{2}$ et $\beta = \frac{1 - \sqrt{5}}{2}$ les deux solutions de
l'équation $x^2 - x - 1 = 0$. On a donc $\alpha^2 = \alpha + 1$ et $\beta^2 = \beta + 1$, et on
admet que $\alpha + \beta = 1$, $\alpha\beta = -1$ et $\alpha - \beta = \sqrt{5}$.

1. Pour tout entier $n \geq 0$, on pose $X_n = \begin{pmatrix} u_n \\ u_{n+1} \end{pmatrix}$.

   a) Que vaut $X_0$ ?

   b) Déterminer une matrice $A$ telle que $X_{n+1} = AX_n$ pour tout $n \geq 0$.

   c) Exprimer $X_n$ en fonction de $A^n$ et de $X_0$, pour tout $n \geq 0$.

2. On note $C_1 = \begin{pmatrix} 1 \\ \alpha \end{pmatrix}$ et
   $C_2 = \begin{pmatrix} 1 \\ \beta \end{pmatrix}$. Montrer que $AC_1 = \alpha C_1$ et
   $AC_2 = \beta C_2$.

3. Montrer que la matrice $P$ dont les colonnes sont, dans cet ordre, $C_1$ et $C_2$, est
   inversible.

4. a) Soit $M$ et $N$ deux matrices carrées d'ordre $2$, et $K_1$, $K_2$ les colonnes de $N$.
      Justifier que la matrice $MN$ a pour colonnes $MK_1$ et $MK_2$.

   b) À quoi est égale la matrice $P^{-1}P$ ? En déduire, sans calculer $P^{-1}$, les colonnes
      $P^{-1}C_1$ et $P^{-1}C_2$.

   c) En déduire, avec le moins de calculs possible, la matrice $P^{-1}AP$.

5. a) Soit $D = \begin{pmatrix} \alpha & 0 \\ 0 & \beta \end{pmatrix}$. Donner $D^n$ pour tout
      entier $n \geq 0$.

   b) En déduire $A^n$, puis $X_n$, pour tout $n \geq 0$.

6. En déduire une expression de $u_n$ en fonction de $n$, $\alpha$ et $\beta$.

## Hints

1. **Question 1 c).** Écrire $X_1$, $X_2$, $X_3$ en fonction de $X_0$, puis démontrer la formule
   par récurrence.
2. **Question 2.** Utiliser $1 + \alpha = \alpha^2$.
3. **Question 3.** Calculer le déterminant de $P$.
4. **Question 4 a).** Écrire le coefficient de $MN$ situé à la ligne $i$ et à la colonne $j$, et
   le comparer à la $i$-ième coordonnée de $MK_j$.
5. **Question 4 c).** Les colonnes de $AP$ sont $AC_1$ et $AC_2$ : on les connaît grâce à la
   question 2. Appliquer ensuite $P^{-1}$ colonne par colonne.
6. **Question 5 b).** De $P^{-1}AP = D$, tirer $A = PDP^{-1}$, puis montrer par récurrence que
   $A^n = PD^nP^{-1}$. Pour calculer $P^{-1}$, utiliser la formule de l'inverse d'une matrice
   $2 \times 2$.

## Solution

**1. a)** $$X_0 = \begin{pmatrix} u_0 \\ u_1 \end{pmatrix} = \begin{pmatrix} 0 \\ 1 \end{pmatrix} .$$

**b)** On veut
$$X_{n+1} = \begin{pmatrix} u_{n+1} \\ u_{n+2} \end{pmatrix}
= \begin{pmatrix} u_{n+1} \\ u_n + u_{n+1} \end{pmatrix} .$$
La matrice
$$A = \begin{pmatrix} 0 & 1 \\ 1 & 1 \end{pmatrix}$$
convient, car
$$AX_n = \begin{pmatrix} 0 \times u_n + 1 \times u_{n+1} \\ 1 \times u_n + 1 \times u_{n+1} \end{pmatrix}
= X_{n+1} .$$

**c)** Montrons par récurrence que $X_n = A^n X_0$. Pour $n = 0$, $A^0 = I_2$ et
$I_2 X_0 = X_0$. Si $X_n = A^n X_0$, alors $X_{n+1} = AX_n = A \cdot A^n X_0 = A^{n+1} X_0$.
Donc **$X_n = A^n X_0$ pour tout $n \geq 0$**.

**2.** On a
$$AC_1 = \begin{pmatrix} 0 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} 1 \\ \alpha \end{pmatrix}
= \begin{pmatrix} \alpha \\ 1 + \alpha \end{pmatrix}
= \begin{pmatrix} \alpha \\ \alpha^2 \end{pmatrix} = \alpha C_1 ,$$
en utilisant $1 + \alpha = \alpha^2$. Le même calcul avec $1 + \beta = \beta^2$ donne
$AC_2 = \beta C_2$.

**3.** On a $P = \begin{pmatrix} 1 & 1 \\ \alpha & \beta \end{pmatrix}$, de déterminant
$1 \times \beta - 1 \times \alpha = \beta - \alpha = -\sqrt{5} \neq 0$. Donc **$P$ est
inversible**, et d'après la formule de l'inverse d'une matrice $2 \times 2$,
$$P^{-1} = \frac{1}{\beta - \alpha} \begin{pmatrix} \beta & -1 \\ -\alpha & 1 \end{pmatrix}
= \frac{1}{\sqrt{5}} \begin{pmatrix} -\beta & 1 \\ \alpha & -1 \end{pmatrix} .$$
(On n'en aura besoin qu'à la question 5.)

**4. a)** Notons $m_{ik}$ et $n_{kj}$ les coefficients de $M$ et de $N$. Le coefficient de $MN$ à la
ligne $i$ et à la colonne $j$ est
$$m_{i1} n_{1j} + m_{i2} n_{2j} .$$
La colonne $K_j$ de $N$ a pour coordonnées $n_{1j}$ et $n_{2j}$, donc la $i$-ième coordonnée de
$MK_j$ est aussi $m_{i1} n_{1j} + m_{i2} n_{2j}$. La $j$-ième colonne de $MN$ est donc $MK_j$.

**b)** $P^{-1}P = I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. D'après a), les colonnes de
$P^{-1}P$ sont $P^{-1}C_1$ et $P^{-1}C_2$. Donc
$$P^{-1}C_1 = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \qquad \text{et} \qquad
P^{-1}C_2 = \begin{pmatrix} 0 \\ 1 \end{pmatrix} .$$

**c)** D'après a), les colonnes de $AP$ sont $AC_1 = \alpha C_1$ et $AC_2 = \beta C_2$. Toujours
d'après a), les colonnes de $P^{-1}(AP)$ sont
$$P^{-1}(\alpha C_1) = \alpha P^{-1}C_1 = \begin{pmatrix} \alpha \\ 0 \end{pmatrix}
\qquad \text{et} \qquad
P^{-1}(\beta C_2) = \beta P^{-1}C_2 = \begin{pmatrix} 0 \\ \beta \end{pmatrix} .$$
Donc
$$P^{-1}AP = \begin{pmatrix} \alpha & 0 \\ 0 & \beta \end{pmatrix} .$$

**5. a)** Pour une matrice diagonale, les puissances se calculent coefficient par coefficient : on
vérifie par récurrence que
$$D^n = \begin{pmatrix} \alpha^n & 0 \\ 0 & \beta^n \end{pmatrix}$$
pour tout $n \geq 0$, car $D^{n+1} = D^n D$ et le produit de deux matrices diagonales est la
matrice diagonale des produits.

**b)** D'après 4 c), $P^{-1}AP = D$. En multipliant à gauche par $P$ et à droite par $P^{-1}$, on
obtient $A = PDP^{-1}$. Montrons par récurrence que $A^n = PD^nP^{-1}$. C'est vrai pour $n = 0$
($I_2 = PP^{-1}$). Si c'est vrai au rang $n$, alors
$$A^{n+1} = A^n A = PD^nP^{-1} \, PDP^{-1} = PD^n D P^{-1} = PD^{n+1}P^{-1} .$$

Calculons. D'abord
$$PD^n = \begin{pmatrix} 1 & 1 \\ \alpha & \beta \end{pmatrix}
\begin{pmatrix} \alpha^n & 0 \\ 0 & \beta^n \end{pmatrix}
= \begin{pmatrix} \alpha^n & \beta^n \\ \alpha^{n+1} & \beta^{n+1} \end{pmatrix} ,$$
puis, avec l'expression de $P^{-1}$ trouvée à la question 3,
$$A^n = \frac{1}{\sqrt{5}}
\begin{pmatrix} -\alpha^n\beta + \alpha\beta^n & \alpha^n - \beta^n \\
-\alpha^{n+1}\beta + \alpha\beta^{n+1} & \alpha^{n+1} - \beta^{n+1} \end{pmatrix} .$$
Comme $\alpha\beta = -1$, on a $-\alpha^{n+1}\beta + \alpha\beta^{n+1} = \alpha^n - \beta^n$, et
pour $n \geq 1$, $-\alpha^n\beta + \alpha\beta^n = \alpha^{n-1} - \beta^{n-1}$. Ainsi, pour
$n \geq 1$,
$$A^n = \frac{1}{\sqrt{5}}
\begin{pmatrix} \alpha^{n-1} - \beta^{n-1} & \alpha^n - \beta^n \\
\alpha^n - \beta^n & \alpha^{n+1} - \beta^{n+1} \end{pmatrix} .$$

Enfin $X_n = A^n X_0$ avec $X_0 = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$ : c'est la deuxième
colonne de $A^n$, donc, pour tout $n \geq 0$ (pour $n = 0$ on vérifie directement),
$$X_n = \frac{1}{\sqrt{5}}
\begin{pmatrix} \alpha^n - \beta^n \\ \alpha^{n+1} - \beta^{n+1} \end{pmatrix} .$$

**6.** La première coordonnée de $X_n$ est $u_n$. Donc, pour tout $n \geq 0$,
$$u_n = \frac{\alpha^n - \beta^n}{\sqrt{5}}
= \frac{1}{\sqrt{5}} \left( \left(\frac{1 + \sqrt{5}}{2}\right)^n
- \left(\frac{1 - \sqrt{5}}{2}\right)^n \right) .$$
On vérifie : $u_0 = 0$, $u_1 = \frac{\alpha - \beta}{\sqrt{5}} = 1$, et
$u_2 = \frac{(\alpha - \beta)(\alpha + \beta)}{\sqrt{5}} = 1$.

**Bilan.** La matrice $A = \begin{pmatrix} 0 & 1 \\ 1 & 1 \end{pmatrix}$ fait passer de
$(u_n, u_{n+1})$ à $(u_{n+1}, u_{n+2})$. Dans la base formée des colonnes $C_1$ et $C_2$, elle
devient la matrice diagonale $D$ : $A = PDP^{-1}$. Les puissances de $A$ se calculent alors
facilement, et on obtient la formule $u_n = \frac{\alpha^n - \beta^n}{\sqrt{5}}$ pour les nombres
de Fibonacci.

## Going further

- Pour $n \geq 1$, la question 5 montre que $A^n = \begin{pmatrix} u_{n-1} & u_n \\ u_n & u_{n+1} \end{pmatrix}$.
  En calculant le déterminant de $A^n$ de deux façons, montrer que
  $u_{n+1}u_{n-1} - u_n^2 = (-1)^n$ (identité de Cassini). Vérifier avec $u_4 u_6 - u_5^2$.
- Dans la suite du sujet, on étudiait la limite de $u_n$ et celle de $\frac{u_{n+1}}{u_n}$. Le
  sujet proposait aussi une autre route vers la formule, sans matrice, avec deux suites
  géométriques : c'est l'exercice 41003.
