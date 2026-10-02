---
id: "13456"
title: "x + n, x + m, x + l en progression géométrique"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [suite-geometrique, rationnels, equation, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 10 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf. Le prénom Hadriel de l'énoncé est remplacé par Hadrien."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

On dit que trois nombres réels $a$, $b$, $c$ sont *en progression géométrique*, dans cet ordre, s'il existe un réel $k$ non nul tel que $b = ka$ et $c = kb$, c'est-à-dire $c = kb = k^2 a$.

Hadrien a choisi un nombre réel $x$. Il a trouvé trois entiers positifs $n$, $m$ et $l$, deux à deux distincts, tels que les nombres

$$x + n, \qquad x + m, \qquad x + l$$

sont en progression géométrique, dans cet ordre.

Montrer que $x$ est un nombre rationnel, c'est-à-dire qu'il s'écrit sous la forme $p / q$, où $p$ et $q$ sont des entiers et $q \neq 0$.

## Hints

1. Essaie avec $n = 1$, $m = 2$ et $l = 5$ : trouve $x$ pour que $x + 1$, $x + 2$ et $x + 5$ soient en progression géométrique.
2. Si $a$, $b$, $c$ sont en progression géométrique, compare $b^2$ et $a \times c$.
3. Tu obtiens une équation en $x$. Développe : les termes en $x^2$ disparaissent. Il reste une équation de la forme $x \times (\ldots) = (\ldots)$.
4. Pour diviser, il faut que le nombre devant $x$ ne soit pas nul. Que se passe-t-il s'il est nul ?

## Solution

**Étape 1 : une équation en $x$.** Si $a$, $b$, $c$ sont en progression géométrique, avec $b = ka$ et $c = k^2 a$, alors

$$b^2 = k^2 a^2 = a \times (k^2 a) = a \times c.$$

Avec $a = x + n$, $b = x + m$ et $c = x + l$, on obtient donc

$$(x + m)^2 = (x + n)(x + l).$$

On développe les deux membres :

$$x^2 + 2mx + m^2 = x^2 + nx + lx + nl.$$

Les $x^2$ s'en vont, et en regroupant les termes en $x$ d'un côté :

$$x\,(2m - n - l) = nl - m^2. \qquad (\star)$$

**Étape 2 : le cas facile.** Si $2m - n - l \neq 0$, on peut diviser par ce nombre :

$$x = \frac{nl - m^2}{2m - n - l}.$$

Le numérateur et le dénominateur sont des entiers, et le dénominateur n'est pas nul. Donc $x$ est rationnel.

**Étape 3 : ce cas est le seul possible.** Supposons au contraire que $2m - n - l = 0$, c'est-à-dire $m = (n + l) / 2$. Le membre de gauche de $(\star)$ vaut alors $0$, donc $nl - m^2 = 0$ aussi. Mais

$$m^2 - nl = \frac{(n + l)^2}{4} - nl = \frac{n^2 + 2nl + l^2 - 4nl}{4} = \frac{n^2 - 2nl + l^2}{4} = \frac{(n - l)^2}{4}.$$

On aurait donc $(n - l)^2 = 0$, c'est-à-dire $n = l$. C'est impossible, car $n$ et $l$ sont distincts. Donc $2m - n - l \neq 0$, et on est toujours dans le cas de l'étape 2.

**Conclusion.** Le réel $x$ vaut $(nl - m^2) / (2m - n - l)$, quotient de deux entiers avec un dénominateur non nul : $x$ est rationnel.

*Vérification sur l'exemple de l'indice 1.* Avec $n = 1$, $m = 2$ et $l = 5$, la formule donne $x = (5 - 4) / (4 - 6) = \text{−0,5}$. Les trois nombres sont alors $\text{0,5}$, $\text{1,5}$ et $\text{4,5}$ : on passe de l'un au suivant en multipliant par $k = 3$.

*Une autre méthode.* On a $x + m = k(x + n)$ et $x + l = k(x + m)$. En soustrayant, $l - m = k(m - n)$, donc $k = (l - m) / (m - n)$ (on a $m \neq n$) : la raison $k$ est rationnelle. De plus $k \neq 1$, sinon $x + m = x + n$. Enfin $x + m = k(x + n)$ donne $x(k - 1) = m - kn$, donc $x = (m - kn) / (k - 1)$, qui est un quotient de deux rationnels, donc un rationnel.

*Une erreur à éviter.* Écrire $x$ comme une fraction ne suffit pas : il faut que le numérateur et le dénominateur soient des entiers (ou des rationnels). Par exemple $\sqrt{3} = 3 / \sqrt{3}$ est une fraction, mais $\sqrt{3}$ n'est pas rationnel.

## Going further

Avec $n = 1$ et $l = 9$, pour quelles valeurs entières de $m$, différentes de $1$ et de $9$, le réel $x$ trouvé est-il un entier ?
