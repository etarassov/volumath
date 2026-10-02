---
id: "10418"
title: "Le plus grand minimum et le plus petit maximum"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, extremum, trigonometrie, suites, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Pour des réels strictement positifs $x_1, x_2, \ldots, x_n$, on considère les $n + 1$ nombres

$$x_1, \quad \frac{1}{x_1} + x_2, \quad \frac{1}{x_2} + x_3, \quad \ldots, \quad \frac{1}{x_{n-1}} + x_n, \quad \frac{1}{x_n} .$$

(Pour $n = 1$, il n'y a que les deux nombres $x_1$ et $\frac{1}{x_1}$.) On note $m(x_1, \ldots, x_n)$ le plus petit de ces $n + 1$ nombres, et $M(x_1, \ldots, x_n)$ le plus grand.

Montrer que $m$ a une plus grande valeur, que $M$ a une plus petite valeur, quand $x_1, \ldots, x_n$ parcourent les réels strictement positifs, et que ces deux valeurs sont égales à

$$2 \cos\left( \frac{\pi}{n + 2} \right) .$$

## Hints

1. Traite les cas $n = 1$ et $n = 2$. Pour $n = 2$, cherche $x_1$ et $x_2$ tels que les trois nombres soient égaux.
2. Suppose que tu connais des réels $a_1, \ldots, a_n > 0$ pour lesquels les $n + 1$ nombres sont tous égaux à une même valeur $\alpha$. Montre que $m(x_1, \ldots, x_n) \leqslant \alpha$ pour tous $x_1, \ldots, x_n > 0$. Pour cela, suppose le contraire et compare $x_1$ à $a_1$, puis $x_2$ à $a_2$, et ainsi de suite.
3. Fais de même pour montrer que $M(x_1, \ldots, x_n) \geqslant \alpha$. Il reste alors à trouver de tels $a_1, \ldots, a_n$.
4. Les égalités s'écrivent $a_1 = \alpha$ et $a_{k+1} = \alpha - \frac{1}{a_k}$. Pose $\theta = \frac{\pi}{n + 2}$, $\alpha = 2\cos\theta$, et essaie $a_k = \dfrac{\sin\left((k+1)\theta\right)}{\sin(k\theta)}$.

## Solution

Pour abréger, on écrit $x = (x_1, \ldots, x_n)$, et on appelle « les $n + 1$ nombres de $x$ » la liste de l'énoncé.

**Étape 1 : il suffit de trouver une liste dont les $n + 1$ nombres sont égaux.** Supposons que $a = (a_1, \ldots, a_n)$, avec tous les $a_k > 0$, soit telle que ses $n + 1$ nombres soient tous égaux à un même réel $\alpha$ :

$$a_1 = \frac{1}{a_1} + a_2 = \cdots = \frac{1}{a_{n-1}} + a_n = \frac{1}{a_n} = \alpha . \qquad (1)$$

Alors $m(a) = M(a) = \alpha$. Montrons que, pour tout $x$, on a $m(x) \leqslant \alpha \leqslant M(x)$.

*Montrons $m(x) \leqslant \alpha$.* Supposons au contraire que $m(x) > \alpha$ pour une certaine liste $x$. Alors chacun des $n + 1$ nombres de $x$ est strictement plus grand que $\alpha$.

- D'abord, $x_1 > \alpha = a_1$.
- Ensuite, si $x_k > a_k$ pour un certain $k \leqslant n - 1$, alors $\frac{1}{x_k} < \frac{1}{a_k}$, et
  $$x_{k+1} > \alpha - \frac{1}{x_k} > \alpha - \frac{1}{a_k} = a_{k+1} .$$

De proche en proche, on obtient $x_1 > a_1$, $x_2 > a_2$, …, $x_n > a_n$. Mais alors $\frac{1}{x_n} < \frac{1}{a_n} = \alpha$, ce qui contredit $\frac{1}{x_n} > \alpha$. Donc $m(x) \leqslant \alpha$.

*Montrons $M(x) \geqslant \alpha$.* C'est le même raisonnement avec les inégalités dans l'autre sens. Supposons $M(x) < \alpha$. Alors chacun des $n + 1$ nombres de $x$ est strictement plus petit que $\alpha$. On a $x_1 < a_1$, et si $x_k < a_k$, alors $\frac{1}{x_k} > \frac{1}{a_k}$ et $x_{k+1} < \alpha - \frac{1}{x_k} < \alpha - \frac{1}{a_k} = a_{k+1}$. On arrive à $x_n < a_n$, donc $\frac{1}{x_n} > \alpha$, ce qui contredit $\frac{1}{x_n} < \alpha$.

Ainsi, la plus grande valeur de $m$ existe et vaut $m(a) = \alpha$, et la plus petite valeur de $M$ existe et vaut $M(a) = \alpha$.

**Étape 2 : construire la liste $a$.** Posons $\theta = \frac{\pi}{n + 2}$, $\alpha = 2\cos\theta$, et pour $k = 1, \ldots, n$,

$$a_k = \frac{\sin\left((k+1)\theta\right)}{\sin(k\theta)} .$$

*Ces nombres sont strictement positifs.* Pour $1 \leqslant k \leqslant n$, les angles $k\theta$ et $(k+1)\theta$ sont dans $]0, \pi[$, car $(n+1)\theta < (n+2)\theta = \pi$. Leurs sinus sont donc strictement positifs.

Vérifions les égalités $(1)$. On utilise les formules d'addition $\sin(A + B) = \sin A \cos B + \cos A \sin B$ et $\sin(A - B) = \sin A \cos B - \cos A \sin B$, dont la somme donne

$$\sin(A - B) + \sin(A + B) = 2 \sin A \cos B . \qquad (2)$$

- *Le premier nombre.* $a_1 = \dfrac{\sin 2\theta}{\sin \theta} = \dfrac{2 \sin\theta \cos\theta}{\sin\theta} = 2\cos\theta = \alpha$.
- *Les nombres du milieu.* Pour $1 \leqslant k \leqslant n - 1$, en appliquant $(2)$ avec $A = (k+1)\theta$ et $B = \theta$ :
  $$\frac{1}{a_k} + a_{k+1} = \frac{\sin(k\theta)}{\sin\left((k+1)\theta\right)} + \frac{\sin\left((k+2)\theta\right)}{\sin\left((k+1)\theta\right)} = \frac{2 \sin\left((k+1)\theta\right) \cos\theta}{\sin\left((k+1)\theta\right)} = \alpha .$$
- *Le dernier nombre.* Comme $(n+2)\theta = \pi$ et $\sin(\pi - t) = \sin t$, on a $\sin\left((n+1)\theta\right) = \sin(\pi - \theta) = \sin\theta$ et $\sin(n\theta) = \sin(\pi - 2\theta) = \sin 2\theta$. Donc
  $$\frac{1}{a_n} = \frac{\sin(n\theta)}{\sin\left((n+1)\theta\right)} = \frac{\sin 2\theta}{\sin\theta} = 2\cos\theta = \alpha .$$

Les $n + 1$ nombres de $a$ sont donc tous égaux à $\alpha = 2\cos\theta$.

**Conclusion.** D'après l'étape 1, quand $x_1, \ldots, x_n$ parcourent les réels strictement positifs, la plus grande valeur de $m$ et la plus petite valeur de $M$ existent, et toutes deux valent

$$2\cos\left( \frac{\pi}{n + 2} \right) .$$

Par exemple, pour $n = 1$ on trouve $2\cos\frac{\pi}{3} = 1$ (avec $x_1 = 1$), et pour $n = 2$ on trouve $2\cos\frac{\pi}{4} = \sqrt{2}$ (avec $x_1 = \sqrt{2}$ et $x_2 = \frac{\sqrt{2}}{2}$).

**D'où vient la formule ?** Les égalités $(1)$ disent $a_1 = \alpha$ et $a_{k+1} = \alpha - \frac{1}{a_k}$. En écrivant $a_k = \frac{b_k}{b_{k-1}}$ avec $b_0 = 1$, cette relation devient $b_{k+1} = \alpha\, b_k - b_{k-1}$, et la dernière égalité $\frac{1}{a_n} = \alpha$ devient $b_{n+1} = 0$. Avec $\alpha = 2\cos\theta$, la formule $(2)$ montre que $b_k = \frac{\sin\left((k+1)\theta\right)}{\sin\theta}$ convient, et $b_{n+1} = 0$ demande $\sin\left((n+2)\theta\right) = 0$, d'où le choix $\theta = \frac{\pi}{n+2}$.

## Going further

1. Pour $n = 3$, calculer $a_1$, $a_2$, $a_3$ et la valeur commune $\alpha$. On pourra vérifier que $\alpha = \frac{1 + \sqrt{5}}{2}$, le nombre d'or.
2. Montrer que $a$ est la seule liste $x$ pour laquelle $m(x)$ atteint sa plus grande valeur. (Piste : reprendre l'étape 1 avec $m(x) = \alpha$ et des inégalités larges.)
