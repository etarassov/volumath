---
id: "40842"
title: "Quatre équations : la racine converge ou s'échappe"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 45
tags: [suites, limite, second-degre, discriminant, valeurs-intermediaires, suite-croissante, passage-a-la-limite]
adapted_from: null
see_also: ["40843", "40844"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 2 « Limite sympathique ! », partie A « Quelques exemples », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $n$ désigne un entier naturel non nul. On regarde quatre familles d'équations qui dépendent de $n$, et on se demande ce que devient leur racine positive quand $n$ devient très grand.

1. On considère l'équation $x^2 + \frac{1}{n}x - 1 = 0$, d'inconnue $x$.

   a) Démontrer que cette équation admet une unique solution réelle positive ; on la note $x_n$. Exprimer $x_n$ en fonction de $n$.

   b) Démontrer que la suite $(x_n)_{n \geqslant 1}$ converge ; on note $x_\infty$ sa limite.

   c) Démontrer que $x_\infty$ est solution de l'équation $x^2 - 1 = 0$.
2. On considère l'équation $\frac{1}{n}y^2 - y - 1 = 0$, d'inconnue $y$.

   a) Démontrer que cette équation admet une unique solution réelle positive ; on la note $y_n$.

   b) Démontrer que la suite $(y_n)_{n \geqslant 1}$ diverge.
3. On considère l'équation $z^3 + \frac{1}{n}z^2 - 1 = 0$, d'inconnue $z$.

   a) Étudier les variations de la fonction $f_n : z \mapsto z^3 + \frac{1}{n}z^2 - 1$ sur l'intervalle $[0, +\infty[$. En déduire que l'équation admet une unique solution réelle positive ; on la note $z_n$. Démontrer que $z_n$ appartient à l'intervalle $]0, 1[$.

   b) Démontrer que la suite $(z_n)_{n \geqslant 1}$ est convergente. On pourra s'intéresser au signe du réel $z_{n+1}^3 + \frac{1}{n}z_{n+1}^2 - 1$.

   c) On note $z_\infty$ la limite de la suite $(z_n)$. Démontrer que $z_\infty$ est solution de l'équation $z^3 - 1 = 0$.
4. On considère l'équation $\frac{1}{n}t^3 - t^2 - 1 = 0$, d'inconnue $t$.

   a) Démontrer que cette équation admet une unique solution réelle ; on la note $t_n$.

   b) La suite $(t_n)_{n \geqslant 1}$ est-elle convergente ? Si oui, quelle est sa limite ?

## Hints

1. **Question 1.** Le produit des deux racines d'un trinôme $ax^2 + bx + c$ vaut $\frac{c}{a}$. Que dit son signe ?
2. **Question 2.** Multiplier l'équation par $n$ avant de la résoudre, puis minorer $y_n$ par une expression simple en $n$.
3. **Question 3.** Pour comparer $z_{n+1}$ et $z_n$, utiliser que $z_{n+1}$ est la racine de l'équation d'indice $n+1$, et comparer $\frac{1}{n}$ à $\frac{1}{n+1}$.
4. **Question 3.** On obtient $f_n(z_{n+1}) > 0 = f_n(z_n)$. Que dit la stricte croissance de $f_n$ ? Une suite croissante et majorée converge.
5. **Question 4.** Dresser le tableau de variations de $t \mapsto \frac{1}{n}t^3 - t^2 - 1$ sur $\mathbb{R}$. Quelle est la valeur de son maximum local ?

## Solution

**1. a)** Le discriminant vaut $\Delta = \frac{1}{n^2} + 4 > 0$ : il y a deux racines réelles. Leur produit vaut $\frac{-1}{1} = -1 < 0$, donc elles sont de signes contraires : exactement une est positive. C'est la plus grande des deux :
$$x_n = \frac{1}{2}\left(-\frac{1}{n} + \sqrt{\frac{1}{n^2} + 4}\right).$$

**b)** Quand $n \to +\infty$, $\frac{1}{n} \to 0$ et $\frac{1}{n^2} + 4 \to 4$, donc par continuité de la racine carrée $\sqrt{\frac{1}{n^2} + 4} \to 2$. Donc $(x_n)$ converge, vers $x_\infty = \frac{-0 + 2}{2} = 1$.

**c)** $x_\infty^2 - 1 = 1 - 1 = 0$.

**2. a)** En multipliant par $n > 0$, l'équation devient $y^2 - ny - n = 0$. Son discriminant vaut $n^2 + 4n > 0$, et le produit des racines vaut $-n < 0$ : il y a exactement une racine positive,
$$y_n = \frac{n + \sqrt{n^2 + 4n}}{2}.$$

