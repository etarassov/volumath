---
id: "41043"
title: "Les équations x² = x + 1, x³ = x² + x + 1 et x⁴ = x³ + x² + x + 1"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [polynome, equation, second-degre, derivee, variations, valeurs-intermediaires, dichotomie, algorithme, nombre-d-or]
adapted_from: null
see_also: ["41044", "41045"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série ES"
  reference: "cg-2018-es-sujet.pdf, problème II, questions 1 à 3. Le résultat « fonction strictement monotone qui change de signe » est admis dans l'énoncé ; la question 3 demande ici « exactement deux » solutions."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-es-sujet.pdf"
---

## Statement

On étudie, pour quelques petites valeurs de l'entier $n$, l'équation

$$x^n = x^{n-1} + \cdots + x + 1,$$

où l'inconnue $x$ est un nombre réel.

On admet le résultat suivant : si une fonction polynôme $g$ est strictement croissante, ou
strictement décroissante, sur un intervalle $[\alpha, \beta]$, et si $g(\alpha)$ et $g(\beta)$
sont de signes contraires, alors l'équation $g(x) = 0$ a une unique solution dans $[\alpha, \beta]$.

1. Soit $P_2(x) = x^2 - x - 1$. Résoudre l'équation $P_2(x) = 0$. Montrer que l'une des
   solutions est strictement inférieure à $0$ et que l'autre est strictement supérieure à $1$.
2. Soit $P_3(x) = x^3 - x^2 - x - 1$.

   a) En étudiant les variations de $P_3$, montrer que l'équation $P_3(x) = 0$ a une unique
   solution réelle, que l'on notera $a_3$ et que l'on ne cherchera pas à calculer. Montrer que
   $a_3 > 1$.

   b) Écrire un algorithme, en langage naturel ou en Python, qui donne une valeur approchée de
   $a_3$ à $10^{-3}$ près. Le faire fonctionner à la calculatrice ou à l'ordinateur.
3. Soit $P_4(x) = x^4 - x^3 - x^2 - x - 1$. Montrer que l'équation $P_4(x) = 0$ a exactement deux
   solutions réelles $a_4$ et $b_2$, telles que $b_2 < 0 < 1 < a_4$. On ne cherchera à calculer ni
   $a_4$ ni $b_2$.

## Hints

1. **Question 1.** Comparer $\sqrt{5}$ et $1$.
2. **Question 2 a.** Le nombre $1$ est une racine de $P_3'(x) = 3x^2 - 2x - 1$. Factoriser, puis
   dresser le tableau de variations de $P_3$.
3. **Question 2 a.** Quel est le signe du maximum local de $P_3$ ? En déduire que $P_3(x) < 0$
   pour tout $x \leqslant 1$.
4. **Question 2 b.** Vérifier que $a_3$ est dans $[1, 2]$ (calculer $P_3(2)$). Couper l'intervalle en deux, garder la
   moitié qui contient $a_3$ (comment la reconnaître ?), et recommencer.
5. **Question 3.** La dérivée $P_4'(x) = 4x^3 - 3x^2 - 2x - 1$ n'a pas de racine évidente, et son
   signe est difficile à trouver. Calculer plutôt $(x - 1)P_4(x)$ en développant.
6. **Question 3.** Étudier les variations de $Q(x) = x^5 - 2x^4 + 1$, puis faire le lien entre les
   solutions de $Q(x) = 0$ et celles de $P_4(x) = 0$. Le nombre $1$ joue un rôle à part.

## Solution

**1.** Le discriminant de $x^2 - x - 1$ est $\Delta = 1 + 4 = 5 > 0$. Il y a deux solutions :

$$x_1 = \frac{1 - \sqrt{5}}{2} \qquad \text{et} \qquad x_2 = \frac{1 + \sqrt{5}}{2}.$$

