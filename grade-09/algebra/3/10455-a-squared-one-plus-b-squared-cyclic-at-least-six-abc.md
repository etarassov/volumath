---
id: "10455"
title: "a²(1 + b²) + b²(1 + c²) + c²(1 + a²) ≥ 6abc"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, carres, developpement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Junior, exercice 1 ; corrigé 2019-02_envoi-3-cor.pdf (qui utilise l'inégalité arithmético-géométrique à trois termes ; ici seule l'inégalité u² + v² ⩾ 2uv sert)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Montrer que, pour tous réels $a$, $b$, $c$ positifs ou nuls,

$$a^2(1 + b^2) + b^2(1 + c^2) + c^2(1 + a^2) \geqslant 6abc .$$

## Hints

1. Développe le membre de gauche. Combien de termes obtiens-tu ?
2. Pour tous réels $u$ et $v$, on a $u^2 + v^2 \geqslant 2uv$. Pourquoi ?
3. Regroupe les six termes en trois paires, de sorte que chaque paire soit de la forme $u^2 + v^2$ avec $uv = abc$.

## Solution

**Un outil.** Pour tous réels $u$ et $v$, on a $u^2 + v^2 - 2uv = (u - v)^2 \geqslant 0$, donc

$$u^2 + v^2 \geqslant 2uv . \qquad (1)$$

**Développer.** Le membre de gauche vaut

$$a^2 + a^2 b^2 + b^2 + b^2 c^2 + c^2 + c^2 a^2 .$$

**Regrouper par paires.** On associe $a^2$ avec $b^2 c^2 = (bc)^2$, puis $b^2$ avec $(ca)^2$, puis $c^2$ avec $(ab)^2$. D'après $(1)$,

$$a^2 + (bc)^2 \geqslant 2 \cdot a \cdot bc = 2abc ,$$

$$b^2 + (ca)^2 \geqslant 2 \cdot b \cdot ca = 2abc ,$$

$$c^2 + (ab)^2 \geqslant 2 \cdot c \cdot ab = 2abc .$$

En additionnant ces trois inégalités, on obtient

$$a^2 + b^2 + c^2 + a^2 b^2 + b^2 c^2 + c^2 a^2 \geqslant 6abc .$$

**Conclusion.** Pour tous réels $a, b, c \geqslant 0$, on a bien $a^2(1 + b^2) + b^2(1 + c^2) + c^2(1 + a^2) \geqslant 6abc$.

**Cas d'égalité.** Il y a égalité exactement quand les trois inégalités utilisées sont des égalités, c'est-à-dire quand $a = bc$, $b = ca$ et $c = ab$. Si $a = 0$, alors $b = ca = 0$ puis $c = ab = 0$. Si $a \neq 0$, on remplace $b$ par $ca$ dans $a = bc$ : $a = c^2 a$, donc $c^2 = 1$ et $c = 1$ (car $c \geqslant 0$). Alors $b = a$ et $1 = c = ab = a^2$, donc $a = b = 1$. L'égalité a donc lieu seulement pour $a = b = c = 0$ et pour $a = b = c = 1$.

## Going further

1. La démonstration utilise-t-elle vraiment que $a$, $b$ et $c$ sont positifs ? L'inégalité reste-t-elle vraie pour tous réels $a$, $b$, $c$ ?
2. Montrer de la même façon que, pour tous réels $a$, $b$, $c$, on a $a^2 + b^2 + c^2 \geqslant ab + bc + ca$.
