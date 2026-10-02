---
id: "10633"
title: "P² + Q² = R² avec des degrés 3, 3 et 2"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [polynome, degre, racines, factorisation, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 15 ; corrigé 2022-01_corrige-envoi-2.pdf. La solution ci-dessous évite le PGCD de polynômes utilisé par le corrigé : elle factorise directement par la racine de R − P."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $P$, $Q$ et $R$ trois polynômes à coefficients réels tels que

$$P^2 + Q^2 = R^2$$

On suppose que deux de ces polynômes sont de degré $3$ et que le troisième est de degré $2$. Montrer que $P$ et $Q$ ont toutes leurs racines réelles, c'est-à-dire que chacun d'eux s'écrit comme un produit de facteurs du premier degré à coefficients réels.

## Hints

1. Montre que $P$ et $Q$ ne peuvent pas être tous les deux de degré $3$. On pourra donc supposer que $P$ et $R$ sont de degré $3$ et $Q$ de degré $2$.
2. Écris $Q^2 = (R - P)(R + P)$. Quitte à changer $R$ en $-R$, on peut supposer que $P$ et $R$ ont le même coefficient dominant. Quels sont alors les degrés de $R - P$ et de $R + P$ ?
3. $R - P$ est du premier degré : il a une racine $r$. Que vaut $Q(r)$ ?
4. Écris $Q = q(X - r)(X - s)$, simplifie par $X - r$, et exprime $R + P$, puis $P = \frac{(R + P) - (R - P)}{2}$.

## Solution

On identifie un polynôme et la fonction polynôme associée. Le coefficient dominant d'un produit est le produit des coefficients dominants, et le degré d'un produit est la somme des degrés.

**Étape 1. $R$ est de degré $3$.**

Si $P$ et $Q$ étaient tous les deux de degré $3$, de coefficients dominants $p$ et $q$, le terme de degré $6$ de $P^2 + Q^2$ serait $(p^2 + q^2)X^6$, avec $p^2 + q^2 > 0$. Donc $R^2$ serait de degré $6$ et $R$ de degré $3$ : les trois polynômes seraient de degré $3$, ce qui est exclu.

Donc l'un de $P$ et $Q$ est de degré $2$, et l'autre ainsi que $R$ sont de degré $3$. Les rôles de $P$ et $Q$ sont symétriques : supposons que $P$ et $R$ sont de degré $3$ et $Q$ de degré $2$.

**Étape 2. Les degrés de $R - P$ et $R + P$.**

Les termes de degré $6$ de $R^2$ et de $P^2$ doivent être égaux, car $Q^2$ est de degré $4$. Donc les coefficients dominants de $R$ et $P$ ont le même carré : ils sont égaux ou opposés. Comme $R^2 = (-R)^2$, on peut remplacer $R$ par $-R$ si besoin et supposer que $P$ et $R$ ont le même coefficient dominant $c \neq 0$.

Alors $R + P$ a pour coefficient dominant $2c$ : il est de degré $3$. Et

$$Q^2 = R^2 - P^2 = (R - P)(R + P)$$

donne $4 = \deg(R - P) + 3$, donc $R - P$ est de degré $1$. Écrivons $R - P = \lambda(X - r)$, avec $\lambda \neq 0$ et $r$ réel.

**Étape 3. $r$ est une racine de $Q$.**

En évaluant en $r$ : $Q(r)^2 = (R(r) - P(r))(R(r) + P(r)) = 0$. Donc $Q(r) = 0$. Le polynôme $Q$, du second degré, a une racine réelle $r$, donc il a deux racines réelles $r$ et $s$ (éventuellement égales), et s'écrit $Q = q(X - r)(X - s)$ avec $q \neq 0$. En particulier, **$Q$ a toutes ses racines réelles.**

**Étape 4. On simplifie par $X - r$.**

Pour tout réel $x$,

$$\lambda\,(x - r)\,(R + P)(x) = q^2\,(x - r)^2\,(x - s)^2$$

Pour $x \neq r$, on peut diviser par $\lambda(x - r)$ :

$$(R + P)(x) = \frac{q^2}{\lambda}\,(x - r)\,(x - s)^2$$

Les deux membres sont des fonctions polynômes, donc continues, et elles sont égales pour tout $x \neq r$. En faisant tendre $x$ vers $r$, elles sont égales aussi en $r$.

**Étape 5. On retrouve $P$.**

Comme $P = \frac{(R + P) - (R - P)}{2}$, on obtient pour tout réel $x$

$$P(x) = \frac{x - r}{2}\left(\frac{q^2}{\lambda}(x - s)^2 - \lambda\right) = \frac{x - r}{2\lambda}\left(q^2(x - s)^2 - \lambda^2\right)$$

et, avec l'identité $A^2 - B^2 = (A - B)(A + B)$,

$$P(x) = \frac{x - r}{2\lambda}\,\big(q(x - s) - \lambda\big)\big(q(x - s) + \lambda\big)$$

C'est un produit de trois facteurs du premier degré à coefficients réels. Les racines de $P$ sont $r$, $s + \frac{\lambda}{q}$ et $s - \frac{\lambda}{q}$ : elles sont toutes réelles.

**Conclusion : $P$ et $Q$ ont toutes leurs racines réelles.**
