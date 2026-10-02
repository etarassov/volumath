---
id: "10615"
title: "Un système où deux inconnues sont égales"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [systeme, factorisation, raisonnement-par-l-absurde, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 7 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels non nuls tels que

$$a^2 + b + c = \frac{1}{a}$$

$$b^2 + c + a = \frac{1}{b}$$

$$c^2 + a + b = \frac{1}{c}$$

Montrer que deux au moins de ces trois nombres sont égaux : $a = b$ ou $b = c$ ou $c = a$.

## Hints

1. Raisonne par l'absurde : suppose que $a$, $b$, $c$ sont deux à deux distincts.
2. Soustrais la deuxième équation de la première. Tu peux factoriser par $a - b$, puis simplifier par ce nombre non nul.
3. Tu dois obtenir $a + b + \frac{1}{ab} = 1$. Écris la relation analogue pour $b$ et $c$, et compare-les.
4. Tu dois arriver à $abc = 1$, puis à $a + b + c = 1$. Reporte dans la première équation.

## Solution

Raisonnons par l'absurde : supposons que $a$, $b$, $c$ sont deux à deux distincts.

**Étape 1. On soustrait deux équations.**

La première moins la deuxième donne

$$a^2 - b^2 + (b + c) - (c + a) = \frac{1}{a} - \frac{1}{b}$$

c'est-à-dire $(a - b)(a + b) - (a - b) = \frac{b - a}{ab}$, soit

$$(a - b)(a + b - 1) = -\frac{a - b}{ab}$$

Comme $a - b \neq 0$, on peut simplifier : $a + b - 1 = -\frac{1}{ab}$, donc

$$(1) \qquad a + b + \frac{1}{ab} = 1$$

**Étape 2. La même chose un cran plus loin.**

Les trois équations se déduisent l'une de l'autre en remplaçant $a$ par $b$, $b$ par $c$ et $c$ par $a$. La deuxième moins la troisième donne donc, puisque $b \neq c$,

$$(2) \qquad b + c + \frac{1}{bc} = 1$$

**Étape 3. $abc = 1$.**

En soustrayant $(2)$ de $(1)$ :

$$a - c + \frac{1}{ab} - \frac{1}{bc} = 0, \qquad \text{c'est-à-dire} \qquad (a - c) + \frac{c - a}{abc} = 0$$

soit $(a - c)\left(1 - \frac{1}{abc}\right) = 0$. Comme $a \neq c$, on obtient $\frac{1}{abc} = 1$, donc $abc = 1$.

**Étape 4. $a = 1$ et $b = 1$.**

Comme $abc = 1$, on a $\frac{1}{ab} = c$, et $(1)$ devient $a + b + c = 1$. Donc $b + c = 1 - a$, et la première équation s'écrit

$$a^2 + 1 - a = \frac{1}{a}$$

En multipliant par $a \neq 0$ : $a^3 - a^2 + a - 1 = 0$, qui se factorise en $a^2(a - 1) + (a - 1) = (a - 1)(a^2 + 1) = 0$. Comme $a^2 + 1 > 0$, on obtient $a = 1$.

Le même calcul avec la deuxième équation, où $c + a = 1 - b$, donne $b = 1$.

**Étape 5. La contradiction.**

On trouve $a = b = 1$, alors que $a$ et $b$ devaient être distincts. L'hypothèse de départ est donc fausse.

**Conclusion : deux au moins des nombres $a$, $b$, $c$ sont égaux.**
