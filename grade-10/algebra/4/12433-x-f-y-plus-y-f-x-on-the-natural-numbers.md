---
id: "12433"
title: "x f(y) + y f(x) = (x + y) f(x² + y²) sur les entiers naturels"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [equation-fonctionnelle, entiers, divisibilite, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 9 janvier 2019"
  reference: "2019-01_Test-09-01.pdf, exercice commun aux groupes Junior et Senior, exercice 4 ; corrigé 2019-01_Test-09-01-Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/Test-09-01.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-01_Test-09-01.pdf"
---

## Statement

On note $\mathbb{N} = \{0, 1, 2, \ldots\}$ l'ensemble des entiers naturels. Trouver toutes les
fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que, pour tous entiers naturels $x$ et $y$,
$$x\,f(y) + y\,f(x) = (x + y)\,f(x^2 + y^2).$$

## Hints

1. Commence par essayer $y = 0$.
2. Tu dois trouver que $f$ prend la même valeur en tous les carrés. Pour en profiter, remplace
   $y$ par un carré $k^2$.
3. Dans l'égalité obtenue, fais apparaître $(x + k^2)\,f(x)$ des deux côtés. Que peux-tu dire du
   nombre $x\,(f(0) - f(x))$ ?
4. Un entier non nul ne peut pas être un multiple de nombres aussi grands qu'on veut.

## Solution

### Étape 1 : $f$ vaut $f(0)$ en tous les carrés

Prenons $y = 0$ et $x \geqslant 1$. L'égalité devient
$$x\,f(0) + 0 = x\,f(x^2), \qquad \text{donc} \qquad f(x^2) = f(0)$$
en divisant par $x \neq 0$. C'est aussi vrai pour $x = 0$. Ainsi **$f(k^2) = f(0)$ pour tout
entier naturel $k$.**

### Étape 2 : $f(x) = f(0)$ pour tout $x$

Fixons $x \geqslant 1$, et prenons $y = k^2$ avec $k \geqslant 1$. Comme $f(k^2) = f(0)$,
l'égalité devient
$$x\,f(0) + k^2 f(x) = (x + k^2)\,f(x^2 + k^4).$$
Retranchons $(x + k^2)\,f(x)$ des deux côtés :
$$x\,f(0) - x\,f(x) = (x + k^2)(f(x^2 + k^4) - f(x)),$$
c'est-à-dire
$$x\,(f(0) - f(x)) = (x + k^2) \times (f(x^2 + k^4) - f(x)).$$
Notons $D = x\,(f(0) - f(x))$. C'est un entier qui ne dépend pas de $k$, et l'égalité dit que
**$D$ est un multiple de $x + k^2$, pour tout entier $k \geqslant 1$.**

Supposons $D \neq 0$. Un multiple non nul de $x + k^2$ est, en valeur absolue, au moins égal à
$x + k^2$. Donc $|D| \geqslant x + k^2 > k^2$ pour tout $k$. C'est faux dès que $k^2 > |D|$, par
exemple pour $k = |D| + 1$. Donc $D = 0$, et comme $x \neq 0$, on obtient $f(x) = f(0)$.

Ainsi $f(x) = f(0)$ pour tout $x \geqslant 1$, et bien sûr pour $x = 0$ : **$f$ est constante.**

### Étape 3 : vérification

Si $f$ est constante, égale à un entier naturel $c$, alors pour tous $x$ et $y$,
$$x\,c + y\,c = (x + y)\,c,$$
et l'égalité est vraie.

### Conclusion

Les solutions sont **exactement les fonctions constantes** $f(n) = c$, où $c$ est un entier
naturel quelconque.
