---
id: "40801"
title: "Les nombres pétillants : mise en jambes"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [partie-entiere, carre-parfait, puissances, encadrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40802", "40803"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 1 « En pleine effervescence », partie 1 « Mise en jambes », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Pour tout réel $x \geqslant 0$, on note $\mathrm{E}(x)$ la *partie entière* de $x$, c'est-à-dire
le plus grand nombre entier inférieur ou égal à $x$. On a donc
$\mathrm{E}(x) \leqslant x < \mathrm{E}(x) + 1$. Par exemple, $\mathrm{E}(\text{2,4}) = 2$,
$\mathrm{E}(3) = 3$ et $\mathrm{E}(\text{1,9}) = 1$.

On dit qu'un réel $x$ est *pétillant* si $x \geqslant 0$ et si, pour tout entier $n \geqslant 1$,
le nombre
$$\mathrm{E}(x^{2^n}) + 2$$
est le carré d'un entier. Ici $x^{2^n}$ désigne $x$ élevé à la puissance $2^n$ : pour $n = 1$,
c'est $x^2$, pour $n = 2$, c'est $x^4$, pour $n = 3$, c'est $x^8$, et ainsi de suite.

1. Démontrer que le réel $\frac{3}{2}$ n'est pas pétillant.
2. Démontrer qu'aucun réel $x$ tel que $0 \leqslant x < 1$ n'est pétillant.
3. a) Démontrer que, si un réel $x$ est pétillant, alors le réel $x^2$ est aussi pétillant.

   b) Démontrer que, s'il existe un réel pétillant, alors il existe une infinité de réels
   pétillants.
4. Démontrer qu'aucun entier naturel n'est pétillant.

## Hints

1. **Question 1.** Pour montrer qu'un réel n'est pas pétillant, il suffit de trouver *une* valeur
   de $n$ pour laquelle $\mathrm{E}(x^{2^n}) + 2$ n'est pas un carré. Essayer $n = 1$, puis
   $n = 2$.
2. **Question 2.** Si $0 \leqslant x < 1$, que peut-on dire de $x^2$, puis de sa partie entière ?
3. **Question 3a.** Écrire $(x^2)^{2^n}$ comme une puissance de $x$. Que vaut $2 \times 2^n$ ?
4. **Question 3b.** En appliquant plusieurs fois la question 3a, on obtient les réels pétillants
   $x$, $x^2$, $x^4$, $x^8$… Il reste à voir qu'ils sont tous différents.
5. **Question 3b.** D'après la question 2, un réel pétillant vérifie $x \geqslant 1$. Peut-il
   être égal à $1$ ? Et si $x > 1$, comparer $x$ et $x^2$.
6. **Question 4.** Pour un entier $m$, regarder seulement $n = 1$. Quels sont les carrés d'entiers
   les plus proches de $m^2$ ?

## Solution

**1.** Prenons $x = \frac{3}{2}$.

Pour $n = 1$ : $x^2 = \frac{9}{4} = \text{2,25}$, donc $\mathrm{E}(x^2) + 2 = 2 + 2 = 4 = 2^2$.
C'est un carré, donc $n = 1$ ne suffit pas.

Pour $n = 2$ : $x^4 = \frac{81}{16} = \text{5,0625}$, donc $\mathrm{E}(x^4) + 2 = 5 + 2 = 7$.
Or $2^2 = 4 < 7 < 9 = 3^2$, donc $7$ n'est pas le carré d'un entier.

**Conclusion :** $\frac{3}{2}$ n'est pas pétillant.

**2.** Soit $x$ un réel tel que $0 \leqslant x < 1$. On a $x^2 = x \times x \leqslant 1 \times x = x$,
car $x \geqslant 0$ et $x \leqslant 1$. Donc $0 \leqslant x^2 \leqslant x < 1$, et
$\mathrm{E}(x^2) = 0$. Pour $n = 1$, le nombre $\mathrm{E}(x^2) + 2$ vaut donc $2$, qui n'est
pas un carré puisque $1^2 = 1 < 2 < 4 = 2^2$.

