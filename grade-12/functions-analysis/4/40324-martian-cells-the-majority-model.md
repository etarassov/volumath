---
id: "40324"
title: "Cellules martiennes, premier modèle : l'espèce majoritaire transmet"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [suite-recurrente, recurrence, probabilite-conditionnelle, suite-croissante, limite, passage-a-la-limite, point-fixe, modelisation]
adapted_from: null
see_also: ["40323", "40325"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2010, mathématiques, série S"
  reference: "cg-2010-s-sujet.pdf, problème « De la vie sur Mars ! », question 2 (a à d) « Étude du premier scénario ». Ajouté à la question 1 : vérifier que la somme des trois proportions reste égale à 1."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2010.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2010-s-sujet.pdf"
---

## Statement

Sur Mars vivent des cellules de trois espèces, A, B et C. La reproduction fait intervenir trois
cellules « parents », et elle n'est possible que si les trois parents sont *compatibles*,
c'est-à-dire si au moins deux d'entre eux sont de la même espèce. Quand les trois parents sont de
la même espèce, le descendant est de cette espèce. Quand deux parents sont d'une espèce $\alpha$
et le troisième d'une autre espèce $\beta$, on adopte ici le **modèle 1** : le descendant est de
l'espèce majoritaire $\alpha$.

On note $a_n$, $b_n$, $c_n$ les proportions des espèces A, B, C à la génération $n$ (ce sont
des nombres positifs ou nuls, de somme $1$). Pour obtenir la génération $n + 1$, on prend trois
cellules au hasard, de façon indépendante, une cellule étant de l'espèce A, B ou C avec les
probabilités $a_n$, $b_n$, $c_n$. Alors $a_{n+1}$ est la probabilité que le descendant soit de
l'espèce A, sachant que les trois parents sont compatibles. Il en est de même pour $b_{n+1}$ et
$c_{n+1}$.

On admet le résultat suivant, établi dans une autre partie du problème : si $x$, $y$, $z$ sont
des nombres positifs ou nuls de somme $1$, la probabilité que trois cellules tirées avec les
proportions $x$, $y$, $z$ soient compatibles vaut $1 - 6xyz$, et $1 - 6xyz \geq \frac{7}{9}$.

On suppose que $a_0 > b_0 > c_0$.

1. Vérifier que, pour tout entier naturel $n$,
   $$a_{n+1} = \frac{a_n^2(3 - 2a_n)}{1 - 6a_nb_nc_n}, \qquad b_{n+1} = \frac{b_n^2(3 - 2b_n)}{1 - 6a_nb_nc_n}, \qquad c_{n+1} = \frac{c_n^2(3 - 2c_n)}{1 - 6a_nb_nc_n},$$
   et que $a_{n+1} + b_{n+1} + c_{n+1} = 1$.
2. Montrer que pour tout entier naturel $n$, on a $a_n > b_n > c_n$. En déduire que
   $a_n > \frac{1}{3}$, $b_n < \frac{1}{2}$ et $c_n < \frac{1}{3}$.
3. Montrer que les suites $(a_n - b_n)$ et $(a_n - c_n)$ sont croissantes.
4. Prouver que les suites $(a_n)$, $(b_n)$ et $(c_n)$ convergent, et déterminer leurs limites.

## Hints

1. **Question 1.** Le descendant est de l'espèce A dans deux cas : trois parents A, ou
   exactement deux parents A. Penser ensuite à la définition d'une probabilité conditionnelle.
2. **Question 2.** Étudier les variations de la fonction $x \mapsto x^2(3 - 2x)$ sur $[0, 1]$,
   puis raisonner par récurrence.
3. **Question 3.** Mettre $a_n - b_n$ en facteur dans $a_{n+1} - b_{n+1}$, puis comparer
   l'autre facteur à $1$.
4. **Question 3.** Pour comparer $3(a + b) - 2(a^2 + ab + b^2)$ et $1 - 6abc$, se servir de
   $a + b + c = 1$ pour écrire $3(a + b) - 1 = 2(a + b) - c$, puis remplacer $2(a+b)$ par
   $2(a+b)(a+b+c)$ et $c$ par $c(a+b+c)$.
5. **Question 4.** Écrire $3a_n$ à l'aide de $a_n + b_n + c_n$, de $a_n - b_n$ et de
   $a_n - c_n$.
6. **Question 4.** Si $\ell$ et $m$ sont les limites de $(a_n)$ et de $(b_n)$, passer à la
   limite dans les relations de récurrence. Quand ils ne sont pas nuls, $\ell$ et $m$ sont
   solutions d'une même équation du second degré.

## Solution

Dans tout ce qui suit, on écrit $a$, $b$, $c$ pour $a_n$, $b_n$, $c_n$ quand il n'y a pas
d'ambiguïté, et on note $P = 1 - 6abc$ la probabilité que trois parents soient compatibles. On
sait que $P \geq \frac{7}{9} > 0$.

**1.** Le descendant est de l'espèce A si les trois parents sont A (probabilité $a^3$), ou si
exactement deux parents sont A et le troisième n'est pas A. Dans ce dernier cas, il y a $3$
places possibles pour le parent qui n'est pas A, d'où la probabilité $3a^2(1 - a)$. Dans les deux
cas, les parents sont compatibles. Donc
$$P(\text{descendant A et parents compatibles}) = a^3 + 3a^2(1 - a) = a^2(3 - 2a) ,$$
et par définition de la probabilité conditionnelle,
$$a_{n+1} = \frac{a^2(3 - 2a)}{1 - 6abc} .$$
On obtient de même les formules pour $b_{n+1}$ et $c_{n+1}$. Quand les parents sont compatibles,
le descendant est d'une et d'une seule des trois espèces, donc
$a_{n+1} + b_{n+1} + c_{n+1} = \frac{P}{P} = 1$. Les trois nombres sont positifs ou nuls.

**2.** Soit $\varphi(x) = x^2(3 - 2x) = 3x^2 - 2x^3$. Sa dérivée est
$\varphi'(x) = 6x - 6x^2 = 6x(1 - x)$, strictement positive sur $]0, 1[$, donc $\varphi$ est
strictement croissante sur $[0, 1]$.

Montrons par récurrence que $a_n > b_n > c_n$ pour tout $n$. C'est vrai pour $n = 0$. Si c'est
vrai au rang $n$, comme $a_n$, $b_n$, $c_n$ sont dans $[0, 1]$, on a
$\varphi(a_n) > \varphi(b_n) > \varphi(c_n)$. En divisant par le même nombre $P > 0$, on obtient
$a_{n+1} > b_{n+1} > c_{n+1}$.

On en déduit, avec $a_n + b_n + c_n = 1$ :

- $1 = a_n + b_n + c_n < 3a_n$, donc $a_n > \frac{1}{3}$ ;
- $1 = a_n + b_n + c_n > 3c_n$, donc $c_n < \frac{1}{3}$ ;
- $2b_n < a_n + b_n \leq 1$ (car $c_n \geq 0$), donc $b_n < \frac{1}{2}$.

**3.** On a
$$a_{n+1} - b_{n+1} = \frac{3(a^2 - b^2) - 2(a^3 - b^3)}{P} = (a - b)\,\frac{3(a + b) - 2(a^2 + ab + b^2)}{P} .$$
Posons $K = 3(a + b) - 2(a^2 + ab + b^2) - P$, de sorte que
$$a_{n+1} - b_{n+1} = (a - b)\left(1 + \frac{K}{P}\right).$$
Calculons $K$ en utilisant $a + b + c = 1$. D'abord $3(a + b) - 1 = 2(a + b) - c$. Ensuite
$2(a + b) = 2(a + b)(a + b + c) = 2(a + b)^2 + 2c(a + b)$ et $c = c(a + b + c) = c(a + b) + c^2$.
Comme $2(a + b)^2 - 2(a^2 + ab + b^2) = 2ab$, on trouve
$$K = 2ab + c(a + b) - c^2 + 6abc = 2ab + bc + 6abc + c\,(a - c) .$$
Tous les termes sont positifs ou nuls, car $a > c$. Donc $K \geq 0$, et comme $a - b > 0$ et
$P > 0$, on obtient $a_{n+1} - b_{n+1} \geq a_n - b_n$ : la suite $(a_n - b_n)$ est croissante.

Le calcul est le même en échangeant les rôles de $b$ et de $c$ :
$$a_{n+1} - c_{n+1} = (a - c)\left(1 + \frac{K'}{P}\right), \qquad K' = 2ac + b(a + c) - b^2 + 6abc = 2ac + bc + 6abc + b\,(a - b) \geq 0 ,$$
car $a > b$. La suite $(a_n - c_n)$ est donc croissante elle aussi.

**4.** *Convergence.* Notons $d_n = a_n - b_n$ et $e_n = a_n - c_n$. Ces suites sont croissantes
(question 3) et majorées par $1$ (car $a_n \leq 1$ et $b_n, c_n \geq 0$), donc elles convergent,
vers des limites $\delta$ et $\varepsilon$. Comme elles sont croissantes,
$\delta \geq d_0 > 0$ et $\varepsilon \geq e_0 > 0$. Or
$$3a_n = (a_n + b_n + c_n) + (a_n - b_n) + (a_n - c_n) = 1 + d_n + e_n ,$$
donc $(a_n)$ converge vers $\ell = \frac{1 + \delta + \varepsilon}{3}$. Alors $b_n = a_n - d_n$
converge vers $m = \ell - \delta$, et $c_n = a_n - e_n$ converge vers $k = \ell - \varepsilon$.

En passant à la limite dans les inégalités larges : $\ell + m + k = 1$, $\ell \geq \frac{1}{3}$
et $m \geq k \geq 0$. De plus $\ell - m = \delta > 0$.

*Les limites.* La suite $P_n = 1 - 6a_nb_nc_n$ converge vers $Q = 1 - 6\ell mk$, et
$Q \geq \frac{7}{9}$ puisque $P_n \geq \frac{7}{9}$ pour tout $n$. On peut donc passer à la limite
dans les relations de récurrence :
$$\ell = \frac{\ell^2(3 - 2\ell)}{Q}, \qquad m = \frac{m^2(3 - 2m)}{Q} .$$
Comme $\ell \neq 0$, la première égalité donne $Q = \ell(3 - 2\ell)$, soit
$2\ell^2 - 3\ell + Q = 0$. Supposons $m \neq 0$ : de même $2m^2 - 3m + Q = 0$. En soustrayant,
$$2(\ell^2 - m^2) - 3(\ell - m) = (\ell - m)(2(\ell + m) - 3) = 0 ,$$
et comme $\ell \neq m$, on aurait $\ell + m = \frac{3}{2}$. C'est impossible puisque
$\ell + m \leq 1$. Donc $m = 0$, puis $k = 0$ car $0 \leq k \leq m$, et enfin $\ell = 1$.

**Conclusion :** $(a_n)$ converge vers $1$, $(b_n)$ et $(c_n)$ convergent vers $0$.

**Bilan.** Dans le modèle 1, l'espèce la plus nombreuse au départ creuse l'écart à chaque
génération ($a_n - b_n$ et $a_n - c_n$ augmentent) et finit par remplacer les deux autres : au
bout d'un grand nombre de générations, presque toutes les cellules sont de l'espèce A.

## Going further

- Que se passe-t-il si $a_0 = b_0 > c_0$ ? On pourra calculer quelques termes à la calculatrice,
  formuler une conjecture, puis adapter la démonstration.
- Dans la suite du sujet, on étudiait le modèle 2, où le descendant de deux parents d'espèce
  $\alpha$ et d'un parent d'espèce $\beta$ est de l'espèce minoritaire $\beta$ (exercice 40325).
  Avant de le lire, que pensez-vous qu'il arrive aux trois espèces ?
