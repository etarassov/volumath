---
id: "40647"
title: "L'écriture en or pur est unique, mais tous les réels ne sont pas en or"
grade: 10
theme: algebra
difficulty: 3
duration_min: 40
tags: [nombre-d-or, puissances, ecriture-en-base, unicite, telescopage, irrationnel, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40646", "40648"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème III « Les nombres en or », partie B « Représentation en or pur », questions 2 a, 2 b et 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

On note $\varphi = \frac{1 + \sqrt{5}}{2} \approx \text{1,618}$ le *nombre d'or*. Il vérifie

$$\varphi^2 = \varphi + 1.$$

Un réel $x$ est dit *en or* s'il existe deux entiers naturels $p$ et $q$ et des chiffres
$a_p, \ldots, a_0, a_{-1}, \ldots, a_{-q}$, valant chacun $0$ ou $1$, tels que

$$x = a_p\varphi^p + \cdots + a_1\varphi + a_0 + a_{-1}\varphi^{-1} + \cdots + a_{-q}\varphi^{-q}.$$

On écrit alors $x \triangleright a_p \ldots a_0 , a_{-1} \ldots a_{-q}$ : c'est une
*représentation en or* de $x$. Par exemple, $\varphi^3 + \varphi^2 + 1 + \varphi^{-1} + \varphi^{-4}
\triangleright$ 1101,1001. On peut ajouter autant de $0$ que l'on veut au début ou à la fin.

Une représentation est *en or pur* si elle ne contient jamais deux chiffres $1$ consécutifs.
Pour $x \neq 0$, la *teneur en or* d'une représentation est le plus grand exposant $n$ tel que
$a_n = 1$. Par exemple, la teneur de 1101,1001 est $3$, et celle de 0,0010 est $-3$.

1. Soit $x$ un réel ayant une représentation en or pur de teneur $n$. Montrer que
   $$\varphi^n \leqslant x < \varphi^{n+1}.$$
2. Montrer qu'un réel a au plus une représentation en or pur (on ne compte pas les $0$ ajoutés au
   début ou à la fin).
3. Montrer qu'il existe des réels strictement positifs qui ne sont pas en or.

## Hints

1. **Question 1.** Dans une représentation en or pur de teneur $n$, les $1$ sont au mieux aux
   positions $n$, $n - 2$, $n - 4$, … Majorer $x$ par $\varphi^n + \varphi^{n-2} + \cdots$
2. **Question 1.** L'égalité $\varphi^{k+1} = \varphi^k + \varphi^{k-1}$ s'écrit aussi
   $\varphi^k = \varphi^{k+1} - \varphi^{k-1}$ : la somme $\varphi^n + \varphi^{n-2} + \cdots$
   se simplifie en cascade.
3. **Question 2.** Si deux représentations en or pur différentes donnent le même $x$, regarder la
   position la plus à gauche où leurs chiffres diffèrent, et retirer ce qui est commun à gauche.
4. **Question 3.** Écrire $\frac{1}{\varphi}$ sous la forme $u + v\varphi$ avec $u$ et $v$
   entiers. Montrer ensuite que tout nombre en or s'écrit $u + v\varphi$ avec $u$, $v$ entiers
   relatifs.
5. **Question 3.** Le nombre $\frac{1}{2}$ peut-il s'écrire ainsi ? On pourra utiliser que
   $\sqrt{5}$ n'est pas un nombre rationnel.

## Solution

Pour tout entier relatif $k$, en multipliant $\varphi^2 = \varphi + 1$ par $\varphi^{k-1}$, on a
$\varphi^{k+1} = \varphi^k + \varphi^{k-1}$, c'est-à-dire

$$\varphi^k = \varphi^{k+1} - \varphi^{k-1}. \qquad (\star)$$

**1.** *Minoration.* On a $a_n = 1$ et tous les autres termes sont positifs ou nuls, donc
$x \geqslant \varphi^n$.

*Majoration.* Notons $j_1 > j_2 > \cdots > j_r$ les positions des chiffres $1$, avec $j_1 = n$.
Comme il n'y a jamais deux $1$ consécutifs, deux positions successives diffèrent d'au moins $2$ :
$j_2 \leqslant n - 2$, $j_3 \leqslant n - 4$, et en général $j_s \leqslant n - 2(s - 1)$. Comme
$\varphi > 1$, les puissances de $\varphi$ sont croissantes, donc

$$x = \varphi^{j_1} + \cdots + \varphi^{j_r} \leqslant \varphi^n + \varphi^{n-2} + \cdots + \varphi^{n-2r+2}.$$

D'après $(\star)$, chaque terme s'écrit $\varphi^{k} = \varphi^{k+1} - \varphi^{k-1}$, et la somme se
simplifie en cascade :

$$\varphi^n + \varphi^{n-2} + \cdots + \varphi^{n-2r+2} = (\varphi^{n+1} - \varphi^{n-1}) + (\varphi^{n-1} - \varphi^{n-3}) + \cdots + (\varphi^{n-2r+3} - \varphi^{n-2r+1}),$$

