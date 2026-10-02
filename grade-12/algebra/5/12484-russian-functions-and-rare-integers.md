---
id: "12484"
title: "Fonctions russes et entiers rares"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [equation-fonctionnelle, antecedents, puissances-de-2, construction, ensembles-finis]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 mai 2020"
  reference: "2020-11_Enonce-Test-Mai-2020.pdf, exercice 7 (groupe Senior) ; corrigé 2020-05_Corrige-Web-05-2020.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Mai-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Mai-2020.pdf"
---

## Statement

Soit $\mathbb{Z}$ l'ensemble des entiers relatifs. On dit qu'une fonction $f : \mathbb{Z} \to \mathbb{Z}$
est **russe** si l'égalité
$$f(f(x + y) + y) = f(f(x) + y)$$
est vraie pour tous les entiers $x$ et $y$. On dit qu'un entier $v$ est **$f$-rare** si
l'ensemble des entiers $x$ tels que $f(x) = v$ est fini et non vide.

a) Démontrer qu'il existe une fonction $f$ russe pour laquelle il existe un entier $f$-rare.

b) Démontrer que, pour toute fonction $f$ russe, il existe au plus un entier $f$-rare.

## Hints

1. Pour la question a), il faut une fonction qui prend une valeur une seule fois, par exemple
   $f(0) = 0$ et $f(x) \neq 0$ pour $x \neq 0$. Pense aux puissances de $2$ : pour $x \neq 0$,
   écris $x = 2^{\alpha} \times u$ avec $u$ impair, et essaie $f(x) = 2^{\alpha + 1}$.
2. Pour la question b), remplace $x$ par $x + ky$ dans l'égalité. Montre que
   $f(f(x + ky) + y) = f(f(x) + y)$ pour tout entier relatif $k$.
3. Soit $v$ un entier $f$-rare, et $a$ le plus petit entier $x$ tel que $f(x) = v$. Fixe un entier
   $x$ et choisis $y = a - f(x)$. Que peux-tu dire de $f(x + ky)$ pour tout $k$ ?
4. Fais de même avec le plus grand antécédent $b$ de $v$ et $z = b - f(x)$. Déduis-en que
   $f(x + myz) = f(x)$ pour tout entier $m$. Quand cela empêche-t-il $f(x)$ d'être rare ?

## Solution

### Question a)

**Notation.** Tout entier $x \neq 0$ s'écrit d'une seule façon $x = 2^{\alpha} \times u$, avec
$\alpha$ entier naturel et $u$ impair. On note $\alpha = e(x)$ : c'est l'exposant de $2$ dans $x$.
Pour $x = 0$, on pose par convention $e(0) = +\infty$, plus grand que tout entier.

**Une propriété des sommes.** Soit $m$ et $m'$ deux entiers.

- Si $e(m) < e(m')$, alors $e(m + m') = e(m)$.
- Si $m$ et $m'$ sont non nuls et $e(m) = e(m')$, alors $e(m + m') > e(m)$.

En effet, dans le premier cas $m \neq 0$, et si $m' = 0$ c'est immédiat. Dans les autres cas,
écrivons $m = 2^{\alpha} u$ et $m' = 2^{\beta} u'$ avec $u$ et $u'$ impairs. Si $\alpha < \beta$,
alors $m + m' = 2^{\alpha}(u + 2^{\beta - \alpha} u')$, et $u + 2^{\beta - \alpha} u'$ est impair
(impair plus pair). Si $\alpha = \beta$, alors $m + m' = 2^{\alpha}(u + u')$, et $u + u'$ est pair
(impair plus impair), donc $m + m'$ est nul ou divisible par $2^{\alpha + 1}$.

**La fonction.** On pose $f(0) = 0$ et, pour $x \neq 0$, $f(x) = 2^{e(x) + 1}$. Par exemple
$f(12) = f(4 \times 3) = 2^3 = 8$ et $f(-5) = 2^1 = 2$. Deux faits sont évidents :

- (F1) $f(m) = f(m')$ si et seulement si $e(m) = e(m')$ ;
- (F2) $e(f(m)) = e(m) + 1$, ce qui reste vrai pour $m = 0$ avec $+\infty + 1 = +\infty$.

**L'entier $0$ est $f$-rare**, puisque le seul entier $x$ tel que $f(x) = 0$ est $x = 0$.

**La fonction $f$ est russe.** Soit $x$ et $y$ deux entiers. Si $y = 0$, les deux membres valent
$f(f(x))$. Supposons $y \neq 0$.

