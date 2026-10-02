---
id: "12865"
title: "x(f(x) + f(y)) ≥ (f(f(x)) + y) f(y)"
grade: 11
theme: algebra
difficulty: 5
duration_min: 50
tags: [equation-fonctionnelle, inegalite, composition, suites, principe-des-tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2024"
  reference: "2025-01_Enonce-Test-5.pdf, test senior, exercice 6 ; corrigé 2025-01_Corrige-Test-5.pdf (le corrigé passe à la limite dans une suite décroissante ; la solution ci-dessous remplace ce passage à la limite par un argument de moyenne)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-5.pdf"
---

## Statement

Trouver toutes les fonctions $f$, définies sur l'ensemble des réels strictement positifs et à valeurs strictement positives, telles que

$$x\,(f(x) + f(y)) \geq (f(f(x)) + y)\,f(y)$$

pour tous les réels $x > 0$ et $y > 0$.

## Hints

1. Cherchez des solutions de la forme $f(x) = c/x$.
2. Prenez $y = x$. Qu'obtenez-vous ?
3. Posez $g(t) = t\,f(t)$. Réécrivez l'inégalité sous la forme $g(y) \leq g(x) + (x - f(f(x)))\,f(y)$, et montrez que $g(f(t)) \leq g(t)$.
4. Le terme $(x - f(f(x)))\,f(y)$ gêne. Remplacez $x$ par $f(f(x))$, puis par $f(f(f(f(x))))$, et ainsi de suite : les écarts successifs ne peuvent pas rester tous grands.

## Solution

La réponse : les fonctions $f(x) = c/x$, où $c$ est un réel strictement positif.

### Les fonctions c/x conviennent

Soit $c > 0$ et $f(x) = c/x$. Alors $f(f(x)) = c/(c/x) = x$, et pour tous $x, y > 0$ :

$$x\,(f(x) + f(y)) = c + \frac{cx}{y} \qquad \text{et} \qquad (f(f(x)) + y)\,f(y) = (x + y)\,\frac{c}{y} = \frac{cx}{y} + c.$$

Les deux membres sont égaux, donc l'inégalité est vraie.

### Réécriture

Soit maintenant $f$ une fonction qui convient. On pose $g(t) = t\,f(t)$ pour $t > 0$ ; c'est un nombre strictement positif. En développant les deux membres, l'inégalité de l'énoncé s'écrit $x f(x) + x f(y) \geq f(f(x))\,f(y) + y f(y)$, c'est-à-dire

$$(1) \qquad g(y) \leq g(x) + (x - f(f(x)))\,f(y) \qquad \text{pour tous } x, y > 0.$$

On va montrer que **la fonction $g$ est constante**. Cela suffira : si $g(t) = c$ pour tout $t$, alors $f(t) = c/t$, avec $c = g(1) > 0$.

### Étape 1 : f(f(x)) ≤ x

Prenons $y = x$ dans $(1)$ : $g(x) \leq g(x) + (x - f(f(x)))\,f(x)$, donc $(x - f(f(x)))\,f(x) \geq 0$. Comme $f(x) > 0$, on obtient

$$f(f(x)) \leq x \qquad \text{pour tout } x > 0.$$

### Étape 2 : g diminue quand on applique f

Pour tout $t > 0$, d'après l'étape 1 et comme $f(t) > 0$,

$$g(f(t)) = f(t) \times f(f(t)) \leq f(t) \times t = g(t).$$

### Étape 3 : on itère

Fixons $x > 0$, et définissons une suite par $x_0 = x$ et $x_{k+1} = f(f(x_k))$. Tous ses termes sont strictement positifs.

- D'après l'étape 1, $x_{k+1} \leq x_k$ : la suite est décroissante.
- D'après l'étape 2, utilisée deux fois, $g(x_{k+1}) = g(f(f(x_k))) \leq g(f(x_k)) \leq g(x_k)$. Donc $g(x_k) \leq g(x_0) = g(x)$ pour tout $k$.

Appliquons $(1)$ en remplaçant $x$ par $x_k$. Comme $f(f(x_k)) = x_{k+1}$, on obtient, pour tout $y > 0$ et tout $k$,

$$g(y) \leq g(x_k) + (x_k - x_{k+1})\,f(y) \leq g(x) + (x_k - x_{k+1})\,f(y).$$

### Étape 4 : un écart aussi petit qu'on veut

Soit $N \geq 1$ un entier. Les $N$ écarts $x_0 - x_1$, $x_1 - x_2$, ..., $x_{N-1} - x_N$ sont positifs ou nuls, et leur somme vaut

$$(x_0 - x_1) + (x_1 - x_2) + \cdots + (x_{N-1} - x_N) = x_0 - x_N < x.$$

Ils ne peuvent donc pas être tous plus grands que $x/N$ : l'un d'eux, disons $x_k - x_{k+1}$, vérifie $x_k - x_{k+1} \leq x/N$. Pour cet indice $k$, l'étape 3 donne

$$g(y) - g(x) \leq \frac{x\,f(y)}{N}.$$

Cela vaut pour **tout** entier $N \geq 1$. Supposons que $g(y) - g(x) > 0$. En choisissant un entier $N$ plus grand que $x\,f(y)/(g(y) - g(x))$, on aurait $x\,f(y)/N < g(y) - g(x)$, ce qui est impossible. Donc

$$g(y) \leq g(x) \qquad \text{pour tous } x, y > 0.$$

### Conclusion

En échangeant les rôles de $x$ et $y$, on a aussi $g(x) \leq g(y)$. Donc $g(x) = g(y)$ pour tous $x, y > 0$ : la fonction $g$ est constante, égale à $c = f(1) > 0$, et $f(t) = c/t$ pour tout $t > 0$.

**Les fonctions qui conviennent sont les fonctions $f(x) = c/x$, avec $c > 0$.**

## Going further

1. Résolvez le même problème avec une égalité à la place de l'inégalité. (Prenez $y = x$ : les étapes 3 et 4 deviennent inutiles.)
2. Dans l'étape 4, pourquoi a-t-on besoin d'un écart **petit**, et pas seulement d'un écart positif ou nul ?
