---
id: "40281"
title: "Les solutions de f(2x) = 2f(x)² − 1 sont des cosinus"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [equation-fonctionnelle, trigonometrie, cosinus, limite, continuite, derivee, inegalite, suites]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2009, mathématiques, série S"
  reference: "cg-2009-s-sujet.pdf, exercice I « Analyse », questions 1 a) à 2 c). La formule de duplication et la limite de sin(u)/u sont rappelées dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2009.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2009-s-sujet.pdf"
---

## Statement

Le but de l'exercice est de trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans l'intervalle $[-1, 1]$, qui ont les trois propriétés suivantes :

- pour tout réel $x$, $f(2x) = 2f(x)^2 - 1$ ;
- $f(0) = 1$ ;
- le quotient $\frac{1 - f(x)}{x^2}$ a une limite finie quand $x$ tend vers $0$. On note $a$ cette limite.

On rappelle que tout réel $y$ de $[-1, 1]$ s'écrit de façon unique $y = \cos(\theta)$ avec $\theta$ dans $[0, \pi]$, que pour tout réel $\alpha$,
$$\cos(2\alpha) = 2\cos^2(\alpha) - 1 = 1 - 2\sin^2(\alpha),$$
et que $\lim_{u \to 0} \frac{\sin(u)}{u} = 1$.

1. a) Vérifier que $\lim_{\theta \to 0} \frac{1 - \cos(\theta)}{\theta^2} = \frac{1}{2}$.

   b) Montrer que, pour tout $\theta$ dans $\left[0, \frac{\pi}{2}\right]$,
   $$\frac{2\theta}{\pi} \leq \sin(\theta) \qquad \text{et} \qquad \cos(\theta) \leq 1 - \frac{\theta^2}{\pi}.$$

2. Soit $f$ une fonction qui a les trois propriétés ci-dessus. On fixe un réel $x$ et, pour tout entier naturel $n$, on note $\theta_n$ l'unique réel de $[0, \pi]$ tel que
   $$f\left(\frac{x}{2^n}\right) = \cos(\theta_n).$$

   a) Montrer que $f$ est continue en $0$, puis que la suite $(\theta_n)$ tend vers $0$.

   b) Montrer qu'il existe un entier $N$ tel que, pour tout $n \geq N$, $\theta_{n+1} = \frac{\theta_n}{2}$.

   c) Montrer que $a \geq 0$ et que $f(x) = \cos\left(x\sqrt{2a}\right)$.

## Hints

1. **Question 1.** a) Utiliser $1 - \cos(\theta) = 2\sin^2\left(\frac{\theta}{2}\right)$ et poser $u = \frac{\theta}{2}$.
2. **Question 1.** b) Étudier $h(\theta) = \sin(\theta) - \frac{2\theta}{\pi}$ sur $\left[0, \frac{\pi}{2}\right]$ : que vaut-elle aux deux bornes ? Comment varie sa dérivée ?
3. **Question 1.** b) Pour la seconde inégalité, dériver $g(\theta) = 1 - \frac{\theta^2}{\pi} - \cos(\theta)$ : on retrouve la fonction $h$.
4. **Question 2.** a) Pour $t \neq 0$, écrire $1 - f(t) = t^2 \times \frac{1 - f(t)}{t^2}$.
5. **Question 2.** a) Quand $\cos(\theta_n)$ est proche de $1$, il est positif, donc $\theta_n \leq \frac{\pi}{2}$. La seconde inégalité de 1 b) donne alors $\theta_n^2 \leq \pi\left(1 - \cos(\theta_n)\right)$.
6. **Question 2.** b) Appliquer la relation $f(2t) = 2f(t)^2 - 1$ à $t = \frac{x}{2^{n+1}}$ : on obtient $\cos(\theta_n) = \cos(2\theta_{n+1})$. Quand peut-on en conclure que $\theta_n = 2\theta_{n+1}$ ?
7. **Question 2.** c) À partir du rang $N$, on a $\theta_n = \frac{c}{2^n}$ avec $c = 2^N \theta_N$. Calculer la limite de $\frac{1 - f(x/2^n)}{(x/2^n)^2}$ de deux façons.
8. **Question 2.** c) Pour remonter de $\frac{x}{2^N}$ jusqu'à $x$ : si $f(t) = \cos(\varphi)$, que vaut $f(2t)$ ?

## Solution

