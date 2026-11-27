---
id: "41002"
title: "Dérivée seconde positive, et la moyenne de trois nombres"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [convexite, derivee, logarithme, valeurs-intermediaires, inegalite-arithmetico-geometrique, moyenne-geometrique]
adapted_from: null
see_also: ["41001"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série ES"
  reference: "cg-2017-es-sujet.pdf, problème I « Fonctions de type C », questions 5 et 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-es-sujet.pdf"
---

## Statement

**Définition.** Une fonction $f$ définie sur un intervalle $I$ est dite **de type C** sur $I$ si,
pour tous réels $a$ et $b$ de $I$ et pour tout $t \in [0, 1]$,
$$f(ta + (1 - t)b) \leq t f(a) + (1 - t) f(b) .$$
Géométriquement, cela veut dire que la courbe de $f$ est en dessous de chacune de ses cordes. On
rappelle que si $a < b$ et $t \in [0, 1]$, le nombre $ta + (1 - t)b$ appartient à $[a, b]$.

1. Soit $f$ une fonction deux fois dérivable sur un intervalle $I$, dont la dérivée seconde $f''$
   est positive sur $I$. Soit $a$ et $b$ deux réels de $I$ avec $a < b$. On définit sur $[0, 1]$ la
   fonction
   $$\varphi(t) = t f(a) + (1 - t) f(b) - f(ta + (1 - t)b) .$$

   a) On admet la règle suivante : si $u$ est dérivable sur $[0, 1]$ à valeurs dans $[a, b]$ et si
      $g$ est dérivable sur $[a, b]$, alors $t \mapsto g(u(t))$ est dérivable sur $[0, 1]$, de
      dérivée $t \mapsto u'(t)\,g'(u(t))$.

      Justifier que $\varphi$ est deux fois dérivable sur $[0, 1]$ et que $\varphi''(t) \leq 0$
      pour tout $t \in [0, 1]$.

   b) Qu'en déduit-on pour la fonction $\varphi'$ ?

   c) Calculer $\varphi(0)$ et $\varphi(1)$. En déduire que $\varphi'$ ne peut pas être strictement
      positive sur tout $[0, 1]$, ni strictement négative sur tout $[0, 1]$. Donner alors l'allure
      du tableau de variations de $\varphi$.

   d) Conclure que $f$ est de type C sur $I$.

2. a) Justifier que la fonction $x \mapsto -\ln x$ est de type C sur $]0, +\infty[$.

   b) Soit $x$, $y$ et $z$ trois réels strictement positifs. En écrivant
      $$\frac{x + y + z}{3} = \frac{2}{3} \times \frac{x + y}{2} + \frac{1}{3} \times z ,$$
      montrer que
      $$\ln\left(\frac{x + y + z}{3}\right) \geq \frac{\ln x + \ln y + \ln z}{3} .$$

   c) En déduire que pour tous réels strictement positifs $x$, $y$ et $z$,
      $$\sqrt[3]{xyz} \leq \frac{x + y + z}{3} ,$$
      où $\sqrt[3]{xyz}$ désigne l'unique réel positif dont le cube vaut $xyz$.

## Hints

1. **Question 1 a).** Poser $u(t) = ta + (1 - t)b$ et calculer $u'(t)$. Appliquer la règle une
   première fois à $f$, puis une seconde fois à $f'$.
2. **Question 1 c).** Si $\varphi'$ était strictement positive sur tout $[0, 1]$, que pourrait-on
   dire de $\varphi(0)$ et $\varphi(1)$ ?
3. **Question 1 c).** $\varphi'$ est continue, et elle prend une valeur positive ou nulle et une
   valeur négative ou nulle : le théorème des valeurs intermédiaires donne un point où elle
   s'annule. Utiliser ensuite que $\varphi'$ est décroissante.
4. **Question 1 d).** Sur chacun des deux intervalles du tableau, comparer $\varphi(t)$ à la valeur
   de $\varphi$ à une extrémité. Ne pas oublier les cas $a > b$ et $a = b$.
5. **Question 2 b).** Commencer par appliquer la définition avec $t = \frac{1}{2}$ aux nombres $x$
   et $y$.
