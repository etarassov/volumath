---
id: "40481"
title: "Suite presque géométrique de raison q < 1"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [suites, suite-geometrique, somme-geometrique, telescopage, encadrement, valeur-absolue]
adapted_from: null
see_also: ["40482"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème I « Stabilité géométrique », questions 1° et 2° (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Soient $\varepsilon$ et $q$ deux réels strictement positifs. On considère une suite $(x_n)$ de réels
telle que $x_0 > 0$ et, pour tout entier naturel $n$,

$$0 \leq x_{n+1} - q\,x_n \leq \varepsilon .$$

Une telle suite n'est pas géométrique en général, mais elle l'est « presque » : à chaque étape, on
multiplie par $q$ puis on ajoute un petit nombre compris entre $0$ et $\varepsilon$.

1. Pour tout entier naturel $n$, on pose $b_n = x_{n+1} - q\,x_n$. Montrer que, pour tout entier
   $n \geq 1$,
   $$x_n = q^n x_0 + q^{n-1} b_0 + q^{n-2} b_1 + \cdots + q\,b_{n-2} + b_{n-1} .$$

Dans la suite, on suppose que $0 < q < 1$.

2. Montrer qu'il existe une suite géométrique $(y_n)$ telle que, pour tout entier $n \geq 0$,
   $$|y_n - x_n| \leq \frac{\varepsilon}{1 - q} .$$
3. Montrer qu'il existe en fait une infinité de telles suites géométriques $(y_n)$.

## Hints

1. **Question 1.** Écrire $x_1$, puis $x_2$, puis $x_3$ en fonction de $x_0$ et des $b_k$, en
   utilisant $x_{k+1} = q\,x_k + b_k$. Voyez-vous la forme générale ?
2. **Question 1.** Pour une preuve propre, multiplier l'égalité $x_{k+1} - q\,x_k = b_k$ par
   $q^{n-1-k}$, puis additionner ces égalités pour $k = 0, 1, \ldots, n-1$ : presque tout se
   simplifie.
3. **Question 2.** Quelle suite géométrique ressemble le plus à $(x_n)$ ? Essayer la plus
   naturelle, celle qui a le même premier terme et la même raison $q$.
4. **Question 2.** Chaque $b_k$ est entre $0$ et $\varepsilon$. Majorer alors
   $q^{n-1} b_0 + \cdots + b_{n-1}$ par $\varepsilon$ fois une somme de termes d'une suite
   géométrique, que l'on sait calculer.
5. **Question 3.** Garder la raison $q$, mais changer le premier terme : essayer $y_n = c\,q^n$
   avec $c$ proche de $x_0$. Pour quelles valeurs de $c$ le calcul de la question 2 marche-t-il
   encore ?

## Solution

**1.** Pour tout entier $k$, on a $x_{k+1} = q\,x_k + b_k$. Fixons $n \geq 1$ et, pour
$k = 0, 1, \ldots, n-1$, multiplions l'égalité $x_{k+1} - q\,x_k = b_k$ par $q^{n-1-k}$ :

$$q^{n-1-k}\,x_{k+1} - q^{n-k}\,x_k = q^{n-1-k}\,b_k .$$

Additionnons ces $n$ égalités. À gauche, le terme $q^{n-1-k}x_{k+1}$ de la ligne $k$ s'annule
avec le terme $-q^{n-(k+1)}x_{k+1}$ de la ligne $k+1$. Il ne reste que le premier terme de la
dernière ligne, $x_n$, et le second terme de la première ligne, $-q^n x_0$. Donc

$$x_n - q^n x_0 = q^{n-1} b_0 + q^{n-2} b_1 + \cdots + q\,b_{n-2} + b_{n-1},$$

ce qui est l'égalité demandée. On peut la vérifier sur les premiers termes :
$x_1 = q\,x_0 + b_0$ et $x_2 = q\,x_1 + b_1 = q^2 x_0 + q\,b_0 + b_1$.

**2.** Notons $S_n = q^{n-1} b_0 + q^{n-2} b_1 + \cdots + b_{n-1}$ pour $n \geq 1$, et
$S_0 = 0$. La question 1 dit que $x_n = q^n x_0 + S_n$ pour tout $n \geq 0$.

Comme $0 \leq b_k \leq \varepsilon$ et $q > 0$, chaque terme de $S_n$ est compris entre $0$ et
$\varepsilon$ fois une puissance de $q$, donc

$$0 \leq S_n \leq \varepsilon\,(1 + q + q^2 + \cdots + q^{n-1}) = \varepsilon\,\frac{1 - q^n}{1 - q} .$$

(C'est la somme des $n$ premiers termes d'une suite géométrique de raison $q \neq 1$.) Comme
$q^n > 0$, on obtient

$$0 \leq S_n \leq \frac{\varepsilon}{1 - q}\,(1 - q^n) \leq \frac{\varepsilon}{1 - q} .$$

Prenons la suite géométrique de premier terme $x_0$ et de raison $q$, soit $y_n = x_0\,q^n$. Alors
$x_n - y_n = S_n$, donc $|y_n - x_n| = S_n \leq \frac{\varepsilon}{1 - q}$ pour tout $n$.

**Conclusion :** la suite géométrique $y_n = x_0\,q^n$ convient.

**3.** Notons $B = \frac{\varepsilon}{1 - q}$. Soit $c$ un réel tel que $|c - x_0| \leq B$, et
posons $y_n = c\,q^n$, suite géométrique de raison $q$. Écrivons $c = x_0 + t$ avec
$-B \leq t \leq B$. Alors

$$x_n - y_n = q^n x_0 + S_n - (x_0 + t)\,q^n = S_n - t\,q^n .$$

*Majoration.* D'après la question 2, $S_n \leq B\,(1 - q^n)$, et $-t \leq B$, donc
$$x_n - y_n \leq B\,(1 - q^n) + B\,q^n = B .$$

*Minoration.* $S_n \geq 0$ et $t \leq B$, donc $x_n - y_n \geq -t\,q^n \geq -B\,q^n \geq -B$,
puisque $0 < q^n \leq 1$.

Ainsi $|y_n - x_n| \leq B$ pour tout $n$. Chaque valeur de $c$ dans l'intervalle
$[x_0 - B,\ x_0 + B]$ donne une suite qui convient, et deux valeurs différentes de $c$ donnent
deux suites différentes (leurs premiers termes diffèrent). Cet intervalle n'est pas réduit à un
point, puisque $B > 0$.

**Conclusion :** il y a une infinité de suites géométriques qui conviennent, par exemple toutes
les suites $y_n = c\,q^n$ avec $x_0 - \frac{\varepsilon}{1-q} \leq c \leq x_0 + \frac{\varepsilon}{1-q}$.

**Bilan.** Une suite qui vérifie $0 \leq x_{n+1} - q\,x_n \leq \varepsilon$ s'écrit
$x_n = q^n x_0 + S_n$ avec $0 \leq S_n \leq \frac{\varepsilon}{1-q}$ quand $0 < q < 1$. Elle reste
donc à distance au plus $\frac{\varepsilon}{1-q}$ de la suite géométrique $x_0\,q^n$, et aussi de
toutes les suites $c\,q^n$ dont le premier terme $c$ est à distance au plus
$\frac{\varepsilon}{1-q}$ de $x_0$ : il y en a une infinité.

## Going further

- Pourquoi y a-t-il autant de choix ? Quand $0 < q < 1$, toutes les suites $c\,q^n$ tendent vers
  $0$, et deviennent presque égales entre elles : changer le premier terme ne change presque rien
  à long terme.
- Dans la suite du sujet, on étudiait le cas $q > 1$ : il n'y a alors plus qu'**une seule** suite
  géométrique à distance au plus $\frac{\varepsilon}{q-1}$ de $(x_n)$. Voir l'exercice 40482.
- Ce genre de question, « une suite presque géométrique est-elle proche d'une vraie suite
  géométrique ? », s'appelle un problème de *stabilité*.
