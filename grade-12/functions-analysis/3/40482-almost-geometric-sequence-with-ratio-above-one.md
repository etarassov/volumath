---
id: "40482"
title: "Raison q > 1 : une seule suite géométrique reste proche"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 50
tags: [suites, suite-geometrique, somme-geometrique, suite-croissante, encadrement, passage-a-la-limite, existence-et-unicite]
adapted_from: null
see_also: ["40481"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème I « Stabilité géométrique », question 3° (a, b et c), avec le résultat de la question 1° rappelé en préambule"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Soient $\varepsilon$ et $q$ deux réels strictement positifs, avec cette fois $q > 1$. On
considère une suite $(x_n)$ de réels telle que $x_0 > 0$ et, pour tout entier naturel $n$,

$$0 \leq x_{n+1} - q\,x_n \leq \varepsilon .$$

On pose $b_n = x_{n+1} - q\,x_n$ pour tout entier naturel $n$, de sorte que
$0 \leq b_n \leq \varepsilon$. On admet que, pour tout entier $n \geq 1$,

$$x_n = q^n x_0 + q^{n-1} b_0 + q^{n-2} b_1 + \cdots + q\,b_{n-2} + b_{n-1} .$$

Pour tout entier $n \geq 1$, on pose

$$u_n = \frac{b_0}{q} + \frac{b_1}{q^2} + \cdots + \frac{b_{n-1}}{q^n} .$$

1. Montrer que la suite $(u_n)$ converge. On note $s$ sa limite.
2. Montrer que, pour tout entier $n \geq 1$,
   $$0 \leq s - u_n \leq \frac{\varepsilon}{q^n\,(q - 1)} .$$
3. Montrer qu'il existe une **unique** suite géométrique $(y_n)$ telle que, pour tout entier
   naturel $n$,
   $$|y_n - x_n| \leq \frac{\varepsilon}{q - 1} .$$

## Hints

1. **Question 1.** Quel est le signe de $u_{n+1} - u_n$ ? Majorer ensuite $u_n$ en remplaçant
   chaque $b_k$ par $\varepsilon$ : on reconnaît une somme géométrique de raison $\frac{1}{q}$.
2. **Question 2.** Pour $m > n$, écrire $u_m - u_n$ comme une somme, l'encadrer comme à la
   question 1, puis faire tendre $m$ vers $+\infty$.
3. **Question 3.** Comparer $x_n$ et $q^n u_n$ : l'égalité admise s'écrit très simplement avec
   $u_n$. Quelle suite géométrique de raison $q$ en découle naturellement ?
4. **Question 3.** Pour l'unicité, si $(z_n)$ est une autre suite géométrique qui convient,
   majorer $|z_n - y_n|$, puis diviser par $q^n$. Que dire de la limite de $\frac{z_n}{q^n}$ ?
5. **Question 3.** Si $z_n = z_0\,r^n$ et $\rho = \frac{r}{q}$, et si $\rho^n$ a une limite non
   nulle $L$, comparer les limites de $\rho^{n+1}$ et de $\rho \times \rho^n$.

## Solution

**1.** *La suite est croissante.* Pour $n \geq 1$, $u_{n+1} - u_n = \frac{b_n}{q^{n+1}} \geq 0$.

*La suite est majorée.* Comme $b_k \leq \varepsilon$,

$$u_n \leq \varepsilon\left(\frac{1}{q} + \frac{1}{q^2} + \cdots + \frac{1}{q^n}\right)
= \frac{\varepsilon}{q} \times \frac{1 - \left(\frac{1}{q}\right)^n}{1 - \frac{1}{q}}
= \varepsilon\,\frac{1 - q^{-n}}{q - 1} \leq \frac{\varepsilon}{q - 1} .$$

(Somme de $n$ termes d'une suite géométrique de raison $\frac{1}{q} \neq 1$.)

**Conclusion :** la suite $(u_n)$ est croissante et majorée, donc elle converge. Sa limite $s$
vérifie $0 \leq s \leq \frac{\varepsilon}{q - 1}$, en passant à la limite dans
$0 \leq u_n \leq \frac{\varepsilon}{q-1}$.

**2.** Soient $n \geq 1$ et $m > n$. Alors

$$u_m - u_n = \frac{b_n}{q^{n+1}} + \frac{b_{n+1}}{q^{n+2}} + \cdots + \frac{b_{m-1}}{q^m} .$$

Chaque terme est positif ou nul, donc $u_m - u_n \geq 0$. En remplaçant chaque $b_k$ par
$\varepsilon$, on obtient

$$u_m - u_n \leq \frac{\varepsilon}{q^{n+1}}\left(1 + \frac{1}{q} + \cdots + \frac{1}{q^{m-n-1}}\right)
\leq \frac{\varepsilon}{q^{n+1}} \times \frac{1}{1 - \frac{1}{q}} = \frac{\varepsilon}{q^n\,(q - 1)} ,$$

car une somme de termes d'une suite géométrique de raison $\frac{1}{q}$, de premier terme $1$, est
inférieure à $\frac{1}{1 - 1/q}$. L'entier $n$ étant fixé, on fait tendre $m$ vers $+\infty$ :
$u_m$ tend vers $s$, et les inégalités larges passent à la limite.

**Conclusion :** $0 \leq s - u_n \leq \frac{\varepsilon}{q^n\,(q - 1)}$ pour tout $n \geq 1$.

**3.** *Une écriture de $x_n$.* En mettant $q^n$ en facteur dans l'égalité admise, on obtient,
pour $n \geq 1$,

$$x_n = q^n\left(x_0 + \frac{b_0}{q} + \frac{b_1}{q^2} + \cdots + \frac{b_{n-1}}{q^n}\right) = q^n\,(x_0 + u_n) .$$

*Existence.* Posons $K = x_0 + s$ et $y_n = K\,q^n$, suite géométrique de raison $q$. Pour
$n \geq 1$,

$$y_n - x_n = q^n\,(s - u_n), \qquad \text{donc} \qquad 0 \leq y_n - x_n \leq q^n \times \frac{\varepsilon}{q^n\,(q-1)} = \frac{\varepsilon}{q-1}$$

d'après la question 2. Pour $n = 0$, $y_0 - x_0 = s$, qui est entre $0$ et
$\frac{\varepsilon}{q-1}$ d'après la question 1. La suite $(y_n)$ convient.

*Unicité.* Soit $(z_n)$ une suite géométrique qui convient aussi : $z_n = z_0\,r^n$ pour un
certain réel $r$. Pour tout $n$, l'inégalité triangulaire donne

$$|z_n - y_n| \leq |z_n - x_n| + |x_n - y_n| \leq \frac{2\varepsilon}{q - 1} .$$

Divisons par $q^n > 0$ et posons $\rho = \frac{r}{q}$ :

$$\left|z_0\,\rho^n - K\right| \leq \frac{2\varepsilon}{(q - 1)\,q^n} .$$

Comme $q > 1$, le membre de droite tend vers $0$, donc $z_0\,\rho^n$ tend vers $K$. Or
$K = x_0 + s > 0$, car $x_0 > 0$ et $s \geq 0$.

- Si $z_0 = 0$, la suite $z_0\,\rho^n$ est nulle et ne peut pas tendre vers $K \neq 0$. Donc
  $z_0 \neq 0$.
- Alors $\rho^n$ tend vers $L = \frac{K}{z_0}$, qui n'est pas nul. La suite $\rho^{n+1}$ tend
  aussi vers $L$ (ce sont les mêmes termes, décalés d'un rang), et elle est égale à
  $\rho \times \rho^n$, qui tend vers $\rho L$. Par unicité de la limite, $\rho L = L$, et comme
  $L \neq 0$, $\rho = 1$.

Donc $r = q$, puis $\rho^n = 1$ et $z_0 = K$. Ainsi $z_n = K\,q^n = y_n$ pour tout $n$.

**Conclusion :** la suite géométrique $y_n = (x_0 + s)\,q^n$ est l'unique suite géométrique
telle que $|y_n - x_n| \leq \frac{\varepsilon}{q - 1}$ pour tout $n$.

**Bilan.** Quand $q > 1$, une suite qui vérifie $0 \leq x_{n+1} - q\,x_n \leq \varepsilon$
s'écrit $x_n = q^n (x_0 + u_n)$, où $u_n$ croît vers une limite $s$. La suite géométrique
$(x_0 + s)\,q^n$ reste à distance au plus $\frac{\varepsilon}{q-1}$ de $(x_n)$, et c'est la seule
suite géométrique qui y parvient. Le même raisonnement montre un peu plus : une suite géométrique qui
reste à distance bornée de $(x_n)$, quelle que soit la borne, est forcément celle-là.

## Going further

- Comparer avec le cas $0 < q < 1$ (exercice 40481) : là, il y avait une infinité de suites
  géométriques qui convenaient. Pourquoi la situation change-t-elle autant ? Quand $q > 1$, deux
  suites $c\,q^n$ et $c'\,q^n$ avec $c \neq c'$ s'écartent l'une de l'autre sans limite.
- Et si $q = 1$ ? Prenons $b_n = \varepsilon$ pour tout $n$, donc $x_n = x_0 + n\,\varepsilon$.
  Montrer qu'aucune suite géométrique ne reste à distance bornée de cette suite $(x_n)$.
