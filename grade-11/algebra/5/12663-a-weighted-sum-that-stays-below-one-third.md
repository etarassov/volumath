---
id: "12663"
title: "Une somme pondérée qui reste sous 1/3"
grade: 11
theme: algebra
difficulty: 5
duration_min: 45
tags: [inegalite, somme, telescopage, identites-remarquables, cubes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 18 mai 2022"
  reference: "2022-07_Enonce-Web-Test-5.pdf, exercice 7 (senior) ; corrigé 2022-06_Corrige-Web-Test-5.pdf. Dans la solution alternative n° 1 du corrigé, la dernière ligne « = 1 − (1/3)Σa³ < 1 » doit se lire « = 1/3 − (1/3)Σa³ < 1/3 ». Dans la solution alternative n° 2, la somme qui définit S(x₁, …, xₖ) doit aller jusqu'à k, et non jusqu'à n."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-5.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $2$, et soient $a_1, a_2, \ldots, a_n$ des réels strictement positifs tels que $a_1 + a_2 + \cdots + a_n = 1$.

Démontrer que
$$\sum_{k=1}^{n} \frac{a_k}{1 - a_k} (a_1 + a_2 + \cdots + a_{k-1})^2 < \frac{1}{3}.$$

Pour $k = 1$, la somme $a_1 + \cdots + a_{k-1}$ ne contient aucun terme et vaut $0$. La somme à étudier s'écrit donc aussi
$$\frac{a_2}{1 - a_2}\, a_1^2 + \frac{a_3}{1 - a_3} (a_1 + a_2)^2 + \cdots + \frac{a_n}{1 - a_n} (a_1 + a_2 + \cdots + a_{n-1})^2.$$

## Hints

1. Regarde d'abord le cas $n = 2$. Comme $a_1 + a_2 = 1$, le dénominateur $1 - a_2$ se simplifie. Que devient la somme ?
2. On note $s_k = a_1 + a_2 + \cdots + a_k$, avec $s_0 = 0$. Le terme numéro $k$ s'écrit alors $\frac{a_k}{1 - a_k} s_{k-1}^2$. Le dénominateur gêne : compare $(1 - a_k)\, s_k$ et $s_{k-1}$.
3. Tu dois obtenir que le terme numéro $k$ est au plus $a_k\, s_{k-1}\, s_k$. Développe maintenant $s_k^3 = (s_{k-1} + a_k)^3$.
4. La somme des $s_k^3 - s_{k-1}^3$, pour $k$ allant de $1$ à $n$, se calcule très facilement : écris ses termes les uns après les autres.

## Solution

**Notations.** On pose $s_0 = 0$ et, pour $1 \leqslant k \leqslant n$,
$$s_k = a_1 + a_2 + \cdots + a_k.$$
Ainsi $s_k = s_{k-1} + a_k$, et $s_n = 1$. Comme les $a_k$ sont positifs, on a $0 \leqslant s_{k-1} < s_k \leqslant 1$. On note $T$ la somme à étudier :
$$T = \sum_{k=1}^{n} \frac{a_k}{1 - a_k}\, s_{k-1}^2.$$
Comme $n \geqslant 2$ et que tous les $a_k$ sont strictement positifs, chaque $a_k$ est strictement plus petit que la somme totale $1$. Donc $1 - a_k > 0$ : toutes les fractions ont un sens.

**Étape 1 : se débarrasser du dénominateur.** On calcule
$$(1 - a_k)\, s_k - s_{k-1} = s_k - s_{k-1} - a_k\, s_k = a_k - a_k\, s_k = a_k (1 - s_k).$$
Ce nombre est positif ou nul, car $a_k > 0$ et $s_k \leqslant 1$. Donc $(1 - a_k)\, s_k \geqslant s_{k-1}$, et en divisant par $1 - a_k > 0$,
$$\frac{s_{k-1}}{1 - a_k} \leqslant s_k.$$
On multiplie les deux membres par $a_k\, s_{k-1}$, qui est positif ou nul. On obtient, pour tout $k$,
$$\frac{a_k}{1 - a_k}\, s_{k-1}^2 \leqslant a_k\, s_{k-1}\, s_k. \qquad (1)$$

**Étape 2 : une identité avec des cubes.** On développe le cube d'une somme :
$$s_k^3 = (s_{k-1} + a_k)^3 = s_{k-1}^3 + 3 s_{k-1}^2\, a_k + 3 s_{k-1}\, a_k^2 + a_k^3.$$
Donc
$$s_k^3 - s_{k-1}^3 - a_k^3 = 3 a_k\, s_{k-1} (s_{k-1} + a_k) = 3 a_k\, s_{k-1}\, s_k,$$
c'est-à-dire
$$a_k\, s_{k-1}\, s_k = \frac{s_k^3 - s_{k-1}^3}{3} - \frac{a_k^3}{3}. \qquad (2)$$

**Étape 3 : on additionne.** On additionne les inégalités (1) pour $k$ allant de $1$ à $n$, puis on remplace chaque terme de droite grâce à (2) :
$$T \leqslant \sum_{k=1}^{n} a_k\, s_{k-1}\, s_k = \frac{1}{3} \sum_{k=1}^{n} \left(s_k^3 - s_{k-1}^3\right) - \frac{1}{3} \sum_{k=1}^{n} a_k^3.$$
Dans la première somme, presque tous les termes se compensent :
$$\left(s_1^3 - s_0^3\right) + \left(s_2^3 - s_1^3\right) + \cdots + \left(s_n^3 - s_{n-1}^3\right) = s_n^3 - s_0^3 = 1 - 0 = 1.$$
On obtient donc
$$T \leqslant \frac{1}{3} - \frac{a_1^3 + a_2^3 + \cdots + a_n^3}{3}.$$
Comme les $a_k$ sont strictement positifs, la somme $a_1^3 + \cdots + a_n^3$ est strictement positive.

**Conclusion.** **On a bien $T < \frac{1}{3}$.**

## Going further

- *Le nombre $\frac{1}{3}$ ne peut pas être remplacé par un nombre plus petit.* Avec $a_1 = a_2 = \cdots = a_n = \frac{1}{n}$, on a $s_{k-1} = \frac{k - 1}{n}$, et en utilisant $0^2 + 1^2 + \cdots + (n - 1)^2 = \frac{(n - 1)n(2n - 1)}{6}$, on trouve
$$T = \frac{1}{n - 1} \times \frac{1}{n^2} \times \frac{(n - 1)n(2n - 1)}{6} = \frac{2n - 1}{6n}.$$
Ce nombre vaut $\frac{1}{4}$ pour $n = 2$, et il s'approche de $\frac{1}{3}$ autant qu'on veut quand $n$ devient grand.
- *D'où vient le $\frac{1}{3}$ ?* Le terme $a_k\, s_{k-1}^2$ est l'aire d'un rectangle de largeur $a_k$ et de hauteur $s_{k-1}^2$, posé entre les abscisses $s_{k-1}$ et $s_k$. Ces rectangles sont tous sous la courbe $y = x^2$, et ils ne se chevauchent pas. Leur aire totale est donc plus petite que l'aire de la région sous la courbe entre $0$ et $1$, qui vaut $\frac{1}{3}$ (on le verra en Terminale avec les intégrales). Le dénominateur $1 - a_k$ agrandit un peu chaque terme, et l'exercice montre que cela ne suffit jamais à dépasser $\frac{1}{3}$.
- Le corrigé officiel démontre directement que chaque terme est strictement plus petit que $\frac{s_k^3 - s_{k-1}^3}{3}$, en développant tout. Une autre solution du corrigé montre que, si l'on coupe un des $a_i$ en deux moitiés égales, la somme augmente. En coupant encore et encore, tous les termes deviennent très petits, et la somme s'approche de l'aire $\frac{1}{3}$ en restant toujours au-dessus de la somme de départ.
- Le commentaire des correcteurs note que cet exercice, d'une difficulté redoutable, n'a été résolu que par un seul élève. Plusieurs élèves ont regardé le cas $n = 2$, qui fait disparaître le dénominateur. L'idée décisive, simple à écrire mais très difficile à trouver, était de se débarrasser de ce dénominateur pour tout réécrire avec les nombres $s_k$, comme à l'étape 1.
