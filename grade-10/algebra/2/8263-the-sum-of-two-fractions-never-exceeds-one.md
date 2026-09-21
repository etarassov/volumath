---
id: "8263"
title: "Une somme de deux fractions qui ne dépasse jamais 1"
grade: 10
theme: algebra
difficulty: 2
duration_min: 20
tags: [inegalite, fractions, mise au meme denominateur, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « TD d'algèbre » (Lilou Wattez, Auguste de Lambilly), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $a$ et $b$ deux réels positifs tels que $ab \ge 1$.

Montrer que

$$\frac{1}{1+a} + \frac{1}{1+b} \ \le \ 1 .$$

## Hints

1. Les deux dénominateurs sont strictement positifs : on peut donc manipuler l'inégalité
   librement, sans se soucier de changer de sens.
2. Mets les deux fractions au même dénominateur.
3. Tu obtiens une fraction dont le numérateur et le dénominateur ne diffèrent que de très peu.
   Compare-les.

## Solution

**Mise au même dénominateur.**

Comme $a \ge 0$ et $b \ge 0$, les nombres $1+a$ et $1+b$ sont strictement positifs. On peut
donc écrire

$$\frac{1}{1+a} + \frac{1}{1+b} = \frac{(1+b) + (1+a)}{(1+a)(1+b)} = \frac{2 + a + b}{1 + a + b
+ ab} .$$

**On compare au dénominateur.**

Le dénominateur $1 + a + b + ab$ est strictement positif. L'inégalité à démontrer équivaut donc
à

$$2 + a + b \ \le \ 1 + a + b + ab .$$

En simplifiant $a + b$ des deux côtés, il reste

$$2 \ \le \ 1 + ab, \qquad \text{c'est-à-dire} \qquad 1 \ \le \ ab .$$

C'est exactement l'hypothèse. L'inégalité est donc démontrée :

$$\boxed{\frac{1}{1+a} + \frac{1}{1+b} \ \le \ 1 .}$$

**Le cas d'égalité.**

Toutes les étapes ci-dessus sont des équivalences. L'égalité a donc lieu exactement quand
$ab = 1$, par exemple pour $a = b = 1$ :

$$\frac{1}{2} + \frac{1}{2} = 1 . \ \checkmark$$

Ou encore pour $a = 4$ et $b = \dfrac{1}{4}$ :

$$\frac{1}{5} + \frac{1}{\,5/4\,} = \frac{1}{5} + \frac{4}{5} = 1 . \ \checkmark$$

## Going further

1. L'hypothèse $ab \ge 1$ est-elle indispensable ? Donner $a$ et $b$ positifs avec $ab < 1$
   pour lesquels l'inégalité est fausse.
2. Montrer de la même façon que si $ab \le 1$ alors
   $\dfrac{1}{1+a} + \dfrac{1}{1+b} \ge 1$.
3. Que devient l'énoncé avec trois nombres : si $abc \ge 1$, a-t-on
   $\dfrac{1}{1+a} + \dfrac{1}{1+b} + \dfrac{1}{1+c} \le \dfrac{3}{2}$ ? Tester
   $a = b = c = 1$, puis $a = b = \text{0,1}$ et $c = 100$.
