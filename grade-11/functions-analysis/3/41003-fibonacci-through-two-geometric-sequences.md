---
id: "41003"
title: "La suite de Fibonacci par deux suites géométriques"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [fibonacci, nombre-d-or, suite-geometrique, second-degre, suite-recurrente, limite]
adapted_from: null
see_also: ["41004", "7079"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série ES"
  reference: "cg-2017-es-sujet.pdf, problème II « Étude d'une suite », partie A (questions 1 et 2), partie C (questions 1 à 3) et partie D (questions 1 à 3)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-es-sujet.pdf"
---

## Statement

On étudie la suite $(u_n)$ définie par
$$u_0 = 0, \qquad u_1 = 1 \qquad \text{et} \qquad u_{n+2} = u_{n+1} + u_n
\quad \text{pour tout entier } n \geq 0 .$$
Ses premiers termes sont $0, 1, 1, 2, 3, 5, 8, 13, 21, \ldots$ (c'est la suite de Fibonacci).

1. Résoudre l'équation $x^2 - x - 1 = 0$.

2. On note $\alpha$ la solution strictement positive de cette équation, et $\beta$ l'autre
   solution. Montrer que $\beta = 1 - \alpha = -\frac{1}{\alpha}$.

Pour tout entier $n \geq 0$, on pose
$$v_n = u_{n+1} - \alpha u_n \qquad \text{et} \qquad w_n = u_{n+1} - \beta u_n .$$

3. Montrer que $v_{n+1} = \beta v_n$ pour tout entier $n \geq 0$.

4. En déduire une expression de $v_n$ en fonction de $n$.

5. Donner de même une expression de $w_n$ en fonction de $n$.

6. En déduire une expression de $u_n$ en fonction de $n$, $\alpha$ et $\beta$.

7. Quelle est la limite de la suite $(u_n)$ ?

8. Quelle est la limite de la suite $\left(\frac{u_{n+1}}{u_n}\right)_{n \geq 1}$ ?

## Hints

1. **Question 2.** Que valent la somme et le produit des deux solutions ? On peut aussi calculer
   directement avec les valeurs trouvées.
2. **Question 3.** Remplacer $u_{n+2}$ par $u_{n+1} + u_n$, puis utiliser $1 - \alpha = \beta$
   et $\alpha\beta = -1$.
3. **Question 5.** Le calcul de la question 3 marche encore si on échange les rôles de $\alpha$ et
   de $\beta$.
4. **Question 6.** Calculer $w_n - v_n$.
5. **Question 7.** À partir du rang $2$, comparer $u_{n+1}$ et $u_n + 1$.
6. **Question 8.** Diviser l'égalité $u_{n+1} - \alpha u_n = v_n$ par $u_n$.
7. **Question 8.** Comme $|\beta| < 1$, on a $|v_n| \leq 1$. Combiner avec la question 7.

## Solution

**1.** Le discriminant est $\Delta = (-1)^2 - 4 \times 1 \times (-1) = 5 > 0$. L'équation a deux
solutions :
$$\frac{1 + \sqrt{5}}{2} \qquad \text{et} \qquad \frac{1 - \sqrt{5}}{2} .$$

**2.** On a $\alpha = \frac{1 + \sqrt{5}}{2}$ et $\beta = \frac{1 - \sqrt{5}}{2}$. Alors
$$1 - \alpha = \frac{2 - 1 - \sqrt{5}}{2} = \frac{1 - \sqrt{5}}{2} = \beta ,$$
et
$$\alpha\beta = \frac{(1 + \sqrt{5})(1 - \sqrt{5})}{4} = \frac{1 - 5}{4} = -1 ,$$
donc $\beta = -\frac{1}{\alpha}$.

On retiendra $\alpha + \beta = 1$, $\alpha\beta = -1$ et $\alpha - \beta = \sqrt{5}$.

**3.** Pour tout $n \geq 0$, en utilisant $u_{n+2} = u_{n+1} + u_n$ puis $1 - \alpha = \beta$ :
$$v_{n+1} = u_{n+2} - \alpha u_{n+1} = (1 - \alpha)u_{n+1} + u_n = \beta u_{n+1} + u_n .$$
D'autre part, comme $\alpha\beta = -1$,
$$\beta v_n = \beta u_{n+1} - \alpha\beta u_n = \beta u_{n+1} + u_n .$$
Donc $v_{n+1} = \beta v_n$.

**4.** La suite $(v_n)$ est géométrique de raison $\beta$, de premier terme
$v_0 = u_1 - \alpha u_0 = 1$. Donc
$$v_n = \beta^n \qquad \text{pour tout } n \geq 0 .$$

**5.** Le calcul de la question 3 n'a utilisé que $\alpha + \beta = 1$ et $\alpha\beta = -1$, qui
ne changent pas si l'on échange $\alpha$ et $\beta$. Il donne donc $w_{n+1} = \alpha w_n$ : la
suite $(w_n)$ est géométrique de raison $\alpha$, de premier terme $w_0 = u_1 - \beta u_0 = 1$.
Donc
$$w_n = \alpha^n \qquad \text{pour tout } n \geq 0 .$$

**6.** On a $w_n - v_n = (\alpha - \beta)u_n = \sqrt{5}\,u_n$, et $w_n - v_n = \alpha^n - \beta^n$.
Donc
$$u_n = \frac{\alpha^n - \beta^n}{\alpha - \beta} = \frac{1}{\sqrt{5}}
\left( \left(\frac{1 + \sqrt{5}}{2}\right)^n - \left(\frac{1 - \sqrt{5}}{2}\right)^n \right) .$$
On vérifie : pour $n = 0$ on trouve $0$, pour $n = 1$ on trouve $\frac{\alpha - \beta}{\sqrt{5}} = 1$.

**7.** Les termes $u_1 = 1$ et $u_2 = 1$ sont des entiers strictement positifs, et chaque terme
suivant est la somme des deux précédents : tous les termes $u_n$ avec $n \geq 1$ sont des entiers
supérieurs ou égaux à $1$. Pour $n \geq 2$, on a donc
$$u_{n+1} = u_n + u_{n-1} \geq u_n + 1 .$$
En partant de $u_2 = 1$ et en gagnant au moins $1$ à chaque rang, on obtient
$u_n \geq n - 1$ pour tout $n \geq 2$ (et aussi pour $n = 1$). Comme $n - 1$ devient aussi grand
qu'on veut, **la suite $(u_n)$ tend vers $+\infty$**.

On peut aussi le voir sur la formule : $\alpha > 1$, donc $\alpha^n$ tend vers $+\infty$, alors que
$|\beta| < 1$, donc $\beta^n$ reste entre $-1$ et $1$.

**8.** Pour $n \geq 1$, on a $u_n \geq 1 > 0$, et en divisant l'égalité $u_{n+1} - \alpha u_n = v_n$
par $u_n$ :
$$\frac{u_{n+1}}{u_n} - \alpha = \frac{v_n}{u_n} = \frac{\beta^n}{u_n} .$$
Or $|\beta| = \frac{\sqrt{5} - 1}{2} < 1$, donc $|\beta^n| \leq 1$, et d'après la question 7,
$u_n \geq n - 1$. Pour $n \geq 2$ :
$$\left| \frac{u_{n+1}}{u_n} - \alpha \right| \leq \frac{1}{u_n} \leq \frac{1}{n - 1} .$$
L'écart entre $\frac{u_{n+1}}{u_n}$ et $\alpha$ devient donc aussi petit qu'on veut :
**la suite $\left(\frac{u_{n+1}}{u_n}\right)$ tend vers $\alpha = \frac{1 + \sqrt{5}}{2}$**, le nombre d'or.

Par exemple $\frac{u_6}{u_5} = \frac{8}{5} = \text{1,6}$ et
$\frac{u_{11}}{u_{10}} = \frac{89}{55} \approx \text{1,61818}$, alors que $\alpha \approx \text{1,61803}$.

**Bilan.** Les deux suites $u_{n+1} - \alpha u_n$ et $u_{n+1} - \beta u_n$ sont géométriques, de
raisons $\beta$ et $\alpha$. On en tire la formule
$u_n = \frac{\alpha^n - \beta^n}{\sqrt{5}}$ pour les nombres de Fibonacci. Ils tendent vers
$+\infty$, et le quotient de deux nombres de Fibonacci consécutifs tend vers le nombre d'or
$\alpha$.

## Going further

- Comme $\left|\frac{\beta^n}{\sqrt{5}}\right| < \frac{1}{2}$, la formule de la question 6 montre
  que $u_n$ est l'entier le plus proche de $\frac{\alpha^n}{\sqrt{5}}$. Vérifier sur $u_{10} = 55$ à
  la calculatrice.
- Le quotient $\frac{u_{n+1}}{u_n}$ est-il tantôt au-dessus, tantôt au-dessous de $\alpha$ ?
  (Regarder le signe de $\beta^n$.)
- Le sujet proposait une autre route vers la même formule, avec une matrice $2 \times 2$ : c'est
  l'exercice 41004. L'exercice 7079 démontre la relation $u_{n+1} = \alpha u_n + \beta^n$ par
  récurrence.
