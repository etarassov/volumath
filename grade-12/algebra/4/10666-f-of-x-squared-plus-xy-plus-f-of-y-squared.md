---
id: "10666"
title: "f(x² + xy + f(y²)) = xf(y) + f(x²) + y²"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, substitution, symetrie, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 16 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Déterminer toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f\left(x^2 + xy + f(y^2)\right) = x f(y) + f(x^2) + y^2$$

## Hints

1. Avec $y = 0$, puis en changeant $x$ en $-x$, montre que $f(0) = 0$.
2. Avec $x = 0$, calcule $f(f(y^2))$. Puis prends $x = -y$ : tu obtiens $f(y^2) = y f(y)$.
3. Pour $y \neq 0$, choisis $x$ pour que $x^2 + xy + f(y^2)$ soit égal à $x^2$. Déduis-en que $f(y)^2 = y^2$.
4. Il reste à montrer que le signe est le même pour tous les $y$. Suppose $f(a) = a$ et $f(b) = -b$ avec $a$, $b$ non nuls, et utilise le couple $(a, b)$.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour un couple $(x, y)$.

**Étape 1. $f(0) = 0$.**

$E(x, 0)$ donne $f(x^2 + f(0)) = x f(0) + f(x^2)$, et $E(-x, 0)$ donne $f(x^2 + f(0)) = -x f(0) + f(x^2)$. Les deux membres de gauche sont égaux, donc $x f(0) = -x f(0)$, soit $2x f(0) = 0$. Avec $x = 1$, on obtient $f(0) = 0$.

**Étape 2. $f(y^2) = y f(y)$.**

$E(0, y)$ donne $f(f(y^2)) = f(0) + y^2 = y^2$.

$E(-y, y)$ donne $f(y^2 - y^2 + f(y^2)) = -y f(y) + f(y^2) + y^2$, c'est-à-dire $f(f(y^2)) = -y f(y) + f(y^2) + y^2$. Avec l'égalité précédente, $y^2 = -y f(y) + f(y^2) + y^2$, donc

$$(1) \qquad f(y^2) = y f(y) \qquad \text{pour tout réel } y$$

**Étape 3. $f(y)^2 = y^2$.**

Soit $y \neq 0$. Choisissons $x = -\frac{f(y^2)}{y}$, de sorte que $xy = -f(y^2)$. Alors $x^2 + xy + f(y^2) = x^2$, et $E(x, y)$ donne

$$f(x^2) = x f(y) + f(x^2) + y^2, \qquad \text{donc} \qquad x f(y) = -y^2$$

c'est-à-dire $-\frac{f(y^2)\,f(y)}{y} = -y^2$, soit $f(y^2) f(y) = y^3$. Avec $(1)$, cela donne $y f(y)^2 = y^3$, et comme $y \neq 0$, $f(y)^2 = y^2$. C'est vrai aussi pour $y = 0$.

Donc, pour chaque réel $y$, $f(y) = y$ ou $f(y) = -y$.

**Étape 4. Le même signe partout.**

Le signe pourrait a priori dépendre de $y$. Supposons qu'il existe deux réels non nuls $a$ et $b$ tels que $f(a) = a$ et $f(b) = -b$. Par $(1)$, $f(a^2) = a f(a) = a^2$ et $f(b^2) = b f(b) = -b^2$. Alors $E(a, b)$ donne

$$f(a^2 + ab - b^2) = a \cdot (-b) + a^2 + b^2 = a^2 - ab + b^2$$

Or le membre de gauche vaut $a^2 + ab - b^2$ ou son opposé.

- **S'il vaut $a^2 + ab - b^2$**, alors $a^2 + ab - b^2 = a^2 - ab + b^2$, soit $2b(a - b) = 0$. Comme $b \neq 0$, on a $a = b$. Mais alors $a = f(a) = f(b) = -b = -a$, donc $a = 0$, ce qui est exclu.
- **S'il vaut $-a^2 - ab + b^2$**, alors $-a^2 - ab + b^2 = a^2 - ab + b^2$, soit $2a^2 = 0$, et $a = 0$, ce qui est exclu.

Donc soit $f(y) = y$ pour tout $y$, soit $f(y) = -y$ pour tout $y$.

**Étape 5. Vérification.**

- Si $f(x) = x$ : les deux membres valent $x^2 + xy + y^2$.
- Si $f(x) = -x$ : le membre de gauche vaut $f(x^2 + xy - y^2) = -x^2 - xy + y^2$, et le membre de droite $-xy - x^2 + y^2$, la même chose.

**Conclusion : il y a exactement deux solutions, la fonction $x \mapsto x$ et la fonction $x \mapsto -x$.**