**1.** a) Pour $\theta \neq 0$, la formule rappelée avec $\alpha = \frac{\theta}{2}$ donne $1 - \cos(\theta) = 2\sin^2\left(\frac{\theta}{2}\right)$, donc
$$\frac{1 - \cos(\theta)}{\theta^2} = \frac{2\sin^2(\theta/2)}{4\,(\theta/2)^2} = \frac{1}{2}\left(\frac{\sin(u)}{u}\right)^2 \quad \text{avec } u = \frac{\theta}{2}.$$
Quand $\theta$ tend vers $0$, $u$ tend vers $0$, donc $\frac{\sin(u)}{u}$ tend vers $1$.

**Conclusion :** $\lim_{\theta \to 0} \frac{1 - \cos(\theta)}{\theta^2} = \frac{1}{2}$.

b) *Première inégalité.* Soit $h(\theta) = \sin(\theta) - \frac{2\theta}{\pi}$ sur $\left[0, \frac{\pi}{2}\right]$. On a $h(0) = 0$ et $h\left(\frac{\pi}{2}\right) = 1 - 1 = 0$. Sa dérivée $h'(\theta) = \cos(\theta) - \frac{2}{\pi}$ est décroissante, car $\cos$ décroît sur cet intervalle ; elle vaut $1 - \frac{2}{\pi} > 0$ en $0$ et $-\frac{2}{\pi} < 0$ en $\frac{\pi}{2}$. Il existe donc un réel $\theta_0$ tel que $h' \geq 0$ sur $[0, \theta_0]$ et $h' \leq 0$ sur $\left[\theta_0, \frac{\pi}{2}\right]$. Ainsi $h$ croît de $h(0) = 0$ jusqu'à $h(\theta_0)$, puis décroît jusqu'à $h\left(\frac{\pi}{2}\right) = 0$. Sur $[0, \theta_0]$, $h(\theta) \geq h(0) = 0$, et sur $\left[\theta_0, \frac{\pi}{2}\right]$, $h(\theta) \geq h\left(\frac{\pi}{2}\right) = 0$. Donc $h \geq 0$, c'est-à-dire $\frac{2\theta}{\pi} \leq \sin(\theta)$.

*Seconde inégalité.* Soit $g(\theta) = 1 - \frac{\theta^2}{\pi} - \cos(\theta)$. Alors $g'(\theta) = -\frac{2\theta}{\pi} + \sin(\theta) = h(\theta) \geq 0$, donc $g$ est croissante sur $\left[0, \frac{\pi}{2}\right]$, et $g(\theta) \geq g(0) = 0$.

**Conclusion :** pour $\theta \in \left[0, \frac{\pi}{2}\right]$, $\frac{2\theta}{\pi} \leq \sin(\theta)$ et $\cos(\theta) \leq 1 - \frac{\theta^2}{\pi}$.

**2.** a) Pour $t \neq 0$, on écrit
$$1 - f(t) = t^2 \times \frac{1 - f(t)}{t^2}.$$
Quand $t$ tend vers $0$, le premier facteur tend vers $0$ et le second vers $a$, donc $1 - f(t)$ tend vers $0$. Ainsi $\lim_{t \to 0} f(t) = 1 = f(0)$ : $f$ est continue en $0$.

Comme $\frac{x}{2^n}$ tend vers $0$, on en déduit que $\cos(\theta_n) = f\left(\frac{x}{2^n}\right)$ tend vers $1$. En particulier, il existe un rang $n_0$ à partir duquel $\cos(\theta_n) > 0$. Pour $n \geq n_0$, on a donc $\theta_n < \frac{\pi}{2}$, car le cosinus est négatif ou nul sur $\left[\frac{\pi}{2}, \pi\right]$. La seconde inégalité de 1 b) donne alors
$$0 \leq \theta_n^2 \leq \pi\left(1 - \cos(\theta_n)\right),$$
et le membre de droite tend vers $0$. Donc $\theta_n^2$ tend vers $0$, puis $\theta_n$ aussi, puisque $\theta_n \geq 0$.

**Conclusion :** $f$ est continue en $0$ et $\lim_{n \to +\infty} \theta_n = 0$.

