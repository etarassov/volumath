---
id: "10442"
title: "Des produits partiels plus grands donnent une somme plus grande"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, logarithme, exponentielle, transformation-d-abel, sommes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf (qui utilise une récurrence forte, ou les inégalités de Muirhead et de Karamata ; ici la question b) est démontrée avec e^u ⩾ 1 + u et une transformation d'Abel)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

a) Soient $x_1 \geqslant x_2 > 0$ et $y_1 \geqslant y_2 > 0$ des réels tels que

$$x_1 \geqslant y_1 \qquad \text{et} \qquad x_1 x_2 \geqslant y_1 y_2 .$$

Montrer que $x_1 + x_2 \geqslant y_1 + y_2$.

b) Soient $x_1 \geqslant x_2 \geqslant \cdots \geqslant x_n > 0$ et $y_1 \geqslant y_2 \geqslant \cdots \geqslant y_n > 0$ des réels tels que

$$x_1 x_2 \cdots x_i \geqslant y_1 y_2 \cdots y_i \qquad \text{pour } i = 1, 2, \ldots, n .$$

Montrer que $x_1 + x_2 + \cdots + x_n \geqslant y_1 + y_2 + \cdots + y_n$.

## Hints

1. Pour a), pose $q = y_1 y_2$. Montre que $x_1 + x_2 \geqslant x_1 + \frac{q}{x_1}$, puis étudie le sens de variation de $t \mapsto t + \frac{q}{t}$.
2. Pour b), rappelle-toi que $e^u \geqslant 1 + u$ pour tout réel $u$. Écris $x_i = y_i\,e^{d_i}$ avec $d_i = \ln(x_i / y_i)$, et minore $x_i - y_i$.
3. Les nombres $d_i$ peuvent être négatifs, mais leurs sommes partielles $D_k = d_1 + \cdots + d_k$ ne le sont pas. Pourquoi ?
4. Pour montrer que $y_1 d_1 + \cdots + y_n d_n \geqslant 0$, remplace chaque $d_i$ par $D_i - D_{i-1}$ et regroupe les termes en $D_k$.

## Solution

**Question a).** Posons $q = y_1 y_2 > 0$. L'hypothèse $x_1 x_2 \geqslant q$ donne $x_2 \geqslant q / x_1$, donc

$$x_1 + x_2 \geqslant g(x_1), \qquad \text{où} \qquad g(t) = t + \frac{q}{t} \quad \text{pour } t > 0 .$$

*La fonction $g$ est croissante sur $[\sqrt{q}, +\infty[$.* Soient $t \geqslant s \geqslant \sqrt{q}$. Alors $ts \geqslant q$, et

$$g(t) - g(s) = (t - s) - \frac{q\,(t - s)}{ts} = (t - s)\left( 1 - \frac{q}{ts} \right) \geqslant 0 .$$

*Conclusion de a).* On a $y_1^2 \geqslant y_1 y_2 = q$, donc $y_1 \geqslant \sqrt{q}$, et $x_1 \geqslant y_1$ par hypothèse. Donc

$$x_1 + x_2 \geqslant g(x_1) \geqslant g(y_1) = y_1 + \frac{y_1 y_2}{y_1} = y_1 + y_2 .$$

**Question b).** La méthode suivante redonne aussi a), qui est le cas $n = 2$.

*Étape 1 : un lemme.* Pour tout réel $u$, $e^u \geqslant 1 + u$. En effet, la fonction $h(u) = e^u - 1 - u$ a pour dérivée $e^u - 1$, négative pour $u \leqslant 0$ et positive pour $u \geqslant 0$. Elle atteint donc son minimum en $0$, où elle vaut $0$.

*Étape 2 : minorer chaque écart.* Pour chaque $i$, posons $d_i = \ln(x_i / y_i)$, de sorte que $x_i = y_i\,e^{d_i}$. Le lemme et $y_i > 0$ donnent $x_i \geqslant y_i\,(1 + d_i)$, c'est-à-dire $x_i - y_i \geqslant y_i\,d_i$. En additionnant,

$$(x_1 + \cdots + x_n) - (y_1 + \cdots + y_n) \geqslant y_1 d_1 + y_2 d_2 + \cdots + y_n d_n . \qquad (1)$$

Il suffit donc de montrer que le membre de droite est positif ou nul.

*Étape 3 : les sommes partielles.* Posons $D_0 = 0$ et, pour $1 \leqslant k \leqslant n$, $D_k = d_1 + d_2 + \cdots + d_k$. Comme le logarithme transforme un produit en somme,

$$D_k = \ln \frac{x_1 x_2 \cdots x_k}{y_1 y_2 \cdots y_k} \geqslant 0 ,$$

car la fraction est supérieure ou égale à $1$ par hypothèse. Les $d_i$ eux-mêmes peuvent être négatifs, mais pas leurs sommes partielles.

*Étape 4 : regrouper les termes (transformation d'Abel).* Pour chaque $i$, $d_i = D_i - D_{i-1}$. Donc

$$\sum_{i=1}^{n} y_i d_i = \sum_{i=1}^{n} y_i D_i - \sum_{i=1}^{n} y_i D_{i-1} .$$

Dans la seconde somme, posons $k = i - 1$. Elle devient $\sum_{k=0}^{n-1} y_{k+1} D_k$, et son terme $k = 0$ est nul car $D_0 = 0$. En regroupant les termes qui contiennent le même $D_k$,

$$\sum_{i=1}^{n} y_i d_i = (y_1 - y_2)\,D_1 + (y_2 - y_3)\,D_2 + \cdots + (y_{n-1} - y_n)\,D_{n-1} + y_n D_n .$$

Par exemple, pour $n = 3$, on vérifie directement que $y_1 d_1 + y_2 d_2 + y_3 d_3 = (y_1 - y_2)\,d_1 + (y_2 - y_3)(d_1 + d_2) + y_3\,(d_1 + d_2 + d_3)$.

Chaque terme est un produit de deux nombres positifs ou nuls : les $y_k - y_{k+1}$ le sont car les $y_i$ sont rangés dans l'ordre décroissant, $y_n > 0$, et les $D_k$ le sont d'après l'étape 3. Donc $y_1 d_1 + \cdots + y_n d_n \geqslant 0$.

**Conclusion.** D'après $(1)$, $x_1 + x_2 + \cdots + x_n \geqslant y_1 + y_2 + \cdots + y_n$.

## Going further

1. La démonstration de b) n'utilise pas que les $x_i$ sont rangés dans l'ordre décroissant. Vérifier à quel endroit sert l'ordre des $y_i$.
2. L'ordre des $y_i$ est indispensable. Avec $y_1 = 1$, $y_2 = 10$ et $x_1 = x_2 = \sqrt{10}$, vérifier que $x_1 \geqslant y_1$ et $x_1 x_2 \geqslant y_1 y_2$, mais que $x_1 + x_2 < y_1 + y_2$.