Comme $5 > 1$, on a $\sqrt{5} > 1$. Donc $1 - \sqrt{5} < 0$ et $x_1 < 0$. Et $1 + \sqrt{5} > 2$,
donc $x_2 > 1$. (On a $x_1 \approx \text{−0,618}$, et $x_2 \approx \text{1,618}$ est le nombre
d'or.)

**2.** a) On a $P_3'(x) = 3x^2 - 2x - 1 = (x - 1)(3x + 1)$, qui s'annule en $-\frac{1}{3}$ et en
$1$. Ce trinôme est positif à l'extérieur de ses racines et négatif entre elles. Donc :

- $P_3$ est strictement croissante sur $]-\infty, -\frac{1}{3}]$ ;
- $P_3$ est strictement décroissante sur $[-\frac{1}{3}, 1]$ ;
- $P_3$ est strictement croissante sur $[1, +\infty[$.

On calcule $P_3(-\frac{1}{3}) = -\frac{1}{27} - \frac{1}{9} + \frac{1}{3} - 1 = \frac{-1 - 3 + 9 - 27}{27} = -\frac{22}{27}$,
$P_3(1) = -2$ et $P_3(2) = 8 - 4 - 2 - 1 = 1$.

- Sur $]-\infty, 1]$, le maximum de $P_3$ est atteint en $-\frac{1}{3}$ et vaut $-\frac{22}{27} < 0$.
  Donc $P_3(x) < 0$ : pas de solution.
- Sur $[1, 2]$, $P_3$ est strictement croissante, avec $P_3(1) = -2 < 0$ et $P_3(2) = 1 > 0$.
  D'après le résultat admis, il y a une unique solution dans $[1, 2]$, et elle n'est ni $1$ ni $2$.
- Sur $[2, +\infty[$, $P_3$ est croissante, donc $P_3(x) \geqslant P_3(2) = 1 > 0$ : pas de solution.

**Conclusion :** l'équation $P_3(x) = 0$ a une unique solution réelle $a_3$, et $1 < a_3 < 2$.

b) On utilise la *dichotomie*. On garde un intervalle $[a, b]$ tel que $P_3(a) < 0 \leqslant P_3(b)$ ;
comme $P_3$ est strictement croissante sur $[1, 2]$, la solution $a_3$ est alors dans $]a, b]$. On
part de $[1, 2]$, et on coupe l'intervalle en deux tant que sa longueur dépasse $10^{-3}$.

```python
def P3(x):
    return x**3 - x**2 - x - 1

a, b = 1, 2                # P3(a) < 0 et P3(b) > 0
while b - a > 0.001:
    m = (a + b) / 2
    if P3(m) < 0:
        a = m              # la solution est dans ]m, b]
    else:
        b = m              # la solution est dans ]a, m]
print(a, b)
```

La longueur est divisée par $2$ à chaque tour : après $10$ tours, elle vaut
$\frac{1}{1024} < 10^{-3}$. Le programme affiche $a = \text{1,8388671875}$ et
$b = \text{1,83984375}$. Comme $a < a_3 \leqslant b$ et $b - a < 10^{-3}$, le nombre $a$ (ou $b$)
est une valeur approchée de $a_3$ à $10^{-3}$ près : $a_3 \approx \text{1,839}$.

On peut aussi faire un *balayage* : partir de $x = 1$ et avancer de $\text{0,001}$ tant que
$P_3(x) < 0$. C'est plus simple, mais il faut environ $840$ étapes au lieu de $10$.

**3.** En développant,

$$(x - 1)P_4(x) = x^5 - x^4 - x^3 - x^2 - x - x^4 + x^3 + x^2 + x + 1 = x^5 - 2x^4 + 1.$$

Notons $Q(x) = x^5 - 2x^4 + 1$, de sorte que $Q(x) = (x - 1)P_4(x)$ pour tout réel $x$.

*Lien entre les deux équations.* Si $x \neq 1$, alors $P_4(x) = 0$ équivaut à $Q(x) = 0$. Et
$x = 1$ est solution de $Q(x) = 0$ mais pas de $P_4(x) = 0$, car $P_4(1) = -3$. Les solutions de
$P_4(x) = 0$ sont donc **les solutions de $Q(x) = 0$ autres que $1$.**

*Variations de $Q$.* On a $Q'(x) = 5x^4 - 8x^3 = x^3(5x - 8)$.

