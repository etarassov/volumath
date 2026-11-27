---
id: "40526"
title: "Une suite positive de type M : aucun terme ne dépasse le triple d'un autre"
grade: 10
theme: functions-analysis
difficulty: 5
duration_min: 45
tags: [suites, moyenne, inegalite, majoration, construction, somme]
adapted_from: null
see_also: ["40525", "40527"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2015, mathématiques, série S"
  reference: "cg-2015-s-sujet.pdf, problème III « Moyennes prévisionnelles », question 4° a) et b). La question 4° a) du sujet est coupée ici en deux questions 1 a) et 1 b)."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2015-s-sujet.pdf"
---

## Statement

On considère des suites de nombres $(u_n) = (u_1, u_2, u_3, \ldots)$, numérotées à partir de
$1$. On dit qu'une suite est *de type M* si, pour tout entier $n \geqslant 1$, le terme $u_n$
est la moyenne des $n$ termes qui le suivent :

$$u_n = \frac{u_{n+1} + u_{n+2} + \cdots + u_{2n}}{n} .$$

Dans tout l'exercice, $(u_n)$ est une suite de type M dont tous les termes sont positifs ou
nuls, et $r \geqslant 1$ est un entier fixé.

1. Soit $p$ un entier tel que $p > r$.

   a) Montrer qu'il existe des entiers $q \geqslant 1$ et $q' \geqslant 1$ tels que
   $$q < p \leqslant q' \leqslant 2q \qquad \text{et} \qquad u_{q'} \leqslant u_q \leqslant u_r .$$

   b) En déduire que $u_p \leqslant 3u_r$.

2. Montrer que $u_p \leqslant 3u_r$ pour tout entier $p \geqslant 1$.

## Hints

1. **Question 1 a).** Pour un entier $m \geqslant 1$, les nombres $u_{m+1}, \ldots, u_{2m}$ ne
   peuvent pas être tous strictement plus grands que leur moyenne $u_m$. L'un d'eux est donc
   inférieur ou égal à $u_m$.
2. **Question 1 a).** Partir de $r$ et sauter à un numéro compris entre $r + 1$ et $2r$ où le
   terme est inférieur ou égal à $u_r$, puis recommencer à partir de ce numéro, jusqu'à
   atteindre ou dépasser $p$.
3. **Question 1 b).** Écrire $q\,u_q$ et $q'\,u_{q'}$ comme des sommes de termes de la suite.
   Grâce à $q' \leqslant 2q$, quels numéros ces deux sommes couvrent-elles à elles deux ?
4. **Question 1 b).** Les termes $u_{p+1}, \ldots, u_{2p}$, dont la somme est $p\,u_p$, font
   partie de ces numéros. Comparer ensuite $q + q'$ et $3p$.
5. **Question 2.** Pour $p < r$, descendre : commencer par $p = r - 1$, dont la moyenne ne fait
   intervenir que des termes de numéro au moins $r$.

## Solution

Une remarque servira plusieurs fois. *Pour tout $m \geqslant 1$, l'un au moins des termes
$u_{m+1}, \ldots, u_{2m}$ est inférieur ou égal à $u_m$.* En effet, s'ils étaient tous
strictement plus grands que $u_m$, leur moyenne, qui vaut $u_m$, serait strictement plus grande
que $u_m$.

**1. a)** Construisons des numéros $q_0 < q_1 < q_2 < \cdots$ de la façon suivante. On pose
$q_0 = r$. Une fois $q_k$ construit, la remarque fournit un numéro $q_{k+1}$ compris entre
$q_k + 1$ et $2q_k$ tel que $u_{q_{k+1}} \leqslant u_{q_k}$. On a ainsi

$$u_r = u_{q_0} \geqslant u_{q_1} \geqslant u_{q_2} \geqslant \cdots \qquad \text{et} \qquad q_k < q_{k+1} \leqslant 2q_k .$$

