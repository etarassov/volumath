---
id: "10664"
title: "f(x)f(y)f(x − y) = x²f(y) − y²f(x)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, substitution, imparite, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 13 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. À la fin du corrigé, la substitution x = b, y = a donne f(b − a) = −(a + b), et non f(a − b) comme il est écrit ; la conclusion n'en dépend pas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Déterminer toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x)\,f(y)\,f(x - y) = x^2 f(y) - y^2 f(x)$$

## Hints

1. Commence par $x = y = 0$. Puis mets de côté la fonction nulle, et montre que $f$ ne s'annule qu'en $0$.
2. Échange les rôles de $x$ et $y$ : le membre de droite change de signe. Déduis-en que $f$ est impaire.
3. Essaie $x = 2y$, puis $x = -y$. En combinant, trouve $f(2y) = 2f(y)$ puis $f(y)^2 = y^2$.
4. Attention : savoir que $f(y)$ vaut $y$ ou $-y$ pour chaque $y$ ne suffit pas. Suppose $f(a) = a$ et $f(b) = -b$ avec $a$, $b$ non nuls, et cherche une contradiction.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour un couple $(x, y)$.

**Étape 1. $f(0) = 0$, et la fonction nulle.**

$E(0, 0)$ donne $f(0)^3 = 0$, donc $f(0) = 0$.

La fonction nulle convient : les deux membres valent $0$. Dans la suite, on suppose que $f$ n'est pas la fonction nulle, et on fixe un réel $y_0$ tel que $f(y_0) \neq 0$.

**Étape 2. $f$ ne s'annule qu'en $0$.**

Soit $x$ tel que $f(x) = 0$. Alors $E(x, y_0)$ donne $0 = x^2 f(y_0) - 0$. Comme $f(y_0) \neq 0$, on a $x = 0$.

**Étape 3. $f$ est impaire.**

En échangeant $x$ et $y$, le membre de droite change de signe :

$$f(y)\,f(x)\,f(y - x) = y^2 f(x) - x^2 f(y) = -f(x)\,f(y)\,f(x - y)$$

Si $x$ et $y$ sont non nuls, $f(x)f(y) \neq 0$ par l'étape 2, et on peut simplifier : $f(y - x) = -f(x - y)$. Prenons $x \neq 0$ et $y = 2x$, qui est aussi non nul. On obtient $f(x) = -f(-x)$. C'est vrai aussi pour $x = 0$, donc $f$ est impaire.

**Étape 4. $f(y)^2 = y^2$.**

Soit $y$ un réel.

- $E(2y, y)$ donne $f(2y)\,f(y)^2 = 4y^2 f(y) - y^2 f(2y)$.
- $E(-y, y)$ donne $f(-y)\,f(y)\,f(-2y) = y^2 f(y) - y^2 f(-y)$. Comme $f$ est impaire, $f(-y) = -f(y)$ et $f(-2y) = -f(2y)$, donc

$$(1) \qquad f(y)^2\,f(2y) = 2y^2 f(y)$$

En remplaçant $f(2y)f(y)^2$ par $2y^2f(y)$ dans la première égalité, on obtient $2y^2 f(y) = 4y^2 f(y) - y^2 f(2y)$, soit $y^2 f(2y) = 2y^2 f(y)$.

Si $y \neq 0$, cela donne $f(2y) = 2f(y)$, et $(1)$ devient $2f(y)^3 = 2y^2 f(y)$. Comme $f(y) \neq 0$, on obtient $f(y)^2 = y^2$. C'est vrai aussi pour $y = 0$.

Donc, pour chaque réel $y$, $f(y) = y$ ou $f(y) = -y$.

**Étape 5. Le même signe partout.**

Le choix du signe pourrait a priori dépendre de $y$. Supposons qu'il existe deux réels non nuls $a$ et $b$ tels que $f(a) = a$ et $f(b) = -b$. Alors $E(b, a)$ donne

$$(-b) \cdot a \cdot f(b - a) = b^2 a - a^2 (-b) = ab(a + b)$$

donc, comme $ab \neq 0$, $f(b - a) = -(a + b)$. Or $f(b - a)$ vaut $b - a$ ou $a - b$.

- Si $b - a = -(a + b)$, alors $b = 0$.
- Si $a - b = -(a + b)$, alors $a = 0$.

Les deux cas sont exclus. Donc soit $f(y) = y$ pour tout $y$, soit $f(y) = -y$ pour tout $y$.

**Étape 6. Vérification.**

- Si $f(x) = x$ : le membre de gauche vaut $xy(x - y)$, et le membre de droite $x^2y - y^2x = xy(x - y)$.
- Si $f(x) = -x$ : le membre de gauche vaut $(-x)(-y)(y - x) = -xy(x - y)$, et le membre de droite $-x^2y + y^2x = -xy(x - y)$.

**Conclusion : il y a exactement trois solutions, la fonction nulle, la fonction $x \mapsto x$ et la fonction $x \mapsto -x$.**