- Si $x < 0$ : $x^3 < 0$ et $5x - 8 < 0$, donc $Q'(x) > 0$.
- Si $0 < x < \frac{8}{5}$ : $x^3 > 0$ et $5x - 8 < 0$, donc $Q'(x) < 0$.
- Si $x > \frac{8}{5}$ : $Q'(x) > 0$.

Donc $Q$ est strictement croissante sur $]-\infty, 0]$, strictement décroissante sur
$[0, \frac{8}{5}]$ et strictement croissante sur $[\frac{8}{5}, +\infty[$. Quelques valeurs :
$Q(-1) = -1 - 2 + 1 = -2$, $Q(0) = 1$, $Q(1) = 0$, $Q(2) = 32 - 32 + 1 = 1$, et

$$Q(\frac{8}{5}) = (\frac{8}{5})^4 \times (\frac{8}{5} - 2) + 1 = -\frac{4096}{625} \times \frac{2}{5} + 1 = -\frac{8192}{3125} + 1 = -\frac{5067}{3125} < 0.$$

*Solutions de $Q(x) = 0$.*

- Sur $]-\infty, -1]$ : $Q$ est croissante, donc $Q(x) \leqslant Q(-1) = -2 < 0$. Pas de solution.
- Sur $[-1, 0]$ : $Q$ est strictement croissante, $Q(-1) < 0 < Q(0)$. Une unique solution, dans
  $]-1, 0[$ ; notons-la $b_2$.
- Sur $[0, \frac{8}{5}]$ : $Q$ est strictement décroissante, elle ne peut s'annuler qu'une fois, et
  $Q(1) = 0$. La seule solution est $1$.
- Sur $[\frac{8}{5}, 2]$ : $Q$ est strictement croissante, $Q(\frac{8}{5}) < 0 < Q(2)$. Une unique
  solution, dans $]\frac{8}{5}, 2[$ ; notons-la $a_4$.
- Sur $[2, +\infty[$ : $Q(x) \geqslant Q(2) = 1 > 0$. Pas de solution.

**Conclusion :** $Q(x) = 0$ a exactement trois solutions, $b_2$, $1$ et $a_4$. L'équation
$P_4(x) = 0$ a donc exactement deux solutions, $b_2$ et $a_4$, avec $-1 < b_2 < 0$ et
$\frac{8}{5} < a_4 < 2$, donc $b_2 < 0 < 1 < a_4$. (À la calculatrice, $b_2 \approx \text{−0,775}$ et
$a_4 \approx \text{1,928}$.)

**Bilan.** L'équation $x^2 = x + 1$ a deux solutions, l'une négative et l'autre plus grande que $1$
(le nombre d'or). L'équation $x^3 = x^2 + x + 1$ a une seule solution réelle, $a_3 \approx \text{1,839}$,
comprise entre $1$ et $2$. L'équation $x^4 = x^3 + x^2 + x + 1$ a exactement deux solutions
réelles, l'une entre $-1$ et $0$, l'autre entre $\frac{8}{5}$ et $2$. Multiplier par $x - 1$
remplace un polynôme à beaucoup de termes par un polynôme à trois termes, plus facile à étudier.

## Going further

- Refaire la question 2 a) avec la même astuce : que vaut $(x - 1)P_3(x)$ ?
- Dans la suite du sujet, on montrait que, pour tout $n \geqslant 2$, l'équation
  $x^n = x^{n-1} + \cdots + x + 1$ a une seule solution positive $a_n$, comprise entre
  $\frac{2n}{n+1}$ et $2$, de sorte que $a_n$ tend vers $2$ (exercice 41044). Pour $n$ pair, il y a
  aussi une solution négative, qui tend vers $-1$ (exercice 41045).
- Le nombre d'or $a_2$ mesure la croissance de la suite de Fibonacci, où chaque terme est la somme
  des deux précédents. De même, $a_3$ mesure celle de la suite où chaque terme est la somme des
  *trois* précédents (1, 1, 2, 4, 7, 13, 24, 44, …). Calculer le quotient de deux termes
  consécutifs de cette suite, assez loin : que trouve-t-on ?
