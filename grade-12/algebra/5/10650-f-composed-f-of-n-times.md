---
id: "10650"
title: "f composée f(n) fois"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, composition, entiers, recurrence, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 15 ; corrigé 2023-01_corrige-envoi-2.pdf. L'énoncé contient la coquille « pù » pour « où »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Pour une fonction $f$ et un entier $k \geqslant 1$, on note $f^k$ la fonction obtenue en appliquant $f$ exactement $k$ fois : $f^1 = f$, $f^2 = f \circ f$, $f^3 = f \circ f \circ f$, et ainsi de suite.

Trouver toutes les fonctions $f : \mathbb{N}^* \to \mathbb{N}^*$ telles que, pour tous entiers $m, n \geqslant 1$,

$$f^{f(n)}(m) + mn = f(m)\,f(n)$$

## Hints

1. Remplace $n$ par $m$. Que peux-tu en déduire sur $f(m)$ comparé à $m$ ? Puis sur $f^k(m)$ comparé à $m + k$ ?
2. Le membre de droite et le terme $mn$ ne changent pas si l'on échange $m$ et $n$. Déduis-en que $f^{f(n)}(m) = f^{f(m)}(n)$.
3. Dans cette égalité, prends $n = f(m)$. Montre que $f(f(m)) = f(m) + 1$.
4. Calcule alors $f^k(m)$ en fonction de $f(m)$ et de $k$, et reviens à l'équation avec $n = m$.

## Solution

**Étape 1. $f$ fait toujours monter.**

Avec $n = m$, l'équation donne $f^{f(m)}(m) + m^2 = f(m)^2$. Comme $f^{f(m)}(m) \geqslant 1$, on a $f(m)^2 > m^2$, donc $f(m) > m$ car les deux sont positifs. Comme ce sont des entiers :

$$f(m) \geqslant m + 1 \qquad \text{pour tout } m \geqslant 1$$

En appliquant cela plusieurs fois, $f^2(m) = f(f(m)) \geqslant f(m) + 1 \geqslant m + 2$, et par récurrence $f^k(m) \geqslant m + k$ pour tout $k \geqslant 1$. En particulier, $f^k(u) > u$ pour tout $u$ et tout $k \geqslant 1$.

**Étape 2. Une égalité symétrique.**

En écrivant l'équation pour $(m, n)$ et pour $(n, m)$, on obtient

$$f^{f(n)}(m) = f(m)f(n) - mn = f^{f(m)}(n)$$

**Étape 3. $f(f(m)) = f(m) + 1$.**

Fixons $m$ et prenons $n = f(m)$ dans l'égalité de l'étape 2. À gauche, on a $f^{f(f(m))}(m)$. À droite, on a $f^{f(m)}(f(m))$ : c'est $f$ appliquée $f(m)$ fois au nombre $f(m)$, donc $f$ appliquée $f(m) + 1$ fois au nombre $m$. Ainsi

$$f^{A}(m) = f^{B}(m) \qquad \text{avec} \qquad A = f(f(m)) \quad \text{et} \quad B = f(m) + 1$$

Par l'étape 1 appliquée à $f(m)$, on a $A \geqslant B$. Si $A > B$, posons $u = f^B(m)$ et $k = A - B \geqslant 1$. Alors $f^A(m) = f^k(u) > u = f^B(m)$ par l'étape 1, ce qui contredit l'égalité. Donc $A = B$, c'est-à-dire $f(f(m)) = f(m) + 1$.

**Étape 4. Les composées.**

L'étape 3 dit que $f(u) = u + 1$ dès que $u$ est une valeur prise par $f$. Or chaque $f^k(m)$, pour $k \geqslant 1$, est une valeur prise par $f$. Donc $f^{k+1}(m) = f^k(m) + 1$, et par récurrence

$$f^k(m) = f(m) + k - 1 \qquad \text{pour tout } k \geqslant 1$$

**Étape 5. On trouve $f$.**

Avec $n = m$ et $k = f(m)$, l'équation de l'étape 1 devient $(2f(m) - 1) + m^2 = f(m)^2$, soit

$$(f(m) - 1)^2 = m^2$$

Comme $f(m) - 1 \geqslant m > 0$, on obtient $f(m) - 1 = m$, c'est-à-dire $f(m) = m + 1$.

**Étape 6. Vérification.**

Si $f(n) = n + 1$ pour tout $n$, alors $f^k(m) = m + k$, et

$$f^{f(n)}(m) + mn = m + n + 1 + mn = (m + 1)(n + 1) = f(m)\,f(n)$$

**Conclusion : la seule solution est la fonction $f(n) = n + 1$.**