b) On applique la relation $f(2t) = 2f(t)^2 - 1$ à $t = \frac{x}{2^{n+1}}$, pour lequel $2t = \frac{x}{2^n}$ :
$$\cos(\theta_n) = 2\cos^2(\theta_{n+1}) - 1 = \cos(2\theta_{n+1}).$$
Comme $(\theta_n)$ tend vers $0$, il existe un entier $N$ tel que $\theta_n < \frac{\pi}{2}$ pour tout $n \geq N$. Pour $n \geq N$, on a aussi $n + 1 \geq N$, donc $2\theta_{n+1}$ est dans $[0, \pi[$. Les deux réels $\theta_n$ et $2\theta_{n+1}$ sont dans $[0, \pi]$ et ont le même cosinus, donc ils sont égaux, par l'unicité rappelée dans l'énoncé.

**Conclusion :** pour tout $n \geq N$, $\theta_{n+1} = \frac{\theta_n}{2}$.

c) *Le signe de $a$.* Comme $f$ prend ses valeurs dans $[-1, 1]$, on a $1 - f(t) \geq 0$, donc $\frac{1 - f(t)}{t^2} \geq 0$ pour tout $t \neq 0$. La limite $a$ est donc positive ou nulle.

*Le cas $x = 0$.* On a $f(0) = 1 = \cos(0)$, et la formule est vraie.

*Le cas $x \neq 0$.* D'après b), pour $n \geq N$, $\theta_n = \frac{\theta_N}{2^{n-N}} = \frac{c}{2^n}$, avec $c = 2^N\theta_N \geq 0$. Posons $t_n = \frac{x}{2^n}$, qui est non nul et tend vers $0$. Par définition de $a$,
$$\frac{1 - f(t_n)}{t_n^2} = \frac{1 - \cos(c/2^n)}{x^2/4^n} \quad \text{tend vers } a.$$

- Si $c = 0$, ce quotient est nul pour tout $n \geq N$, donc $a = 0$, et $c = |x|\sqrt{2a}$.
- Si $c > 0$, on écrit, pour $n \geq N$,
  $$\frac{1 - \cos(c/2^n)}{x^2/4^n} = \frac{1 - \cos(c/2^n)}{(c/2^n)^2} \times \frac{c^2}{x^2}.$$
  Comme $\frac{c}{2^n}$ tend vers $0$, la question 1 a) montre que ce produit tend vers $\frac{c^2}{2x^2}$. Par unicité de la limite, $a = \frac{c^2}{2x^2}$, d'où $c^2 = 2ax^2$ et $c = |x|\sqrt{2a}$, puisque $c > 0$.

Dans les deux cas, $f\left(\frac{x}{2^N}\right) = \cos(\theta_N) = \cos\left(\frac{c}{2^N}\right)$ avec $c = |x|\sqrt{2a}$.

*Remonter jusqu'à $x$.* Si $f(t) = \cos(\varphi)$, alors $f(2t) = 2\cos^2(\varphi) - 1 = \cos(2\varphi)$. En partant de $f\left(\frac{x}{2^N}\right) = \cos\left(\frac{c}{2^N}\right)$ et en doublant $N$ fois, on obtient successivement $f\left(\frac{x}{2^{N-1}}\right) = \cos\left(\frac{c}{2^{N-1}}\right)$, …, $f(x) = \cos(c)$.

Ainsi $f(x) = \cos(|x|\sqrt{2a}) = \cos\left(x\sqrt{2a}\right)$, car le cosinus est pair.

**Conclusion :** $a \geq 0$ et, pour tout réel $x$, $f(x) = \cos\left(x\sqrt{2a}\right)$.

**Bilan.** Une fonction à valeurs dans $[-1, 1]$ qui vérifie $f(2x) = 2f(x)^2 - 1$, $f(0) = 1$ et dont le quotient $\frac{1 - f(x)}{x^2}$ a une limite $a$ en $0$ est forcément $x \mapsto \cos\left(x\sqrt{2a}\right)$, avec $a \geq 0$. Réciproquement, pour tout $a \geq 0$, cette fonction convient : la relation est la formule $\cos(2\alpha) = 2\cos^2(\alpha) - 1$, et la question 1 a) donne la limite $a$ du quotient en $0$ (pour $a = 0$, c'est la fonction constante égale à $1$). Les solutions sont donc exactement les fonctions $x \mapsto \cos(\omega x)$ avec $\omega \geq 0$.

## Going further

- Sans l'hypothèse sur la limite de $\frac{1 - f(x)}{x^2}$, il y a beaucoup d'autres solutions. Vérifier que la fonction qui vaut $\cos(x)$ quand $x$ est rationnel et $\cos(2x)$ quand $x$ est irrationnel vérifie $f(2x) = 2f(x)^2 - 1$ et $f(0) = 1$. Pourquoi n'est-elle pas de la forme $\cos(\omega x)$ ?
- Que deviennent les solutions si l'on cherche $f$ à valeurs dans $[1, +\infty[$ au lieu de $[-1, 1]$ ? On pourra penser à la fonction $\mathrm{ch}(x) = \frac{e^x + e^{-x}}{2}$ et vérifier que $\mathrm{ch}(2x) = 2\,\mathrm{ch}(x)^2 - 1$.