- *Si $e(x) \geqslant e(y)$.* D'après la propriété des sommes, $e(x + y) \geqslant e(y)$, puis
  d'après (F2), $e(f(x + y)) \geqslant e(y) + 1 > e(y)$. La propriété des sommes donne alors
  $e(f(x + y) + y) = e(y)$. De même, $e(f(x)) = e(x) + 1 > e(y)$, donc $e(f(x) + y) = e(y)$. Les
  entiers $f(x + y) + y$ et $f(x) + y$ ont le même exposant de $2$, donc, d'après (F1), ils ont la
  même image : $f(f(x + y) + y) = f(f(x) + y)$.
- *Si $e(x) < e(y)$.* Alors $e(x + y) = e(x)$, donc $f(x + y) = f(x)$ d'après (F1), et les deux
  membres de l'égalité sont égaux.

La fonction $f$ est donc russe, et l'entier $0$ est $f$-rare.

### Question b)

Soit $f$ une fonction russe. Pour un entier $w$, notons $A_w$ l'ensemble des entiers $x$ tels que
$f(x) = w$ (l'ensemble des antécédents de $w$).

**Étape 1 : on peut ajouter des multiples de $y$.** Fixons deux entiers $x$ et $y$, et posons
$u_k = f(f(x + ky) + y)$ pour tout entier relatif $k$. L'égalité de l'énoncé, appliquée à
$x + ky$ et $y$, donne
$$f(f(x + ky + y) + y) = f(f(x + ky) + y), \qquad \text{c'est-à-dire} \qquad u_{k+1} = u_k.$$
Tous les $u_k$ sont donc égaux, pour $k$ positif comme pour $k$ négatif, et égaux à $u_0$ :
$$f(f(x + ky) + y) = f(f(x) + y) \qquad \text{pour tout entier relatif } k. \qquad (1)$$

**Étape 2 : où peut se trouver un entier rare.** Soit $v$ un entier $f$-rare. L'ensemble $A_v$ est
fini et non vide : il a un plus petit élément $a$ et un plus grand élément $b$. Soit $x$ un entier
quelconque.

- Posons $y = a - f(x)$. Alors $f(x) + y = a$, donc $f(f(x) + y) = f(a) = v$. D'après (1),
  $f(f(x + ky) + y) = v$, c'est-à-dire que $f(x + ky) + y$ est dans $A_v$. Il est donc au moins égal
  à $a$ : $f(x + ky) \geqslant a - y = f(x)$, pour tout entier $k$.
- Posons $z = b - f(x)$. De la même façon, $f(x + \ell z) + z$ est dans $A_v$, donc au plus égal à
  $b$ : $f(x + \ell z) \leqslant b - z = f(x)$, pour tout entier $\ell$.

Soit $m$ un entier relatif. Le nombre $x + myz$ s'écrit $x + ky$ avec $k = mz$, donc
$f(x + myz) \geqslant f(x)$. Il s'écrit aussi $x + \ell z$ avec $\ell = my$, donc
$f(x + myz) \leqslant f(x)$. Ainsi
$$f(x + myz) = f(x) \qquad \text{pour tout entier relatif } m.$$

Si $yz \neq 0$, les entiers $x + myz$, pour $m \in \mathbb{Z}$, sont tous différents, et ce sont
tous des antécédents de $f(x)$ : l'entier $f(x)$ n'est pas $f$-rare.

Soit maintenant $r$ un entier $f$-rare. Il a au moins un antécédent $x$, de sorte que $r = f(x)$.
D'après ce qui précède, on a forcément $yz = 0$, c'est-à-dire $f(x) = a$ ou $f(x) = b$. Donc
$r = a$ ou $r = b$, et dans les deux cas $r$ est dans $A_v$.

Nous avons montré : **si $v$ est $f$-rare, alors tout entier $f$-rare $r$ vérifie $f(r) = v$.**

**Étape 3 : conclusion.** Supposons que $v$ et $w$ soient deux entiers $f$-rares. On applique le
résultat de l'étape 2 à l'entier rare $r = v$, d'abord avec $v$, puis avec $w$ à la place de $v$ :
on obtient $f(v) = v$ et $f(v) = w$. Donc $v = w$.

**Pour toute fonction russe, il existe au plus un entier $f$-rare.**

## Going further

1. Pour la fonction de la question a), quels sont les entiers $f$-rares ? Vérifier que le
   résultat de l'étape 2 est bien respecté.
2. Montrer que la fonction $g$ définie par $g(0) = 0$ et $g(x) = 2^{e(x)}$ pour $x \neq 0$ (sans le
   $+1$) n'est pas russe. Où la preuve de la question a) ne marche-t-elle plus ?
