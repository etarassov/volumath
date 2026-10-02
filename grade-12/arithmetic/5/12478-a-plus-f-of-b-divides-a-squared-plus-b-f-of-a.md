---
id: "12478"
title: "a + f(b) divise a² + b f(a)"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, equation-fonctionnelle, divisibilite, nombres-premiers, lemme-de-gauss, infinite-des-nombres-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 1er avril 2020"
  reference: "2020-11_Enonce-Test-Avril-2020.pdf, exercice 7 (groupe Senior) ; corrigé 2020-04_Corrige-Web.pdf (solution alternative n° 1 du corrigé, la solution principale utilise le théorème chinois)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Avril-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Avril-2020.pdf"
---

## Statement

Soit $C$ un entier naturel non nul. Trouver toutes les fonctions $f : \mathbb{N}^* \to \mathbb{N}^*$
telles que, pour tous les entiers $a \geqslant 1$ et $b \geqslant 1$ vérifiant $a + b \geqslant C$,
l'entier $a + f(b)$ divise $a^2 + b\,f(a)$.

## Hints

1. Essaie les fonctions $f(x) = kx$, où $k$ est un entier naturel non nul. On posera ensuite
   $k = f(1)$ et on cherchera à montrer que $f(x) = kx$ pour tout $x$.
2. Avec $a = 1$, montre que $f(n) \leqslant kn$ dès que $n$ est assez grand.
3. Soit $m \geqslant 1$. Choisis $a$ de la forme $tm - f(m)$ et $b = m$ pour montrer que $m$ divise
   $f(m)^2$. Qu'en déduis-tu quand $m$ est un nombre premier ?
4. Pour un grand nombre premier $p$, prends $a = p$ et $b = 1$ pour obtenir $f(p) = kp$.
5. Enfin, pour $\ell$ fixé, prends $a = \ell$ et $b = p$, avec $p$ premier très grand.

## Solution

Nous allons montrer que **les solutions sont exactement les fonctions $f(x) = kx$, où $k$ est un
entier naturel non nul**, quel que soit $C$.

On utilisera deux résultats de Terminale (maths expertes) :

- **le lemme de Gauss** : si un entier $u$ divise $vw$ et si $u$ est premier avec $v$, alors $u$
  divise $w$ ;
- **il existe une infinité de nombres premiers.**

### Ces fonctions conviennent

Soit $k \geqslant 1$ et $f(x) = kx$. Pour tous $a$, $b$, on a
$a^2 + b\,f(a) = a^2 + kab = a\,(a + kb) = a\,(a + f(b))$, qui est bien un multiple de $a + f(b)$.

### Ce sont les seules

Soit $f$ une solution. Posons $k = f(1)$, qui est un entier naturel non nul.

**Étape 1 : $f(n) \leqslant kn$ pour $n \geqslant C$.** Soit $n \geqslant C$. Avec $a = 1$ et
$b = n$, on a $a + b \geqslant C$, donc $1 + f(n)$ divise $1 + n\,f(1) = 1 + kn$. Comme $1 + kn > 0$,
un diviseur positif de $1 + kn$ est au plus égal à $1 + kn$, donc $f(n) \leqslant kn$.

**Étape 2 : $m$ divise $f(m)^2$ pour tout $m \geqslant 1$.** Soit $m \geqslant 1$. Choisissons un
entier $t$ assez grand pour que $a = tm - f(m)$ vérifie $a \geqslant C$, et prenons $b = m$. Alors
$a + b \geqslant C$, et $a + f(b) = tm$. L'énoncé dit que $tm$ divise $a^2 + m\,f(a)$.

D'autre part, $a^2 - f(m)^2 = (a - f(m))(a + f(m)) = (a - f(m)) \times tm$ est un multiple de $tm$.
Par différence, $tm$ divise $f(m)^2 + m\,f(a)$. En particulier $m$ divise $f(m)^2 + m\,f(a)$, donc
$m$ divise $f(m)^2$.

**Étape 3 : $f(p) = kp$ pour tout nombre premier $p$ assez grand.** Soit $p$ un nombre premier.
D'après l'étape 2, $p$ divise $f(p)^2 = f(p) \times f(p)$. Si $p$ ne divisait pas $f(p)$, il serait
premier avec $f(p)$ (car $p$ est premier), et le lemme de Gauss donnerait que $p$ divise $f(p)$ :
c'est absurde. Donc $p$ divise $f(p)$, et on peut écrire $f(p) = p\,g$ avec $g \geqslant 1$ entier.

Supposons maintenant $p \geqslant C$ et $p > k$.

- D'après l'étape 1, $p\,g = f(p) \leqslant kp$, donc $1 \leqslant g \leqslant k$.
- Avec $a = p$ et $b = 1$, on a $a + b \geqslant C$, donc $p + f(1) = p + k$ divise
  $p^2 + f(p) = p\,(p + g)$.
- Un diviseur commun de $p$ et de $p + k$ divise $k$. Comme $1 \leqslant k < p$ et que $p$ est
  premier, $p$ ne divise pas $k$, et le seul diviseur commun positif est $1$ : $p + k$ est premier
  avec $p$. D'après le lemme de Gauss, $p + k$ divise $p + g$.
- Or $0 < p + g \leqslant p + k$. Le seul multiple de $p + k$ dans cet intervalle est $p + k$
  lui-même, donc $g = k$.

Ainsi $f(p) = kp$ pour tout nombre premier $p$ tel que $p \geqslant C$ et $p > k$.

**Étape 4 : $f(\ell) = k\ell$ pour tout $\ell \geqslant 1$.** Fixons $\ell \geqslant 1$, et soit $p$
un nombre premier tel que $p \geqslant C$, $p > k$ et $p > \ell$. D'après l'étape 3, $f(p) = kp$.

Avec $a = \ell$ et $b = p$, on a $a + b \geqslant C$, donc $\ell + kp$ divise $\ell^2 + p\,f(\ell)$.
Il divise aussi $\ell\,(\ell + kp) = \ell^2 + kp\ell$. Par différence, $\ell + kp$ divise
$$p\,f(\ell) - kp\ell = p\,(f(\ell) - k\ell).$$
Un diviseur commun de $p$ et de $\ell + kp$ divise $\ell$. Comme $1 \leqslant \ell < p$ et que $p$
est premier, $\ell + kp$ est premier avec $p$. D'après le lemme de Gauss, $\ell + kp$ divise
$f(\ell) - k\ell$.

Comme il existe une infinité de nombres premiers, on peut choisir $p$ aussi grand qu'on veut, donc
l'entier fixe $f(\ell) - k\ell$ est divisible par des entiers $\ell + kp$ aussi grands qu'on veut.
Un entier non nul $N$ n'est divisible par aucun entier plus grand que $|N|$. Donc
$f(\ell) - k\ell = 0$.

### Conclusion

**Les fonctions cherchées sont les fonctions $f(x) = kx$, où $k$ est un entier naturel non nul.**

## Going further

Montrer que, lorsque $a = b$, la condition de l'énoncé est vraie pour toute fonction $f$. Le cas
$a = b$ n'apprend donc rien. Beaucoup d'élèves s'y sont pourtant trompés : en écrivant
$a^2 + b\,f(a) = q\,(a + f(b))$, ils ont oublié que le quotient $q$ dépend à la fois de $a$ et de $b$.
