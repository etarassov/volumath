---
id: "10678"
title: "Les inverses des produits contre les inverses des sommes"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, racine-carree, carre-d-une-somme, inverse]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 10 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Les deux inégalités utilisées sont démontrées dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que

$$3\left(\frac{1}{ab} + \frac{1}{bc} + \frac{1}{ca}\right) \geqslant 4\left(\frac{1}{a + b} + \frac{1}{b + c} + \frac{1}{c + a}\right)^2$$

## Hints

1. Vérifie l'inégalité quand $a = b = c$. Que remarques-tu ?
2. Pose $u = \frac{1}{\sqrt{ab}}$, $v = \frac{1}{\sqrt{bc}}$, $w = \frac{1}{\sqrt{ca}}$. Le membre de gauche s'écrit $3(u^2 + v^2 + w^2)$.
3. Montre que $3(u^2 + v^2 + w^2) \geqslant (u + v + w)^2$ pour tous réels $u$, $v$, $w$. Développe la différence.
4. Il reste à comparer $\frac{1}{\sqrt{ab}}$ et $\frac{2}{a + b}$.

## Solution

**Étape 1. Deux petites inégalités.**

*Première inégalité.* Pour tous réels $u$, $v$, $w$ :

$$3(u^2 + v^2 + w^2) \geqslant (u + v + w)^2$$

En effet, la différence vaut

$$3(u^2 + v^2 + w^2) - (u^2 + v^2 + w^2 + 2uv + 2vw + 2wu) = 2u^2 + 2v^2 + 2w^2 - 2uv - 2vw - 2wu$$

et c'est exactement $(u - v)^2 + (v - w)^2 + (w - u)^2$, qui est positif.

*Deuxième inégalité.* Pour tous réels strictement positifs $x$ et $y$ :

$$\frac{1}{\sqrt{xy}} \geqslant \frac{2}{x + y}$$

En effet, $(\sqrt{x} - \sqrt{y})^2 \geqslant 0$ s'écrit $x + y \geqslant 2\sqrt{xy}$. Les deux membres sont strictement positifs, et passer aux inverses change le sens de l'inégalité : $\frac{1}{2\sqrt{xy}} \geqslant \frac{1}{x + y}$. On multiplie par $2$.

**Étape 2. Appliquer la première.**

Posons $u = \frac{1}{\sqrt{ab}}$, $v = \frac{1}{\sqrt{bc}}$ et $w = \frac{1}{\sqrt{ca}}$. Alors $u^2 = \frac{1}{ab}$, $v^2 = \frac{1}{bc}$ et $w^2 = \frac{1}{ca}$, donc

$$3\left(\frac{1}{ab} + \frac{1}{bc} + \frac{1}{ca}\right) = 3(u^2 + v^2 + w^2) \geqslant (u + v + w)^2$$

**Étape 3. Appliquer la deuxième.**

Par la deuxième inégalité, $u \geqslant \frac{2}{a + b}$, $v \geqslant \frac{2}{b + c}$ et $w \geqslant \frac{2}{c + a}$. En additionnant,

$$u + v + w \geqslant 2\left(\frac{1}{a + b} + \frac{1}{b + c} + \frac{1}{c + a}\right)$$

Les deux membres sont positifs, donc on peut élever au carré sans changer le sens :

$$(u + v + w)^2 \geqslant 4\left(\frac{1}{a + b} + \frac{1}{b + c} + \frac{1}{c + a}\right)^2$$

**Étape 4. Conclure.**

En mettant bout à bout les étapes 2 et 3, on obtient l'inégalité demandée.

**Conclusion : l'inégalité est vraie pour tous réels strictement positifs $a$, $b$, $c$, avec égalité quand $a = b = c$, où les deux membres valent $\frac{9}{a^2}$.**

## Going further

Montre que l'égalité n'a lieu que si $a = b = c$. Regarde quand chacune des deux petites inégalités est une égalité.
