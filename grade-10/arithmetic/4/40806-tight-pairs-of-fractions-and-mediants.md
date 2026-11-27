---
id: "40806"
title: "Couples serrés de fractions et moyennes naïves"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [fractions, fraction-irreductible, mediante, pgcd, processus, arret-d-un-processus, encadrement, denombrement]
adapted_from: null
see_also: ["40804", "40805", "40807", "7247"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 2 « Garder le cap », partie 4 « Couples serrés, moyennes naïves et recouvrements par des intervalles principaux », questions 9 à 14"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $n \geqslant 2$ est un entier fixé.

Soit $\frac{a}{b}$ et $\frac{c}{d}$ deux fractions irréductibles, dont les dénominateurs $b$ et $d$
sont des entiers strictement positifs (les numérateurs $a$ et $c$ sont des entiers).

- On dit que le couple $(\frac{a}{b} ; \frac{c}{d})$ est *serré* si $bc - ad = 1$.
- On appelle *moyenne naïve* des fractions $\frac{a}{b}$ et $\frac{c}{d}$ la fraction
  $\frac{a + c}{b + d}$.
- On appelle *intervalles principaux* de la fraction $\frac{a}{b}$ les deux intervalles
  $$\left[\frac{a}{b} - \frac{1}{2bn} \; ; \; \frac{a}{b}\right] \qquad \text{et} \qquad
  \left[\frac{a}{b} \; ; \; \frac{a}{b} + \frac{1}{2bn}\right].$$
  Le premier est l'intervalle principal *inférieur* de $\frac{a}{b}$, le second son intervalle
  principal *supérieur*. Plus généralement, un *intervalle principal* est un intervalle qui est
  l'un des deux intervalles principaux d'une fraction irréductible.

1. Démontrer que le couple de fractions $(\frac{0}{1} ; \frac{1}{1})$ est serré.
2. Soit $(\frac{a}{b} ; \frac{c}{d})$ un couple de fractions serré.

   a) Démontrer que $\frac{a}{b} < \frac{c}{d}$.

   b) Soit $\frac{x}{y}$ la moyenne naïve des fractions $\frac{a}{b}$ et $\frac{c}{d}$. Démontrer
   que $\frac{x}{y}$ est une fraction irréductible, et que les couples $(\frac{a}{b} ; \frac{x}{y})$
   et $(\frac{x}{y} ; \frac{c}{d})$ sont tous deux serrés.
3. Soit $\frac{a}{b}$, $\frac{c}{d}$ et $\frac{e}{f}$ trois fractions irréductibles telles que les
   couples $(\frac{a}{b} ; \frac{c}{d})$ et $(\frac{c}{d} ; \frac{e}{f})$ soient serrés. Démontrer
   que, si $d \geqslant 2n$, la fraction $\frac{c}{d}$ appartient à l'intervalle principal
   supérieur de $\frac{a}{b}$ et à l'intervalle principal inférieur de $\frac{e}{f}$.

On considère maintenant le processus suivant. On part d'une liste dont les deux éléments sont les
fractions irréductibles $\frac{0}{1}$ et $\frac{1}{1}$. Puis, tant que cette liste contient deux
fractions consécutives $\frac{a}{b}$ et $\frac{c}{d}$ telles que $b + d < 2n$, on insère dans la
liste, entre ces deux fractions, leur moyenne naïve $\frac{a+c}{b+d}$.

4. Démontrer que ce processus finit nécessairement par s'arrêter, et qu'alors la liste obtenue
   contient au plus $4n^2$ fractions, et que deux fractions consécutives de la liste forment
   toujours un couple serré.

Soit $\frac{0}{1} = q_1 < q_2 < \cdots < q_N = \frac{1}{1}$ les $N$ fractions obtenues à la fin du
processus. Pour tout entier $k$ tel que $1 \leqslant k \leqslant N - 1$, on note $r_k$ la moyenne
naïve des fractions $q_k$ et $q_{k+1}$.

5. Démontrer que les dénominateurs des fractions $r_k$ sont tous compris entre $2n$ et $4n - 1$.
6. Démontrer que, pour tout entier $k$ tel que $1 \leqslant k \leqslant N - 1$, chacun des
   intervalles $[q_k ; r_k]$ et $[r_k ; q_{k+1}]$ est inclus dans un intervalle principal.

## Hints

