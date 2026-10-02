---
id: "11443"
title: "Effacer les moyennes"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [moyenne, puissances-de-2, divisibilite, invariant, processus, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 12 ; corrigé 2023-03_corrige-envoi-4.pdf ; le corrigé affirme « si n ⩽ 2, la réponse est n », ce qui est faux pour n = 1 (il reste 0 et 1, donc 2 nombres)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Les nombres $0, 1, 2, \ldots, n$ sont écrits au tableau.

À tout moment, Thanima peut effacer un nombre du tableau à condition qu'il soit la moyenne de deux
**autres** nombres encore écrits au tableau. Par exemple, elle peut effacer $3$ si $1$ et $5$ sont
encore là, puisque $3 = \frac{1 + 5}{2}$.

Thanima veut effacer le plus de nombres possible. Selon la valeur de $n$, combien de nombres
restera-t-il au minimum sur le tableau ?

## Hints

1. Essaie $n = 2, 3, 4, 5, 6, 8$. Y a-t-il des nombres qu'on ne pourra jamais effacer ?
2. Pour $n = 8$, commence par effacer tous les nombres impairs. Qu'est-ce qui reste, et comment
   continuer ?
3. Quand $n$ n'est pas une puissance de $2$, essaie d'abord d'effacer les nombres compris entre la
   plus grande puissance de $2$ inférieure à $n$, et $n$.
4. Pour montrer qu'il reste au moins trois nombres quand $n = 6$, par exemple : si $x$ et $y$ sont
   des multiples de $3$ et que $\frac{x + y}{2}$ est entier, est-ce encore un multiple de $3$ ?
   Raisonne en remontant le temps.

## Solution

La réponse est : **il reste $2$ nombres quand $n$ est une puissance de $2$** ($n = 1, 2, 4, 8,
\ldots$), **et $3$ nombres sinon**.

**Étape 1 : $0$ et $n$ restent toujours.** Le nombre $0$ est le plus petit du tableau. S'il était la
moyenne de deux autres nombres du tableau, ces deux nombres seraient plus grands que $0$, et leur
moyenne aussi : ce n'est pas possible. Donc $0$ n'est jamais effacé. De même, $n$ est le plus grand
nombre du tableau et n'est jamais effacé. Il reste donc **au moins deux nombres**.

**Étape 2 : quand $n = 2^k$, il peut ne rester que $0$ et $n$.** Pour $n = 1$, il n'y a rien à
faire. Supposons $k \geqslant 1$ et procédons par vagues.

- *Vague 1 : les nombres impairs.* Un nombre impair $x$ compris entre $0$ et $n$ est la moyenne de
  $x - 1$ et $x + 1$, qui sont pairs. Comme on n'efface que des nombres impairs pendant cette vague,
  $x - 1$ et $x + 1$ sont encore là, et on peut effacer tous les impairs, dans n'importe quel ordre.
  Il reste $0, 2, 4, \ldots, n$.
- *Vague 2 : les multiples de $2$ qui ne sont pas multiples de $4$.* Un tel nombre $x$ est la
  moyenne de $x - 2$ et $x + 2$, qui sont des multiples de $4$, encore présents. Il reste
  $0, 4, 8, \ldots, n$.
- On continue ainsi : à chaque vague, il reste les multiples d'une puissance de $2$, et l'on efface
  un nombre sur deux. À la dernière vague, il reste $0$, $\frac{n}{2}$ et $n$, et l'on efface
  $\frac{n}{2}$, moyenne de $0$ et $n$.

À la fin, il ne reste que $0$ et $n$.

**Étape 3 : quand $n$ n'est pas une puissance de $2$, il peut ne rester que trois nombres.** Soit
$2^k$ la plus grande puissance de $2$ inférieure à $n$ : on a $2^k < n < 2^{k+1}$, donc
$\frac{n}{2} < 2^k$.

*D'abord, effaçons $n - 1$, puis $n - 2$, et ainsi de suite jusqu'à $2^k + 1$, dans cet ordre.* Au
moment d'effacer un nombre $x$ de cette liste, les nombres $0, 1, \ldots, x$ et $n$ sont encore au
tableau. Or

$$x = \frac{n + (2x - n)}{2} .$$

Le nombre $2x - n$ est un entier, positif car $x > 2^k > \frac{n}{2}$, et plus petit que $x$ car
$x < n$. Il est donc encore au tableau, tout comme $n$, et on peut effacer $x$.

Il reste alors $0, 1, \ldots, 2^k$ et $n$. *Ensuite*, on applique la méthode de l'étape 2 aux nombres
$0, 1, \ldots, 2^k$ : elle n'utilise que ces nombres-là, et elle ne laisse que $0$ et $2^k$.

À la fin, il reste $0$, $2^k$ et $n$ : **trois nombres**.

**Étape 4 : quand $n$ n'est pas une puissance de $2$, il ne peut pas rester seulement deux nombres.**

*Un diviseur impair.* Divisons $n$ par $2$ tant que c'est possible. Comme $n$ n'est pas une puissance
de $2$, on s'arrête sur un nombre impair $d$ plus grand que $1$, et $d$ divise $n$. (Pour $n = 12$,
on trouve $d = 3$.)

*Une propriété des multiples de $d$.* Si $x$ et $y$ sont des multiples de $d$ et que
$m = \frac{x + y}{2}$ est entier, alors $m$ est encore un multiple de $d$. En effet,
$2m = x + y$ est un multiple de $d$ : écrivons $2m = d \times t$. Le produit $d \times t$ est pair et
$d$ est impair, donc $t$ est pair, $t = 2s$, et $m = d \times s$.

*On remonte le temps.* Supposons que Thanima arrive à ne laisser que $0$ et $n$, qui sont deux
multiples de $d$. Regardons ses effacements à l'envers, en partant de la fin : chaque étape rajoute
au tableau un nombre qui est la moyenne de deux nombres déjà présents. D'après la propriété
ci-dessus, si tous les nombres du tableau sont des multiples de $d$, le nombre rajouté en est un
aussi. De proche en proche, tous les nombres présents à chaque instant sont des multiples de $d$,
y compris au tout début.

Mais au début, le nombre $1$ était au tableau, et $1$ n'est pas un multiple de $d$ puisque
$d > 1$. C'est une contradiction : il reste forcément au moins trois nombres.

**Conclusion.** Avec une stratégie optimale, il reste $2$ nombres sur le tableau quand $n$ est une
puissance de $2$, et $3$ nombres sinon.

## Going further

Avec $n = 0$, le tableau ne porte que le nombre $0$, et il en reste $1$. Le corrigé de l'envoi
affirme que pour $n \leqslant 2$ il reste $n$ nombres : c'est juste pour $n = 2$, mais faux pour
$n = 0$ et $n = 1$, où il en reste $1$ et $2$.
