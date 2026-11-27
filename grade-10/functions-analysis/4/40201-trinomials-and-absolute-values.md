---
id: "40201"
title: "Fabriquer des fonctions avec des trinômes et des valeurs absolues"
grade: 10
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [valeur-absolue, trinome, fonctions, construction, morceaux]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2007, mathématiques, série S"
  reference: "cg-2007-s-sujet.pdf, exercice 1, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2007.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2007-s-sujet.pdf"
---

## Statement

Toutes les fonctions de cet exercice sont définies sur l'intervalle $[-1, 1]$.

On appelle **fonctions de type $T_0$** les fonctions « trinômes », c'est-à-dire les fonctions de la
forme $t(x) = ax^2 + bx + c$, où $a$, $b$ et $c$ sont des nombres réels quelconques (ils peuvent
être nuls).

Pour tout entier $n \geq 1$, on appelle **fonctions de type $T_n$** les fonctions de la forme
$$x \longmapsto f(x) + \lambda\,\lvert g(x) \rvert ,$$
où $\lambda$ est un nombre réel quelconque et où $f$ et $g$ sont deux fonctions quelconques de type
$T_{n-1}$.

Par exemple, $x \mapsto 3x^2 - 1 + 5\,\lvert x - 2 \rvert$ est de type $T_1$.

1. Montrer que la fonction $\varphi$ définie par
   $$\varphi(x) = 0 \ \text{ pour } -1 \leq x \leq 0 \qquad \text{et} \qquad \varphi(x) = x \ \text{ pour } 0 \leq x \leq 1$$
   est de type $T_1$.

2. On considère deux trinômes $t_1$ et $t_2$ tels que $t_1(0) = t_2(0)$, et la fonction $f$ définie
   par
   $$f(x) = t_1(x) \ \text{ pour } -1 \leq x \leq 0 \qquad \text{et} \qquad f(x) = t_2(x) \ \text{ pour } 0 \leq x \leq 1 .$$
   Démontrer qu'il existe un entier $N$ tel que $f$ soit de type $T_N$.

## Hints

1. **Question 1.** Que vaut $x + \lvert x \rvert$ quand $x \leq 0$ ? Et quand $x \geq 0$ ?
2. **Question 2.** Commencer par montrer qu'une fonction de type $T_{n-1}$ est aussi de type $T_n$
   : on a le droit de prendre $\lambda = 0$.
3. **Question 2.** Écrire $f = t_1 + d$. La fonction $d$ est nulle sur $[-1, 0]$, et sur $[0, 1]$
   elle vaut $t_2 - t_1$, qui est de la forme $\alpha x^2 + \beta x$ : il n'y a pas de terme
   constant. Il suffit donc de fabriquer $\varphi$, déjà faite, et la fonction $\psi$ nulle sur
   $[-1, 0]$ et égale à $x^2$ sur $[0, 1]$.
4. **Question 2.** Pour n'importe quelle fonction $h$, la fonction $\frac{h + \lvert h \rvert}{2}$
   vaut $h(x)$ là où $h(x) \geq 0$, et $0$ là où $h(x) \leq 0$. Cherchez un trinôme $h$ négatif sur
   $[-1, 0]$, positif sur $[0, 1]$, et qui contienne un terme en $x^2$.
5. **Question 2.** Essayez $h(x) = x^2 + x = x(x + 1)$.

## Solution

**1.** Pour $-1 \leq x \leq 0$, on a $\lvert x \rvert = -x$, donc $\frac{x}{2} + \frac{1}{2}\lvert x \rvert = 0$.
Pour $0 \leq x \leq 1$, on a $\lvert x \rvert = x$, donc $\frac{x}{2} + \frac{1}{2}\lvert x \rvert = x$.
Ainsi, pour tout $x$ de $[-1, 1]$,
$$\varphi(x) = \frac{x}{2} + \frac{1}{2}\,\lvert x \rvert .$$
C'est la forme $f + \lambda\lvert g \rvert$ avec $f(x) = \frac{x}{2}$, $g(x) = x$ et $\lambda = \frac{1}{2}$.
Les fonctions $f$ et $g$ sont des trinômes (avec $a = 0$), donc de type $T_0$.

**Conclusion :** $\varphi$ est de type $T_1$.

**2.** *Une remarque d'abord.* Si $h$ est de type $T_{n-1}$, alors $h = h + 0 \times \lvert h \rvert$ est
de type $T_n$ (on prend $f = g = h$ et $\lambda = 0$). Ainsi toute fonction de type $T_0$ est de type
$T_1$, toute fonction de type $T_1$ est de type $T_2$, et ainsi de suite.

