---
id: "12414"
title: "Une fonction multiplicative sur les rationnels"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, rationnels, puissances-de-2, recurrence, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection senior du 21 février 2018"
  reference: "2018-02_pofm-2017-2018-test-fevrier-senior.pdf, exercice 3 ; corrigé 2018-02_pofm-2017-2018-test-fevrier-senior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-test-fevrier-senior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-02_pofm-2017-2018-test-fevrier-senior.pdf"
---

## Statement

Soit $f$ une fonction définie sur l'ensemble $\mathbb{Q}$ des nombres rationnels, à valeurs dans
les réels positifs ou nuls, qui vérifie les trois conditions suivantes :

1. $f(2) = \dfrac{1}{2}$ ;
2. pour tout rationnel $x$, si $f(x) \leqslant 1$, alors $f(x + 1) \leqslant 1$ ;
3. $f(xy) = f(x)\,f(y)$ pour tous rationnels $x$ et $y$.

Quelles sont toutes les valeurs possibles de $f(2018)$ ?

## Hints

1. Calcule $f(1)$, puis $f(0)$ et $f(-1)$. Que peux-tu dire de $f(n)$ pour un entier $n \geqslant 1$ ?
2. Comme $2018 = 2 \times 1009$, tout revient à trouver $f(1009)$, dont on sait déjà qu'il est au
   plus $1$. Essaie de montrer que $f(k) \geqslant 1$ pour tout entier impair $k \geqslant 1$.
3. Calcule $f\left(\frac{1}{2}\right)$. Si $f(x) \leqslant 1$, la condition 2 donne
   $f(x + m) \leqslant 1$ pour tout entier $m \geqslant 1$, ce qui est impossible si
   $x + m = \frac{1}{2}$. Applique cela à $x = -\frac{k}{2}$.
4. Applique ensuite la condition 2 à $x = -\frac{2}{k}$, et compare $f(k - 2)$ et $f(k)$.
5. Il faut aussi montrer qu'une telle fonction existe, sinon il n'y aurait aucune valeur possible.
   Pense au nombre de facteurs $2$ du numérateur et du dénominateur.

## Solution

### Étape 1 : premières valeurs

- $\frac{1}{2} = f(2) = f(1 \times 2) = f(1)\,f(2) = \frac{1}{2} f(1)$, donc $f(1) = 1$.
- $f(0) = f(0 \times 2) = f(0)\,f(2) = \frac{1}{2} f(0)$, donc $f(0) = 0$.
- $f(-1)^2 = f((-1) \times (-1)) = f(1) = 1$ et $f(-1) \geqslant 0$, donc $f(-1) = 1$. Par
  conséquent $f(-x) = f(-1)\,f(x) = f(x)$ pour tout rationnel $x$.
- Pour $y \neq 0$, on a $f(y)\,f\left(\frac{1}{y}\right) = f(1) = 1$. Donc $f(y) \neq 0$, et
  $f\left(\frac{1}{y}\right) = \frac{1}{f(y)}$. En particulier $f\left(\frac{1}{2}\right) = 2$. Plus
  généralement, $f\left(\frac{x}{y}\right) = \frac{f(x)}{f(y)}$.
- Comme $f(1) = 1 \leqslant 1$, la condition 2 donne $f(2) \leqslant 1$, puis $f(3) \leqslant 1$, et
  de proche en proche **$f(n) \leqslant 1$ pour tout entier $n \geqslant 1$**.

### Étape 2 : $f(k) = 1$ pour tout entier impair $k \geqslant 1$

Soit $k \geqslant 1$ un entier impair. On l'écrit $k = 2m - 1$ avec $m \geqslant 1$ entier.

**On a $f\left(-\frac{k}{2}\right) > 1$.** Sinon, $f\left(-\frac{k}{2}\right) \leqslant 1$, et en
appliquant $m$ fois la condition 2, on obtiendrait $f\left(-\frac{k}{2} + m\right) \leqslant 1$. Or
$$-\frac{k}{2} + m = \frac{2m - k}{2} = \frac{1}{2}, \qquad \text{et} \qquad f\left(\tfrac{1}{2}\right) = 2 > 1.$$
C'est une contradiction.

**On a $f(k - 2) \leqslant f(k)$.** D'après ce qui précède,
$f\left(-\frac{2}{k}\right) = \dfrac{1}{f\left(-\frac{k}{2}\right)} < 1$. La condition 2 donne alors
$f\left(-\frac{2}{k} + 1\right) \leqslant 1$. Or $-\frac{2}{k} + 1 = \frac{k - 2}{k}$, donc
$$\frac{f(k - 2)}{f(k)} \leqslant 1, \qquad \text{c'est-à-dire} \qquad f(k - 2) \leqslant f(k),$$
puisque $f(k) > 0$.

**Conclusion de l'étape.** On en déduit $1 = f(1) \leqslant f(3) \leqslant f(5) \leqslant \cdots$,
donc $f(k) \geqslant 1$ pour tout entier impair $k \geqslant 1$. Avec l'étape 1, qui donne
$f(k) \leqslant 1$, on obtient $f(k) = 1$.

### Étape 3 : la valeur de $f(2018)$

Comme $1009$ est impair,
$$f(2018) = f(2)\,f(1009) = \frac{1}{2} \times 1 = \frac{1}{2}.$$

### Étape 4 : une telle fonction existe

Il reste à vérifier qu'au moins une fonction satisfait les trois conditions. Sinon, il n'y aurait
aucune valeur possible.

**Écriture d'un rationnel.** Tout rationnel $x \neq 0$ s'écrit $x = 2^a \times \dfrac{u}{v}$ avec
$a$ entier relatif, et $u$, $v$ entiers impairs : on met à part tous les facteurs $2$ du numérateur
et du dénominateur. L'entier $a$ ne dépend pas de l'écriture choisie. En effet, si
$2^a \frac{u}{v} = 2^b \frac{u'}{v'}$ avec $a \geqslant b$ et $u, v, u', v'$ impairs, alors
$2^{a - b}\,u v' = u' v$. Le membre de droite est impair, donc $a - b = 0$.

On pose $f(0) = 0$ et $f\left(2^a \dfrac{u}{v}\right) = 2^{-a}$. Vérifions les trois conditions.

1. $2 = 2^1 \times \frac{1}{1}$, donc $f(2) = 2^{-1} = \frac{1}{2}$.
2. Si $f(x) \leqslant 1$, alors soit $x = 0$, et $f(x + 1) = f(1) = 1$ ; soit
   $x = 2^a \frac{u}{v}$ avec $a \geqslant 0$. Dans ce cas,
   $x + 1 = \dfrac{2^a u + v}{v}$, où le numérateur $N = 2^a u + v$ est un entier et $v$ est impair.
   Si $N = 0$, alors $f(x + 1) = 0$. Sinon, $N = 2^b w$ avec $b \geqslant 0$ et $w$ impair, donc
   $f(x + 1) = 2^{-b} \leqslant 1$.
3. Si $x = 2^a \frac{u}{v}$ et $y = 2^b \frac{u'}{v'}$, alors
   $xy = 2^{a + b} \frac{u u'}{v v'}$ avec $u u'$ et $v v'$ impairs, donc
   $f(xy) = 2^{-a-b} = f(x)\,f(y)$. Si $x$ ou $y$ est nul, les deux membres valent $0$.

### Conclusion

**La seule valeur possible de $f(2018)$ est $\dfrac{1}{2}$.**

## Going further

Montrer qu'en fait il n'existe qu'**une seule** fonction qui vérifie les trois conditions : celle de
l'étape 4.
