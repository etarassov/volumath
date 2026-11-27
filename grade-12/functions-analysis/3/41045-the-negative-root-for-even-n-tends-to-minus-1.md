---
id: "41045"
title: "Pour n pair, la solution négative de xⁿ = xⁿ⁻¹ + … + x + 1 tend vers −1"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 50
tags: [polynome, equation, derivee, variations, valeurs-intermediaires, factorisation, suite-decroissante, limite, passage-a-la-limite, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["41043", "41044"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série ES"
  reference: "cg-2018-es-sujet.pdf, problème II, questions 8 à 11 (les résultats des questions 4 b et 5 d sont rappelés dans l'énoncé)."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-es-sujet.pdf"
---

## Statement

Pour tout entier $n \geqslant 2$, on étudie l'équation $x^n = x^{n-1} + \cdots + x + 1$, où
l'inconnue $x$ est un nombre réel. On note $P_n$ et $Q_n$ les fonctions polynômes définies, pour
tout réel $x$, par

$$P_n(x) = x^n - x^{n-1} - x^{n-2} - \cdots - x - 1 \qquad \text{et} \qquad Q_n(x) = x^{n+1} - 2x^n + 1.$$

On a montré dans une partie précédente que :

- pour tout réel $x$, $Q_n(x) = (x - 1)P_n(x)$ ;
- l'équation $P_n(x) = 0$ a une unique solution positive ou nulle, notée $a_n$, et $1 < a_n < 2$.

Dans tout l'exercice, $n$ est **pair** : on note $k \geqslant 1$ l'entier tel que $n = 2k$.

1. a) Montrer que $Q_{2k}$ est strictement croissante sur $]-\infty, 0]$.

   b) Calculer $Q_{2k}(-1)$.

   c) Montrer que l'équation $P_{2k}(x) = 0$ a une unique solution dans l'intervalle $]-1, 0[$. On
   note $b_k$ cette solution.

   d) Combien l'équation $P_{2k}(x) = 0$ a-t-elle de solutions réelles ?
2. a) Montrer que, pour tout réel $x$ de $]-1, 0[$, $Q_{2k+2}(x) \geqslant Q_{2k}(x)$.

   b) En déduire le signe de $Q_{2k+2}(b_k)$.

   c) Montrer que $b_{k+1} \leqslant b_k$.

La suite $(b_k)_{k \geqslant 1}$ est donc décroissante, et ses termes sont dans $]-1, 0[$. On admet
que cela entraîne qu'elle converge vers un réel $\ell$ de $[-1, 0]$, et que $\ell \leqslant b_k$
pour tout $k \geqslant 1$. Le but de la question suivante est de montrer que $\ell = -1$.

3. a) Pour tout entier $k \geqslant 1$, déterminer le signe de $Q_{2k}(\ell)$.

   b) Soit $x \in\, ]-1, 0[$. Que peut-on dire de $Q_{2k}(x)$ quand $k$ tend vers $+\infty$ ?

   c) En déduire que $\ell = -1$.
4. Montrer que la suite $(b_k^{2k})$ converge, et déterminer sa limite.

## Hints

1. **Question 1 a.** Factoriser $Q_{2k}'(x)$ par $x^{2k-1}$ et étudier le signe de chaque facteur
   quand $x < 0$.
2. **Question 1 d.** Les solutions positives ou nulles sont connues. Pour les solutions négatives,
   regarder séparément $]-\infty, -1]$ et $]-1, 0[$.
3. **Question 2 a.** Factoriser $Q_{2k+2}(x) - Q_{2k}(x)$ par $x^{2k}$. Le polynôme de degré $3$ qui
   reste a trois racines évidentes.
4. **Question 2 c.** On sait que $Q_{2k+2}(b_{k+1}) = 0$. Utiliser la question 2 b) et le sens de
   variation de $Q_{2k+2}$.
5. **Question 3 c.** Raisonner par l'absurde : si $\ell$ était dans $]-1, 0[$, que dirait la
   question 3 b) ? Ne pas oublier le cas $\ell = 0$.
