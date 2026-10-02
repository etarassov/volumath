---
id: "10651"
title: "f(x² + y + f(y)) = f(x)² + αy"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [equation-fonctionnelle, injectivite, surjectivite, imparite, additivite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 17 ; corrigé 2023-01_corrige-envoi-2.pdf. Le corrigé finit par l'équation de Cauchy et la monotonie ; la fin ci-dessous utilise seulement l'additivité et le signe de f."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $\alpha$ un réel non nul. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x^2 + y + f(y)) = f(x)^2 + \alpha y$$

## Hints

1. Avec $x = 0$, montre que $f$ est surjective. Compare ensuite l'équation pour $x$ et pour $-x$.
2. Soit $c$ un réel tel que $f(c) = 0$. Montre que $f(-c) = 0$ aussi, puis que $c = 0$.
3. Choisis $y$ pour que le membre de droite soit nul. Tu dois obtenir que si $f(x) = \pm f(x')$, alors $x = \pm x'$. Utilise la surjectivité pour montrer que $f$ est impaire et injective.
4. Montre que $f(z + y + f(y)) = f(z) + \alpha y$ pour tous réels $z$ et $y$, d'abord pour $z \geqslant 0$, puis pour $z < 0$. Déduis-en que $f(x + y) = f(x) + f(y)$.
5. Calcule $f(1)$, puis $\alpha$. Pour finir, pose $t = f(y) - y$ et calcule $f(t)$. Pense au signe de $f$ sur les positifs.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour un couple $(x, y)$ donné.

**Étape 1. $f$ est surjective, et $f(-x)^2 = f(x)^2$.**

$E(0, y)$ donne $f(y + f(y)) = f(0)^2 + \alpha y$. Comme $\alpha \neq 0$, le membre de droite prend toutes les valeurs réelles quand $y$ varie. Donc $f$ prend toutes les valeurs réelles : elle est surjective.

Les membres de gauche de $E(x, y)$ et $E(-x, y)$ sont égaux, car $(-x)^2 = x^2$. Donc $f(x)^2 = f(-x)^2$ pour tout $x$.

**Étape 2. $f$ ne s'annule qu'en $0$.**

Par surjectivité, il existe $c$ tel que $f(c) = 0$. Par l'étape 1, $f(-c)^2 = f(c)^2 = 0$, donc $f(-c) = 0$. Alors

- $E(0, c)$ donne $f(c + 0) = f(0)^2 + \alpha c$, soit $0 = f(0)^2 + \alpha c$ ;
- $E(0, -c)$ donne de même $0 = f(0)^2 - \alpha c$.

En soustrayant, $2\alpha c = 0$, donc $c = 0$. Ainsi $0$ est le seul réel où $f$ s'annule ; en particulier $f(0) = 0$.

**Étape 3. $f$ est impaire et injective.**

Soit $x$ un réel. Prenons $y = -\frac{f(x)^2}{\alpha}$ : le membre de droite de $E(x, y)$ est nul, donc $f(x^2 + y + f(y)) = 0$, et par l'étape 2, $x^2 + y + f(y) = 0$. Autrement dit,

$$x^2 = \frac{f(x)^2}{\alpha} - f\left(-\frac{f(x)^2}{\alpha}\right)$$

Le membre de droite ne dépend que de $f(x)^2$. Donc si $f(x)^2 = f(x')^2$, c'est-à-dire si $f(x') = \pm f(x)$, alors $x^2 = x'^2$, c'est-à-dire $x' = \pm x$.

Soit $x \neq 0$. Par surjectivité, il existe $x'$ tel que $f(x') = -f(x)$. Par ce qui précède, $x' = x$ ou $x' = -x$. Mais $x' = x$ donnerait $f(x) = -f(x)$, donc $f(x) = 0$, ce qui est exclu par l'étape 2. Donc $f(-x) = -f(x)$ : $f$ est impaire.

Enfin, si $f(x') = f(x)$, alors $x' = \pm x$. Si $x' = -x$ avec $x \neq 0$, on aurait $f(x) = f(-x) = -f(x)$, donc $f(x) = 0$, ce qui est exclu. Donc $x' = x$ : $f$ est injective.

**Étape 4. $f$ est additive.**

$E(x, 0)$ donne $f(x^2) = f(x)^2$. L'équation s'écrit donc $f(x^2 + y + f(y)) = f(x^2) + \alpha y$, c'est-à-dire, en notant $z = x^2$ :

$$(\star) \qquad f(z + y + f(y)) = f(z) + \alpha y$$

pour tout $y$ et tout $z \geqslant 0$. Si $z < 0$, alors $-z > 0$, et en utilisant l'imparité puis $(\star)$ avec $-z$ et $-y$ :

$$f(z + y + f(y)) = -f(-z - y + f(-y)) = -\left(f(-z) - \alpha y\right) = f(z) + \alpha y$$

Donc $(\star)$ est vraie pour tous réels $z$ et $y$. Avec $z = 0$, elle donne $f(y + f(y)) = \alpha y$.

Soient maintenant $x$ et $y$ deux réels. Avec $z = x + f(x)$ dans $(\star)$ :

$$f(x + f(x) + y + f(y)) = f(x + f(x)) + \alpha y = \alpha x + \alpha y = f(x + y + f(x + y))$$

Par injectivité, $x + f(x) + y + f(y) = x + y + f(x + y)$, donc

$$f(x + y) = f(x) + f(y)$$

**Étape 5. $f(1) = 1$ et $\alpha = 2$.**

On a $f(1) = f(1^2) = f(1)^2$, donc $f(1) = 0$ ou $f(1) = 1$. L'étape 2 exclut $0$, donc $f(1) = 1$. Alors $f(y + f(y)) = \alpha y$ avec $y = 1$ donne $\alpha = f(2) = f(1) + f(1) = 2$.

Donc **si $\alpha \neq 2$, il n'y a aucune solution.** Supposons maintenant $\alpha = 2$.

**Étape 6. $f$ est l'identité.**

Le signe de $f$ : si $u \geqslant 0$, alors $f(u) = f\left(\sqrt{u}\right)^2 \geqslant 0$. Par imparité, $f(u) \leqslant 0$ si $u \leqslant 0$.

Soit $y$ un réel, et $t = f(y) - y$. Par l'additivité, $f(y + f(y)) = 2y$ s'écrit $f(y) + f(f(y)) = 2y$. Donc

$$f(t) = f(f(y)) - f(y) = 2y - 2f(y) = -2t$$

Si $t > 0$, alors $f(t) \geqslant 0$ mais $-2t < 0$ : impossible. Si $t < 0$, alors $f(t) \leqslant 0$ mais $-2t > 0$ : impossible. Donc $t = 0$, c'est-à-dire $f(y) = y$.

**Étape 7. Vérification.**

Si $\alpha = 2$ et $f(x) = x$, le membre de gauche vaut $x^2 + 2y$ et le membre de droite vaut $x^2 + 2y$.

**Conclusion : si $\alpha = 2$, la seule solution est la fonction identité $f(x) = x$ ; si $\alpha \neq 2$, il n'y a aucune solution.**
