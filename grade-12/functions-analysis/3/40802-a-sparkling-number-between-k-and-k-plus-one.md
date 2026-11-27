---
id: "40802"
title: "Il existe un nombre pétillant entre k et k + 1"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 50
tags: [suites, recurrence, suite-croissante, limite, theoreme-des-valeurs-intermediaires, partie-entiere, carre-parfait, existence]
adapted_from: null
see_also: ["40801", "40803"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 1 « En pleine effervescence », partie 2 « Existence », questions 5 à 9"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Pour tout réel $x \geqslant 0$, on note $\mathrm{E}(x)$ la partie entière de $x$, c'est-à-dire le
plus grand entier naturel inférieur ou égal à $x$. On a donc $\mathrm{E}(x) \in \mathbb{N}$ et
$\mathrm{E}(x) \leqslant x < \mathrm{E}(x) + 1$.

On dit qu'un réel $x$ est *pétillant* si $x \geqslant 0$ et si, pour tout entier $n \geqslant 1$,
le nombre $\mathrm{E}(x^{2^n}) + 2$ est le carré d'un entier. Ici $x^{2^n}$ désigne $x$ élevé à
la puissance $2^n$.

On considère un entier $k \geqslant 1$ fixé, et on veut montrer que l'intervalle $[k ; k+1[$
contient un réel pétillant. On note $(u_n)_{n \geqslant 1}$ la suite définie par
$$u_1 = (k+1)^2 \quad \text{et, pour tout entier } n \geqslant 1, \quad u_{n+1} = (u_n - 1)^2.$$

1. Démontrer que, pour tout entier $n \geqslant 1$, $u_n$ est un entier et $u_n \geqslant 3$.
2. Démontrer que, pour tout entier $n \geqslant 1$, il existe un unique réel $a_n \geqslant 1$ tel
   que $a_n^{2^n} + 2 = u_n$, et un unique réel $b_n \geqslant 1$ tel que $b_n^{2^n} + 1 = u_n$.
3. Démontrer que la suite $(a_n)_{n \geqslant 1}$ est strictement croissante et que la suite
   $(b_n)_{n \geqslant 1}$ est strictement décroissante.
4. Démontrer que la suite $(a_n)_{n \geqslant 1}$ est convergente. On note $\alpha$ sa limite.
5. Démontrer que $k < \alpha < k + 1$ et que $\alpha$ est pétillant.

## Hints

1. **Question 1.** Raisonner par récurrence.
2. **Question 2.** Étudier la fonction $f_n : x \mapsto x^{2^n}$ sur $[1 ; +\infty[$ : sa
   continuité, son sens de variation, sa valeur en $1$ et sa limite en $+\infty$.
3. **Question 3.** Pour comparer $a_{n+1}$ et $a_n$, comparer leurs puissances $2^{n+1}$-ièmes.
   Écrire $a_n^{2^{n+1}}$ comme le carré de $a_n^{2^n}$, et l'exprimer à l'aide de $u_n$.
4. **Question 3.** On trouve que $a_{n+1}^{2^{n+1}} - a_n^{2^{n+1}}$ s'exprime simplement en
   fonction de $u_n$ : utiliser la question 1 pour conclure.
5. **Question 4.** Comparer $a_n$ et $b_n$.
6. **Question 5.** Pour $\alpha > k$, calculer $a_1^2$. Pour $\alpha < k + 1$, montrer que
   $\alpha \leqslant b_n$ pour tout $n$, en passant à la limite dans une inégalité.
7. **Question 5.** Pour montrer que $\alpha$ est pétillant, encadrer $\alpha$ strictement entre
   $a_n$ et $b_n$, puis en déduire un encadrement de $\alpha^{2^n}$ par deux entiers consécutifs.

## Solution

Dans toute la solution, on utilise le fait suivant. Pour tout entier $n \geqslant 1$, la fonction
$f_n : x \mapsto x^{2^n}$ est continue et strictement croissante sur $[0 ; +\infty[$ (c'est un
produit de $2^n$ facteurs égaux à $x$, tous positifs et croissants ; sa dérivée
$2^n x^{2^n - 1}$ est strictement positive pour $x > 0$). Par conséquent, pour $x, y \geqslant 0$,
$$x < y \quad \text{équivaut à} \quad x^{2^n} < y^{2^n}.$$

**1.** Récurrence sur $n \geqslant 1$.

*Initialisation.* $u_1 = (k+1)^2$ est un entier, et $u_1 \geqslant 2^2 = 4 \geqslant 3$ car
$k \geqslant 1$.

*Hérédité.* Si $u_n$ est un entier et $u_n \geqslant 3$, alors $u_n - 1$ est un entier supérieur
ou égal à $2$, donc $u_{n+1} = (u_n - 1)^2$ est un entier et $u_{n+1} \geqslant 4 \geqslant 3$.

**Conclusion :** pour tout $n \geqslant 1$, $u_n$ est un entier et $u_n \geqslant 3$.

**2.** Fixons $n \geqslant 1$. La fonction $f_n$ est continue et strictement croissante sur
$[1 ; +\infty[$, avec $f_n(1) = 1$ et $f_n(x) \geqslant x$ pour $x \geqslant 1$, donc
$f_n(x)$ tend vers $+\infty$ quand $x$ tend vers $+\infty$. D'après le théorème des valeurs
intermédiaires (cas d'une fonction strictement monotone), pour tout réel $c \geqslant 1$,
l'équation $f_n(x) = c$ a une unique solution $x$ dans $[1 ; +\infty[$.

- Avec $c = u_n - 2$, qui vérifie $c \geqslant 1$ d'après la question 1, on obtient un unique réel
  $a_n \geqslant 1$ tel que $a_n^{2^n} = u_n - 2$, c'est-à-dire $a_n^{2^n} + 2 = u_n$.
- Avec $c = u_n - 1 \geqslant 2$, on obtient un unique réel $b_n \geqslant 1$ tel que
  $b_n^{2^n} + 1 = u_n$.

On peut aussi les écrire explicitement : $a_n$ s'obtient en prenant $n$ fois de suite la racine
carrée de $u_n - 2$.

**3.** *La suite $(a_n)$.* Soit $n \geqslant 1$. D'une part,
$$a_{n+1}^{2^{n+1}} = u_{n+1} - 2 = (u_n - 1)^2 - 2 = u_n^2 - 2u_n - 1.$$
D'autre part, $a_n^{2^{n+1}} = (a_n^{2^n})^2 = (u_n - 2)^2 = u_n^2 - 4u_n + 4$. Donc
$$a_{n+1}^{2^{n+1}} - a_n^{2^{n+1}} = 2u_n - 5 \geqslant 2 \times 3 - 5 = 1 > 0.$$
Ainsi $a_{n+1}^{2^{n+1}} > a_n^{2^{n+1}}$, et comme $f_{n+1}$ est strictement croissante,
$a_{n+1} > a_n$.

*La suite $(b_n)$.* De même,
$$b_{n+1}^{2^{n+1}} = u_{n+1} - 1 = (u_n - 1)^2 - 1 < (u_n - 1)^2 = (b_n^{2^n})^2 = b_n^{2^{n+1}},$$
donc $b_{n+1} < b_n$.

**Conclusion :** $(a_n)$ est strictement croissante et $(b_n)$ est strictement décroissante.

**4.** Pour tout $n \geqslant 1$, $a_n^{2^n} = u_n - 2 < u_n - 1 = b_n^{2^n}$, donc $a_n < b_n$.
Comme $(b_n)$ est décroissante, $a_n < b_n \leqslant b_1$. La suite $(a_n)$ est croissante et
majorée par $b_1$ : d'après le théorème de la limite monotone, elle converge.

**5.** *Minoration.* $a_1^2 = u_1 - 2 = (k+1)^2 - 2 = k^2 + 2k - 1 > k^2$ car $2k - 1 \geqslant 1$.
Donc $a_1 > k$. Une suite croissante qui converge est inférieure ou égale à sa limite, donc
$\alpha \geqslant a_1 > k$.

*Majoration.* Fixons $n \geqslant 1$. Pour tout $p \geqslant n$, on a $a_p < b_p \leqslant b_n$.
En faisant tendre $p$ vers $+\infty$, on obtient $\alpha \leqslant b_n$. En particulier
$\alpha \leqslant b_2 < b_1$. Or $b_1^2 = u_1 - 1 = (k+1)^2 - 1 < (k+1)^2$, donc $b_1 < k+1$.
Ainsi $\alpha < k + 1$.

*$\alpha$ est pétillant.* On a $\alpha \geqslant 0$. Soit $n \geqslant 1$. D'après ce qui précède
et la question 3,
$$a_n < a_{n+1} \leqslant \alpha \leqslant b_{n+1} < b_n.$$
Tous ces nombres sont positifs, donc en les élevant à la puissance $2^n$ :
$$u_n - 2 < \alpha^{2^n} < u_n - 1.$$
Comme $u_n - 2$ est un entier, cela donne $\mathrm{E}(\alpha^{2^n}) = u_n - 2$, donc
$$\mathrm{E}(\alpha^{2^n}) + 2 = u_n.$$
Or $u_1 = (k+1)^2$ et, pour $n \geqslant 2$, $u_n = (u_{n-1} - 1)^2$ : dans tous les cas, $u_n$ est
le carré d'un entier.

**Conclusion :** $k < \alpha < k + 1$ et $\alpha$ est pétillant.

**Bilan.** Pour tout entier $k \geqslant 1$, l'intervalle $]k ; k+1[$ contient au moins un réel
pétillant : la limite $\alpha$ de la suite $(a_n)$, qui vérifie
$\mathrm{E}(\alpha^{2^n}) + 2 = u_n$ pour tout $n \geqslant 1$. Il existe donc une infinité de
réels pétillants.

## Going further

- À la calculatrice, pour $k = 1$ : calculer $a_1$, $a_2$, $a_3$ et $b_1$, $b_2$, $b_3$. On trouve
  $\alpha \approx \text{1,678459}$, et l'écart $b_n - a_n$ diminue extrêmement vite.
- Dans la suite du sujet, on montrait que $\alpha$ est le *seul* réel pétillant de $[k ; k+1[$
  (exercice 40803). L'idée : si $\gamma$ est pétillant dans $[k ; k+1[$, on montre par récurrence
  que $\mathrm{E}(\gamma^{2^n}) + 2 = u_n$, puis que $a_n \leqslant \gamma \leqslant b_n$, et
  enfin que $b_n - a_n \leqslant \frac{1}{2^n}$. Pouvez-vous le faire ?
- Avec l'exercice 40801, on obtient une description complète : aucun réel pétillant dans
  $[0 ; 1[$, et exactement un dans chaque intervalle $[k ; k+1[$ pour $k \geqslant 1$.