**b)** Comme $\sqrt{n^2 + 4n} \geqslant 0$, on a $y_n \geqslant \frac{n}{2}$, et $\frac{n}{2} \to +\infty$. Par comparaison, $y_n \to +\infty$ : la suite $(y_n)$ diverge.

**3. a)** $f_n$ est dérivable et $f_n'(z) = 3z^2 + \frac{2}{n}z$, qui est strictement positif pour $z > 0$ et nul en $0$. Donc $f_n$ est strictement croissante sur $[0, +\infty[$.

On a $f_n(0) = -1 < 0$ et $f_n(1) = \frac{1}{n} > 0$. La fonction $f_n$ est continue et strictement croissante sur $[0, 1]$, donc d'après le théorème des valeurs intermédiaires elle s'annule exactement une fois sur $[0, 1]$, en un point $z_n$ de $]0, 1[$. Pour $z > 1$, on a $f_n(z) > f_n(1) > 0$, donc pas d'autre racine positive. L'équation a donc une unique solution positive $z_n$, et $0 < z_n < 1$.

**b)** On a $z_{n+1}^3 + \frac{1}{n+1}z_{n+1}^2 - 1 = 0$, donc
$$f_n(z_{n+1}) = z_{n+1}^3 + \frac{1}{n}z_{n+1}^2 - 1 = \left(\frac{1}{n} - \frac{1}{n+1}\right) z_{n+1}^2 > 0,$$
car $z_{n+1} > 0$. Ainsi $f_n(z_{n+1}) > 0 = f_n(z_n)$, et comme $f_n$ est strictement croissante sur $[0, +\infty[$, $z_{n+1} > z_n$. La suite $(z_n)$ est croissante et majorée par $1$, donc elle converge.

**c)** Pour tout $n$, $z_n^3 + \frac{1}{n}z_n^2 - 1 = 0$. Quand $n \to +\infty$, $z_n^3 \to z_\infty^3$, et $\frac{1}{n}z_n^2 \to 0 \times z_\infty^2 = 0$. En passant à la limite, $z_\infty^3 - 1 = 0$. (Donc $z_\infty = 1$.)

**4. a)** Soit $g_n(t) = \frac{1}{n}t^3 - t^2 - 1$. Alors $g_n'(t) = \frac{3}{n}t^2 - 2t = t\left(\frac{3}{n}t - 2\right)$, qui s'annule en $0$ et en $\frac{2n}{3}$. Donc $g_n$ est croissante sur $]{-\infty}, 0]$, décroissante sur $[0, \frac{2n}{3}]$ et croissante sur $[\frac{2n}{3}, +\infty[$.

- Sur $]{-\infty}, \frac{2n}{3}]$, la plus grande valeur de $g_n$ est $g_n(0) = -1 < 0$ : pas de racine.
- Sur $[\frac{2n}{3}, +\infty[$, $g_n$ est continue et strictement croissante, $g_n(\frac{2n}{3}) < 0$, et $g_n(t) \to +\infty$ quand $t \to +\infty$ (le terme $\frac{1}{n}t^3$ l'emporte). D'après le théorème des valeurs intermédiaires, $g_n$ s'y annule exactement une fois.

L'équation a donc une unique solution réelle $t_n$, et $t_n > \frac{2n}{3}$.

**b)** Comme $t_n > \frac{2n}{3}$ et $\frac{2n}{3} \to +\infty$, on a $t_n \to +\infty$ : la suite $(t_n)$ n'est pas convergente.

**Bilan.** Dans les quatre équations, le coefficient $\frac{1}{n}$ tend vers $0$. Pour $x^2 + \frac{1}{n}x - 1$ et $z^3 + \frac{1}{n}z^2 - 1$, la racine positive converge vers $1$, qui est la racine positive de l'équation « limite » $x^2 - 1 = 0$ ou $z^3 - 1 = 0$. Pour $\frac{1}{n}y^2 - y - 1$ et $\frac{1}{n}t^3 - t^2 - 1$, la racine positive part vers $+\infty$ : l'équation limite, $-y - 1 = 0$ ou $-t^2 - 1 = 0$, n'a d'ailleurs aucune racine positive.

## Going further

Dans la suite du sujet (exercices 40843 et 40844), on expliquait cette différence : elle tient au signe des coefficients du polynôme limite. Regardez les coefficients de $x^2 - 1$, $z^3 - 1$, $-y - 1$ et $-t^2 - 1$ : pouvez-vous deviner une règle ?
