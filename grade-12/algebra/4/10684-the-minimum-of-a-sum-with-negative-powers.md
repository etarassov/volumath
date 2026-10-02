---
id: "10684"
title: "Le minimum d'une somme avec des puissances négatives"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, minimum, convexite, tangente, somme-geometrique, produit-egal-a-un]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 17 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé dit que x ↦ x^(−k) est « concave » : elle est convexe sur ]0, +∞[, et c'est bien la convexité qui sert. Il écrit aussi a + b^(−k) + c^(−k) pour a^(−k) + b^(−k) + c^(−k). L'inégalité de Jensen est remplacée ici par une tangente, et l'inégalité arithmético-géométrique par un lemme démontré."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $n$ un entier naturel. Déterminer la plus petite valeur que peut prendre

$$\frac{a^{-n} + b}{1 - a} + \frac{b^{-n} + c}{1 - b} + \frac{c^{-n} + a}{1 - c}$$

quand $a$, $b$, $c$ sont des réels strictement positifs vérifiant $a + b + c = 1$.

## Hints

1. Calcule la valeur pour $a = b = c = \frac{1}{3}$. On peut deviner que c'est le minimum.
2. Montre que $\frac{a^{-n}}{1 - a} = \frac{1}{1 - a} + a^{-1} + a^{-2} + \cdots + a^{-n}$. Multiplie par $1 - a$ pour le vérifier.
3. Écris $1 + b = (1 - a) + (1 - c)$, en utilisant $a + b + c = 1$. Les trois quotients qui apparaissent ont un produit égal à $1$.
4. Pour minorer $a^{-k} + b^{-k} + c^{-k}$, utilise la convexité de $x \mapsto x^{-k}$ sur $]0, +\infty[$ et sa tangente en $\frac{1}{3}$.

## Solution

Notons $F$ la somme de l'énoncé. Comme $a$, $b$, $c$ sont strictement positifs de somme $1$, chacun est strictement compris entre $0$ et $1$, donc les dénominateurs sont strictement positifs.

**Étape 1. Couper chaque terme en morceaux.**

Pour $n \geqslant 1$, on a $(1 - a)(a^{-1} + a^{-2} + \cdots + a^{-n}) = a^{-n} - 1$, car en développant, tous les termes se simplifient deux à deux sauf $a^{-n}$ et $-a^0$. Donc

$$\frac{a^{-n}}{1 - a} = \frac{1}{1 - a} + a^{-1} + a^{-2} + \cdots + a^{-n}$$

(quand $n = 0$, la somme de droite est vide et l'égalité reste vraie). En faisant de même pour $b$ et $c$, on obtient

$$F = \frac{1 + b}{1 - a} + \frac{1 + c}{1 - b} + \frac{1 + a}{1 - c} + \sum_{k=1}^{n} \left(a^{-k} + b^{-k} + c^{-k}\right)$$

**Étape 2. Les trois premiers quotients valent au moins $6$.**

Comme $a + b + c = 1$, on a $1 + b = (1 - a) + (a + b) = (1 - a) + (1 - c)$. Donc $\frac{1 + b}{1 - a} = 1 + \frac{1 - c}{1 - a}$, et de même pour les deux autres :

$$\frac{1 + b}{1 - a} + \frac{1 + c}{1 - b} + \frac{1 + a}{1 - c} = 3 + \frac{1 - c}{1 - a} + \frac{1 - a}{1 - b} + \frac{1 - b}{1 - c}$$

*Lemme.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, on peut supposer que $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ : sinon les trois nombres seraient strictement plus petits que $1$, et leur produit aussi. De même $q \leqslant 1$. Donc $(p - 1)(1 - q) \geqslant 0$, ce qui s'écrit $p + q \geqslant 1 + pq$. Posons $t = pq > 0$. Comme $r = \frac{1}{t}$, on a $p + q + r \geqslant 1 + t + \frac{1}{t}$, et $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$. Donc $p + q + r \geqslant 3$.

Les trois quotients $\frac{1 - c}{1 - a}$, $\frac{1 - a}{1 - b}$, $\frac{1 - b}{1 - c}$ sont strictement positifs et leur produit vaut $1$. Par le lemme, leur somme vaut au moins $3$, donc les trois premiers termes de $F$ valent au moins $3 + 3 = 6$.

**Étape 3. Minorer $a^{-k} + b^{-k} + c^{-k}$.**

Soit $k \geqslant 1$ un entier et $g(x) = x^{-k}$ sur $]0, +\infty[$. On a $g'(x) = -k\,x^{-k-1}$ et $g''(x) = k(k + 1)\,x^{-k-2} > 0$, donc $g$ est convexe, et sa courbe est au-dessus de chacune de ses tangentes. La tangente en $\frac{1}{3}$ donne, pour tout $x > 0$,

$$x^{-k} \geqslant g\left(\tfrac{1}{3}\right) + g'\left(\tfrac{1}{3}\right)\left(x - \tfrac{1}{3}\right) = 3^k - k\,3^{k+1}\left(x - \tfrac{1}{3}\right)$$

Appliquons cette inégalité à $x = a$, $x = b$ et $x = c$, et additionnons. Comme $\left(a - \frac{1}{3}\right) + \left(b - \frac{1}{3}\right) + \left(c - \frac{1}{3}\right) = a + b + c - 1 = 0$, il reste

$$a^{-k} + b^{-k} + c^{-k} \geqslant 3 \times 3^k = 3^{k+1}$$

**Étape 4. La borne est atteinte.**

Par les étapes 1, 2 et 3,

$$F \geqslant 6 + \sum_{k=1}^{n} 3^{k+1} = 6 + 9 \times \frac{3^n - 1}{3 - 1} = \frac{12 + 3^{n+2} - 9}{2} = \frac{3^{n+2} + 3}{2}$$

en utilisant la somme des termes d'une suite géométrique. Pour $a = b = c = \frac{1}{3}$, chaque terme de $F$ vaut $\frac{3^n + \frac{1}{3}}{\frac{2}{3}} = \frac{3^{n+1} + 1}{2}$, donc $F = \frac{3^{n+2} + 3}{2}$ : la borne est atteinte.

**Conclusion : la plus petite valeur est $\frac{3^{n+2} + 3}{2}$, atteinte pour $a = b = c = \frac{1}{3}$. Par exemple, elle vaut $6$ pour $n = 0$ et $15$ pour $n = 1$.**
