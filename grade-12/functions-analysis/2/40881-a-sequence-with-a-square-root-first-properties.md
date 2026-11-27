---
id: "40881"
title: "Une suite avec une racine carrée : premières propriétés"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 35
tags: [suites, recurrence, racine-carree, limite, monotonie, passage-a-la-limite]
adapted_from: null
see_also: ["40882", "40883"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 1 « Étude d'une suite », partie 1 « Généralités », questions 1 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Pour tout réel $\alpha \geqslant 0$, on appelle *suite associée à $\alpha$* la suite $(u_n)$ définie par $u_0 = \alpha$ et

$$u_{n+1} = \frac{1}{n+1} + \sqrt{u_n} \quad \text{pour tout entier } n \geqslant 0.$$

1. Soit $\alpha \geqslant 0$. Démontrer que la suite $(u_n)$ associée à $\alpha$ est bien définie et vérifie $u_n \geqslant 0$ pour tout entier $n \geqslant 0$.
2. Soit $\alpha$ et $\beta$ deux réels tels que $0 \leqslant \alpha \leqslant \beta$. On note $(u_n)$ la suite associée à $\alpha$ et $(v_n)$ la suite associée à $\beta$. Démontrer que $u_n \leqslant v_n$ pour tout entier $n \geqslant 0$.
3. On note $(w_n)$ la suite associée à $0$. Démontrer que $w_n \geqslant 1$ pour tout entier $n \geqslant 1$.
4. Soit $\alpha \geqslant 0$. On suppose que la suite $(u_n)$ associée à $\alpha$ converge vers un réel $\ell$. Déterminer $\ell$.
5. Soit $\alpha$ un réel tel que $\alpha > \frac{3+\sqrt{5}}{2}$. Démontrer que la suite associée à $\alpha$ est strictement décroissante. Que peut-on en déduire sur sa convergence ?

## Hints

1. **Question 1.** Raisonner par récurrence : pour que $u_{n+1}$ existe, il faut que $u_n$ soit positif.
2. **Question 2.** Encore une récurrence. Quelle propriété de la fonction racine carrée permet de passer de $u_n \leqslant v_n$ à $u_{n+1} \leqslant v_{n+1}$ ?
3. **Question 4.** Passer à la limite dans la relation de récurrence donne une équation qui a deux solutions. Il faut en éliminer une.
4. **Question 4.** Pour éliminer la mauvaise valeur, comparer $(u_n)$ à la suite $(w_n)$ de la question 3 grâce à la question 2.
5. **Question 5.** Commencer par comparer $u_1$ et $u_0$. En posant $x = \sqrt{\alpha}$, la condition $u_1 < u_0$ devient une inégalité du second degré en $x$.
6. **Question 5.** Pour l'hérédité, écrire $u_{n+2} - u_{n+1}$ comme la somme de deux différences, l'une qui vient des fractions, l'autre des racines carrées. Quel est le signe de chacune ?

## Solution

**1.** Montrons par récurrence la propriété « $u_n$ existe et $u_n \geqslant 0$ ».

Pour $n = 0$, $u_0 = \alpha \geqslant 0$. Supposons que $u_n$ existe et que $u_n \geqslant 0$. Alors $\sqrt{u_n}$ existe et $\sqrt{u_n} \geqslant 0$, donc $u_{n+1} = \frac{1}{n+1} + \sqrt{u_n}$ existe et vaut au moins $\frac{1}{n+1} > 0$.

Conclusion : la suite est bien définie et $u_n \geqslant 0$ pour tout $n \geqslant 0$.

**2.** Par récurrence sur $n$. Pour $n = 0$, $u_0 = \alpha \leqslant \beta = v_0$. Supposons $u_n \leqslant v_n$. Les deux nombres sont positifs (question 1) et la fonction racine carrée est croissante sur $[0, +\infty[$, donc $\sqrt{u_n} \leqslant \sqrt{v_n}$. En ajoutant $\frac{1}{n+1}$ aux deux membres, on obtient $u_{n+1} \leqslant v_{n+1}$.

Conclusion : $u_n \leqslant v_n$ pour tout $n \geqslant 0$.

**3.** On a $w_1 = \frac{1}{1} + \sqrt{0} = 1$, donc la propriété est vraie pour $n = 1$. Supposons $w_n \geqslant 1$ pour un entier $n \geqslant 1$. Alors $\sqrt{w_n} \geqslant 1$, donc $w_{n+1} = \frac{1}{n+1} + \sqrt{w_n} \geqslant 1 + \frac{1}{n+1} \geqslant 1$.

Conclusion : $w_n \geqslant 1$ pour tout $n \geqslant 1$.

**4.** Quand $n$ tend vers $+\infty$ :

- $u_{n+1}$ tend vers $\ell$ ;
- $\frac{1}{n+1}$ tend vers $0$ ;
- comme $u_n \geqslant 0$, on a $\ell \geqslant 0$, et la fonction racine carrée est continue sur $[0, +\infty[$, donc $\sqrt{u_n}$ tend vers $\sqrt{\ell}$.

En passant à la limite dans la relation de récurrence, on obtient $\ell = \sqrt{\ell}$, c'est-à-dire $\sqrt{\ell}\,(\sqrt{\ell} - 1) = 0$. Donc $\ell = 0$ ou $\ell = 1$.

Il reste à éliminer $\ell = 0$. Comme $0 \leqslant \alpha$, la question 2 appliquée aux suites associées à $0$ et à $\alpha$ donne $w_n \leqslant u_n$, et la question 3 donne $w_n \geqslant 1$ pour $n \geqslant 1$. Donc $u_n \geqslant 1$ pour tout $n \geqslant 1$, et à la limite $\ell \geqslant 1$.

Conclusion : $\ell = 1$.

**5.** Montrons par récurrence la propriété « $u_{n+1} < u_n$ ».

*Initialisation.* On a $u_1 = 1 + \sqrt{\alpha}$. Posons $x = \sqrt{\alpha} > 0$, de sorte que $\alpha = x^2$. Alors

$$u_1 < u_0 \iff 1 + x < x^2 \iff x^2 - x - 1 > 0.$$

Le trinôme $x^2 - x - 1$ a pour racines $\frac{1 - \sqrt{5}}{2} < 0$ et $\frac{1 + \sqrt{5}}{2}$. Pour $x > 0$, il est donc strictement positif exactement quand $x > \frac{1+\sqrt{5}}{2}$, c'est-à-dire quand

$$\alpha = x^2 > \left(\frac{1+\sqrt{5}}{2}\right)^2 = \frac{6 + 2\sqrt{5}}{4} = \frac{3 + \sqrt{5}}{2}.$$

C'est notre hypothèse, donc $u_1 < u_0$.

*Hérédité.* Supposons $u_{n+1} < u_n$. Alors

$$u_{n+2} - u_{n+1} = \left(\frac{1}{n+2} - \frac{1}{n+1}\right) + \left(\sqrt{u_{n+1}} - \sqrt{u_n}\right).$$

La première parenthèse est strictement négative. La seconde aussi, car la fonction racine carrée est strictement croissante et $u_{n+1} < u_n$. Donc $u_{n+2} < u_{n+1}$.

Conclusion : la suite associée à $\alpha$ est strictement décroissante. Elle est de plus minorée par $0$ (question 1). Une suite décroissante et minorée converge, donc elle converge, et d'après la question 4 sa limite est $1$.

**Bilan.** Toutes les suites associées sont positives, rangées dans le même ordre que leurs premiers termes, et valent au moins $1$ à partir du rang $1$. Si l'une d'elles converge, c'est vers $1$, et c'est bien le cas dès que le premier terme dépasse $\frac{3+\sqrt{5}}{2}$.

## Going further

- Dans la suite du sujet, on montrait que **toutes** les suites associées convergent vers $1$, quel que soit $\alpha \geqslant 0$, et même que $u_n$ est très proche de $1 + \frac{2}{n}$ quand $n$ est grand. Pouvez-vous déjà prouver que la suite associée à $0$ converge ? (Indication : la comparer à la suite associée à $4$.)
- Pour le meneur de club : d'après le rapport du jury, la question 4 a arrêté beaucoup de candidats. L'erreur typique est de trouver $\ell = 0$ ou $\ell = 1$ et de s'arrêter là, sans éliminer $0$.
