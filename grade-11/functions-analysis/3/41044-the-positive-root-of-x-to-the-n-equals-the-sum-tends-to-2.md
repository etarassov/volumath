---
id: "41044"
title: "La solution positive de xⁿ = xⁿ⁻¹ + … + x + 1 tend vers 2"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [polynome, equation, somme-geometrique, derivee, variations, valeurs-intermediaires, encadrement, limite, suites]
adapted_from: null
see_also: ["41043", "41045"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série ES"
  reference: "cg-2018-es-sujet.pdf, problème II, questions 4 à 7. Le résultat « fonction strictement monotone qui change de signe » est admis dans l'énoncé, comme le théorème d'encadrement dans le sujet."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-es-sujet.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On étudie l'équation

$$x^n = x^{n-1} + \cdots + x + 1,$$

où l'inconnue $x$ est un nombre réel. On note $P_n$ et $Q_n$ les fonctions polynômes définies, pour
tout réel $x$, par

$$P_n(x) = x^n - x^{n-1} - x^{n-2} - \cdots - x - 1 \qquad \text{et} \qquad Q_n(x) = x^{n+1} - 2x^n + 1.$$

On admet les deux résultats suivants.

- Si une fonction polynôme $g$ est strictement croissante, ou strictement décroissante, sur un
  intervalle $[\alpha, \beta]$, et si $g(\alpha)$ et $g(\beta)$ sont de signes contraires, alors
  l'équation $g(x) = 0$ a une unique solution dans $[\alpha, \beta]$.
- *Théorème d'encadrement.* Si $(u_n)$, $(v_n)$ et $(w_n)$ sont trois suites telles que
  $u_n \leqslant v_n \leqslant w_n$ pour tout $n$, et si $(u_n)$ et $(w_n)$ tendent vers une même
  limite $\ell$, alors $(v_n)$ tend aussi vers $\ell$.

1. a) Donner une expression de $1 + x + \cdots + x^{n-1}$ lorsque $x$ est un réel différent de $1$.

   b) En déduire que, pour tout réel $x$, si $P_n(x) = 0$, alors $Q_n(x) = 0$.

   c) La réciproque est-elle vraie ?
2. a) Calculer la dérivée de $Q_n$ et résoudre sur $\mathbb{R}$ l'équation $Q_n'(x) = 0$.

   b) Donner les variations de $Q_n$ sur $[0, +\infty[$. Préciser les valeurs $Q_n(0)$, $Q_n(1)$
   et $Q_n(2)$.

   c) En déduire que, dans l'intervalle $]1, 2[$, l'équation $Q_n(x) = 0$ a une unique solution.
   On la note $a_n$ ; on ne cherchera pas à la calculer.

   d) Montrer que $a_n$ est l'unique solution positive ou nulle de l'équation $P_n(x) = 0$.
3. Quelle est la limite de la suite $(\frac{2n}{n+1})$ ?
4. Montrer que la suite $(a_n)$ est convergente et donner sa limite.

## Hints

1. **Question 1 b.** Traiter à part le cas $x = 1$. Pour $x \neq 1$, calculer $(x - 1)P_n(x)$.
2. **Question 1 c.** Essayer $x = 1$.
3. **Question 2 b.** Placer $\frac{2n}{n+1}$ par rapport à $1$ et à $2$.
4. **Question 2 c.** Séparer l'intervalle $]1, 2[$ en deux morceaux, de part et d'autre de
   $\frac{2n}{n+1}$.
5. **Question 4.** La question 2 c) donne plus que l'existence de $a_n$ : elle dit aussi dans quel
   intervalle, plus petit que $]1, 2[$, se trouve $a_n$.

## Solution

**1.** a) C'est la somme des termes d'une suite géométrique de raison $x \neq 1$ :

$$1 + x + \cdots + x^{n-1} = \frac{x^n - 1}{x - 1}.$$

b) *Si $x = 1$* : $P_n(1) = 1 - n \neq 0$ (on retire $n$ termes égaux à $1$), car $n \geqslant 2$. L'hypothèse
$P_n(x) = 0$ n'est jamais vraie pour $x = 1$, donc il n'y a rien à montrer. (D'ailleurs
$Q_n(1) = 1 - 2 + 1 = 0$.)

*Si $x \neq 1$* : d'après a), $P_n(x) = x^n - \frac{x^n - 1}{x - 1}$, donc

$$(x - 1)P_n(x) = x^{n+1} - x^n - (x^n - 1) = x^{n+1} - 2x^n + 1 = Q_n(x).$$

Si $P_n(x) = 0$, alors $Q_n(x) = 0$. Dans tous les cas, $P_n(x) = 0$ implique $Q_n(x) = 0$. On a même
montré que $Q_n(x) = (x - 1)P_n(x)$ pour tout réel $x$ (pour $x = 1$, les deux membres sont nuls).

c) Non : $Q_n(1) = 0$ alors que $P_n(1) = 1 - n \neq 0$. Plus précisément, $Q_n(x) = 0$ équivaut à
« $x = 1$ ou $P_n(x) = 0$ ».

