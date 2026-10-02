---
id: "10407"
title: "Une équation fonctionnelle avec un tiers et une moitié"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation-fonctionnelle, fonction-constante]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Olympiques, exercice 7 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f\!\left(\frac{x + y}{3}\right) = \frac{f(x) + f(y)}{2} .$$

## Hints

1. Les fonctions constantes conviennent-elles ? Et la fonction $x \mapsto x$ ?
2. Cherche des valeurs de $y$ qui rendent $\frac{x + y}{3}$ très simple. Que donne $y = 2x$ ?
3. Tu dois obtenir $f(2x) = f(x)$ pour tout $x$. Essaie aussi $y = x$, puis $y = 0$.
4. Combine les trois relations obtenues pour comparer $f(x)$ et $f(0)$.

## Solution

Soit $f$ une solution.

**Première relation : $y = 2x$.** Alors $\frac{x + y}{3} = \frac{3x}{3} = x$, et l'équation donne

$$f(x) = \frac{f(x) + f(2x)}{2}, \qquad \text{donc} \qquad f(2x) = f(x) \quad \text{pour tout réel } x .$$

**Deuxième relation : $y = x$.** L'équation donne $f\!\left(\frac{2x}{3}\right) = \frac{f(x) + f(x)}{2} = f(x)$.

**Troisième relation : $y = 0$.** L'équation donne

$$f\!\left(\frac{x}{3}\right) = \frac{f(x) + f(0)}{2} \quad \text{pour tout réel } x .$$

**On combine.** Appliquons la première relation au nombre $\frac{x}{3}$ : $f\!\left(\frac{2x}{3}\right) = f\!\left(\frac{x}{3}\right)$. Avec la deuxième relation, on en déduit

$$f\!\left(\frac{x}{3}\right) = f\!\left(\frac{2x}{3}\right) = f(x) .$$

Remplaçons $f\!\left(\frac{x}{3}\right)$ par $f(x)$ dans la troisième relation :

$$f(x) = \frac{f(x) + f(0)}{2}, \qquad \text{donc} \qquad 2f(x) = f(x) + f(0), \qquad \text{donc} \qquad f(x) = f(0) .$$

Ceci vaut pour tout réel $x$ : la fonction $f$ est constante.

**Réciproque.** Si $f$ est constante, égale à $c$, alors les deux membres de l'équation valent $c$ et $\frac{c + c}{2} = c$. Toute fonction constante convient.

**Conclusion.** Les solutions sont exactement les fonctions constantes.

## Going further

1. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que $f\!\left(\frac{x + y}{2}\right) = \frac{f(x) + f(y)}{3}$ pour tous réels $x$ et $y$.
2. Même question que dans l'exercice, mais pour une fonction $f$ définie seulement sur $]0, +\infty[$, l'équation n'étant demandée que pour $x > 0$ et $y > 0$. On ne peut plus prendre $y = 0$. (Piste : montrer d'abord que $f(3t) = f(t)$, puis calculer $f(x + y + z)$ de deux façons.)