6. **Question 4.** Écrire l'égalité $Q_{2k}(b_k) = 0$ en mettant $b_k^{2k}$ en facteur.

## Solution

Pour $n = 2k$, on a $Q_{2k}(x) = x^{2k+1} - 2x^{2k} + 1$.

**1.** a) $Q_{2k}'(x) = (2k + 1)x^{2k} - 4kx^{2k-1} = x^{2k-1}((2k + 1)x - 4k)$. Pour $x < 0$ :

- $x^{2k-1} < 0$, car l'exposant $2k - 1$ est impair ;
- $(2k + 1)x - 4k < 0$, comme somme de deux nombres négatifs.

Donc $Q_{2k}'(x) > 0$ pour $x < 0$, et **$Q_{2k}$ est strictement croissante sur $]-\infty, 0]$.**

b) Comme $2k + 1$ est impair et $2k$ pair, $Q_{2k}(-1) = -1 - 2 \times 1 + 1 = -2$.

c) Sur $[-1, 0]$, $Q_{2k}$ est strictement croissante, avec $Q_{2k}(-1) = -2 < 0$ et
$Q_{2k}(0) = 1 > 0$. D'après le théorème des valeurs intermédiaires (appliqué à une fonction
continue strictement monotone), $Q_{2k}(x) = 0$ a une unique solution dans $[-1, 0]$, et elle est
dans $]-1, 0[$.

Pour $x$ dans $]-1, 0[$, on a $x - 1 \neq 0$, donc $P_{2k}(x) = 0$ équivaut à
$Q_{2k}(x) = (x - 1)P_{2k}(x) = 0$. **L'équation $P_{2k}(x) = 0$ a donc une unique solution $b_k$
dans $]-1, 0[$.**

d) Passons en revue les réels.

- Sur $]-\infty, -1]$ : $Q_{2k}$ est croissante, donc $Q_{2k}(x) \leqslant Q_{2k}(-1) = -2 < 0$. Comme
  $Q_{2k}(x) = (x - 1)P_{2k}(x)$, on a $P_{2k}(x) \neq 0$ : pas de solution.
- Sur $]-1, 0[$ : la seule solution est $b_k$.
- Sur $[0, +\infty[$ : la seule solution est $a_{2k}$ (résultat rappelé).

**L'équation $P_{2k}(x) = 0$ a exactement deux solutions réelles :** $b_k$, dans $]-1, 0[$, et
$a_{2k}$, dans $]1, 2[$.

**2.** a) On calcule

$$Q_{2k+2}(x) - Q_{2k}(x) = x^{2k+3} - 2x^{2k+2} - x^{2k+1} + 2x^{2k} = x^{2k}(x^3 - 2x^2 - x + 2).$$

Or $x^3 - 2x^2 - x + 2 = x^2(x - 2) - (x - 2) = (x - 2)(x^2 - 1) = (x - 2)(x - 1)(x + 1)$. Donc

$$Q_{2k+2}(x) - Q_{2k}(x) = x^{2k}(x - 2)(x - 1)(x + 1).$$

Pour $-1 < x < 0$ : $x^{2k} > 0$, $x - 2 < 0$, $x - 1 < 0$ et $x + 1 > 0$. Le produit est strictement
positif, donc $Q_{2k+2}(x) > Q_{2k}(x)$, et en particulier $Q_{2k+2}(x) \geqslant Q_{2k}(x)$.

b) Comme $b_k$ est dans $]-1, 0[$, la question a) donne
$Q_{2k+2}(b_k) > Q_{2k}(b_k) = 0$ (car $P_{2k}(b_k) = 0$). Donc **$Q_{2k+2}(b_k) > 0$.**

c) Le nombre $b_{k+1}$ est la solution de $P_{2k+2}(x) = 0$ dans $]-1, 0[$, donc
$Q_{2k+2}(b_{k+1}) = 0$. Supposons $b_{k+1} \geqslant b_k$. Comme $Q_{2k+2}$ est croissante sur
$]-\infty, 0]$ (question 1 a, avec $k + 1$ à la place de $k$), on aurait
$0 = Q_{2k+2}(b_{k+1}) \geqslant Q_{2k+2}(b_k) > 0$, ce qui est absurde. Donc
**$b_{k+1} < b_k$**, et a fortiori $b_{k+1} \leqslant b_k$.

