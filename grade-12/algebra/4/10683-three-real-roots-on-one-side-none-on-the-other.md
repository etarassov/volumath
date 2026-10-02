---
id: "10683"
title: "Trois racines réelles d'un côté, aucune de l'autre"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynome, relations-coefficients-racines, discriminant, inegalite, raisonnement-par-l-absurde, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 16 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. L'inégalité α² + β² + γ² ⩾ 3 est démontrée dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $a$ et $b$ deux réels positifs ou nuls tels que le polynôme

$$P(X) = X^3 + aX^2 + 2bX - 1$$

ait trois racines réelles, tandis que le polynôme $Q(X) = 2X^2 + 2bX + a$ n'a aucune racine réelle. Montrer que $a - b > 1$.

## Hints

1. Que dit le discriminant de $Q$ ?
2. Note $\alpha$, $\beta$, $\gamma$ les racines de $P$. En développant $(X - \alpha)(X - \beta)(X - \gamma)$, exprime $\alpha + \beta + \gamma$, $\alpha\beta + \beta\gamma + \gamma\alpha$ et $\alpha\beta\gamma$ à l'aide de $a$ et $b$. Déduis-en $\alpha^2 + \beta^2 + \gamma^2$.
3. Les trois nombres $\alpha^2$, $\beta^2$, $\gamma^2$ sont strictement positifs et leur produit vaut $1$. Montre que leur somme est au moins $3$.
4. Raisonne par l'absurde : si $a \leqslant b + 1$, compare $a^2$ et $(b + 1)^2$, puis utilise les deux inégalités obtenues.

## Solution

**Étape 1. Ce que dit $Q$.**

Le polynôme $Q$ n'a pas de racine réelle, donc son discriminant est strictement négatif : $(2b)^2 - 4 \times 2 \times a < 0$, c'est-à-dire $4b^2 < 8a$, soit

$$(1) \qquad b^2 < 2a$$

**Étape 2. Les relations entre coefficients et racines.**

Notons $\alpha$, $\beta$, $\gamma$ les trois racines réelles de $P$, de sorte que $P(X) = (X - \alpha)(X - \beta)(X - \gamma)$. En développant,

$$(X - \alpha)(X - \beta)(X - \gamma) = X^3 - (\alpha + \beta + \gamma) X^2 + (\alpha\beta + \beta\gamma + \gamma\alpha) X - \alpha\beta\gamma$$

En identifiant les coefficients avec ceux de $P$ :

$$\alpha + \beta + \gamma = -a, \qquad \alpha\beta + \beta\gamma + \gamma\alpha = 2b, \qquad \alpha\beta\gamma = 1$$

On en déduit

$$\alpha^2 + \beta^2 + \gamma^2 = (\alpha + \beta + \gamma)^2 - 2(\alpha\beta + \beta\gamma + \gamma\alpha) = a^2 - 4b$$

**Étape 3. Un lemme.**

*Lemme.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, on peut supposer que $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ : sinon les trois nombres seraient strictement plus petits que $1$, et leur produit aussi. De même $q \leqslant 1$. Donc $(p - 1)(1 - q) \geqslant 0$, ce qui s'écrit $p + q \geqslant 1 + pq$. Posons $t = pq > 0$. Comme $r = \frac{1}{t}$, on a $p + q + r \geqslant 1 + t + \frac{1}{t}$, et $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$. Donc $p + q + r \geqslant 3$.

Comme $\alpha\beta\gamma = 1$, aucune racine n'est nulle, donc $\alpha^2$, $\beta^2$, $\gamma^2$ sont strictement positifs, et leur produit vaut $(\alpha\beta\gamma)^2 = 1$. Par le lemme, $\alpha^2 + \beta^2 + \gamma^2 \geqslant 3$, c'est-à-dire

$$(2) \qquad a^2 \geqslant 4b + 3$$

**Étape 4. Conclure par l'absurde.**

Supposons que $a - b \leqslant 1$, c'est-à-dire $a \leqslant b + 1$. Comme $a \geqslant 0$, on peut élever au carré : $a^2 \leqslant (b + 1)^2$. Avec $(2)$, cela donne $4b + 3 \leqslant b^2 + 2b + 1$, soit

$$b^2 - 2b - 2 \geqslant 0$$

Mais d'après $(1)$ et l'hypothèse, $b^2 < 2a \leqslant 2(b + 1)$, soit $b^2 - 2b - 2 < 0$. C'est une contradiction.

**Conclusion : on a nécessairement $a - b > 1$.**
