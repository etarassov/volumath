---
id: "40686"
title: "Deux plus grands dénominateurs égaux : remplacer m, m par m − 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [fractions-egyptiennes, inegalite, rationnels, majoration, calcul-litteral, disjonction-de-cas]
adapted_from: null
see_also: ["40684", "40685", "40687"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 2 « Les nombres joviaux », partie III « Un majorant optimal pour les nombres joviaux d'ordre fixé », question 4 (a à e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

On définit les suites $(u_n)_{n \geqslant 1}$ et $(v_n)_{n \geqslant 1}$ par $u_1 = 1$ et, pour
tout entier $n \geqslant 1$, $v_n = 1 + u_n$ et $u_{n+1} = u_n(1 + u_n)$. Ainsi
$v_1 = 2$, $v_2 = 3$, $v_3 = 7$, $v_4 = 43$, … On admet que, pour tout $n \geqslant 1$,
$$v_{n+1} = v_1 v_2 \cdots v_n + 1.$$

Pour tout entier $n \geqslant 1$, on note $\mathcal{H}_n$ la propriété suivante :

> si $x_1, \ldots, x_n$ sont des entiers strictement positifs et $a$ un nombre rationnel
> strictement positif tels que
> $$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant a \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} + \frac{1}{a} = 1,$$
> alors $a + 1 \leqslant v_{n+1}$ et $x_1 x_2 \cdots x_n\,(a + 1) \leqslant v_1 v_2 \cdots v_n\,v_{n+1}$.

Soit $n \geqslant 2$ un entier. **On admet que la propriété $\mathcal{H}_{n-1}$ est vraie.** On
considère des entiers strictement positifs $x_1, \ldots, x_n$ et un rationnel $a > 0$ tels que
$$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant a \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} + \frac{1}{a} = 1.$$
On admet que $x_1 \geqslant 2$ et que $a \leqslant x_1 x_2 \cdots x_n$.

On suppose de plus que les deux plus grands entiers sont égaux, $x_{n-1} = x_n$, que l'on note
$m$, et que
$$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{x_n - 1} \geqslant 1. \qquad (\star)$$
Le but est de montrer que, dans ce cas, $a + 1 \leqslant v_{n+1}$ et
$x_1 \cdots x_n\,(a + 1) \leqslant v_1 \cdots v_n\,v_{n+1}$.

1. Montrer que $a \geqslant m(m - 1)$, puis que $m \geqslant 4$.
2. Montrer qu'il existe deux uniques nombres rationnels $r > 0$ et $t > 0$ tels que
   $$\frac{1}{m} + \frac{1}{m - 1} = \frac{1}{m - 2} + \frac{1}{r} \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_{n-2}} + \frac{1}{m - 2} + \frac{1}{t} = 1.$$
   (Quand $n = 2$, la seconde égalité s'écrit simplement $\frac{1}{m - 2} + \frac{1}{t} = 1$.)
3. Montrer que
   $$r = m + 1 + \frac{4m - 2}{m^2 - 4m + 2},$$
   puis que $(m - 2)(r + 1) \geqslant m^2$.
4. Montrer que $t \geqslant r \geqslant m$.
5. En déduire que $a + 1 \leqslant v_{n+1}$ et $x_1 \cdots x_n\,(a + 1) \leqslant v_1 \cdots v_n\,v_{n+1}$.

## Hints

1. **Question 1.** Retrancher l'égalité de l'énoncé de l'inégalité $(\star)$ : il ne reste que
   trois fractions.
2. **Question 1.** Pour $m \geqslant 4$ : exclure $m = 2$ directement, puis, pour $m = 3$,
   regarder la somme $\frac{1}{x_1} + \cdots + \frac{1}{x_{n-2}}$. Elle est nulle si $n = 2$ ; et
   si $n \geqslant 3$ ?
3. **Question 2.** Pour $t$, il faut montrer que $1 - \frac{1}{x_1} - \cdots - \frac{1}{x_{n-2}} -
   \frac{1}{m - 2}$ est strictement positif. Que vaut $1 - \frac{1}{x_1} - \cdots -
   \frac{1}{x_{n-2}}$ ? Comparer ensuite $\frac{2}{m}$ et $\frac{1}{m - 2}$.
4. **Question 3.** Calculer $\frac{1}{r}$ au dénominateur commun $m(m - 1)(m - 2)$, et
   remarquer que $m^2 - 4m + 2 = (m - 2)^2 - 2$.
5. **Question 4.** Calculer $\frac{1}{t} - \frac{1}{r}$ et utiliser la question 1.
6. **Question 5.** Appliquer $\mathcal{H}_{n-1}$ aux $n - 1$ entiers $x_1, \ldots, x_{n-2}$ et
   $m - 2$, avec le rationnel $t$. Puis remplacer $m^2$ grâce à la question 3.

## Solution

**1.** L'égalité de l'énoncé s'écrit, avec $x_{n-1} = x_n = m$,
$$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-2}} + \frac{2}{m} + \frac{1}{a} = 1,$$
et $(\star)$ s'écrit
$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-2}} + \frac{1}{m} + \frac{1}{m - 1} \geqslant 1$.
En retranchant :
$$\frac{1}{m - 1} - \frac{1}{m} - \frac{1}{a} \geqslant 0, \qquad \text{soit} \qquad \frac{1}{a} \leqslant \frac{1}{m(m - 1)},$$
donc $a \geqslant m(m - 1)$. (On a $m \geqslant x_1 \geqslant 2$, donc $m - 1 \geqslant 1$.)