**3.** a) On a $\ell \leqslant b_k \leqslant 0$, et $Q_{2k}$ est croissante sur $]-\infty, 0]$, donc
$Q_{2k}(\ell) \leqslant Q_{2k}(b_k) = 0$. **Pour tout $k \geqslant 1$, $Q_{2k}(\ell) \leqslant 0$.**

b) Soit $x \in\, ]-1, 0[$. Alors $0 < x^2 < 1$, donc la suite géométrique $x^{2k} = (x^2)^k$ tend vers
$0$ quand $k$ tend vers $+\infty$, et $x^{2k+1} = x \times x^{2k}$ aussi. Par conséquent

$$Q_{2k}(x) = x^{2k+1} - 2x^{2k} + 1 \xrightarrow[k \to +\infty]{} 1.$$

c) On sait que $-1 \leqslant \ell \leqslant b_1 < 0$, donc $\ell \neq 0$. Supposons $\ell \neq -1$ :
alors $\ell \in\, ]-1, 0[$. D'après b), la suite $(Q_{2k}(\ell))$ tend vers $1$. Mais d'après a),
tous ses termes sont négatifs ou nuls, donc sa limite est négative ou nulle (passage à la limite
dans une inégalité). C'est absurde, puisque $1 > 0$.

**Conclusion :** $\ell = -1$, c'est-à-dire que la suite $(b_k)$ tend vers $-1$.

**4.** Écrivons $Q_{2k}(b_k) = 0$ :

$$b_k^{2k+1} - 2b_k^{2k} + 1 = 0, \qquad \text{soit} \qquad b_k^{2k}(2 - b_k) = 1.$$

Comme $2 - b_k > 0$, on obtient

$$b_k^{2k} = \frac{1}{2 - b_k}.$$

Quand $k$ tend vers $+\infty$, $b_k$ tend vers $-1$, donc $2 - b_k$ tend vers $3$. **La suite
$(b_k^{2k})$ converge, et sa limite est $\frac{1}{3}$.**

À la calculatrice : $b_1 = \frac{1 - \sqrt{5}}{2} \approx \text{−0,618}$ et $b_1^2 \approx \text{0,382}$ ;
$b_{10} \approx \text{−0,947}$ et $b_{10}^{20} \approx \text{0,339}$ ; $b_{1000} \approx \text{−0,99945}$ et
$b_{1000}^{2000} \approx \text{0,33339}$.

**Bilan.** Pour $n = 2k$ pair, l'équation $x^n = x^{n-1} + \cdots + x + 1$ a exactement deux
solutions réelles : $a_{2k}$, entre $1$ et $2$, et $b_k$, entre $-1$ et $0$. La suite $(b_k)$ est
strictement décroissante et tend vers $-1$. Pourtant $b_k^{2k}$ ne tend ni vers $0$ ni vers $1$ :
il tend vers $\frac{1}{3}$.

## Going further

- Pour $n$ impair, montrer que l'équation $x^n = x^{n-1} + \cdots + x + 1$ n'a aucune solution
  négative. (Quel est le signe de $x^{n-1}$, puis de $Q_n'(x)$, pour $x < 0$ ?)
- Le résultat de la question 4 dit à quelle vitesse $b_k$ s'approche de $-1$. En prenant le
  logarithme de $b_k^{2k}$, et en admettant que $\frac{\ln(1 - h)}{h}$ tend vers $-1$ quand $h$
  tend vers $0$, montrer que $2k(1 + b_k)$ tend vers $\ln 3$.
- Le même calcul pour la solution positive donne $a_n^n(2 - a_n) = 1$. Qu'en déduit-on sur
  $2 - a_n$ ? (Voir l'exercice 41044, qui montre que $a_n$ tend vers $2$, et l'exercice 41043 pour
  les cas $n = 2$, $3$ et $4$.)
