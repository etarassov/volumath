---
id: "13607"
title: "Si √q − √r est rationnel"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [racine carree, rationnel, identites remarquables, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2010 (test de sélection du stage olympique de Grésillon, 3 juin 2010)"
  reference: "2017-09_coupe_printemps_2010_3.pdf, épreuve collège, exercice 1 ; corrigé 2017-09_coupe_printemps_2010_corrige.pdf, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2010_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2010_3.pdf"
---

## Statement

On rappelle qu'un nombre est dit **rationnel** s'il est le quotient de deux entiers, comme $\frac{3}{4}$, $-\frac{7}{2}$ ou $5 = \frac{5}{1}$.

Soient $q$ et $r$ deux nombres rationnels tels que $q > r > 0$. On suppose que le nombre $\sqrt{q} - \sqrt{r}$ est lui aussi rationnel.

Démontrer que, dans ce cas, $\sqrt{q}$ et $\sqrt{r}$ sont eux-mêmes des nombres rationnels.

## Hints

1. Fais un essai : avec $q = \frac{9}{4}$ et $r = 1$, que vaut $\sqrt{q} - \sqrt{r}$ ? Et avec $q = 3$ et $r = 2$, est-ce que tu penses que $\sqrt{3} - \sqrt{2}$ est rationnel ?
2. La somme, la différence, le produit et le quotient de deux rationnels sont des rationnels (pour le quotient, il ne faut pas diviser par $0$).
3. Que vaut le produit $(\sqrt{q} - \sqrt{r})(\sqrt{q} + \sqrt{r})$ ? Déduis-en que $\sqrt{q} + \sqrt{r}$ est rationnel.
4. Si tu connais la somme et la différence de deux nombres, comment retrouves-tu chacun des deux ?

## Solution

On utilise une règle simple : si $a$ et $b$ sont rationnels, alors $a + b$, $a - b$ et $a \times b$ sont rationnels, et $\frac{a}{b}$ aussi quand $b \neq 0$. Par exemple $\frac{1}{2} + \frac{2}{3} = \frac{7}{6}$ : on obtient encore un quotient d'entiers.

Posons $s = \sqrt{q} - \sqrt{r}$. Par hypothèse, $s$ est rationnel. De plus $q > r$, donc $\sqrt{q} > \sqrt{r}$ et $s > 0$ : en particulier $s \neq 0$.

**La somme des deux racines.** D'après l'identité remarquable $(a-b)(a+b) = a^2 - b^2$ :

$$(\sqrt{q} - \sqrt{r})(\sqrt{q} + \sqrt{r}) = (\sqrt{q})^2 - (\sqrt{r})^2 = q - r .$$

Comme $s \neq 0$, on peut diviser par $s$ :

$$\sqrt{q} + \sqrt{r} = \frac{q - r}{s} .$$

Le nombre $q - r$ est rationnel, car $q$ et $r$ le sont, et $s$ est un rationnel non nul. Donc leur quotient est rationnel : **$\sqrt{q} + \sqrt{r}$ est rationnel**. Appelons-le $t$.

**Chacune des deux racines.** On connaît maintenant la somme $t$ et la différence $s$ des deux nombres $\sqrt{q}$ et $\sqrt{r}$. En les additionnant puis en les soustrayant :

$$t + s = (\sqrt{q} + \sqrt{r}) + (\sqrt{q} - \sqrt{r}) = 2\sqrt{q} ,$$

$$t - s = (\sqrt{q} + \sqrt{r}) - (\sqrt{q} - \sqrt{r}) = 2\sqrt{r} .$$

Donc $\sqrt{q} = \frac{t + s}{2}$ et $\sqrt{r} = \frac{t - s}{2}$. Ce sont des quotients de rationnels par $2$, donc des rationnels.

**Conclusion.** Si $q$, $r$ et $\sqrt{q} - \sqrt{r}$ sont rationnels, avec $q > r > 0$, alors $\sqrt{q}$ et $\sqrt{r}$ sont rationnels.

Par exemple, avec $q = \frac{9}{4}$ et $r = 1$, on a $s = \frac{3}{2} - 1 = \frac{1}{2}$, puis

$$t = \left(\frac{9}{4} - 1\right) \div \frac{1}{2} = \frac{5}{4} \times 2 = \frac{5}{2} ,$$

et on retrouve bien $\sqrt{q} = \left(\frac{5}{2} + \frac{1}{2}\right) \div 2 = \frac{3}{2}$ et $\sqrt{r} = \left(\frac{5}{2} - \frac{1}{2}\right) \div 2 = 1$.

## Going further

Une autre façon de faire : de $\sqrt{q} = s + \sqrt{r}$, on tire en élevant au carré $q = s^2 + 2s\sqrt{r} + r$, puis $\sqrt{r} = \frac{q - s^2 - r}{2s}$. Termine la démonstration de cette manière.

Le résultat dit aussi, en le lisant à l'envers : comme $\sqrt{2}$ n'est pas rationnel, le nombre $\sqrt{3} - \sqrt{2}$ ne l'est pas non plus.
