---
id: "11619"
title: "Une somme de racines carrées qui se télescope"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [racine-carree, identites-remarquables, telescopage, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 1, exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Calculer, sans calculatrice, la somme

$$\sqrt{1 + \frac{1}{1^2} + \frac{1}{2^2}} + \sqrt{1 + \frac{1}{2^2} + \frac{1}{3^2}} + \sqrt{1 + \frac{1}{3^2} + \frac{1}{4^2}} + \cdots + \sqrt{1 + \frac{1}{2014^2} + \frac{1}{2015^2}}.$$

## Hints

1. Calcule le premier terme à la main : $1 + \frac{1}{1} + \frac{1}{4} = \frac{9}{4}$. Sa racine carrée est un nombre simple. Essaie aussi le deuxième terme.
2. Pour un entier $n \geqslant 1$, mets $1 + \dfrac{1}{n^2} + \dfrac{1}{(n+1)^2}$ au même dénominateur $n^2(n+1)^2$. Le numérateur est le carré d'un polynôme en $n$.
3. Une fois la racine carrée enlevée, écris le terme sous la forme $1 + \dfrac{1}{n(n+1)}$, puis découpe $\dfrac{1}{n(n+1)}$ en une différence de deux fractions.

## Solution

**Étape 1 : chaque terme est une fraction simple.** Soit $n \geqslant 1$ un entier. On met au même dénominateur :

$$1 + \frac{1}{n^2} + \frac{1}{(n+1)^2} = \frac{n^2(n+1)^2 + (n+1)^2 + n^2}{n^2(n+1)^2}.$$

Développons le numérateur. On a $(n+1)^2 + n^2 = 2n^2 + 2n + 1$ et $n^2(n+1)^2 = n^4 + 2n^3 + n^2$, donc le numérateur vaut

$$n^4 + 2n^3 + 3n^2 + 2n + 1.$$

C'est un carré parfait :

$$(n^2 + n + 1)^2 = n^4 + n^2 + 1 + 2n^3 + 2n^2 + 2n = n^4 + 2n^3 + 3n^2 + 2n + 1.$$

Comme $n^2 + n + 1$ et $n(n+1)$ sont positifs, on obtient

$$\sqrt{1 + \frac{1}{n^2} + \frac{1}{(n+1)^2}} = \frac{n^2 + n + 1}{n(n+1)} = \frac{n(n+1) + 1}{n(n+1)} = 1 + \frac{1}{n(n+1)}.$$

Par exemple, pour $n = 1$, on trouve $1 + \frac{1}{2} = \frac{3}{2}$, qui est bien la racine carrée de $\frac{9}{4}$.

**Étape 2 : un télescopage.** On remarque que

$$\frac{1}{n} - \frac{1}{n+1} = \frac{(n+1) - n}{n(n+1)} = \frac{1}{n(n+1)}.$$

La somme cherchée, qui comporte $2014$ termes (pour $n = 1, 2, \ldots, 2014$), vaut donc

$$2014 + \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + \cdots + \left(\frac{1}{2014} - \frac{1}{2015}\right).$$

Dans les parenthèses, chaque fraction $\frac{1}{2}, \frac{1}{3}, \ldots, \frac{1}{2014}$ apparaît une fois avec le signe $+$ et une fois avec le signe $-$. Il ne reste que le premier terme $1$ et le dernier $-\frac{1}{2015}$ :

$$2014 + 1 - \frac{1}{2015} = 2015 - \frac{1}{2015}.$$

**Conclusion : la somme vaut $2015 - 1/2015$, c'est-à-dire $(2015^2 - 1)/2015 = 4\,060\,224/2015$.**

## Going further

Le même calcul montre que, pour tout entier $N \geqslant 1$, la somme des $N$ premiers termes vaut $N + 1 - 1/(N+1)$.