Les numéros $q_k$ augmentent d'au moins $1$ à chaque étape, donc ils finissent par atteindre ou
dépasser $p$. Comme $q_0 = r < p$, il y a un dernier numéro $q_k$ strictement plus petit que
$p$, et alors $q_{k+1} \geqslant p$. On pose $q = q_k$ et $q' = q_{k+1}$ : on a bien
$q < p \leqslant q' \leqslant 2q$ et $u_{q'} \leqslant u_q \leqslant u_r$.

**b)** Par définition d'une suite de type M,

$$u_{q+1} + \cdots + u_{2q} = q\,u_q \qquad \text{et} \qquad u_{q'+1} + \cdots + u_{2q'} = q'\,u_{q'} .$$

Comme $q < q' \leqslant 2q$, tout numéro $k$ tel que $q < k \leqslant 2q'$ est dans l'une des
deux plages : ou bien $k \leqslant 2q$, ou bien $k > 2q \geqslant q'$. Les termes étant
positifs ou nuls, on peut ajouter les deux égalités sans craindre les termes comptés deux
fois :

$$u_{q+1} + u_{q+2} + \cdots + u_{2q'} \leqslant q\,u_q + q'\,u_{q'} \leqslant (q + q')\,u_q .$$

Or $p\,u_p = u_{p+1} + \cdots + u_{2p}$, et les numéros $p + 1, \ldots, 2p$ sont compris entre
$q + 1$ et $2q'$ (car $q < p$ et $p \leqslant q'$). Toujours parce que les termes sont positifs
ou nuls,

$$p\,u_p \leqslant u_{q+1} + \cdots + u_{2q'} \leqslant (q + q')\,u_q .$$

Enfin $q < p$ et $q' \leqslant 2q < 2p$, donc $q + q' < 3p$, et comme $u_q \geqslant 0$,
$(q + q')\,u_q \leqslant 3p\,u_q$. Donc $p\,u_p \leqslant 3p\,u_q$, puis
$u_p \leqslant 3u_q \leqslant 3u_r$.

**2.** *Si $p > r$*, c'est la question 1. *Si $p = r$*, $u_r \leqslant 3u_r$ car $u_r \geqslant 0$.

*Si $p < r$*, on descend de proche en proche. On sait déjà que tous les termes de numéro au
moins $r$ sont inférieurs ou égaux à $3u_r$. Le terme $u_{r-1}$ est la moyenne de
$u_r, \ldots, u_{2r-2}$, qui sont tous inférieurs ou égaux à $3u_r$, donc
$u_{r-1} \leqslant 3u_r$. Maintenant tous les termes de numéro au moins $r - 1$ sont
inférieurs ou égaux à $3u_r$, et $u_{r-2}$ est la moyenne de termes de numéro au moins
$r - 1$, donc $u_{r-2} \leqslant 3u_r$. On continue ainsi jusqu'à $u_1$.

**Conclusion :** $u_p \leqslant 3u_r$ pour tout $p \geqslant 1$.

**Bilan.** Dans une suite de type M dont tous les termes sont positifs ou nuls, aucun terme
n'est plus grand que le triple d'un autre terme : $u_p \leqslant 3u_r$ pour tous les numéros
$p$ et $r$. La preuve repose sur le fait qu'une moyenne n'est jamais strictement plus petite
que tous les nombres dont elle est la moyenne. Ce résultat est une étape : on montre ensuite
(exercice 40527) qu'une suite de type M à termes positifs ou nuls est en fait constante, de
sorte que l'inégalité $u_p \leqslant 3u_r$ sert d'outil pour le prouver, et non à décrire des
suites variées.

## Going further

- En appliquant ce résultat à la suite $(u_n - m)$, où $m$ est un nombre inférieur ou égal à
  tous les termes, le sujet en déduisait qu'une suite de type M minorée est forcément
  constante : voir l'exercice 40527. En particulier, les seules suites qui vérifient
  l'hypothèse de cet exercice sont les suites constantes positives ou nulles. On ne peut donc
  pas tester l'inégalité sur un exemple non constant : seule la preuve compte.
- Pour une suite positive de type M, on vient de voir que si un terme vaut $0$, tous les termes
  valent $0$. Pourquoi ?
- La définition des suites de type M et des exemples de telles suites non constantes (qui
  prennent forcément des valeurs négatives) sont dans l'exercice 40525.
