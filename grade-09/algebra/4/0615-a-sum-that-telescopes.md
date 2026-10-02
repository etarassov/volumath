---
id: "0615"
title: "Une somme qui se télescope"
grade: 9
theme: algebra
difficulty: 4
duration_min: 45
tags: [fractions, telescopage, majoration, nombres-impairs]
adapted_from: null
see_also: ["0865"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 35"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

a) Démontrer que
$$\frac{1}{n} - \frac{1}{n+1} = \frac{1}{n(n+1)}.$$

b) Calculer
$$\frac{1}{1 \times 2} + \frac{1}{2 \times 3} + \frac{1}{3 \times 4} + \ldots + \frac{1}{99 \times 100}.$$

c) Démontrer que
$$\frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \ldots + \frac{1}{99^2} < 1.$$

d) Démontrer que
$$\frac{1}{1+3} + \frac{1}{1+3+5} + \frac{1}{1+3+5+7} + \ldots + \frac{1}{1+3+5+7+\ldots+2015} < \frac{1007}{1008}.$$

## Hints

1. Pour a), réduis les deux fractions au même dénominateur $n(n+1)$.
2. Pour b), remplace chaque terme par la différence trouvée en a), puis écris la somme en entier sans rien regrouper. Presque tout disparaît.
3. Pour c), compare $\dfrac{1}{k^2}$ et $\dfrac{1}{k(k-1)}$ quand $k \ge 2$ : lequel est le plus grand, et pourquoi ?
4. Pour d), calcule d'abord $1+3$, puis $1+3+5$, puis $1+3+5+7$. Ces nombres devraient te dire quelque chose.
5. La somme des $k$ premiers nombres impairs vaut $k^2$. Il reste à trouver jusqu'où va la somme, c'est-à-dire quel rang a le nombre impair $2015$.

## Solution

**a) L'identité de départ.**

$$\frac{1}{n} - \frac{1}{n+1} = \frac{n+1}{n(n+1)} - \frac{n}{n(n+1)} = \frac{(n+1) - n}{n(n+1)} = \frac{1}{n(n+1)}.$$

**b) La somme se télescope.**

D'après a), chaque terme s'écrit comme une différence :

$$\frac{1}{1 \times 2} + \frac{1}{2 \times 3} + \ldots + \frac{1}{99 \times 100}
= \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \ldots + \left(\frac{1}{99} - \frac{1}{100}\right).$$

Enlevons les parenthèses. Le $-\frac{1}{2}$ du premier terme est annulé par le
$+\frac{1}{2}$ du deuxième, le $-\frac{1}{3}$ du deuxième par le $+\frac{1}{3}$ du
troisième, et ainsi de suite. Il ne reste que le tout premier morceau et le tout dernier :

$$1 - \frac{1}{100} = \frac{99}{100}.$$

**c) Une majoration terme à terme.**

Soit $k$ un entier avec $k \ge 2$. Comme $k - 1 < k$, on a $k(k-1) < k^2$, et deux fractions
de même numérateur positif se comparent à l'envers de leurs dénominateurs :

$$\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k},$$

la dernière égalité venant de a) appliquée à $n = k-1$.

En additionnant ces inégalités pour $k = 2, 3, \ldots, 99$ :

$$\frac{1}{2^2} + \frac{1}{3^2} + \ldots + \frac{1}{99^2}
< \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \ldots + \left(\frac{1}{98} - \frac{1}{99}\right)
= 1 - \frac{1}{99} < 1.$$

**d) Reconnaître les dénominateurs.**

Les dénominateurs sont des sommes de nombres impairs consécutifs à partir de $1$. La somme
des $k$ premiers nombres impairs vaut $k^2$. En effet, en utilisant la méthode de Gauss,

$$1 + 3 + 5 + \ldots + (2k-1) = \frac{k \times \big(1 + (2k-1)\big)}{2} = \frac{k \times 2k}{2} = k^2.$$

Le premier dénominateur est $1 + 3 = 2^2$, le deuxième $1+3+5 = 3^2$, et ainsi de suite. Le
dernier dénominateur s'arrête au nombre impair $2015 = 2 \times 1008 - 1$, c'est donc la
somme des $1008$ premiers nombres impairs, soit $1008^2$.

La somme à majorer est donc exactement

$$\frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \ldots + \frac{1}{1008^2}.$$

On reprend mot pour mot le calcul de la question c), cette fois pour
$k = 2, 3, \ldots, 1008$ :

$$\frac{1}{2^2} + \frac{1}{3^2} + \ldots + \frac{1}{1008^2}
< \left(\frac{1}{1} - \frac{1}{2}\right) + \ldots + \left(\frac{1}{1007} - \frac{1}{1008}\right)
= 1 - \frac{1}{1008} = \frac{1007}{1008}.$$

C'est bien l'inégalité demandée.

## Going further

La majoration de c) est assez large : la vraie valeur de
$\frac{1}{2^2} + \frac{1}{3^2} + \ldots$ poursuivie indéfiniment vaut environ 0,645, et
non $1$. Euler a démontré en 1735 que $1 + \frac{1}{2^2} + \frac{1}{3^2} + \ldots$ vaut
exactement $\frac{\pi^2}{6}$, un résultat que personne n'avait su obtenir avant lui.
