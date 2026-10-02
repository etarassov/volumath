---
id: "10659"
title: "Quatre réels de valeur absolue plus grande que 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, changement-de-variable, produit-egal-a-un, racine-carree, inegalite-stricte]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 7 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé utilise l'inégalité entre moyennes arithmétique et géométrique pour quatre nombres ; ici elle est démontrée dans la solution avec deux fois le cas de deux nombres."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre réels tels que $|a| > 1$, $|b| > 1$, $|c| > 1$ et $|d| > 1$. On suppose que

$$(a + 1)(b + 1)(c + 1)(d + 1) = (a - 1)(b - 1)(c - 1)(d - 1)$$

Montrer que

$$\frac{1}{a - 1} + \frac{1}{b - 1} + \frac{1}{c - 1} + \frac{1}{d - 1} > 0$$

## Hints

1. Pose $p = \frac{a + 1}{a - 1}$, et de même $q$, $r$, $s$ pour $b$, $c$, $d$. Que vaut le produit $pqrs$ ? Quel est le signe de $p$ ?
2. Écris $p$ sous la forme $1 + \frac{2}{a - 1}$. L'inégalité demandée devient $p + q + r + s > 4$.
3. Pour des réels strictement positifs, $p + q \geqslant 2\sqrt{pq}$. Utilise-le deux fois, puis une troisième fois avec $\sqrt{pq}$ et $\sqrt{rs}$.
4. Pourquoi l'inégalité est-elle stricte ? Le nombre $p$ peut-il valoir $1$ ?

## Solution

**Étape 1. Changer de variables.**

Comme $|a| > 1$, on a $a - 1 \neq 0$. Posons $p = \frac{a + 1}{a - 1}$, et de même $q = \frac{b + 1}{b - 1}$, $r = \frac{c + 1}{c - 1}$, $s = \frac{d + 1}{d - 1}$.

- **Ces nombres sont strictement positifs.** Si $a > 1$, alors $a + 1$ et $a - 1$ sont strictement positifs. Si $a < -1$, ils sont tous les deux strictement négatifs. Dans les deux cas, $p > 0$.
- **Ils sont différents de $1$**, car $a + 1 \neq a - 1$.
- **Leur produit vaut $1$** : en divisant l'égalité de l'énoncé par $(a - 1)(b - 1)(c - 1)(d - 1)$, qui n'est pas nul, on obtient $pqrs = 1$.

Enfin $p = \frac{(a - 1) + 2}{a - 1} = 1 + \frac{2}{a - 1}$, et de même pour $q$, $r$, $s$. Donc

$$p + q + r + s = 4 + 2\left(\frac{1}{a - 1} + \frac{1}{b - 1} + \frac{1}{c - 1} + \frac{1}{d - 1}\right)$$

Il suffit de montrer que $p + q + r + s > 4$.

**Étape 2. Un outil pour deux nombres.**

Pour deux réels $u, v > 0$, on a $u + v - 2\sqrt{uv} = \left(\sqrt{u} - \sqrt{v}\right)^2 \geqslant 0$, donc $u + v \geqslant 2\sqrt{uv}$, avec égalité seulement si $u = v$.

**Étape 3. Minorer $p + q + r + s$.**

Par l'étape 2, $p + q \geqslant 2\sqrt{pq}$ et $r + s \geqslant 2\sqrt{rs}$. Donc

$$p + q + r + s \geqslant 2\left(\sqrt{pq} + \sqrt{rs}\right)$$

Appliquons encore l'étape 2 aux nombres $\sqrt{pq}$ et $\sqrt{rs}$, dont le produit vaut $\sqrt{pqrs} = 1$ :

$$\sqrt{pq} + \sqrt{rs} \geqslant 2\sqrt{1} = 2$$

Donc $p + q + r + s \geqslant 4$.

**Étape 4. L'inégalité est stricte.**

S'il y avait égalité, toutes les inégalités de l'étape 3 seraient des égalités. On aurait $p = q$, $r = s$ et $\sqrt{pq} = \sqrt{rs}$, c'est-à-dire $p^2 = r^2$, donc $p = r$ (les deux sont positifs). Les quatre nombres seraient égaux, et comme leur produit vaut $1$, on aurait $p^4 = 1$, donc $p = 1$. Or on a vu que $p \neq 1$. Donc $p + q + r + s > 4$.

**Conclusion : $p + q + r + s > 4$, et donc $\frac{1}{a - 1} + \frac{1}{b - 1} + \frac{1}{c - 1} + \frac{1}{d - 1} > 0$.**