6. **Question 2 b).** Appliquer ensuite la définition aux deux nombres $\frac{x + y}{2}$ et $z$,
   avec $t = \frac{2}{3}$.
7. **Question 2 c).** Que vaut le logarithme de $\sqrt[3]{xyz}$ ?

## Solution

**1. a)** Posons $u(t) = ta + (1 - t)b = b + t(a - b)$. La fonction $u$ est dérivable sur $[0, 1]$,
avec $u'(t) = a - b$, et elle prend ses valeurs dans $[a, b]$, qui est inclus dans $I$.

La fonction $f$ est dérivable sur $I$, donc d'après la règle admise, $t \mapsto f(u(t))$ est
dérivable sur $[0, 1]$, de dérivée $(a - b)\,f'(u(t))$. Les deux premiers termes de $\varphi$ sont
affines en $t$. Donc $\varphi$ est dérivable et
$$\varphi'(t) = f(a) - f(b) - (a - b)\,f'(u(t)) .$$

Comme $f$ est deux fois dérivable, $f'$ est elle-même dérivable sur $I$, de dérivée $f''$. La même
règle appliquée à $f'$ montre que $t \mapsto f'(u(t))$ est dérivable, de dérivée
$(a - b)\,f''(u(t))$. Donc $\varphi'$ est dérivable, c'est-à-dire que $\varphi$ est deux fois
dérivable, et
$$\varphi''(t) = -(a - b)^2\,f''(u(t)) .$$
Comme $(a - b)^2 > 0$ et $f''(u(t)) \geq 0$, on obtient $\varphi''(t) \leq 0$ pour tout
$t \in [0, 1]$.

**b)** La dérivée de $\varphi'$ est négative ou nulle sur $[0, 1]$, donc **$\varphi'$ est
décroissante sur $[0, 1]$**.

**c)** On a
$$\varphi(0) = f(b) - f(b) = 0 \qquad \text{et} \qquad \varphi(1) = f(a) - f(a) = 0 .$$

Si $\varphi'$ était strictement positive sur tout $[0, 1]$, la fonction $\varphi$ serait
strictement croissante, et on aurait $\varphi(1) > \varphi(0)$, ce qui est faux puisque les deux
valent $0$. De même, si $\varphi'$ était strictement négative sur tout $[0, 1]$, on aurait
$\varphi(1) < \varphi(0)$, ce qui est faux.

Il existe donc un réel $t_1 \in [0, 1]$ tel que $\varphi'(t_1) \leq 0$, et un réel
$t_2 \in [0, 1]$ tel que $\varphi'(t_2) \geq 0$. La fonction $\varphi'$ est dérivable, donc
continue. D'après le théorème des valeurs intermédiaires, il existe un réel $c$ entre $t_1$ et
$t_2$ tel que $\varphi'(c) = 0$.

Comme $\varphi'$ est décroissante, on a $\varphi'(t) \geq \varphi'(c) = 0$ pour $t \leq c$, et
$\varphi'(t) \leq 0$ pour $t \geq c$. Le tableau de variations de $\varphi$ a donc l'allure
suivante :

| $t$ | $0$ | | $c$ | | $1$ |
|:-:|:-:|:-:|:-:|:-:|:-:|
| signe de $\varphi'(t)$ | | $+$ | $0$ | $-$ | |
| variations de $\varphi$ | $0$ | croissante | $\varphi(c)$ | décroissante | $0$ |

**d)** Sur $[0, c]$, la fonction $\varphi$ est croissante, donc $\varphi(t) \geq \varphi(0) = 0$.
Sur $[c, 1]$, elle est décroissante, donc $\varphi(t) \geq \varphi(1) = 0$. Ainsi
$\varphi(t) \geq 0$ pour tout $t \in [0, 1]$, c'est-à-dire
$$f(ta + (1 - t)b) \leq t f(a) + (1 - t) f(b) \qquad \text{pour tous } a < b \text{ dans } I
\text{ et } t \in [0, 1] .$$

Il reste deux cas.

