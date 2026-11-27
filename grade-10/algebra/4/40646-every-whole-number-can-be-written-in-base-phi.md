---
id: "40646"
title: "Écrire les entiers avec les puissances du nombre d'or"
grade: 10
theme: algebra
difficulty: 4
duration_min: 60
tags: [nombre-d-or, puissances, ecriture-en-base, numeration, monovariant, terminaison, recurrence]
adapted_from: null
see_also: ["40647", "40648"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème III « Les nombres en or », partie A, questions 1 à 4, avec les questions 1 et 4 de la partie B. Ordre et numéros : 1 = A1, 2 = A2, 3 = A3 et B1 réunies, 4 = B4, 5 = A4. La question B4 est placée avant A4 parce que la preuve de A4 s'en sert."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

On note $\varphi = \frac{1 + \sqrt{5}}{2} \approx \text{1,618}$ le *nombre d'or*. C'est la plus
grande solution de l'équation $x^2 = x + 1$, donc

$$\varphi^2 = \varphi + 1.$$

Un réel $x$ est dit *en or* s'il existe deux entiers naturels $p$ et $q$ et des chiffres
$a_p, a_{p-1}, \ldots, a_0, a_{-1}, \ldots, a_{-q}$, valant chacun $0$ ou $1$, tels que

$$x = a_p\varphi^p + a_{p-1}\varphi^{p-1} + \cdots + a_1\varphi + a_0 + a_{-1}\varphi^{-1} + \cdots + a_{-q}\varphi^{-q}.$$

On écrit alors $x \triangleright a_p a_{p-1} \ldots a_0 , a_{-1} \ldots a_{-q}$, et l'on dit que
c'est une *représentation en or* de $x$. Par exemple, si
$x = \varphi^3 + \varphi^2 + 1 + \frac{1}{\varphi} + \frac{1}{\varphi^4}$, on écrit
$x \triangleright$ 1101,1001. On peut ajouter autant de $0$ que l'on veut au début ou à la fin
d'une représentation.

Une *séquence* d'une représentation est une suite de chiffres consécutifs qui y apparaît : par
exemple, 10110 est une séquence de 1101,1001 (les chiffres 1, 0, 1, 1, 0 qui entourent la
virgule). Une représentation est dite *en or pur* si elle ne contient jamais deux chiffres $1$
consécutifs.

1. Montrer que, dans une représentation en or de $x$, on peut remplacer n'importe quelle séquence
   011 par 100, et réciproquement, et obtenir une autre représentation en or de $x$. Par
   exemple, le réel représenté par 1101,1001 admet aussi les représentations 1110,0001 et
   1101,0111. On dit que les séquences 011 et 100 sont *équivalentes*.
2. Plus généralement, donner une séquence sans deux $1$ consécutifs qui soit équivalente à la
   séquence $0\,1\,1 \ldots 1$ formée d'un $0$ suivi de $n$ chiffres $1$ (c'est-à-dire qu'on peut
   la mettre à la place de celle-ci dans n'importe quelle représentation sans changer le
   nombre représenté).
3. Montrer que les entiers $2$, $3$, $4$ et $5$ sont en or, et donner pour chacun une
   représentation en or pur.
4. Montrer que tout réel en or possède une représentation en or pur.
5. Montrer que tous les entiers naturels sont en or.

## Hints

1. **Question 1.** En multipliant $\varphi^2 = \varphi + 1$ par une puissance de $\varphi$,
   comparer $\varphi^{k+1}$ et $\varphi^k + \varphi^{k-1}$, pour tout entier relatif $k$.
2. **Question 2.** Remplacer les trois premiers chiffres 011 par 100 : que reste-t-il à droite ?
   Recommencer.
3. **Question 3.** Diviser $\varphi^2 = \varphi + 1$ par $\varphi^2$ pour écrire $1$ autrement,
   puis passer de $1$ à $2$, de $2$ à $3$, etc., en ajoutant $1$ à chaque fois.
4. **Question 4.** Quand une représentation contient deux $1$ consécutifs, regarder la paire de
   $1$ consécutifs la plus à gauche : quel est le chiffre juste avant ? Quel remplacement
   peut-on faire, et que devient le nombre de chiffres $1$ ?
5. **Question 5.** Montrer de proche en proche (par récurrence) que tout entier $n$ a une
   représentation en or pur. Si $n$ en a une, comment en obtenir une pour $n + 1$ ? Le cas où le
   chiffre des unités $a_0$ vaut $0$ est facile.
