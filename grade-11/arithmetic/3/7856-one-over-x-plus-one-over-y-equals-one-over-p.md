---
id: "7856"
title: "1/x + 1/y = 1/p a exactement trois solutions"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, fractions-egyptiennes, factorisation, diviseurs]
adapted_from: null
see_also: ["7452"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 après-midi (Vincent Bouis), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $p$ un nombre premier.

Montrer que l'équation
$$\frac{1}{x} + \frac{1}{y} = \frac{1}{p}$$
admet exactement trois solutions en entiers $x$ et $y$ strictement positifs.

## Hints

1. Commence par un exemple, disons $p = 3$ : cherche à la main les couples $(x, y)$ qui
   marchent. Tu devrais en trouver trois.
2. Montre d'abord que $x > p$ et $y > p$. Que vaut $\frac1x$ si $x \leq p$ ?
3. On peut donc poser $x = p + a$ et $y = p + b$ avec $a, b \geq 1$. Réduis l'équation au même
   dénominateur et simplifie : il devrait rester quelque chose de très simple reliant $a$, $b$
   et $p$.
4. Tu obtiendras $ab = p^2$. Comme $p$ est premier, combien de façons y a-t-il d'écrire $p^2$
   comme produit de deux entiers strictement positifs ?

## Solution

**Étape 1 : $x$ et $y$ dépassent $p$.**

Comme $\dfrac1y > 0$, on a
$$\frac{1}{x} = \frac1p - \frac1y < \frac1p ,$$
donc $x > p$ (les deux nombres étant strictement positifs). Par symétrie, $y > p$ aussi.

**Étape 2 : on pose le changement d'inconnues.**

Écrivons
$$x = p + a, \qquad y = p + b ,$$
avec $a$ et $b$ entiers strictement positifs.

L'équation $\dfrac1x + \dfrac1y = \dfrac1p$ s'écrit, en multipliant par $pxy$ :
$$p\,y + p\,x = x\,y .$$

En remplaçant :
$$p(p + b) + p(p + a) = (p+a)(p+b) ,$$
$$p^2 + pb + p^2 + pa = p^2 + pb + pa + ab ,$$
et après simplification des termes $pa$, $pb$ et d'un $p^2$ :
$$p^2 = ab .$$

**Étape 3 : on compte les factorisations.**

Il s'agit donc d'écrire $p^2$ comme produit de deux entiers strictement positifs $a$ et $b$.
Comme $p$ est premier, les diviseurs positifs de $p^2$ sont exactement
$$1, \quad p, \quad p^2 ,$$
et à chaque choix de $a$ correspond exactement un $b = \dfrac{p^2}{a}$. Il y a donc exactement
**trois** couples :
$$(a, b) = (1,\ p^2), \qquad (p,\ p), \qquad (p^2,\ 1) .$$

**Étape 4 : les trois solutions.**

| $(a,b)$ | $x = p+a$ | $y = p+b$ |
|---|---|---|
| $(1, p^2)$ | $p + 1$ | $p^2 + p$ |
| $(p, p)$ | $2p$ | $2p$ |
| $(p^2, 1)$ | $p^2 + p$ | $p + 1$ |

**Conclusion.** L'équation admet exactement trois solutions :
$$(x,y) = \left(p+1,\ p^2+p\right), \quad (2p,\ 2p), \quad \left(p^2+p,\ p+1\right).$$

*Vérification pour $p = 3$ :* $\dfrac14 + \dfrac{1}{12} = \dfrac{3}{12} + \dfrac{1}{12} =
\dfrac{4}{12} = \dfrac13$, et $\dfrac16 + \dfrac16 = \dfrac13$. Ce sont bien les trois
solutions $(4, 12)$, $(6,6)$ et $(12,4)$.

## Going further

Que se passe-t-il si $p$ n'est pas premier ? Le calcul de l'étape 2 reste valable : il faut
écrire $p^2 = ab$. Le nombre de solutions est donc le nombre de diviseurs de $p^2$. Pour
$p = 4$ par exemple, $16$ a cinq diviseurs, donc l'équation $\frac1x + \frac1y = \frac14$ a cinq
solutions. C'est exactement la primalité de $p$ qui fait tomber le compte à trois.