Montrons que $m \geqslant 4$. Notons $s = \frac{1}{x_1} + \cdots + \frac{1}{x_{n-2}}$ (avec
$s = 0$ si $n = 2$), de sorte que $s + \frac{2}{m} + \frac{1}{a} = 1$.

- Si $m = 2$ : $\frac{2}{m} = 1$, donc $s + \frac{1}{a} = 0$, impossible car $\frac{1}{a} > 0$.
- Si $m = 3$ : $s = \frac{1}{3} - \frac{1}{a}$, et $a \geqslant 6$, donc
  $\frac{1}{6} \leqslant s < \frac{1}{3}$. Si $n = 2$, $s = 0$ : contradiction. Si
  $n \geqslant 3$, $x_1 \leqslant m = 3$, donc $s \geqslant \frac{1}{x_1} \geqslant \frac{1}{3}$ :
  contradiction.

Comme $m \geqslant 2$, il reste $m \geqslant 4$.

**2.** *Le nombre $r$.* L'égalité équivaut à
$\frac{1}{r} = \frac{1}{m} + \frac{1}{m - 1} - \frac{1}{m - 2}$. Au dénominateur commun :
$$\frac{1}{m} + \frac{1}{m - 1} - \frac{1}{m - 2} = \frac{(m - 1)(m - 2) + m(m - 2) - m(m - 1)}{m(m - 1)(m - 2)} = \frac{m^2 - 4m + 2}{m(m - 1)(m - 2)}.$$
Or $m^2 - 4m + 2 = (m - 2)^2 - 2 \geqslant 4 - 2 = 2 > 0$ pour $m \geqslant 4$. Ce nombre est donc
un rationnel strictement positif, et
$$r = \frac{m(m - 1)(m - 2)}{m^2 - 4m + 2}$$
est l'unique solution : c'est un rationnel strictement positif.

*Le nombre $t$.* L'égalité équivaut à $\frac{1}{t} = 1 - s - \frac{1}{m - 2}$. D'après
l'égalité de l'énoncé, $1 - s = \frac{2}{m} + \frac{1}{a}$, donc
$$\frac{1}{t} = \frac{2}{m} + \frac{1}{a} - \frac{1}{m - 2}.$$
Or $\frac{2}{m} - \frac{1}{m - 2} = \frac{2(m - 2) - m}{m(m - 2)} = \frac{m - 4}{m(m - 2)} \geqslant 0$
puisque $m \geqslant 4$. Avec $\frac{1}{a} > 0$, on obtient $\frac{1}{t} > 0$ : il existe un
unique $t$, rationnel et strictement positif.

**3.** On développe :
$$(m + 1)(m^2 - 4m + 2) + 4m - 2 = m^3 - 3m^2 - 2m + 2 + 4m - 2 = m^3 - 3m^2 + 2m = m(m - 1)(m - 2).$$
En divisant par $m^2 - 4m + 2 > 0$, on obtient
$r = m + 1 + \frac{4m - 2}{m^2 - 4m + 2}$.