et tous les termes intermédiaires s'annulent deux à deux :

$$\varphi^n + \varphi^{n-2} + \cdots + \varphi^{n-2r+2} = \varphi^{n+1} - \varphi^{n-2r+1}.$$

Comme $\varphi^{n-2r+1} > 0$, on obtient $x < \varphi^{n+1}$.

**Conclusion :** $\varphi^n \leqslant x < \varphi^{n+1}$.

**2.** Supposons qu'un réel $x$ ait deux représentations en or pur différentes, de chiffres
$a_i$ et $b_i$ (complétées par des $0$ pour couvrir les mêmes positions). Soit $j$ la position la
plus à gauche où elles diffèrent ; quitte à échanger les deux, $a_j = 1$ et $b_j = 0$. À gauche de
$j$, les chiffres sont les mêmes ; en retirant leur contribution commune des deux côtés, on obtient

$$y = \sum_{i \leqslant j} a_i\,\varphi^i = \sum_{i \leqslant j - 1} b_i\,\varphi^i.$$

- À gauche, c'est une représentation en or pur (on a seulement effacé des chiffres) de teneur
  $j$ : d'après la question 1, $y \geqslant \varphi^j$.
- À droite, c'est aussi une représentation en or pur. Si tous les $b_i$ sont nuls, $y = 0$.
  Sinon, sa teneur $t$ vérifie $t \leqslant j - 1$, et la question 1 donne
  $y < \varphi^{t+1} \leqslant \varphi^j$. Dans les deux cas, $y < \varphi^j$.

C'est une contradiction. **Un réel a donc au plus une représentation en or pur.**

**3.** *Tous les nombres en or sont de la forme $u + v\varphi$.* Notons $E$ l'ensemble des réels
$u + v\varphi$ avec $u$ et $v$ entiers relatifs. En divisant $\varphi^2 = \varphi + 1$ par
$\varphi$, on obtient $\varphi = 1 + \frac{1}{\varphi}$, donc $\frac{1}{\varphi} = \varphi - 1$.
Pour $u$, $v$ entiers :

$$(u + v\varphi)\,\varphi = u\varphi + v(\varphi + 1) = v + (u + v)\varphi,$$

$$(u + v\varphi)\,\frac{1}{\varphi} = (u + v\varphi)(\varphi - 1) = u\varphi - u + v(\varphi + 1) - v\varphi = (v - u) + u\varphi.$$

Multiplier ou diviser un élément de $E$ par $\varphi$ donne donc encore un élément de $E$. Comme
$1 = 1 + 0\varphi$ est dans $E$, de proche en proche toutes les puissances $\varphi^k$, $k$ entier
relatif, sont dans $E$. Enfin, une somme d'éléments de $E$ est dans $E$. Donc tout nombre en or est
dans $E$.

*Le nombre $\frac{1}{2}$ n'est pas en or.* Supposons $\frac{1}{2} = u + v\varphi$ avec $u$, $v$
entiers. Si $v = 0$, alors $u = \frac{1}{2}$, qui n'est pas un entier. Si $v \neq 0$, alors
$\varphi = \frac{1 - 2u}{2v}$ serait un rationnel, donc $\sqrt{5} = 2\varphi - 1$ aussi.

Or $\sqrt{5}$ n'est pas rationnel. Supposons $\sqrt{5} = \frac{a}{b}$, fraction irréductible. Alors
$a^2 = 5b^2$, donc $a^2$ se termine par $0$ ou $5$. Les carrés des chiffres $0$ à $9$ se terminent
par $0, 1, 4, 9, 6, 5, 6, 9, 4, 1$ : seuls les nombres terminés par $0$ ou $5$ ont un carré terminé
par $0$ ou $5$. Donc $a$ est un multiple de $5$, $a = 5c$, et $25c^2 = 5b^2$, soit $b^2 = 5c^2$. Par
le même raisonnement, $b$ est aussi un multiple de $5$, ce qui contredit l'irréductibilité.

**Conclusion :** $\frac{1}{2}$ est un réel strictement positif qui n'est pas en or.

**Bilan.** Si un réel a une représentation en or pur de teneur $n$, il est compris entre
$\varphi^n$ (inclus) et $\varphi^{n+1}$ (exclu), et cette représentation est la seule
représentation en or pur de ce réel. En revanche, les nombres en or sont tous de la forme
$u + v\varphi$ avec $u$, $v$ entiers, et cela suffit à montrer que certains réels positifs, comme
$\frac{1}{2}$, ne sont pas en or.

## Going further

- Le même argument montre que $\frac{1}{3}$, $\sqrt{2}$ ou $\frac{\varphi}{2}$ ne sont pas en or.
  Réciproquement, un réel $u + v\varphi$ avec $u$, $v$ entiers est-il toujours en or ? (Penser
  à $-1$.)
- Dans la suite du sujet, on utilisait l'encadrement de la question 1 pour calculer la teneur avec
  un logarithme et trouver la représentation de $2018$ (exercice 40648). L'existence d'une
  représentation en or pur pour tout nombre en or, et pour tout entier, est dans l'exercice 40646.
