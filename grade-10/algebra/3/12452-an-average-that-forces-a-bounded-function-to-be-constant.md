---
id: "12452"
title: "Une moyenne qui force une fonction bornée à être constante"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, relation-de-recurrence, fonction-bornee, puissances-de-2, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2019"
  reference: "2019-11_Test-15-05.pdf, exercice 4 (groupe Junior) ; corrigé 2019-11_Test-15-05-Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/Test-15-05.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-11_Test-15-05.pdf"
---

## Statement

Soit $f$ une fonction définie sur l'ensemble $\mathbb{Z}$ des entiers relatifs, à valeurs réelles,
telle que
$$f(n + 2) = \frac{f(n + 1) + f(n)}{2} \qquad \text{pour tout entier relatif } n.$$
On suppose que $f$ est bornée : il existe un réel $F$ tel que $-F \leqslant f(n) \leqslant F$ pour
tout entier relatif $n$.

Démontrer que $f$ est constante.

## Hints

1. Chaque valeur est la moyenne des deux précédentes. Regarde les écarts
   $\Delta_n = f(n + 1) - f(n)$ entre deux valeurs consécutives.
2. Exprime $\Delta_{n+1}$ en fonction de $\Delta_n$.
3. La fonction est définie aussi pour les entiers négatifs. Que se passe-t-il pour
   $\Delta_{n-1}$, $\Delta_{n-2}$, $\Delta_{n-3}$, ... ?
4. Un écart entre deux valeurs comprises entre $-F$ et $F$ est au plus égal à $2F$.

## Solution

### Les écarts entre valeurs consécutives

Pour tout entier relatif $n$, posons $\Delta_n = f(n + 1) - f(n)$. D'après la relation de l'énoncé,
$$\Delta_{n+1} = f(n + 2) - f(n + 1) = \frac{f(n + 1) + f(n)}{2} - f(n + 1) = \frac{f(n) - f(n + 1)}{2} = -\frac{\Delta_n}{2}.$$
On peut lire cette égalité dans l'autre sens : $\Delta_n = -2\,\Delta_{n+1}$ pour tout $n$. Quand on
recule d'un cran, l'écart est multiplié par $-2$.

### En reculant, les écarts doublent

Fixons un entier relatif $n$. En appliquant la règle précédente plusieurs fois,
$$\Delta_{n-1} = -2\,\Delta_n, \qquad \Delta_{n-2} = -2\,\Delta_{n-1} = 4\,\Delta_n, \qquad \Delta_{n-3} = -8\,\Delta_n,$$
et plus généralement, par récurrence sur $k \geqslant 0$,
$$\Delta_{n-k} = (-2)^k\,\Delta_n, \qquad \text{donc} \qquad |\Delta_{n-k}| = 2^k\,|\Delta_n|.$$

### Mais les écarts restent petits

Pour tout entier relatif $j$, les nombres $f(j + 1)$ et $f(j)$ sont entre $-F$ et $F$, donc leur
différence est au plus $2F$ en valeur absolue : $|\Delta_j| \leqslant 2F$. Avec la formule
précédente, on obtient pour tout $k \geqslant 0$ :
$$2^k\,|\Delta_n| \leqslant 2F, \qquad \text{c'est-à-dire} \qquad |\Delta_n| \leqslant \frac{2F}{2^k}.$$

### Conclusion

Supposons $\Delta_n \neq 0$. Les puissances de $2$ deviennent aussi grandes que l'on veut, donc on
peut choisir $k$ tel que $2^k > \dfrac{2F}{|\Delta_n|}$, et alors $|\Delta_n| > \dfrac{2F}{2^k}$, ce
qui contredit l'inégalité précédente. Donc $\Delta_n = 0$.

Ceci vaut pour tout entier relatif $n$ : on a $f(n + 1) = f(n)$ pour tout $n$, et **la fonction $f$
est constante.**

## Going further

1. Montrer que l'hypothèse « $f$ est bornée » est indispensable : trouver une fonction non constante
   qui vérifie la relation de l'énoncé.
2. On suppose seulement que $f$ est définie sur les entiers naturels et vérifie la même relation.
   Montrer que $f(n)$ se rapproche, quand $n$ devient grand, de $\dfrac{f(0) + 2f(1)}{3}$.
