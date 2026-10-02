---
id: "12034"
title: "f(n + f(n)) = f(n) et f(2013) = 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation fonctionnelle, entiers, fonctions, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-2.pdf, exercice 5 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-2.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers supérieurs ou égaux à $1$. Trouver toutes les fonctions $f : \mathbb{N}^* \to \mathbb{N}^*$ qui vérifient les deux conditions suivantes :

1. pour tout $n$ de $\mathbb{N}^*$, $f(n + f(n)) = f(n)$ ;
2. $f(2013) = 1$.

## Hints

1. Calculez $f(2014)$, puis $f(2015)$. Que dire de $f(n)$ pour $n \geqslant 2013$ ?
2. Prenez maintenant un entier $n$ quelconque, et notez $k = f(n)$. Appliquez la condition 1 au nombre $n + k$, puis au nombre $n + 2k$.
3. Les nombres $n$, $n + k$, $n + 2k$, $n + 3k$, ... ont tous la même image. Finissent-ils par dépasser $2013$ ?

## Solution

**Réponse.** Une seule fonction convient : la fonction constante égale à $1$.

**Elle convient.** Si $f(n) = 1$ pour tout $n$, alors $f(n + f(n)) = f(n + 1) = 1 = f(n)$, et $f(2013) = 1$.

**C'est la seule.** Soit $f$ une fonction qui vérifie les deux conditions.

*Étape 1 : $f(n) = 1$ pour tout $n \geqslant 2013$.* On a $f(2013) = 1$. Si $f(m) = 1$ pour un certain $m$, la condition 1 appliquée à $m$ donne $f(m + 1) = f(m) = 1$. De proche en proche, on obtient $f(2014) = 1$, $f(2015) = 1$, et ainsi de suite : $f(m) = 1$ pour tout $m \geqslant 2013$.

*Étape 2 : $f$ prend la même valeur en $n$, $n + k$, $n + 2k$, ...* Soit $n$ un entier de $\mathbb{N}^*$ et $k = f(n)$. Montrons que, pour tout entier $j \geqslant 0$,

$$f(n + jk) = k .$$

C'est vrai pour $j = 0$. Si c'est vrai pour un certain $j$, posons $m = n + jk$. On a $f(m) = k$, donc la condition 1 appliquée à $m$ donne $f(m + k) = f(m) = k$, c'est-à-dire $f(n + (j + 1)k) = k$. De proche en proche, c'est vrai pour tout $j$.

*Étape 3 : conclure.* Comme $k \geqslant 1$, on peut choisir $j$ assez grand pour que $n + jk \geqslant 2013$, par exemple $j = 2013$. D'après l'étape 1, $f(n + jk) = 1$. D'après l'étape 2, $f(n + jk) = k = f(n)$. Donc $f(n) = 1$.

**Conclusion.** Ceci est vrai pour tout $n$ : la seule fonction qui convient est la fonction constante égale à $1$.

## Going further

Sans la condition 2, il y a beaucoup plus de solutions. Vérifier que toute fonction constante convient, et aussi la fonction qui vaut $2$ en tout nombre pair et $4$ en tout nombre impair. Montrer enfin qu'une solution qui vaut $1$ en un entier $m$ vaut $1$ en tout entier plus grand que $m$.