1. **Question 2a.** Calculer $\frac{c}{d} - \frac{a}{b}$ en réduisant au même dénominateur.
2. **Question 2b.** Pour l'irréductibilité : un diviseur commun de $x$ et de $y$ divise aussi
   $bx - ay$. Que vaut ce nombre ?
3. **Question 3.** Comme à la question 2a, calculer exactement l'écart entre $\frac{c}{d}$ et
   $\frac{a}{b}$, puis entre $\frac{e}{f}$ et $\frac{c}{d}$.
4. **Question 4.** Vérifier qu'à chaque étape du processus, la liste reste rangée dans l'ordre
   croissant, que deux fractions consécutives forment un couple serré, et que tous les
   dénominateurs restent inférieurs ou égaux à $2n - 1$.
5. **Question 4.** Combien existe-t-il de fractions $\frac{p}{q}$ avec $0 \leqslant p \leqslant q$
   et $1 \leqslant q \leqslant 2n - 1$ ? Une fraction insérée peut-elle être déjà dans la liste ?
6. **Question 5.** Le processus s'est arrêté : que peut-on dire de $b + d$ pour deux fractions
   consécutives $\frac{a}{b}$ et $\frac{c}{d}$ ? Et pourquoi le dénominateur de $r_k$ est-il
   exactement $b + d$ ?
7. **Question 6.** Appliquer la question 3 aux trois fractions $q_k$, $r_k$, $q_{k+1}$.

## Solution

**1.** Avec $\frac{a}{b} = \frac{0}{1}$ et $\frac{c}{d} = \frac{1}{1}$ :
$bc - ad = 1 \times 1 - 0 \times 1 = 1$. Le couple est serré.

**2. a)** On a
$$\frac{c}{d} - \frac{a}{b} = \frac{bc - ad}{bd} = \frac{1}{bd} > 0,$$
puisque $b$ et $d$ sont strictement positifs. Donc $\frac{a}{b} < \frac{c}{d}$.

**b)** Ici $x = a + c$ et $y = b + d > 0$. On calcule
$$bx - ay = b(a + c) - a(b + d) = bc - ad = 1, \qquad yc - xd = (b + d)c - (a + c)d = bc - ad = 1.$$
*Irréductibilité.* Si un entier $m \geqslant 1$ divise à la fois $x$ et $y$, il divise $bx - ay$,
c'est-à-dire $1$, donc $m = 1$. La fraction $\frac{x}{y}$ est irréductible.

*Couples serrés.* Pour le couple $(\frac{a}{b} ; \frac{x}{y})$, la quantité à calculer est
$bx - ay = 1$. Pour le couple $(\frac{x}{y} ; \frac{c}{d})$, c'est $yc - xd = 1$. Les deux couples
sont serrés.

**3.** Comme à la question 2a, $\frac{c}{d} - \frac{a}{b} = \frac{1}{bd} > 0$ et
$\frac{e}{f} - \frac{c}{d} = \frac{1}{df} > 0$. Si $d \geqslant 2n$, alors
$\frac{1}{bd} \leqslant \frac{1}{2bn}$ et $\frac{1}{df} \leqslant \frac{1}{2fn}$. Donc
$$\frac{a}{b} \leqslant \frac{c}{d} \leqslant \frac{a}{b} + \frac{1}{2bn}
\qquad \text{et} \qquad
\frac{e}{f} - \frac{1}{2fn} \leqslant \frac{c}{d} \leqslant \frac{e}{f}.$$
**Conclusion :** $\frac{c}{d}$ appartient à l'intervalle principal supérieur de $\frac{a}{b}$ et à
l'intervalle principal inférieur de $\frac{e}{f}$.

**4.** Montrons d'abord que, à chaque étape du processus, la liste a les trois propriétés
suivantes :

- (P1) ses fractions sont irréductibles et deux fractions consécutives forment un couple serré ;
- (P2) elle est rangée dans l'ordre strictement croissant ;
- (P3) toutes ses fractions $\frac{p}{q}$ vérifient $0 \leqslant p \leqslant q \leqslant 2n - 1$.

Au départ, la liste $\frac{0}{1}, \frac{1}{1}$ les vérifie (question 1, et $1 \leqslant 2n - 1$).
Supposons qu'elle les vérifie, et qu'on insère la moyenne naïve $\frac{x}{y}$ entre deux fractions
consécutives $\frac{a}{b}$ et $\frac{c}{d}$ avec $b + d < 2n$. D'après la question 2b,
$\frac{x}{y}$ est irréductible et les deux nouveaux couples consécutifs sont serrés : (P1) reste
vraie. D'après la question 2a appliquée à ces deux couples,
$\frac{a}{b} < \frac{x}{y} < \frac{c}{d}$ : (P2) reste vraie. Enfin $y = b + d \leqslant 2n - 1$,
et $0 \leqslant x = a + c \leqslant b + d = y$ : (P3) reste vraie.

