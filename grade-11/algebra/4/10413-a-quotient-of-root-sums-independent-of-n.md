---
id: "10413"
title: "Un quotient de sommes de racines qui ne dépend pas de n"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [racine-carree, somme, changement-d-indice, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On considère le quotient

$$\frac{\sqrt{n + \sqrt{0}} + \sqrt{n + \sqrt{1}} + \sqrt{n + \sqrt{2}} + \cdots + \sqrt{n + \sqrt{n^2 - 1}} + \sqrt{n + \sqrt{n^2}}}{\sqrt{n - \sqrt{0}} + \sqrt{n - \sqrt{1}} + \sqrt{n - \sqrt{2}} + \cdots + \sqrt{n - \sqrt{n^2 - 1}} + \sqrt{n - \sqrt{n^2}}} .$$

Montrer que ce quotient ne dépend pas de $n$, et donner sa valeur.

## Hints

1. Calcule le quotient pour $n = 1$. Pour $n = 2$, une calculatrice donne une valeur approchée : est-ce la même ?
2. Montre que, pour tous réels $0 \leqslant b \leqslant a$, on a $\sqrt{a + \sqrt{a^2 - b^2}} = \sqrt{\frac{a + b}{2}} + \sqrt{\frac{a - b}{2}}$. Pour cela, élève le membre de droite au carré.
3. Applique cette formule avec $a = n$ et un nombre $b$ choisi pour que $a^2 - b^2 = m$. Tu écris ainsi $\sqrt{n + \sqrt{m}}$ comme une somme de deux racines.
4. Additionne ces égalités pour $m = 0, 1, \ldots, n^2$. Quand $m$ prend ces valeurs, $n^2 - m$ prend exactement les mêmes valeurs, dans l'ordre inverse.

## Solution

Notons $S_+$ le numérateur et $S_-$ le dénominateur :

$$S_+ = \sum_{m=0}^{n^2} \sqrt{n + \sqrt{m}}, \qquad S_- = \sum_{m=0}^{n^2} \sqrt{n - \sqrt{m}} .$$

Tous les termes ont un sens, car $\sqrt{m} \leqslant n$ pour $m \leqslant n^2$. De plus $S_- > 0$, car son premier terme vaut $\sqrt{n} > 0$ et les autres sont positifs ou nuls.

Pour $n = 1$, on trouve $S_+ = \sqrt{1} + \sqrt{2} = 1 + \sqrt{2}$ et $S_- = \sqrt{1} + \sqrt{0} = 1$, donc le quotient vaut $1 + \sqrt{2}$. Montrons que c'est vrai pour tout $n$.

**Étape 1 : une formule pour défaire une racine emboîtée.** Soient $a$ et $b$ deux réels avec $0 \leqslant b \leqslant a$. Le nombre $X = \sqrt{\frac{a + b}{2}} + \sqrt{\frac{a - b}{2}}$ est positif, et

$$X^2 = \frac{a + b}{2} + \frac{a - b}{2} + 2\sqrt{\frac{a + b}{2}} \sqrt{\frac{a - b}{2}} = a + 2\sqrt{\frac{a^2 - b^2}{4}} = a + \sqrt{a^2 - b^2} .$$

Comme $X \geqslant 0$, on en déduit

$$\sqrt{a + \sqrt{a^2 - b^2}} = \sqrt{\frac{a + b}{2}} + \sqrt{\frac{a - b}{2}} . \qquad (1)$$

**Étape 2 : l'appliquer à chaque terme de $S_+$.** Soit $m$ un entier avec $0 \leqslant m \leqslant n^2$. Prenons $a = n$ et $b = \sqrt{n^2 - m}$. On a bien $0 \leqslant b \leqslant a$, et $a^2 - b^2 = n^2 - (n^2 - m) = m$. La formule $(1)$ donne

$$\sqrt{n + \sqrt{m}} = \frac{1}{\sqrt{2}} \sqrt{n + \sqrt{n^2 - m}} + \frac{1}{\sqrt{2}} \sqrt{n - \sqrt{n^2 - m}} . \qquad (2)$$

**Étape 3 : additionner.** Additionnons les égalités $(2)$ pour $m = 0, 1, \ldots, n^2$. À gauche, on obtient $S_+$. À droite, posons $j = n^2 - m$. Quand $m$ prend les valeurs $0, 1, \ldots, n^2$, le nombre $j$ prend les valeurs $n^2, n^2 - 1, \ldots, 0$ : ce sont les mêmes valeurs, dans l'ordre inverse. L'ordre des termes ne change pas une somme, donc

$$\sum_{m=0}^{n^2} \sqrt{n + \sqrt{n^2 - m}} = \sum_{j=0}^{n^2} \sqrt{n + \sqrt{j}} = S_+ , \qquad \sum_{m=0}^{n^2} \sqrt{n - \sqrt{n^2 - m}} = S_- .$$

On obtient ainsi

$$S_+ = \frac{1}{\sqrt{2}} \left( S_+ + S_- \right) .$$

**Étape 4 : en déduire le quotient.** Multiplions par $\sqrt{2}$ : $\sqrt{2}\, S_+ = S_+ + S_-$, donc $(\sqrt{2} - 1)\, S_+ = S_-$. Comme $S_- > 0$ et $\sqrt{2} - 1 > 0$,

$$\frac{S_+}{S_-} = \frac{1}{\sqrt{2} - 1} = \frac{\sqrt{2} + 1}{(\sqrt{2} - 1)(\sqrt{2} + 1)} = \frac{\sqrt{2} + 1}{2 - 1} = 1 + \sqrt{2} .$$

**Conclusion.** Pour tout entier $n \geqslant 1$, le quotient vaut $1 + \sqrt{2}$. Il ne dépend donc pas de $n$.

## Going further

1. Montrer que, pour $0 \leqslant m \leqslant n^2$, on a aussi $\sqrt{n + \sqrt{m}} - \sqrt{n - \sqrt{m}} = \sqrt{2}\,\sqrt{n - \sqrt{n^2 - m}}$ (élever au carré). En déduire une deuxième démonstration, en calculant $S_+ - S_-$.
2. Écrire $\sqrt{3 + 2\sqrt{2}}$ et $\sqrt{7 - 4\sqrt{3}}$ sans racine emboîtée, à l'aide de la formule $(1)$ ou de sa version avec un signe moins.
