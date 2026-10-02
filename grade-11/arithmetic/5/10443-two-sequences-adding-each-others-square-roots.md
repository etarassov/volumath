---
id: "10443"
title: "Deux suites qui s'ajoutent leurs racines carrées"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suites, partie-entiere, racine-carree, principe-extremal, monotonie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf (qui sépare deux cas ; ici on suit le reste r = b − ⌊√b⌋², qui diminue en au plus deux étapes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Pour un réel $t \geqslant 0$, on note $\lfloor \sqrt{t} \rfloor$ la partie entière de $\sqrt{t}$, c'est-à-dire le plus grand entier $k$ tel que $k^2 \leqslant t$.

Soient $a_0$ et $b_0$ deux entiers strictement positifs. Pour tout entier $i \geqslant 0$, on pose

$$a_{i+1} = a_i + \lfloor \sqrt{b_i} \rfloor \qquad \text{et} \qquad b_{i+1} = b_i + \lfloor \sqrt{a_i} \rfloor .$$

Montrer qu'il existe un entier $n \geqslant 0$ tel que $a_n = b_n$.

## Hints

1. Essaie avec $a_0 = 1$ et $b_0 = 2$. Puis regarde l'écart $c_i = b_i - a_i$, en supposant $c_0 \geqslant 0$.
2. Montre que la fonction $t \mapsto t - \lfloor \sqrt{t} \rfloor$ est croissante sur les entiers. Déduis-en que l'écart $c_i$ reste positif ou nul, et qu'il ne peut que diminuer.
3. L'écart finit donc par rester constant. S'il reste égal à un entier $c \geqslant 1$, que peut-on dire de $\lfloor \sqrt{a_i} \rfloor$ et de $\lfloor \sqrt{b_i} \rfloor$ ?
4. Dans ce cas, suis le reste $r_i = b_i - \lfloor \sqrt{b_i} \rfloor^2$. Montre qu'il diminue strictement en une ou deux étapes, et conclus en considérant la plus petite valeur qu'il prend.

## Solution

Les deux suites jouent le même rôle : échanger $a_0$ et $b_0$ échange les deux suites. On peut donc supposer $b_0 \geqslant a_0$. Posons, pour tout $i \geqslant 0$, $c_i = b_i - a_i$, de sorte que $c_0 \geqslant 0$. Toutes les valeurs $a_i$ et $b_i$ sont des entiers strictement positifs.

**Étape 1 : la fonction $f(t) = t - \lfloor \sqrt{t} \rfloor$ est croissante sur les entiers naturels.** Soit $t$ un entier naturel et $k = \lfloor \sqrt{t} \rfloor$. Alors $t < (k + 1)^2$, et comme ce sont des entiers, $t + 1 \leqslant (k + 1)^2 < (k + 2)^2$. Donc $\lfloor \sqrt{t + 1} \rfloor \leqslant k + 1$, et

$$f(t + 1) - f(t) = 1 - (\lfloor \sqrt{t + 1} \rfloor - \lfloor \sqrt{t} \rfloor) \geqslant 1 - 1 = 0 .$$

**Étape 2 : l'écart reste positif et ne fait que diminuer.** Montrons par récurrence que $c_i \geqslant 0$ pour tout $i$. C'est vrai pour $i = 0$. Si $c_i \geqslant 0$, c'est-à-dire $b_i \geqslant a_i$, alors d'après l'étape 1

$$c_{i+1} = (b_i - \lfloor \sqrt{b_i} \rfloor) - (a_i - \lfloor \sqrt{a_i} \rfloor) = f(b_i) - f(a_i) \geqslant 0 .$$

De plus, comme $b_i \geqslant a_i$, on a $\lfloor \sqrt{b_i} \rfloor \geqslant \lfloor \sqrt{a_i} \rfloor$, donc

$$c_{i+1} = c_i + \lfloor \sqrt{a_i} \rfloor - \lfloor \sqrt{b_i} \rfloor \leqslant c_i .$$

La suite $(c_i)$ est donc une suite décroissante d'entiers naturels. Elle ne peut pas diminuer indéfiniment : à partir d'un certain rang $n$, elle est constante, égale à un entier $c \geqslant 0$. Il reste à montrer que $c = 0$, car alors $a_n = b_n$.

**Étape 3 : si $c \geqslant 1$, les deux racines entières sont égales.** Supposons, par l'absurde, que $c \geqslant 1$. Pour tout $i \geqslant n$, on a $c_{i+1} = c_i$, donc, d'après la formule de l'étape 2, $\lfloor \sqrt{a_i} \rfloor = \lfloor \sqrt{b_i} \rfloor$. Notons $\beta_i$ cette valeur commune. Ainsi, pour tout $i \geqslant n$,

$$b_{i+1} = b_i + \beta_i .$$

**Étape 4 : le reste $r_i$.** Pour $i \geqslant n$, posons $r_i = b_i - \beta_i^2$. Comme $\beta_i = \lfloor \sqrt{b_i} \rfloor$, on a $\beta_i^2 \leqslant b_i < (\beta_i + 1)^2$, donc

$$0 \leqslant r_i \leqslant 2\beta_i .$$

De plus, $\beta_i = \lfloor \sqrt{a_i} \rfloor$ donne $a_i \geqslant \beta_i^2$, donc $r_i = a_i + c - \beta_i^2 \geqslant c \geqslant 1$.

**Étape 5 : le reste diminue en une ou deux étapes.** Soit $i \geqslant n$. On a $b_{i+1} = \beta_i^2 + \beta_i + r_i$.

- *Si $r_i \geqslant \beta_i + 1$.* Alors $b_{i+1} = (\beta_i + 1)^2 + (r_i - \beta_i - 1)$, avec $0 \leqslant r_i - \beta_i - 1 \leqslant \beta_i - 1$. Ce dernier nombre est plus petit que $2(\beta_i + 1)$, donc $(\beta_i + 1)^2 \leqslant b_{i+1} < (\beta_i + 2)^2$. Ainsi $\beta_{i+1} = \beta_i + 1$, et $r_{i+1} = r_i - \beta_i - 1 < r_i$.
- *Si $r_i \leqslant \beta_i$.* Alors $b_{i+1} = \beta_i^2 + (r_i + \beta_i)$ avec $r_i + \beta_i \leqslant 2\beta_i$, donc $\beta_{i+1} = \beta_i$ et $r_{i+1} = r_i + \beta_i$. Comme $r_i \geqslant 1$, on a $r_{i+1} \geqslant \beta_{i+1} + 1$ : on est dans le premier cas à l'étape suivante, qui donne

$$r_{i+2} = r_{i+1} - \beta_{i+1} - 1 = r_i + \beta_i - \beta_i - 1 = r_i - 1 < r_i .$$

Dans les deux cas, $r_{i+1} < r_i$ ou $r_{i+2} < r_i$.

**Étape 6 : la contradiction.** Les nombres $r_i$, pour $i \geqslant n$, sont des entiers naturels. Il y en a un plus petit que tous les autres : choisissons $m \geqslant n$ tel que $r_m \leqslant r_i$ pour tout $i \geqslant n$. D'après l'étape 5, $r_{m+1} < r_m$ ou $r_{m+2} < r_m$. C'est une contradiction.

**Conclusion.** On a $c = 0$, donc $a_n = b_n$ : les deux suites finissent par prendre la même valeur au même rang.

## Going further

1. Pour $a_0 = 1$ et $b_0 = 2$, calculer les termes successifs et trouver le plus petit $n$ tel que $a_n = b_n$.
2. Montrer que, dès que $a_n = b_n$, on a $a_i = b_i$ pour tout $i \geqslant n$.
3. Avec $a_0 = 1$ et $b_0 = 10$, l'écart vaut $9$, puis $7$, $6$, $5$, $5$, $4$, $4$, $3$, … Pourquoi diminue-t-il de plus en plus lentement ?