**Conclusion :** aucun réel $x$ tel que $0 \leqslant x < 1$ n'est pétillant.

**3. a)** Soit $x$ un réel pétillant, et posons $y = x^2$. On a bien $y \geqslant 0$. Soit
$n \geqslant 1$ un entier. D'après les règles de calcul sur les puissances,
$$y^{2^n} = (x^2)^{2^n} = x^{2 \times 2^n} = x^{2^{n+1}}.$$
Comme $n + 1 \geqslant 1$ et que $x$ est pétillant, le nombre $\mathrm{E}(x^{2^{n+1}}) + 2$ est
le carré d'un entier. C'est exactement $\mathrm{E}(y^{2^n}) + 2$.

**Conclusion :** $x^2$ est pétillant.

**b)** Soit $x$ un réel pétillant. D'après la question 3a, $x^2$ est pétillant. En l'appliquant
à $x^2$, le réel $(x^2)^2 = x^4$ est pétillant, puis $x^8$, $x^{16}$, et ainsi de suite : tous
les réels
$$x, \quad x^2, \quad x^4, \quad x^8, \quad x^{16}, \quad \ldots$$
(chacun est le carré du précédent) sont pétillants. Montrons qu'ils sont tous différents.

D'après la question 2, $x \geqslant 1$. De plus $x \neq 1$, car $\mathrm{E}(1^2) + 2 = 3$ n'est
pas un carré. Donc $x > 1$.

Or, si un réel $y$ vérifie $y > 1$, alors $y^2 = y \times y > 1 \times y = y$ (on a multiplié
l'inégalité $y > 1$ par le nombre positif $y$), donc $y^2 > y > 1$. En partant de $x > 1$, on
obtient ainsi
$$1 < x < x^2 < x^4 < x^8 < x^{16} < \cdots$$
Ces réels pétillants sont tous différents, et il y en a autant qu'on veut.

**Conclusion :** s'il existe un réel pétillant, il en existe une infinité.

**4.** Soit $m$ un entier naturel. Pour $n = 1$, on a $\mathrm{E}(m^2) = m^2$ puisque $m^2$ est un
entier, donc il faut regarder si $m^2 + 2$ est un carré.

- Si $m = 0$, on trouve $2$, qui n'est pas un carré.
- Si $m \geqslant 1$, alors $(m+1)^2 = m^2 + 2m + 1 \geqslant m^2 + 3$, donc
  $$m^2 < m^2 + 2 < (m+1)^2.$$
  Le nombre $m^2 + 2$ est strictement compris entre les carrés de deux entiers consécutifs, donc
  ce n'est pas un carré : il n'y a aucun carré d'entier strictement entre $m^2$ et $(m+1)^2$.

**Conclusion :** aucun entier naturel n'est pétillant.

**Bilan.** Un réel pétillant est forcément strictement plus grand que $1$ et n'est pas un entier.
Si un réel pétillant $x$ existe, ses carrés successifs $x^2$, $x^4$, $x^8$… sont aussi pétillants,
ce qui en donne une infinité. En revanche, on n'a pas encore montré qu'il existe au moins un réel pétillant.

## Going further

- Dans la suite du sujet, on montrait que, pour tout entier $k \geqslant 1$, il existe un réel
  pétillant et un seul entre $k$ et $k + 1$ : voir les exercices 40802 (existence) et 40803
  (unicité). Celui qui est compris entre $1$ et $2$ vaut environ $\text{1,6785}$.
- À la calculatrice : avec $x = \text{1,6785}$, calculer $\mathrm{E}(x^2) + 2$ et
  $\mathrm{E}(x^4) + 2$. Sont-ce des carrés ?
- Pour aller plus loin que la question 4 : pour quels entiers $m \geqslant 0$ le nombre
  $m^2 + 4$ est-il un carré ? Et $m^2 + 2m$ ?
