---
id: "10416"
title: "Trois conditions qui imposent x² + x + 1"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, periodicite, nombres-rationnels, densite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf (qui passe par des suites de rationnels et le théorème des gendarmes ; la solution ci-dessous étudie la fonction g = f − h et n'utilise que l'existence d'un rationnel entre deux réels)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs strictement positives, qui vérifient les trois conditions suivantes :

1. $f(x^2) = f(x)^2 - 2x\,f(x)$ pour tout réel $x$ ;
2. $f(-x) = f(x - 1)$ pour tout réel $x$ ;
3. si $1 < x < y$, alors $f(x) < f(y)$.

## Hints

1. Que donne la condition 1 pour $x = 0$ ?
2. Écris la condition 1 pour $x$ puis pour $-x$. Les deux membres de gauche sont égaux. Factorise la différence de deux carrés qui apparaît : tu dois trouver $f(x) - f(-x) = 2x$.
3. Avec la condition 2, déduis-en $f(x) = f(x - 1) + 2x$. Calcule $f(1)$, $f(2)$, $f(3)$ : quelle fonction devine-t-on ? Note-la $h$, et étudie $g = f - h$. Montre que $g$ est paire et périodique de période $1$.
4. Pour $x = \frac{m}{n}$ rationnel, compare $(x + n)^2$ et $x^2$ : leur différence est un entier. Utilise la condition 1 en $x$ et en $x + n$.
5. Pour un réel $x > 1$ quelconque, utilise la condition 3 et un rationnel bien choisi, très proche de $x$.

## Solution

Nous allons montrer que la seule solution est la fonction $h(x) = x^2 + x + 1$.

Soit $f$ une fonction qui vérifie les trois conditions.

**Étape 1 : $f(0) = 1$.** Pour $x = 0$, la condition 1 donne $f(0) = f(0)^2$, donc $f(0)(f(0) - 1) = 0$. Comme $f(0) > 0$, on a $f(0) = 1$.

**Étape 2 : $f(x) - f(-x) = 2x$.** Soit $x$ un réel. La condition 1 appliquée à $x$ et à $-x$ donne la même valeur $f(x^2)$, donc

$$f(x)^2 - 2x\,f(x) = f(-x)^2 + 2x\,f(-x) ,$$

c'est-à-dire $f(x)^2 - f(-x)^2 = 2x(f(x) + f(-x))$. En factorisant la différence de deux carrés,

$$(f(x) - f(-x))(f(x) + f(-x)) = 2x(f(x) + f(-x)) .$$

Comme $f(x) + f(-x) > 0$, on peut simplifier : $f(x) - f(-x) = 2x$. Avec la condition 2, on en déduit

$$f(x) = f(-x) + 2x = f(x - 1) + 2x \qquad \text{pour tout réel } x . \qquad (1)$$

Par exemple $f(1) = f(0) + 2 = 3$, $f(2) = f(1) + 4 = 7$, $f(3) = f(2) + 6 = 13$. Ce sont les valeurs de $h(x) = x^2 + x + 1$.

**Étape 3 : la fonction $g = f - h$.** La fonction $h$ vérifie les mêmes relations que $f$ :

$$h(x) - h(x - 1) = x^2 + x - (x - 1)^2 - (x - 1) = 2x, \qquad h(x) - h(-x) = 2x ,$$

$$h(x)^2 - 2x\,h(x) = (x^2 + x + 1)(x^2 - x + 1) = x^4 + x^2 + 1 = h(x^2) .$$

Posons $g(x) = f(x) - h(x)$. En retranchant les relations de $h$ à celles de $f$ :

- $g(x) = g(x - 1)$ pour tout $x$ : la fonction $g$ est périodique de période $1$, donc $g(x + n) = g(x)$ pour tout entier $n$ ;
- $g(x) = g(-x)$ pour tout $x$ : la fonction $g$ est paire.

Enfin, remplaçons $f = h + g$ dans la condition 1 et utilisons $h(x^2) = h(x)^2 - 2x\,h(x)$ :

$$h(x^2) + g(x^2) = h(x)^2 + 2h(x)g(x) + g(x)^2 - 2x\,h(x) - 2x\,g(x) ,$$

ce qui se simplifie en

$$g(x^2) = g(x)(2h(x) - 2x + g(x)) = g(x)(2x^2 + 2 + g(x)) . \qquad (2)$$

**Étape 4 : $g$ est nulle sur les rationnels.** Comme $g$ est paire, il suffit de traiter les rationnels positifs ou nuls. Soit $x = \frac{m}{n}$ avec $m \geqslant 0$ et $n \geqslant 1$ entiers. Alors

$$(x + n)^2 = x^2 + 2nx + n^2 = x^2 + 2m + n^2 ,$$

et $2m + n^2$ est un entier. Par périodicité, $g((x + n)^2) = g(x^2)$ et $g(x + n) = g(x)$. Écrivons $(2)$ en $x + n$ puis en $x$ :

$$g((x + n)^2) = g(x)(2(x + n)^2 + 2 + g(x)), \qquad g(x^2) = g(x)(2x^2 + 2 + g(x)) .$$

Les deux membres de gauche sont égaux. En retranchant, il reste

$$0 = 2g(x)((x + n)^2 - x^2) = 2g(x)\, n\,(2x + n) .$$

Comme $n \geqslant 1$ et $2x + n > 0$, on obtient $g(x) = 0$. Ainsi $f(x) = h(x)$ pour tout rationnel $x$.

**Étape 5 : $g$ est nulle sur $]1, +\infty[$.** On utilise le fait suivant : *entre deux réels distincts, il y a toujours un rationnel.* (Si $\alpha < \beta$, on choisit un entier $N$ tel que $\frac{1}{N} < \beta - \alpha$. Les nombres $\frac{k}{N}$, pour $k$ entier, sont espacés de $\frac{1}{N}$, donc l'un d'eux tombe strictement entre $\alpha$ et $\beta$.)

Soit $x > 1$. Supposons $f(x) \neq h(x)$ et notons $\delta = |f(x) - h(x)| > 0$. Pour tous réels $r$ et $x$, on a $h(r) - h(x) = (r - x)(r + x + 1)$.

- *Si $f(x) > h(x)$.* Choisissons un rationnel $r$ tel que $x < r < x + 1$ et $r - x < \frac{\delta}{2x + 2}$. Alors $0 < r + x + 1 < 2x + 2$, donc $h(r) - h(x) < \delta$, c'est-à-dire $h(r) < h(x) + \delta = f(x)$. Mais $r$ est rationnel, donc $f(r) = h(r) < f(x)$, alors que $1 < x < r$ impose $f(x) < f(r)$ par la condition 3. C'est impossible.
- *Si $f(x) < h(x)$.* Choisissons un rationnel $r$ tel que $1 < r < x$ et $x - r < \frac{\delta}{2x + 1}$. Alors $0 < x + r + 1 < 2x + 1$, donc $h(x) - h(r) < \delta$, c'est-à-dire $h(r) > h(x) - \delta = f(x)$. Ainsi $f(r) = h(r) > f(x)$, alors que $1 < r < x$ impose $f(r) < f(x)$. C'est impossible.

Donc $f(x) = h(x)$, c'est-à-dire $g(x) = 0$, pour tout $x > 1$.

**Étape 6 : $g$ est nulle partout.** Soit $x$ un réel quelconque. Il existe un entier $n$ tel que $x + n > 1$. Par périodicité, $g(x) = g(x + n) = 0$. Donc $f = h$.

**Réciproque.** La fonction $h(x) = x^2 + x + 1 = \left(x + \frac{1}{2}\right)^2 + \frac{3}{4}$ est à valeurs strictement positives. On a vu à l'étape 3 qu'elle vérifie la condition 1. Elle vérifie la condition 2, car $h(-x) = x^2 - x + 1$ et $h(x - 1) = (x - 1)^2 + (x - 1) + 1 = x^2 - x + 1$. Enfin, si $1 < x < y$, alors $h(y) - h(x) = (y - x)(y + x + 1) > 0$, donc la condition 3 est vérifiée.

**Conclusion.** La seule fonction qui vérifie les trois conditions est $f(x) = x^2 + x + 1$.

## Going further

1. On remplace la condition 3 par une condition plus faible : « si $1 < x < y$, alors $f(x) \leqslant f(y)$ ». La démonstration reste-t-elle valable ? Quelle étape faut-il relire ?
2. Pourquoi l'étape 4 ne permet-elle pas, à elle seule, de conclure pour $x = \sqrt{2}$ ?
