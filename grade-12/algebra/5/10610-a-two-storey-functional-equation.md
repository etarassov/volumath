---
id: "10610"
title: "Une équation fonctionnelle à deux étages"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [equation-fonctionnelle, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 17 ; corrigé 2020-01_corrige-commente-envoi-2.pdf. Le corrigé écrit f(x − z) là où il faut f(x − z − 1) ; c'est une coquille sans conséquence."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$(f(x) + y)(f(x - y) + 1) = f(f(x f(x + 1)) - y f(y - 1))$$

## Hints

1. Vérifie que la fonction identité convient. Ensuite, essaie $y = 0$, puis $y = -f(x)$ : que montre ce dernier choix ?
2. Si $f(z) = 0$, le choix $y = z + 1$ fait disparaître le terme $y f(y - 1)$. Prends ensuite $x = z$ pour obtenir $f(-1) = -1$, puis $f(0) = 0$ avec $x = 0$ et $y = 1$.
3. Avec $y = 1$, obtiens $(f(x) + 1)(f(x - 1) + 1) = f(x)(f(x) + 1)$. Si tu savais que $f(x) = f(x - 1) + 1$ pour tout $x$, il resterait peu à faire : compare ce que donnent $x = 0$ et $x = -1$ dans l'équation.
4. Pour pouvoir simplifier par $f(x) + 1$, montre que $f$ ne s'annule qu'en $0$, puis que $f$ ne prend la valeur $-1$ qu'en $-1$.
5. Il reste le cas $x = -1$, c'est-à-dire montrer $f(-2) = -2$. Calcule $f(1)$ et $f(2)$.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour un couple $(x, y)$ donné. On pose $a = f(0)$.

**Étape 1. Deux conséquences immédiates.**

$E(x, 0)$ donne, pour tout $x$ :

$$(\star) \qquad f(f(x f(x + 1))) = f(x)(f(x) + 1)$$

$E(x, -f(x))$ donne $0 = f(\ldots)$ : le membre de gauche est nul, donc $f$ s'annule au moins une fois. Soit $z$ un réel tel que $f(z) = 0$.

**Étape 2. $f(-1) = -1$ et $f(0) = 0$.**

Prenons $y = z + 1$. Alors $y f(y - 1) = (z + 1) f(z) = 0$, et le membre de droite de $E(x, z + 1)$ vaut $f(f(x f(x + 1)))$, c'est-à-dire $f(x)(f(x) + 1)$ par $(\star)$. Donc, pour tout $x$,

$$(f(x) + z + 1)(f(x - z - 1) + 1) = f(x)(f(x) + 1)$$

Pour $x = z$, comme $f(z) = 0$, cela donne $(z + 1)(f(-1) + 1) = 0$. Donc $z = -1$ ou $f(-1) = -1$.

Écrivons $E(0, 1)$ : $(a + 1)(f(-1) + 1) = f(f(0) - f(0)) = a$.

- Si $z = -1$, alors $f(-1) = f(z) = 0$, et $E(0, 1)$ donne $a + 1 = a$, ce qui est impossible.
- Donc $z \neq -1$, et l'égalité $(z + 1)(f(-1) + 1) = 0$ donne $f(-1) = -1$. Alors $E(0, 1)$ s'écrit $(a + 1) \times 0 = a$, c'est-à-dire $f(0) = 0$.

**Étape 3. Deux relations.**

Avec $f(0) = 0$, $E(x, 1)$ donne, grâce à $(\star)$ :

$$(1) \qquad (f(x) + 1)(f(x - 1) + 1) = f(x)(f(x) + 1)$$

$E(0, y)$ donne $y(f(-y) + 1) = f(-y f(y - 1))$. Et $E(-1, y)$, avec $f(-1) = -1$ et $f(0) = 0$, donne $(y - 1)(f(-y - 1) + 1) = f(f(0) - y f(y - 1)) = f(-y f(y - 1))$. Les deux membres de droite sont égaux, donc pour tout $y$ :

$$(2) \qquad y(f(-y) + 1) = (y - 1)(f(-y - 1) + 1)$$

**Étape 4. Pourquoi il suffit de montrer $f(x) = f(x - 1) + 1$.**

Supposons que $f(x) = f(x - 1) + 1$ pour tout $x$. Alors $f(-y - 1) + 1 = f(-y)$, et $(2)$ devient $y f(-y) + y = (y - 1) f(-y)$, c'est-à-dire $f(-y) = -y$. Comme $y$ est quelconque, $f$ est l'identité.

Il reste à prouver $f(x) = f(x - 1) + 1$. D'après $(1)$, c'est vrai dès que $f(x) \neq -1$, car on peut alors diviser par $f(x) + 1$. On va donc chercher où $f$ vaut $-1$.

**Étape 5. $f$ ne s'annule qu'en $0$.**

Soit $t$ tel que $f(t) = 0$. La relation $(1)$ en $x = t$ donne $f(t - 1) + 1 = 0$, donc $f(t - 1) = -1$. La relation $(2)$ en $y = -t$ donne $-t(f(t) + 1) = (-t - 1)(f(t - 1) + 1)$, soit $-t = 0$. Donc $t = 0$.

**Étape 6. $f$ ne vaut $-1$ qu'en $-1$.**

Soit $t$ tel que $f(t) = -1$. La relation $(\star)$ en $x = t$ donne $f(f(t f(t + 1))) = (-1) \times 0 = 0$. Par l'étape 5, $f(t f(t + 1)) = 0$, puis $t f(t + 1) = 0$. Or $t \neq 0$, car $f(0) = 0 \neq -1$. Donc $f(t + 1) = 0$, et par l'étape 5, $t + 1 = 0$, soit $t = -1$.

**Étape 7. Le cas restant, $x = -1$.**

Par l'étape 6, $f(x) = f(x - 1) + 1$ est vrai pour tout $x \neq -1$. Il reste à montrer $f(-1) = f(-2) + 1$, c'est-à-dire $f(-2) = -2$.

- $x = 1$ : $f(1) = f(0) + 1 = 1$.
- $x = 2$ : $f(2) = f(1) + 1 = 2$.
- La relation $(\star)$ en $x = -2$ donne $f(f(-2 f(-1))) = f(f(2)) = f(2) = 2$ à gauche, et $f(-2)(f(-2) + 1)$ à droite. Donc $f(-2)^2 + f(-2) - 2 = 0$, soit $(f(-2) - 1)(f(-2) + 2) = 0$, et $f(-2)$ vaut $1$ ou $-2$.
- Si $f(-2) = 1$, alors $x = -2$ (qui n'est pas $-1$) donne $f(-3) = f(-2) - 1 = 0$, ce qui contredit l'étape 5.

Donc $f(-2) = -2$. Ainsi $f(x) = f(x - 1) + 1$ pour tout $x$, et par l'étape 4, $f$ est l'identité.

**Étape 8. Vérification.**

Si $f(x) = x$, le membre de gauche vaut $(x + y)(x - y + 1)$ et le membre de droite vaut $x(x + 1) - y(y - 1) = x^2 - y^2 + x + y = (x + y)(x - y) + (x + y) = (x + y)(x - y + 1)$. L'égalité est vraie.

**Conclusion : la seule solution est la fonction identité, $f(x) = x$ pour tout réel $x$.**
