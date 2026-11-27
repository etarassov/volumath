---
id: "41085"
title: "L'exponentielle d'une fonction convexe, et une réciproque avec un paramètre"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [convexite, exponentielle, derivee, contre-exemple, logarithme]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème II « Fonctions convexes », questions 1° (a), (b) et 2° (a), (b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-es-sujet.pdf"
---

## Statement

Dans cet exercice, $u$ désigne une fonction deux fois dérivable de $\mathbb{R}$ dans
$\mathbb{R}$, et $f$ la fonction définie pour tout réel $x$ par
$$f(x) = \mathrm{e}^{u(x)}.$$
On rappelle qu'une fonction deux fois dérivable sur $\mathbb{R}$ est convexe sur $\mathbb{R}$ si
et seulement si sa dérivée seconde est positive ou nulle sur $\mathbb{R}$.

1. a) Montrer que si $u$ est convexe, alors $f$ est convexe.

   b) La réciproque est-elle vraie ?

2. Pour tout réel $\lambda$, on note $f_\lambda$ la fonction définie pour tout réel $x$ par
   $$f_\lambda(x) = f(x)\,\mathrm{e}^{\lambda x}.$$

   a) Montrer que si $u$ est convexe, alors la fonction $f_\lambda$ est convexe pour tout réel
   $\lambda$.

   b) Réciproquement, montrer que si la fonction $f_\lambda$ est convexe pour tout réel
   $\lambda$, alors $u$ est convexe.

## Hints

1. **Question 1 a.** Calculer $f'$ puis $f''$ en fonction de $u$, $u'$ et $u''$.
2. **Question 1 b.** Pour fabriquer un contre-exemple, partir d'une fonction $g$ convexe et
   strictement positive, et poser $u = \ln g$ : alors $f = g$ est convexe. Reste à choisir $g$
   pour que $\ln g$ ne soit pas convexe.
3. **Question 1 b.** Essayer $g(x) = 1 + x^2$.
4. **Question 2 a.** Écrire $f_\lambda(x)$ comme l'exponentielle d'une seule fonction.
5. **Question 2 b.** Calculer $f_\lambda''(x)$. Un des termes est un carré qui dépend de
   $\lambda$ : en un point $x$ donné, peut-on choisir $\lambda$ pour l'annuler ?

## Solution

**1. a)** Par dérivation d'une composée, $f'(x) = u'(x)\,\mathrm{e}^{u(x)}$. En dérivant ce
produit,
$$f''(x) = u''(x)\,\mathrm{e}^{u(x)} + u'(x) \times u'(x)\,\mathrm{e}^{u(x)} = \left(u''(x) + u'(x)^2\right)\mathrm{e}^{u(x)}.$$
Si $u$ est convexe, alors $u''(x) \geq 0$ pour tout $x$. Comme $u'(x)^2 \geq 0$ et
$\mathrm{e}^{u(x)} > 0$, on obtient $f''(x) \geq 0$ pour tout $x$.

**Conclusion :** si $u$ est convexe, $f$ est convexe.

**1. b)** Non. Prenons $u(x) = \ln(1 + x^2)$, qui est définie et deux fois dérivable sur
$\mathbb{R}$ car $1 + x^2 > 0$. Alors $f(x) = 1 + x^2$, et $f''(x) = 2 \geq 0$ : $f$ est
convexe. Mais
$$u'(x) = \frac{2x}{1 + x^2}, \qquad u''(x) = \frac{2(1 + x^2) - 2x \times 2x}{(1 + x^2)^2} = \frac{2(1 - x^2)}{(1 + x^2)^2}.$$
Par exemple $u''(2) = -\frac{6}{25} < 0$, donc $u$ n'est pas convexe.

**Conclusion :** $f$ peut être convexe sans que $u$ le soit ; la réciproque est fausse.

**2. a)** Pour tout réel $x$, $f_\lambda(x) = \mathrm{e}^{u(x)}\,\mathrm{e}^{\lambda x} = \mathrm{e}^{v(x)}$
avec $v(x) = u(x) + \lambda x$. La fonction $v$ est deux fois dérivable et $v''(x) = u''(x)$,
puisque la dérivée seconde de $x \mapsto \lambda x$ est nulle. Si $u$ est convexe, $v$ l'est
donc aussi, et la question 1 a appliquée à $v$ montre que $f_\lambda = \mathrm{e}^{v}$ est
convexe.

**Conclusion :** si $u$ est convexe, $f_\lambda$ est convexe pour tout réel $\lambda$.

**2. b)** Avec la formule de la question 1 a appliquée à $v(x) = u(x) + \lambda x$, pour
laquelle $v'(x) = u'(x) + \lambda$ et $v''(x) = u''(x)$ :
$$f_\lambda''(x) = \left(u''(x) + \left(u'(x) + \lambda\right)^2\right)\mathrm{e}^{u(x) + \lambda x}.$$
Supposons que $f_\lambda$ soit convexe pour tout réel $\lambda$, et fixons un réel $x_0$.
Choisissons $\lambda = -u'(x_0)$ : ce choix annule le carré au point $x_0$, et
$$f_\lambda''(x_0) = u''(x_0)\,\mathrm{e}^{u(x_0) + \lambda x_0}.$$
Comme $f_\lambda$ est convexe, $f_\lambda''(x_0) \geq 0$, et comme l'exponentielle est
strictement positive, $u''(x_0) \geq 0$.

Ceci vaut pour tout réel $x_0$ (avec à chaque fois une valeur de $\lambda$ adaptée à $x_0$),
donc $u'' \geq 0$ sur $\mathbb{R}$.

**Conclusion :** si toutes les fonctions $f_\lambda$ sont convexes, alors $u$ est convexe.

**Bilan.** Si $u$ est convexe, $\mathrm{e}^u$ est convexe, mais pas l'inverse :
$\mathrm{e}^u$ peut être convexe sans que $u$ le soit. En revanche, $u$ est convexe si et
seulement si toutes les fonctions $x \mapsto \mathrm{e}^{u(x) + \lambda x}$, pour $\lambda$ réel,
sont convexes. L'idée de la réciproque est de choisir le paramètre $\lambda$ en fonction du point
où l'on regarde.

## Going further

- Une fonction strictement positive $g$ dont le logarithme $\ln g$ est convexe est dite
  *log-convexe*. D'après la question 2, une fonction $g$ strictement positive et deux fois
  dérivable est log-convexe si et seulement si toutes les fonctions $x \mapsto g(x)\,\mathrm{e}^{\lambda x}$
  sont convexes. En déduire que la somme de deux fonctions log-convexes est log-convexe.
  (Pour le produit, c'est beaucoup plus simple : pourquoi ?)
- Pour quelles valeurs du réel $a > 0$ la fonction $x \mapsto \ln(a + x^2)$ est-elle convexe sur
  $\mathbb{R}$ ? Et $x \mapsto \mathrm{e}^{-a x^2}$ ?