Alors $r + 1 = m + 2 + \frac{4m - 2}{m^2 - 4m + 2}$ et
$$(m - 2)(r + 1) = m^2 - 4 + \frac{(m - 2)(4m - 2)}{m^2 - 4m + 2}.$$
Il suffit donc de montrer que $(m - 2)(4m - 2) \geqslant 4(m^2 - 4m + 2)$, le dénominateur étant
positif. Or
$$(m - 2)(4m - 2) - 4(m^2 - 4m + 2) = 4m^2 - 10m + 4 - 4m^2 + 16m - 8 = 6m - 4 > 0.$$
Donc $(m - 2)(r + 1) \geqslant m^2$.

**4.** D'après la question 3, $r = m + 1 + \frac{4m - 2}{m^2 - 4m + 2} > m$, car la fraction est
positive.

Ensuite, en utilisant les expressions de $\frac{1}{t}$ et de $\frac{1}{r}$ trouvées à la
question 2 :
$$\frac{1}{t} - \frac{1}{r} = \frac{2}{m} + \frac{1}{a} - \frac{1}{m} - \frac{1}{m - 1} = \frac{1}{a} - \frac{1}{m(m - 1)} \leqslant 0$$
d'après la question 1. Donc $\frac{1}{t} \leqslant \frac{1}{r}$, et comme $t$ et $r$ sont
positifs, $t \geqslant r$. Finalement $t \geqslant r \geqslant m$.

**5.** Considérons les $n - 1$ entiers $x_1, \ldots, x_{n-2}$ et $m - 2$, et le rationnel $t$.

- Ce sont des entiers strictement positifs, car $m - 2 \geqslant 2$.
- Ils sont tous inférieurs ou égaux à $t$ : chaque $x_i$ vérifie $x_i \leqslant m \leqslant t$, et
  $m - 2 < t$.
- La somme de leurs inverses plus $\frac{1}{t}$ vaut $1$ (question 2).

Rangés dans l'ordre croissant (l'ordre ne change ni la somme ni le produit), ils vérifient les
hypothèses de $\mathcal{H}_{n-1}$. Donc
$$x_1 \cdots x_{n-2}\,(m - 2)\,(t + 1) \leqslant v_1 \cdots v_{n-1} v_n.$$
Notons $P = x_1 \cdots x_n = x_1 \cdots x_{n-2}\,m^2$ et $V = v_1 \cdots v_n$. D'après les
questions 3 et 4, $m^2 \leqslant (m - 2)(r + 1) \leqslant (m - 2)(t + 1)$, donc
$$P = x_1 \cdots x_{n-2}\,m^2 \leqslant x_1 \cdots x_{n-2}\,(m - 2)(t + 1) \leqslant V.$$
On sait que $a \leqslant P$, donc $a \leqslant V$ et $a + 1 \leqslant V + 1 = v_{n+1}$. Enfin
$$P\,(a + 1) \leqslant P\,(P + 1) \leqslant V\,(V + 1) = v_1 \cdots v_n\,v_{n+1}.$$

**Bilan.** Si $\mathcal{H}_{n-1}$ est vraie, la conclusion de $\mathcal{H}_n$ est vraie pour tous
les $x_1 \leqslant \cdots \leqslant x_n \leqslant a$ tels que $x_{n-1} = x_n$ et qui vérifient
$(\star)$. L'astuce est de remplacer les deux fractions $\frac{1}{m}$ par une seule,
$\frac{1}{m - 2}$, pour se ramener à $n - 1$ entiers ; on vérifie que ce remplacement ne fait pas
diminuer le produit.

## Going further

- Cette question est l'un des trois cas d'une démonstration par récurrence de $\mathcal{H}_n$. Le
  cas $x_n > x_{n-1}$ avec $(\star)$ est traité dans l'exercice 40685, le cas où $(\star)$ est
  fausse dans l'exercice 40687.
- Vérifier que les entiers $2, 5, 7, 7$ avec $a = 70$ relèvent du cas étudié ici ($n = 4$,
  $m = 7$), puis calculer $r$ et $t$ et vérifier les inégalités des questions 3 et 4.
- Montrer que, pour $n = 2$, aucun couple $(x_1, x_2)$ ne vérifie à la fois $x_1 = x_2$ et
  $(\star)$. (Une recherche exhaustive montre que ce cas ne se produit pas non plus pour
  $n = 3$.)
