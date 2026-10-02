---
id: "13864"
title: "Des racines emboîtées"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [racines, puissances, fractions egyptiennes, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 21 ; réponse 49 dans la liste des réponses du même fichier, sans solution rédigée. La définition de la racine n-ième est ajoutée à l'énoncé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Pour un entier $n \geqslant 2$ et un nombre $x \geqslant 0$, on note $\sqrt[n]{x}$ le nombre
positif dont la puissance $n$-ième vaut $x$. Par exemple $\sqrt[3]{8} = 2$, car $2^3 = 8$.

Soient $a$, $b$ et $c$ des entiers strictement plus grands que $1$ tels que, pour tout entier
$N \geqslant 1$,

$$\sqrt[a]{N \sqrt[b]{N \sqrt[c]{N}}} = \sqrt[36]{N^{25}}.$$

Que vaut $a^2 + b^2 + c^2$ ?

## Hints

1. Appelle $X$ le membre de gauche. Que vaut $X^a$ ? Puis $X^{ab}$ ? Puis $X^{abc}$ ?
2. Élève les deux membres à la puissance $36abc$, puis prends $N = 2$. Tu dois obtenir
   $\dfrac{1}{a} + \dfrac{1}{ab} + \dfrac{1}{abc} = \dfrac{25}{36}$.
3. Comme $b \geqslant 2$ et $c \geqslant 2$, le membre de gauche est au plus
   $\dfrac{1}{a}\left(1 + \dfrac{1}{2} + \dfrac{1}{4}\right)$. Qu'en déduis-tu pour $a$ ?

## Solution

**On se débarrasse des racines.** Notons $X$ le membre de gauche et $Y$ celui de droite. Par
définition des racines,

$$X^a = N \sqrt[b]{N \sqrt[c]{N}}, \qquad \text{donc} \qquad X^{ab} = \left(X^a\right)^b = N^b \times N \sqrt[c]{N} = N^{b + 1} \sqrt[c]{N},$$

puis $X^{abc} = \left(X^{ab}\right)^c = N^{c(b+1)} \times N = N^{bc + c + 1}$. De même
$Y^{36} = N^{25}$.

Élevons l'égalité $X = Y$ à la puissance $36abc$ :

$$X^{36abc} = \left(X^{abc}\right)^{36} = N^{36(bc + c + 1)} \qquad \text{et} \qquad Y^{36abc} = \left(Y^{36}\right)^{abc} = N^{25abc}.$$

Avec $N = 2$, on obtient $2^{36(bc + c + 1)} = 2^{25abc}$, donc $36(bc + c + 1) = 25abc$. En
divisant par $36abc$ :

$$\frac{1}{a} + \frac{1}{ab} + \frac{1}{abc} = \frac{25}{36}. \qquad (\star)$$

**On trouve $a$.** Le membre de gauche s'écrit $\dfrac{1}{a}\left(1 + \dfrac{1}{b} + \dfrac{1}{bc}\right)$.

Comme $b \geqslant 2$ et $c \geqslant 2$, on a $\dfrac{1}{b} \leqslant \dfrac{1}{2}$ et
$\dfrac{1}{bc} \leqslant \dfrac{1}{4}$. Le membre de gauche est donc au plus
$\dfrac{1}{a} \times \dfrac{7}{4}$. Il faut $\dfrac{7}{4a} \geqslant \dfrac{25}{36}$, soit
$a \leqslant \dfrac{63}{25}$, qui est plus petit que $3$. Comme $a \geqslant 2$, on a donc $a = 2$.

**On trouve $b$.** Avec $a = 2$, l'égalité $(\star)$ multipliée par $2$ donne
$1 + \dfrac{1}{b} + \dfrac{1}{bc} = \dfrac{25}{18}$, soit

$$\frac{1}{b}\left(1 + \frac{1}{c}\right) = \frac{7}{18}.$$

- Comme $1 + \dfrac{1}{c} > 1$, on a $\dfrac{1}{b} < \dfrac{7}{18}$, donc $b > \dfrac{18}{7}$,
  c'est-à-dire $b \geqslant 3$.
- Comme $1 + \dfrac{1}{c} \leqslant \dfrac{3}{2}$, on a $\dfrac{1}{b} \geqslant \dfrac{7}{18} \times \dfrac{2}{3} = \dfrac{7}{27}$,
  donc $b \leqslant \dfrac{27}{7}$, c'est-à-dire $b \leqslant 3$.

Donc $b = 3$.

**On trouve $c$.** Avec $b = 3$ : $1 + \dfrac{1}{c} = \dfrac{7}{18} \times 3 = \dfrac{7}{6}$, donc
$\dfrac{1}{c} = \dfrac{1}{6}$ et $c = 6$.

**Vérification.** On a $\dfrac{1}{2} + \dfrac{1}{6} + \dfrac{1}{36} = \dfrac{18 + 6 + 1}{36} = \dfrac{25}{36}$.
Avec $a = 2$, $b = 3$, $c = 6$, on a $X^{36abc} = N^{36 \times 25} = Y^{36abc}$ pour tout $N$, et
comme $X$ et $Y$ sont positifs, $X = Y$.

**On trouve $a^2 + b^2 + c^2 = 4 + 9 + 36 = 49$.**