**2.** a) $Q_n'(x) = (n + 1)x^n - 2nx^{n-1} = x^{n-1}((n + 1)x - 2n)$. Cette dérivée s'annule
exactement pour $x = 0$ et pour $x = \frac{2n}{n+1}$. Notons $c_n = \frac{2n}{n+1}$.

b) Pour $x > 0$, $x^{n-1} > 0$, donc $Q_n'(x)$ a le signe de $(n + 1)x - 2n$ : négatif si
$x < c_n$, positif si $x > c_n$. Ainsi **$Q_n$ est strictement décroissante sur $[0, c_n]$ et
strictement croissante sur $[c_n, +\infty[$.**

Valeurs : $Q_n(0) = 1$, $Q_n(1) = 1 - 2 + 1 = 0$, $Q_n(2) = 2^{n+1} - 2 \times 2^n + 1 = 1$.

Position de $c_n$ : $c_n - 1 = \frac{n - 1}{n + 1} > 0$ et $2 - c_n = \frac{2}{n + 1} > 0$, donc
$1 < c_n < 2$. Comme $Q_n$ est strictement décroissante sur $[1, c_n]$, on a
$Q_n(c_n) < Q_n(1) = 0$ : le minimum de $Q_n$ sur $[0, +\infty[$ est strictement négatif.

c) Sur $]1, c_n]$, $Q_n$ est strictement décroissante, donc $Q_n(x) < Q_n(1) = 0$ : pas de solution.

Sur $[c_n, 2]$, $Q_n$ est strictement croissante, avec $Q_n(c_n) < 0$ et $Q_n(2) = 1 > 0$. D'après le
résultat admis, il y a une unique solution, et ce n'est ni $c_n$ ni $2$.

**Conclusion :** dans $]1, 2[$, l'équation $Q_n(x) = 0$ a une unique solution $a_n$, et de plus

$$\frac{2n}{n+1} < a_n < 2.$$

d) Cherchons d'abord toutes les solutions positives ou nulles de $Q_n(x) = 0$.

- Sur $[0, 1[$, $Q_n$ est strictement décroissante, donc $Q_n(x) > Q_n(1) = 0$ : pas de solution.
- $x = 1$ est solution.
- Sur $]1, 2[$, la seule solution est $a_n$.
- Sur $[2, +\infty[$, $Q_n$ est croissante, donc $Q_n(x) \geqslant Q_n(2) = 1 > 0$ : pas de solution.

Les solutions positives ou nulles de $Q_n(x) = 0$ sont donc $1$ et $a_n$.

Soit $x \geqslant 0$ une solution de $P_n(x) = 0$. D'après la question 1 b), $Q_n(x) = 0$, donc
$x = 1$ ou $x = a_n$. Mais $P_n(1) \neq 0$, donc $x = a_n$.

Réciproquement, $(a_n - 1)P_n(a_n) = Q_n(a_n) = 0$ et $a_n - 1 \neq 0$, donc $P_n(a_n) = 0$.

**Conclusion :** $a_n$ est l'unique solution positive ou nulle de $P_n(x) = 0$.

**3.** On a $\frac{2n}{n+1} = \frac{2(n + 1) - 2}{n + 1} = 2 - \frac{2}{n+1}$. Quand $n$ tend vers
$+\infty$, $\frac{2}{n+1}$ tend vers $0$, donc $\frac{2n}{n+1}$ tend vers $2$.

**4.** D'après la question 2 c), pour tout entier $n \geqslant 2$,

$$\frac{2n}{n+1} < a_n < 2.$$

La suite de gauche tend vers $2$ (question 3), et la suite de droite est constante, égale à $2$.
D'après le théorème d'encadrement, **la suite $(a_n)$ converge, et sa limite est $2$.**

À la calculatrice : $a_2 \approx \text{1,618}$ (le nombre d'or), $a_3 \approx \text{1,839}$,
$a_4 \approx \text{1,928}$, $a_5 \approx \text{1,966}$, $a_{10} \approx \text{1,9990}$.

**Bilan.** Pour tout entier $n \geqslant 2$, l'équation $x^n = x^{n-1} + \cdots + x + 1$ a une
unique solution positive ou nulle $a_n$. Elle vérifie $\frac{2n}{n+1} < a_n < 2$, et donc la suite
$(a_n)$ tend vers $2$. L'outil clé est l'égalité $(x - 1)P_n(x) = x^{n+1} - 2x^n + 1$, qui remplace
un polynôme à $n + 1$ termes par un polynôme à trois termes.

## Going further

- De $Q_n(a_n) = 0$, déduire que $2 - a_n = \frac{1}{a_n^n}$. En utilisant $a_n > \frac{4}{3}$,
  montrer que $0 < 2 - a_n < (\frac{3}{4})^n$ : la suite $(a_n)$ s'approche de $2$ très vite.
- Montrer que, pour $n$ impair, l'équation n'a aucune solution négative. (Que vaut le signe de
  $x^{n-1}$ quand $n - 1$ est pair ?) Pour $n$ pair, il y en a exactement une, qui tend vers $-1$ :
  c'est l'exercice 41045.
- Les cas $n = 2$, $3$ et $4$, traités directement, sont dans l'exercice 41043.
