---
id: "10635"
title: "Additive seulement pour certains rapports"
grade: 11
theme: algebra
difficulty: 5
duration_min: 75
tags: [equation-fonctionnelle, entiers, suite-arithmetique, contre-exemple, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 17 ; corrigé 2022-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

On note $\mathbb{N}^* = \{1, 2, 3, \ldots\}$. Déterminer tous les couples $(\alpha, \beta)$ de réels strictement positifs ayant la propriété suivante :

> Si $f : \mathbb{N}^* \to \mathbb{R}$ est une fonction telle que $f(x + y) = f(x) + f(y)$ pour tous les entiers $x, y \geqslant 1$ qui vérifient $\alpha < \frac{x}{y} < \beta$, alors il existe un réel $c$ tel que $f(n) = cn$ pour tout $n \geqslant 1$.

## Hints

1. Cherche une fonction qui n'est pas de la forme $n \mapsto cn$ mais qui vérifie l'égalité pour beaucoup de couples : par exemple $f(1) = 1$ et $f(n) = 0$ pour $n \geqslant 2$. Pour quels couples $(x, y)$ l'égalité est-elle fausse ?
2. Pour la réciproque, suppose qu'un entier $N$ vérifie $\alpha < N < \beta$. Pour $n$ grand, trouve un entier $m$ tel que les quatre rapports $\frac{m+1}{n}$, $\frac{m+1}{n+1}$, $\frac{m}{n+1}$, $\frac{m}{n+2}$ soient tous dans $]\alpha, \beta[$.
3. Écris les quatre égalités correspondantes et combine-les pour obtenir $f(n + 2) - f(n + 1) = f(n + 1) - f(n)$ pour $n$ grand.
4. Tu sais maintenant que $f(n) = an + b$ pour $n$ assez grand. Utilise le couple $(nN, n)$ pour montrer que $b = 0$, puis regarde le plus grand $n$ pour lequel $f(n) \neq an$.

## Solution

**Réponse.** Ce sont les couples tels qu'il existe un entier $N \geqslant 1$ vérifiant

$$\alpha < N < \beta \qquad \text{ou} \qquad \alpha < \frac{1}{N} < \beta$$

Autrement dit, l'intervalle $]\alpha, \beta[$ contient un entier strictement positif ou l'inverse d'un tel entier.

On dit qu'un couple $(x, y)$ d'entiers $\geqslant 1$ est **permis** si $\alpha < \frac{x}{y} < \beta$, et on note $E(x, y)$ l'égalité $f(x + y) = f(x) + f(y)$.

**Étape 1. La condition est nécessaire.**

Supposons qu'aucun entier $N \geqslant 1$ ne vérifie $\alpha < N < \beta$ ni $\alpha < \frac{1}{N} < \beta$. Soit $f$ la fonction définie par $f(1) = 1$ et $f(n) = 0$ pour $n \geqslant 2$.

Soit $(x, y)$ un couple permis. Si $y = 1$, alors $\frac{x}{y} = x$ serait un entier dans $]\alpha, \beta[$ : c'est exclu. Si $x = 1$, alors $\frac{x}{y} = \frac{1}{y}$ serait l'inverse d'un entier dans $]\alpha, \beta[$ : c'est exclu aussi. Donc $x \geqslant 2$ et $y \geqslant 2$, et $E(x, y)$ s'écrit $0 = 0 + 0$ : elle est vraie.

Ainsi $f$ vérifie l'hypothèse. Mais $f$ n'est pas de la forme $n \mapsto cn$ : on aurait $c = f(1) = 1$, puis $f(2) = 2$, alors que $f(2) = 0$. Le couple $(\alpha, \beta)$ n'a donc pas la propriété.

**Étape 2. On peut supposer que $]\alpha, \beta[$ contient un entier.**

Supposons maintenant la condition vraie, et soit $f$ une fonction qui vérifie l'hypothèse. Si c'est l'inverse $\frac{1}{N}$ d'un entier qui est dans $]\alpha, \beta[$, on remarque que

$$\alpha < \frac{x}{y} < \beta \iff \frac{1}{\beta} < \frac{y}{x} < \frac{1}{\alpha}$$

et que $E(x, y)$ et $E(y, x)$ sont la même égalité. Donc $f$ vérifie aussi l'hypothèse pour le couple $\left(\frac{1}{\beta}, \frac{1}{\alpha}\right)$, et l'intervalle $]\tfrac{1}{\beta}, \tfrac{1}{\alpha}[$ contient l'entier $N$. Quitte à remplacer $(\alpha, \beta)$ par $\left(\frac{1}{\beta}, \frac{1}{\alpha}\right)$, on suppose donc qu'un entier $N \geqslant 1$ vérifie $\alpha < N < \beta$. En particulier $\alpha < \beta$.

**Étape 3. $f$ coïncide avec une fonction affine à partir d'un certain rang.**

La longueur de l'intervalle $]\alpha(n + 2), \beta n - 1[$ vaut $(\beta - \alpha)n - 2\alpha - 1$. Comme $\beta - \alpha > 0$, elle dépasse $1$ dès que $n$ est assez grand, disons pour $n \geqslant n_0$. L'intervalle contient alors un entier $m$, et $m \geqslant 1$ car $m > \alpha(n + 2) > 0$.

Pour cet entier $m$, on a

$$\alpha < \frac{m}{n + 2} < \frac{m}{n + 1} < \frac{m + 1}{n + 1} < \frac{m + 1}{n} < \beta$$

La première inégalité vient de $m > \alpha(n + 2)$, la dernière de $m + 1 < \beta n$. Les quatre couples $(m + 1, n)$, $(m + 1, n + 1)$, $(m, n + 2)$ et $(m, n + 1)$ sont donc permis, ce qui donne :

$$(1) \qquad f(m + 1) + f(n) = f(m + n + 1)$$
$$(2) \qquad f(m + 1) + f(n + 1) = f(m + n + 2)$$
$$(3) \qquad f(m) + f(n + 2) = f(m + n + 2)$$
$$(4) \qquad f(m) + f(n + 1) = f(m + n + 1)$$

Faisons $(1) + (3) - (2) - (4)$. Les termes $f(m)$, $f(m + 1)$, $f(m + n + 1)$ et $f(m + n + 2)$ disparaissent, et il reste

$$f(n) + f(n + 2) - 2f(n + 1) = 0, \qquad \text{soit} \qquad f(n + 2) - f(n + 1) = f(n + 1) - f(n)$$

pour tout $n \geqslant n_0$. La différence $f(n + 1) - f(n)$ est donc la même pour tous les $n \geqslant n_0$ : notons-la $a$. La suite $(f(n))_{n \geqslant n_0}$ est arithmétique de raison $a$, donc il existe un réel $b$ tel que $f(n) = an + b$ pour tout $n \geqslant n_0$.

**Étape 4. $b = 0$.**

Soit $n \geqslant n_0$. Le couple $(nN, n)$ est permis, car $\frac{nN}{n} = N \in ]\alpha, \beta[$. Donc $f(nN) + f(n) = f(n(N + 1))$. Les trois nombres $nN$, $n$ et $n(N + 1)$ sont au moins égaux à $n_0$, donc

$$anN + b + an + b = an(N + 1) + b$$

ce qui donne $b = 0$. Ainsi $f(n) = an$ pour tout $n \geqslant n_0$.

**Étape 5. $f(n) = an$ pour tout $n$.**

Supposons le contraire. Comme l'égalité est vraie pour $n \geqslant n_0$, il y a un plus grand entier $n$ tel que $f(n) \neq an$. Le couple $(nN, n)$ est permis, donc $f(nN) + f(n) = f(n(N + 1))$. Comme $n(N + 1) > n$, on a $f(n(N + 1)) = an(N + 1)$.

- Si $N \geqslant 2$, alors $nN > n$, donc $f(nN) = anN$, et $f(n) = an(N + 1) - anN = an$.
- Si $N = 1$, l'égalité s'écrit $2f(n) = f(2n) = 2an$, donc $f(n) = an$.

Dans les deux cas $f(n) = an$, ce qui contredit le choix de $n$. Donc $f(n) = an$ pour tout $n \geqslant 1$, et $c = a$ convient.

**Conclusion : les couples cherchés sont ceux pour lesquels l'intervalle $]\alpha, \beta[$ contient un entier $N \geqslant 1$ ou l'inverse $\frac{1}{N}$ d'un tel entier.**