*Le processus s'arrête.* D'après (P2), les fractions de la liste sont toutes différentes. Ce sont
des fractions irréductibles, donc deux fractions de la liste ont des couples (numérateur,
dénominateur) différents. D'après (P3), ces couples $(p ; q)$ vérifient
$0 \leqslant p \leqslant 2n - 1$ et $1 \leqslant q \leqslant 2n - 1$ : il y a au plus
$2n \times (2n - 1) < 4n^2$ tels couples. La liste contient donc toujours moins de $4n^2$
fractions. Comme chaque étape ajoute une fraction, il y a moins de $4n^2$ étapes : le processus
s'arrête.

**Conclusion :** le processus s'arrête, la liste finale contient au plus $4n^2$ fractions, et deux
fractions consécutives forment toujours un couple serré (propriété P1).

**5.** Soit $k$ tel que $1 \leqslant k \leqslant N - 1$, et écrivons $q_k = \frac{a}{b}$ et
$q_{k+1} = \frac{c}{d}$. Comme le processus s'est arrêté, on a $b + d \geqslant 2n$. D'après la
question 4, ces deux fractions forment un couple serré, donc d'après la question 2b,
$r_k = \frac{a + c}{b + d}$ est une fraction irréductible : son dénominateur est exactement
$b + d$. Enfin, d'après (P3), $b \leqslant 2n - 1$ et $d \leqslant 2n - 1$, donc
$b + d \leqslant 4n - 2$.

**Conclusion :** le dénominateur de $r_k$ est compris entre $2n$ et $4n - 2$, donc entre $2n$ et
$4n - 1$.

**6.** Soit $k$ tel que $1 \leqslant k \leqslant N - 1$. D'après la question 2b, les couples
$(q_k ; r_k)$ et $(r_k ; q_{k+1})$ sont serrés, et d'après la question 5, le dénominateur de
$r_k$ est au moins $2n$. La question 3, appliquée aux trois fractions $q_k$, $r_k$, $q_{k+1}$,
montre que $r_k$ appartient à l'intervalle principal supérieur de $q_k$ et à l'intervalle
principal inférieur de $q_{k+1}$. Notons $b$ et $d$ les dénominateurs de $q_k$ et de $q_{k+1}$.
Comme $q_k < r_k < q_{k+1}$ :
$$[q_k ; r_k] \subset \left[q_k \; ; \; q_k + \frac{1}{2bn}\right]
\qquad \text{et} \qquad
[r_k ; q_{k+1}] \subset \left[q_{k+1} - \frac{1}{2dn} \; ; \; q_{k+1}\right].$$
**Conclusion :** chacun des deux intervalles est inclus dans un intervalle principal.

**Bilan.** Le processus fournit au plus $4n^2$ fractions irréductibles
$0 = q_1 < q_2 < \cdots < q_N = 1$, de dénominateurs au plus $2n - 1$. En coupant chaque
intervalle $[q_k ; q_{k+1}]$ en deux au point $r_k$, dont le dénominateur est compris entre $2n$ et
$4n - 1$, on recouvre $[0 ; 1]$ par au plus $8n^2$ intervalles, dont chacun est inclus dans un
intervalle principal.

## Going further

- Pour $n = 2$, écrire la liste obtenue à la fin du processus, puis pour $n = 3$. Montrer que la
  liste finale contient exactement toutes les fractions irréductibles de $[0 ; 1]$ dont le
  dénominateur est au plus $2n - 1$ : c'est la *suite de Farey* d'ordre $2n - 1$.
- La moyenne naïve est aussi appelée *médiante*. Ce processus, mené sans s'arrêter, construit
  l'*arbre de Stern-Brocot*, qui contient une et une seule fois chaque fraction irréductible de
  $[0 ; 1]$.
- Dans le sujet, ce découpage de $[0 ; 1]$ servait à montrer qu'un escalier (un chemin qui avance
  à chaque pas d'une unité vers la droite ou vers le haut) contient toujours $n$ points alignés :
  voir les exercices 40805 et 40807.
