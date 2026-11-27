---
id: "40772"
title: "sin a/sin b + sin b/sin a ≤ a/b + b/a ≤ tan a/tan b + tan b/tan a"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [trigonometrie, cosinus, derivee, monotonie, inegalite, rapport]
adapted_from: null
see_also: ["40767", "40768", "40769", "40770", "40771"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », partie IV « Application à la démonstration d'inégalités », question 15. Le sujet la déduit de la théorie des fonctions fortes et faibles ; la solution ci-dessous est directe."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

On pourra utiliser le fait que les fonctions $\cos$ et $\sin$ sont dérivables sur $\mathbb{R}$, de dérivées $\cos' = -\sin$ et $\sin' = \cos$. La fonction $\tan$ est définie sur $[0, \frac{\pi}{2}[$ par $\tan(x) = \frac{\sin(x)}{\cos(x)}$.

Soient $a$ et $b$ deux réels de l'intervalle $]0, \frac{\pi}{2}[$. Démontrer que

$$\frac{\sin(a)}{\sin(b)} + \frac{\sin(b)}{\sin(a)} \leqslant \frac{a}{b} + \frac{b}{a} \leqslant \frac{\tan(a)}{\tan(b)} + \frac{\tan(b)}{\tan(a)}.$$

## Hints

1. Les trois expressions ne changent pas si l'on échange $a$ et $b$, et elles valent toutes $2$ si $a = b$. On peut supposer $0 < a < b < \frac{\pi}{2}$.
2. Chaque expression est de la forme $t + \frac{1}{t}$. Quelles sont les variations de $t \mapsto t + \frac{1}{t}$ sur $[1, +\infty[$ ?
3. Il suffit donc de montrer que $1 \leqslant \frac{\sin(b)}{\sin(a)} \leqslant \frac{b}{a} \leqslant \frac{\tan(b)}{\tan(a)}$.
4. La deuxième inégalité dit que $x \mapsto \frac{\sin(x)}{x}$ est décroissante ; la troisième, que $x \mapsto \frac{\tan(x)}{x}$ est croissante. Étudier ces fonctions sur $]0, \frac{\pi}{2}[$.
5. Le signe des dérivées se ramène à celui de $x \cos(x) - \sin(x)$ et de $x - \sin(x)\cos(x)$. Étudier ces deux fonctions sur $[0, \frac{\pi}{2}[$ à l'aide de leurs dérivées, en partant de leur valeur en $0$.

## Solution

*Réduction.* Les trois expressions ne changent pas si l'on échange $a$ et $b$, et pour $a = b$ elles valent toutes $2$. On suppose donc $0 < a < b < \frac{\pi}{2}$. Sur cet intervalle, $\sin$, $\cos$ et $\tan$ sont strictement positives.

*La fonction $\varphi(t) = t + \frac{1}{t}$ est croissante sur $[1, +\infty[$.* Pour $1 \leqslant t \leqslant t'$,

$$\varphi(t') - \varphi(t) = (t' - t) + \frac{t - t'}{t t'} = (t' - t)\left(1 - \frac{1}{t t'}\right) \geqslant 0.$$

Les trois expressions valent $\varphi\left(\frac{\sin(b)}{\sin(a)}\right)$, $\varphi\left(\frac{b}{a}\right)$ et $\varphi\left(\frac{\tan(b)}{\tan(a)}\right)$, puisque $\varphi(t) = \varphi\left(\frac{1}{t}\right)$. Il suffit donc de montrer que

$$1 \leqslant \frac{\sin(b)}{\sin(a)} \leqslant \frac{b}{a} \leqslant \frac{\tan(b)}{\tan(a)}.$$

*Première inégalité.* La fonction $\sin$ a pour dérivée $\cos$, strictement positive sur $[0, \frac{\pi}{2}[$ : elle y est croissante. Donc $\sin(a) \leqslant \sin(b)$, et $\frac{\sin(b)}{\sin(a)} \geqslant 1$.

*Deuxième inégalité.* Soit $N(x) = x\cos(x) - \sin(x)$ sur $[0, \frac{\pi}{2}[$. Alors

$$N'(x) = \cos(x) - x\sin(x) - \cos(x) = -x\sin(x) \leqslant 0,$$

donc $N$ est décroissante, et $N(x) \leqslant N(0) = 0$. Soit maintenant $s(x) = \frac{\sin(x)}{x}$ sur $]0, \frac{\pi}{2}[$ :

$$s'(x) = \frac{x\cos(x) - \sin(x)}{x^2} = \frac{N(x)}{x^2} \leqslant 0.$$

Donc $s$ est décroissante, et $s(b) \leqslant s(a)$, c'est-à-dire $\frac{\sin(b)}{b} \leqslant \frac{\sin(a)}{a}$, soit $\frac{\sin(b)}{\sin(a)} \leqslant \frac{b}{a}$ (on a multiplié par $\frac{b}{\sin(a)} > 0$).

*Troisième inégalité.* D'abord, avec la formule de la dérivée d'un quotient et $\cos^2 + \sin^2 = 1$,

$$\tan'(x) = \frac{\cos(x)\cos(x) - \sin(x)(-\sin(x))}{\cos^2(x)} = \frac{1}{\cos^2(x)}.$$

Soit $M(x) = x - \sin(x)\cos(x)$ sur $[0, \frac{\pi}{2}[$. Alors

$$M'(x) = 1 - (\cos^2(x) - \sin^2(x)) = (1 - \cos^2(x)) + \sin^2(x) = 2\sin^2(x) \geqslant 0,$$

donc $M$ est croissante, et $M(x) \geqslant M(0) = 0$. Soit maintenant $q(x) = \frac{\tan(x)}{x}$ sur $]0, \frac{\pi}{2}[$ :

$$q'(x) = \frac{x \tan'(x) - \tan(x)}{x^2} = \frac{x - \sin(x)\cos(x)}{x^2\cos^2(x)} = \frac{M(x)}{x^2\cos^2(x)} \geqslant 0,$$

où l'on a multiplié le numérateur et le dénominateur par $\cos^2(x)$. Donc $q$ est croissante, $q(a) \leqslant q(b)$, c'est-à-dire $\frac{\tan(a)}{a} \leqslant \frac{\tan(b)}{b}$, soit $\frac{b}{a} \leqslant \frac{\tan(b)}{\tan(a)}$.

*Conclusion.* On a $1 \leqslant \frac{\sin(b)}{\sin(a)} \leqslant \frac{b}{a} \leqslant \frac{\tan(b)}{\tan(a)}$, et comme $\varphi$ est croissante sur $[1, +\infty[$, on obtient les deux inégalités demandées.

**Bilan.** Sur $]0, \frac{\pi}{2}[$, la fonction $x \mapsto \frac{\sin(x)}{x}$ est décroissante et $x \mapsto \frac{\tan(x)}{x}$ est croissante. Le rapport $\frac{b}{a}$ est donc encadré par les rapports des sinus et des tangentes, et l'inégalité suit de la croissance de $t \mapsto t + \frac{1}{t}$ sur $[1, +\infty[$.

## Going further

- En faisant tendre $a$ vers $0$ dans les inégalités $\frac{\sin(b)}{b} \leqslant \frac{\sin(a)}{a}$ et $\frac{\tan(a)}{a} \leqslant \frac{\tan(b)}{b}$, et en admettant que $\frac{\sin(a)}{a}$ tend vers $1$, retrouver l'encadrement classique $\sin(x) \leqslant x \leqslant \tan(x)$ pour $0 < x < \frac{\pi}{2}$.
- Dans le sujet, cette inégalité venait d'une théorie générale : avec les notations des exercices 40767 à 40770, la fonction $\sin$ est $1$-faible et la fonction $\tan$ est $1$-forte sur $]0, \frac{\pi}{2}[$.
