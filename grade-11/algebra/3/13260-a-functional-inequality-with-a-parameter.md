---
id: "13260"
title: "Une inéquation fonctionnelle avec un paramètre"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [equation-fonctionnelle, inegalite, fonctions, parametre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés lycée, exercice 8 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf. L'original définit f sur les réels non nuls, mais (y + z)/2 peut alors être nul ; on définit f sur les réels strictement positifs, la solution est la même."
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Soit $a$ un nombre réel. Trouver toutes les fonctions $f$, définies sur l'ensemble des réels strictement positifs et à valeurs réelles, telles que, pour tous réels strictement positifs $x$, $y$, $z$ :

$$a\,f\left(\frac{x}{y}\right) + a\,f\left(\frac{x}{z}\right) - f(x)\,f\left(\frac{y+z}{2}\right) \geqslant a^2.$$

## Hints

1. Essaie les fonctions constantes. Laquelle convient ?
2. Remplace $x$, $y$ et $z$ par un même nombre. Que trouves-tu pour $x = 1$ ?
3. Tu dois obtenir $f(1) = a$, puis $f(x)^2 \leqslant a^2$ pour tout $x$.
4. Remplace maintenant seulement $y$ et $z$ par $1$. Sépare ensuite les cas selon le signe de $a$.

## Solution

On cherche d'abord ce que doit vérifier une solution $f$, puis on vérifie que ce que l'on a trouvé convient.

**On prend $x = y = z$.** Alors $\frac{x}{y} = \frac{x}{z} = 1$ et $\frac{y + z}{2} = x$, donc pour tout $x > 0$ :

$$2a\,f(1) - f(x)^2 \geqslant a^2. \qquad (1)$$

**La valeur $f(1)$.** Pour $x = 1$, l'inégalité (1) donne $2a\,f(1) - f(1)^2 - a^2 \geqslant 0$, c'est-à-dire $-(f(1) - a)^2 \geqslant 0$. Un carré n'est jamais négatif, donc $(f(1) - a)^2 = 0$, et $f(1) = a$.

En remplaçant $f(1)$ par $a$ dans (1), on obtient $2a^2 - f(x)^2 \geqslant a^2$, soit, pour tout $x > 0$ :

$$f(x)^2 \leqslant a^2. \qquad (2)$$

**On prend $y = z = 1$.** Alors $\frac{x}{y} = \frac{x}{z} = x$ et $\frac{y + z}{2} = 1$, donc $2a\,f(x) - f(x)\,f(1) \geqslant a^2$. Comme $f(1) = a$, cela donne, pour tout $x > 0$ :

$$a\,f(x) \geqslant a^2. \qquad (3)$$

**On sépare les cas.**

- Si $a = 0$, l'inégalité (2) donne $f(x)^2 \leqslant 0$, donc $f(x) = 0 = a$.
- Si $a > 0$, on divise (3) par $a$ : $f(x) \geqslant a > 0$. Alors $f(x)$ et $a$ sont positifs, et (2) donne $f(x) \leqslant a$. Donc $f(x) = a$.
- Si $a < 0$, on divise (3) par $a$, qui est négatif, ce qui change le sens : $f(x) \leqslant a < 0$. Alors $|f(x)| \geqslant |a|$, et (2) dit $|f(x)| \leqslant |a|$. Donc $f(x) = a$.

Dans tous les cas, une solution est forcément la fonction constante égale à $a$.

**Vérification.** Si $f$ est constante égale à $a$, le membre de gauche vaut $a \cdot a + a \cdot a - a \cdot a = a^2$, qui est bien supérieur ou égal à $a^2$.

**Conclusion.** Pour tout réel $a$, il y a une seule solution : la fonction constante $f(x) = a$.