6. **Question 5.** Si $a_0 = 1$, on veut le rendre nul en le faisant « descendre » par un
   remplacement $100 \to 011$. Cela demande $a_{-1} = a_{-2} = 0$. Si $a_{-2} = 1$, il faut d'abord
   faire descendre celui-là, et ainsi de suite.

## Solution

**1.** Pour tout entier relatif $k$, en multipliant $\varphi^2 = \varphi + 1$ par $\varphi^{k-1}$,
on obtient

$$\varphi^{k+1} = \varphi^k + \varphi^{k-1}.$$

Si une séquence 011 occupe les positions $k+1$, $k$, $k-1$ (c'est-à-dire
$a_{k+1} = 0$, $a_k = a_{k-1} = 1$), sa contribution au nombre $x$ est $\varphi^k + \varphi^{k-1}$.
La remplacer par 100 change cette contribution en $\varphi^{k+1}$, qui est égal. Les autres
chiffres ne bougent pas, donc le nombre représenté ne change pas. Le remplacement de 100 par 011
est le même calcul lu dans l'autre sens.

Sur l'exemple : dans 1101,1001, la séquence « 01,1 » (positions $1$, $0$, $-1$) devient
« 10,0 », ce qui donne 1110,0001 ; la séquence 100 aux positions $-1$, $-2$, $-3$ devient 011, ce
qui donne 1101,0111.

**2.** Remplaçons les trois premiers chiffres 011 par 100 :

$$0\,1\,1\,\underbrace{1 \ldots 1}_{n-2} \quad\text{devient}\quad 1\,0\,[\,0\,\underbrace{1 \ldots 1}_{n-2}\,].$$

Entre crochets, on retrouve un $0$ suivi de $n - 2$ chiffres $1$. On recommence sur ce morceau,
et ainsi de suite : à chaque étape on écrit « 10 » et il reste un $0$ suivi de deux $1$ de moins.
On s'arrête quand il reste « 0 » seul ($n$ pair) ou « 01 » ($n$ impair), qui n'ont pas deux $1$
consécutifs. Ainsi, en notant $(10)^j$ la séquence 10 écrite $j$ fois :

- si $n$ est pair, $0\,1 \ldots 1$ ($n$ chiffres $1$) est équivalente à $(10)^{n/2}\,0$ ;
- si $n$ est impair, elle est équivalente à $(10)^{(n-1)/2}\,01$.

Par exemple 011 est équivalente à 100, 0111 à 1001, 01111 à 10100, 011111 à 101001. Les deux
séquences ont bien la même longueur $n + 1$.

**3.** En divisant $\varphi^2 = \varphi + 1$ par $\varphi^2$, on obtient

$$1 = \frac{1}{\varphi} + \frac{1}{\varphi^2}.$$

- $2 = 1 + 1 = 1 + \varphi^{-1} + \varphi^{-2}$, donc $2 \triangleright$ 1,11. Avec un $0$ en
  tête, 01,11 contient la séquence 011 aux positions $1$, $0$, $-1$, que l'on remplace par 100 :
  $2 \triangleright$ 10,01, c'est-à-dire $2 = \varphi + \varphi^{-2}$.
- $3 = 2 + 1 \triangleright$ 11,01 ; avec un $0$ en tête, 011,01 devient 100,01 :
  $3 = \varphi^2 + \varphi^{-2}$.
- $4 = 3 + 1$ : le chiffre des unités de 100,01 est $0$, on le remplace par $1$ :
  $4 \triangleright$ 101,01, soit $4 = \varphi^2 + 1 + \varphi^{-2}$.
- $5 = 4 + 1 = \varphi^2 + 2 + \varphi^{-2}$. Or $2 = \varphi + \varphi^{-2}$, et en multipliant
  par $\varphi^{-2}$, $2\varphi^{-2} = \varphi^{-1} + \varphi^{-4}$. Donc
  $5 = \varphi^2 + \varphi + 2\varphi^{-2} = \varphi^2 + \varphi + \varphi^{-1} + \varphi^{-4}$,
  soit $5 \triangleright$ 110,1001. Le remplacement de 011 par 100 en tête donne
  $5 \triangleright$ 1000,1001, soit $5 = \varphi^3 + \varphi^{-1} + \varphi^{-4}$.

Les représentations 10,01, 100,01, 101,01 et 1000,1001 sont en or pur. On peut vérifier à la
calculatrice : $\varphi^3 + \varphi^{-1} + \varphi^{-4} \approx \text{4,236} + \text{0,618} + \text{0,146} = 5$.