- Si $a = b$, les deux membres valent $f(a)$, l'inégalité est vraie.
- Si $a > b$, posons $s = 1 - t$, qui est aussi dans $[0, 1]$. Alors
  $ta + (1 - t)b = sb + (1 - s)a$ et $t f(a) + (1 - t) f(b) = s f(b) + (1 - s) f(a)$. On applique
  ce qui précède au couple $b < a$ et au nombre $s$ : l'inégalité est encore vraie.

**Conclusion :** une fonction deux fois dérivable dont la dérivée seconde est positive sur $I$ est
de type C sur $I$.

**2. a)** La fonction $g : x \mapsto -\ln x$ est deux fois dérivable sur $]0, +\infty[$, avec
$$g'(x) = -\frac{1}{x} \qquad \text{et} \qquad g''(x) = \frac{1}{x^2} > 0 .$$
D'après la question 1, **$g$ est de type C sur $]0, +\infty[$**.

**b)** Notons $m = \frac{x + y}{2}$, qui est strictement positif.

*Première étape.* La définition appliquée à $x$, $y$ et $t = \frac{1}{2}$ donne
$-\ln m \leq \frac{1}{2}(-\ln x) + \frac{1}{2}(-\ln y)$, c'est-à-dire
$$\ln m \geq \frac{\ln x + \ln y}{2} .$$

*Seconde étape.* On a $\frac{x + y + z}{3} = \frac{2}{3}m + \frac{1}{3}z$. La définition appliquée
à $m$, $z$ et $t = \frac{2}{3}$ donne $-\ln\left(\frac{x + y + z}{3}\right) \leq
\frac{2}{3}(-\ln m) + \frac{1}{3}(-\ln z)$, c'est-à-dire
$$\ln\left(\frac{x + y + z}{3}\right) \geq \frac{2}{3}\ln m + \frac{1}{3}\ln z .$$

*On réunit les deux.* Avec la première étape,
$\frac{2}{3}\ln m \geq \frac{2}{3} \times \frac{\ln x + \ln y}{2} = \frac{\ln x + \ln y}{3}$. Donc
$$\ln\left(\frac{x + y + z}{3}\right) \geq \frac{\ln x + \ln y}{3} + \frac{\ln z}{3}
= \frac{\ln x + \ln y + \ln z}{3} .$$

**c)** Posons $r = e^{\frac{1}{3}\ln(xyz)}$. C'est un réel strictement positif, et
$r^3 = e^{\ln(xyz)} = xyz$, donc $r = \sqrt[3]{xyz}$. Ainsi
$$\ln \sqrt[3]{xyz} = \frac{\ln(xyz)}{3} = \frac{\ln x + \ln y + \ln z}{3}
\leq \ln\left(\frac{x + y + z}{3}\right)$$
d'après la question 2 b). La fonction exponentielle est croissante ; en l'appliquant aux deux
membres, on obtient
$$\sqrt[3]{xyz} \leq \frac{x + y + z}{3} .$$

**Bilan.** Une fonction deux fois dérivable dont la dérivée seconde est positive a sa courbe sous
toutes ses cordes. Appliqué deux fois à $x \mapsto -\ln x$, ce résultat montre que la moyenne
géométrique de trois réels strictement positifs est inférieure ou égale à leur moyenne arithmétique.

## Going further

- Montrer qu'il y a égalité dans $\sqrt[3]{xyz} \leq \frac{x + y + z}{3}$ seulement quand
  $x = y = z$. Il faut pour cela une version stricte de la question 1 : si $f'' > 0$ sur $I$,
  $a \neq b$ et $0 < t < 1$, alors l'inégalité de la définition est stricte.
- Adapter la méthode pour montrer $\sqrt[4]{xyzw} \leq \frac{x + y + z + w}{4}$ : il suffit
  d'utiliser trois fois la valeur $t = \frac{1}{2}$.
- La réciproque de la question 1 est vraie aussi : si $f$ est deux fois dérivable et de type C,
  alors $f'' \geq 0$. Elle est nettement plus délicate.
- Les premières questions du problème, sur la définition et les exemples $|x|$, $x^2$ et la partie
  entière, forment l'exercice 41001.