*Ce qu'il faut fabriquer.* Les trinômes $t_1$ et $t_2$ ont le même terme constant, puisque
$t_1(0) = t_2(0)$. Donc $t_2(x) - t_1(x) = \alpha x^2 + \beta x$ pour deux réels $\alpha$ et $\beta$.
On a $f = t_1 + d$, où $d$ est nulle sur $[-1, 0]$ et vaut $\alpha x^2 + \beta x$ sur $[0, 1]$.

*Une idée : garder seulement la partie positive.* Pour une fonction $h$, la fonction
$\frac{h + \lvert h \rvert}{2}$ vaut $h(x)$ là où $h(x) \geq 0$, et $0$ là où $h(x) \leq 0$. C'est ce qui
a donné $\varphi$ à la question 1, avec $h(x) = x$.

Prenons maintenant $h(x) = x^2 + x = x(x + 1)$. Sur $[-1, 0]$, on a $x \leq 0$ et $x + 1 \geq 0$, donc
$h(x) \leq 0$. Sur $[0, 1]$, les deux facteurs sont positifs, donc $h(x) \geq 0$. La fonction
$$\psi_1(x) = \frac{x^2 + x}{2} + \frac{1}{2}\,\lvert x^2 + x \rvert$$
est donc nulle sur $[-1, 0]$ et égale à $x^2 + x$ sur $[0, 1]$.

Alors $\psi_1 - \varphi$ est nulle sur $[-1, 0]$ et vaut $x^2$ sur $[0, 1]$, et la fonction
$d = \alpha(\psi_1 - \varphi) + \beta\varphi = \alpha\psi_1 + (\beta - \alpha)\varphi$ est exactement celle qu'on
cherche. En développant :
$$d(x) = \frac{\alpha}{2}x^2 + \frac{\beta}{2}x + \frac{\beta - \alpha}{2}\,\lvert x \rvert + \frac{\alpha}{2}\,\lvert x^2 + x \rvert .$$

*Vérification directe.* Sur $[-1, 0]$, on a $\lvert x \rvert = -x$ et $\lvert x^2 + x \rvert = -x^2 - x$, donc
$d(x) = \frac{\alpha}{2}x^2 + \frac{\beta}{2}x - \frac{\beta - \alpha}{2}x - \frac{\alpha}{2}x^2 - \frac{\alpha}{2}x = 0$.
Sur $[0, 1]$, les deux valeurs absolues tombent, et
$d(x) = \frac{\alpha}{2}x^2 + \frac{\beta}{2}x + \frac{\beta - \alpha}{2}x + \frac{\alpha}{2}x^2 + \frac{\alpha}{2}x = \alpha x^2 + \beta x$.

*Le type de $f$.* On a donc
$$f(x) = \underbrace{t_1(x) + \frac{\alpha}{2}x^2 + \frac{\beta}{2}x}_{t_3(x)} + \frac{\beta - \alpha}{2}\,\lvert x \rvert + \frac{\alpha}{2}\,\lvert x^2 + x \rvert .$$

- $t_3$ est un trinôme, donc de type $T_0$, et $x \mapsto x$ aussi. Donc
  $F = t_3 + \frac{\beta - \alpha}{2}\lvert x \rvert$ est de type $T_1$.
- Le trinôme $x \mapsto x^2 + x$ est de type $T_0$, donc aussi de type $T_1$ d'après la remarque.
- Ainsi $f = F + \frac{\alpha}{2}\,\lvert x^2 + x \rvert$ est de la forme $f' + \lambda\lvert g' \rvert$ avec $f'$
  et $g'$ de type $T_1$.

**Conclusion :** $f$ est de type $T_2$. L'entier $N = 2$ convient, quels que soient $t_1$ et $t_2$.

**Bilan.** Avec deux étages de valeurs absolues, on fabrique à partir de trinômes toute fonction
formée de deux morceaux de trinômes qui se raccordent en $0$. L'outil clé est
$\frac{h + \lvert h \rvert}{2}$, qui garde la partie positive de $h$ et remplace le reste par $0$.

## Going further

- Peut-on toujours prendre $N = 1$ ? Montrer que la fonction $\psi$, nulle sur $[-1, 0]$ et égale
  à $x^2$ sur $[0, 1]$, n'est pas de type $T_1$. (Si $\psi = t + \lambda\lvert s \rvert$ avec $t$ et $s$
  trinômes, comparer ce qui se passe juste à gauche et juste à droite de $0$, selon que $s$ change de
  signe en $0$ ou non.) En revanche, quand $\lvert \alpha \rvert \leq \lvert \beta \rvert$, on peut trouver une
  écriture de type $T_1$ : laquelle ?
- Montrer que toute fonction continue sur $[-1, 1]$, formée d'un nombre fini de morceaux de trinômes
  qui se raccordent, est de type $T_N$ pour un certain $N$. On pourra utiliser, pour un point de
  raccord $x_0$ strictement compris entre $-1$ et $1$, le trinôme $(x - x_0)(x + 2)$.