**4.** Partons d'une représentation en or de $x$. Si elle ne contient pas deux $1$ consécutifs, elle
est en or pur. Sinon, considérons la paire de $1$ consécutifs la plus à gauche, aux positions $i$
et $i - 1$. Le chiffre $a_{i+1}$ vaut $0$ : sinon la paire aux positions $i + 1$ et $i$ serait plus
à gauche. (Si $i$ est la première position écrite, on ajoute un $0$ en tête.) La séquence aux
positions $i+1$, $i$, $i-1$ est donc 011 : on la remplace par 100. D'après la question 1, on
obtient une représentation en or du même nombre $x$, et elle contient **un chiffre $1$ de moins**.

On recommence tant qu'il reste deux $1$ consécutifs. Le nombre de chiffres $1$ est un entier
naturel qui diminue de $1$ à chaque remplacement : on ne peut donc faire qu'un nombre fini de
remplacements. Quand on s'arrête, la représentation ne contient plus deux $1$ consécutifs.

**Conclusion :** tout réel en or a une représentation en or pur.

**5.** Montrons de proche en proche que tout entier naturel $n$ a une représentation en or pur.
Pour $n = 0$, tous les chiffres valent $0$. Supposons que $n$ ait une représentation en or pur, de
chiffres $a_i$, et cherchons-en une pour $n + 1$.

*Cas $a_0 = 0$.* On remplace $a_0$ par $1$ : on obtient une représentation en or de $n + 1$. Elle
n'est peut-être pas en or pur, mais la question 4 la transforme en une représentation en or pur.

*Cas $a_0 = 1$.* La représentation est en or pur, donc $a_1 = a_{-1} = 0$. Regardons les chiffres
$a_0, a_{-2}, a_{-4}, \ldots$ : il y a un plus grand entier $m \geqslant 0$ tel que
$a_0 = a_{-2} = \cdots = a_{-2m} = 1$ (il n'y a qu'un nombre fini de $1$). Comme la représentation
est en or pur, les chiffres $a_{-1}, a_{-3}, \ldots, a_{-2m-1}$ entre eux valent $0$, et
$a_{-2m-2} = 0$ par définition de $m$. Des positions $0$ à $-2m-2$, on lit donc

$$1\,0\,1\,0 \ldots 1\,0\,0.$$

- Aux positions $-2m$, $-2m-1$, $-2m-2$ se trouve la séquence 100 : on la remplace par 011. Le
  chiffre $a_{-2m}$ devient $0$.
- Si $m \geqslant 1$, aux positions $-2m+2$, $-2m+1$, $-2m$ on lit maintenant 100 : on la remplace
  par 011, et $a_{-2m+2}$ devient $0$.
- On remonte ainsi de deux positions à chaque fois, jusqu'aux positions $0$, $-1$, $-2$.

Après ces $m + 1$ remplacements, on a une représentation en or de $n$ (question 1) dont le
chiffre des unités vaut $0$. On le remplace par $1$ : c'est une représentation en or de $n + 1$,
que la question 4 rend pure.

Par exemple, pour $n = 4 \triangleright$ 101,01 ($m = 1$) : 101,01 devient 101,0011 puis
100,1111 ; en mettant le chiffre des unités à $1$, $5 \triangleright$ 101,1111, que la question 4
transforme en 1000,1001, comme à la question 3.

**Conclusion :** tout entier naturel a une représentation en or pur ; en particulier, tous les
entiers naturels sont en or.

**Bilan.** Grâce à l'égalité $\varphi^{k+1} = \varphi^k + \varphi^{k-1}$, on peut transformer une
représentation en or sans changer le nombre représenté. Tout nombre en or a ainsi une
représentation sans deux $1$ consécutifs, et tout entier naturel est en or : on l'écrit avec un
nombre fini de puissances distinctes de $\varphi$, positives ou négatives.

## Going further

- Dans la suite du sujet, on montrait que la représentation en or pur est **unique**, et qu'il
  existe des réels positifs qui ne sont pas en or (exercice 40647), puis on calculait la
  représentation de $2018$ (exercice 40648).
- Cette façon d'écrire les nombres, la « base $\varphi$ », a été inventée en 1957 par George
  Bergman, qui avait alors douze ans.
- Trouver la représentation en or pur de $6$ et de $7$. Que remarquez-vous pour $7$ ? (Indication :
  $\varphi^4 + \varphi^{-4}$.)
