---
id: "11032"
title: "f(f(n)) compte les diviseurs de n"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombre-de-diviseurs, nombres-premiers, equation-fonctionnelle, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 13 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

On note $d(n)$ le nombre de diviseurs positifs d'un entier $n \geqslant 1$. Par exemple $d(1) = 1$,
$d(4) = 3$ et $d(6) = 4$.

Soit $f$ une fonction qui, à tout entier $n \geqslant 1$, associe un entier $f(n) \geqslant 1$, et telle que

$$f(f(n)) = d(n) \qquad \text{pour tout entier } n \geqslant 1 .$$

Montrer que si $p$ est un nombre premier, alors $f(p)$ est aussi un nombre premier.

## Hints

1. Applique $f$ aux deux membres de l'égalité $f(f(n)) = d(n)$. Tu obtiens une relation entre $f(d(n))$ et $d(f(n))$.
2. Avec $n = p$ premier, déduis-en que $d(f(p)) = f(2)$. Il suffit donc de montrer que $f(2) = 2$.
3. Montre que le nombre $N = f(2)$ vérifie $d(N) = N$, puis cherche tous les entiers qui ont autant de diviseurs que leur valeur.
4. Il reste à exclure $f(2) = 1$. Dans ce cas, calcule $f(1)$ et $f(3)$, puis regarde ce qui se passe pour $n = 4$.

## Solution

**Une relation utile.** Soit $n \geqslant 1$. Appliquons $f$ aux deux membres de $f(f(n)) = d(n)$ :

$$f\left( f(f(n)) \right) = f(d(n)) .$$

Mais on peut aussi lire le membre de gauche comme $f(f(m))$ avec $m = f(n)$, qui vaut $d(m) = d(f(n))$.
Donc, pour tout $n \geqslant 1$,

$$f(d(n)) = d(f(n)) . \qquad (\star)$$

**Il suffit de montrer que $f(2) = 2$.** Si $p$ est premier, $d(p) = 2$, et $(\star)$ donne
$f(2) = d(f(p))$. Si $f(2) = 2$, alors $f(p)$ a exactement deux diviseurs : c'est un nombre premier.

**$f(2)$ vaut $1$ ou $2$.** Appliquons $(\star)$ avec $n = 2$ : comme $d(2) = 2$, on obtient
$f(2) = d(f(2))$. Le nombre $N = f(2)$ a donc exactement $N$ diviseurs. Or les diviseurs de $N$ sont
pris parmi $1, 2, \ldots, N$ : pour en avoir $N$, il faut que **tous** ces nombres divisent $N$. Si
$N \geqslant 3$, alors $N - 1 \geqslant 2$ diviserait $N$, donc diviserait $N - (N - 1) = 1$ :
impossible. Donc $N = 1$ ou $N = 2$.

**$f(2)$ ne vaut pas $1$.** Supposons $f(2) = 1$.

- Pour tout nombre premier $p$, on a $d(f(p)) = f(2) = 1$. Le seul entier qui a un seul diviseur est $1$,
  donc $f(p) = 1$. En particulier, $f(3) = 1$.
- On a $f(1) = f(f(2)) = d(2) = 2$.
- Appliquons $(\star)$ avec $n = 4$ : $d(4) = 3$, donc $d(f(4)) = f(3) = 1$, et ainsi $f(4) = 1$.

Mais alors $f(f(4)) = f(1) = 2$, alors que l'énoncé impose $f(f(4)) = d(4) = 3$. C'est une
contradiction.

**Conclusion.** On a donc $f(2) = 2$, et pour tout nombre premier $p$, $d(f(p)) = 2$ : le nombre $f(p)$
est premier.

## Going further

Le piège de cet exercice est le cas $f(2) = 1$. Il est tentant de dire « $N = d(N)$ force $N = 2$ » en
oubliant que $N = 1$ vérifie aussi $d(1) = 1$. C'est justement ce cas qui demande le plus de travail.
