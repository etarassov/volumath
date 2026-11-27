---
id: "40325"
title: "Cellules martiennes, second modèle : l'espèce minoritaire transmet"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [suite-recurrente, recurrence, probabilite-conditionnelle, inegalite, suite-croissante, limite, raisonnement-par-l-absurde, modelisation]
adapted_from: null
see_also: ["40323", "40324"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2010, mathématiques, série S"
  reference: "cg-2010-s-sujet.pdf, problème « De la vie sur Mars ! », question 3 (a à e) « Étude du second scénario ». Les fonctions f et g du sujet sont écrites ici avec la variable x au lieu de c ; la conclusion du modèle 1 est rappelée pour la question 5."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2010.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2010-s-sujet.pdf"
---

## Statement

Sur Mars vivent des cellules de trois espèces, A, B et C. La reproduction fait intervenir trois
cellules « parents », et elle n'est possible que si les trois parents sont *compatibles*,
c'est-à-dire si au moins deux d'entre eux sont de la même espèce. Quand les trois parents sont de
la même espèce, le descendant est de cette espèce. Quand deux parents sont d'une espèce $\alpha$
et le troisième d'une autre espèce $\beta$, on adopte ici le **modèle 2** : le descendant est de
l'espèce minoritaire $\beta$.

On note $a_n$, $b_n$, $c_n$ les proportions des espèces A, B, C à la génération $n$ (ce sont
des nombres positifs ou nuls, de somme $1$). Pour obtenir la génération $n + 1$, on prend trois
cellules au hasard, de façon indépendante, une cellule étant de l'espèce A, B ou C avec les
probabilités $a_n$, $b_n$, $c_n$. Alors $a_{n+1}$ est la probabilité que le descendant soit de
l'espèce A, sachant que les trois parents sont compatibles. Il en est de même pour $b_{n+1}$ et
$c_{n+1}$.

On admet le résultat suivant, établi dans une autre partie du problème : si $x$, $y$, $z$ sont
des nombres positifs ou nuls de somme $1$, la probabilité que trois cellules tirées avec les
proportions $x$, $y$, $z$ soient compatibles vaut $1 - 6xyz$, et $1 - 6xyz \geq \frac{7}{9}$.

1. Exprimer $a_{n+1}$, $b_{n+1}$ et $c_{n+1}$ en fonction de $a_n$, $b_n$ et $c_n$.
2. On suppose désormais que $1 > a_0 > b_0 > c_0 > 0$. Montrer que pour tout entier naturel $n$,
   on a $1 > a_n > b_n > c_n > 0$.
3. On pose, pour tout réel $x$,
   $$f(x) = \frac{3}{2} - 3x + \frac{5}{2}x^2 \qquad \text{et} \qquad g(x) = 1 - 6x^2 + 12x^3 .$$
   Montrer que pour tout entier naturel $n$,
   $$\frac{c_{n+1}}{c_n} \geq \frac{f(c_n)}{g(c_n)} .$$
4. Déterminer les limites des suites $(a_n)$, $(b_n)$ et $(c_n)$.
5. Dans le modèle 1, où le descendant est de l'espèce majoritaire $\alpha$, on admet qu'avec
   $a_0 > b_0 > c_0$, la suite $(a_n)$ tend vers $1$ et les suites $(b_n)$ et $(c_n)$ tendent
   vers $0$. Quel modèle vous semble le plus pertinent ?

## Hints

1. **Question 1.** Le descendant est de l'espèce A si les trois parents sont A, ou si deux
   parents sont d'une même autre espèce (B ou C) et le troisième est A.
2. **Question 2.** Dans $a_{n+1} - b_{n+1}$, le facteur $a_n - b_n$ apparaît, et l'autre facteur
   est une somme de carrés.
3. **Question 3.** Pour le numérateur, minorer $a_n^2 + b_n^2$ en fonction de
   $a_n + b_n = 1 - c_n$.
4. **Question 3.** Pour le dénominateur, il faut montrer que $a_nb_n \geq c_n(1 - 2c_n)$. Écrire
   $1 - 2c_n = a_n + b_n - c_n$ et penser au produit $(a_n - c_n)(b_n - c_n)$.
5. **Question 4.** Étudier le signe de $f(x) - g(x)$ sur $\left[0, \frac{1}{3}\right]$ :
   $x = \frac{1}{3}$ est une racine. En déduire le sens de variation de $(c_n)$.
6. **Question 4.** Si $(c_n)$ convergeait vers un nombre $\gamma < \frac{1}{3}$, que
   deviendraient les deux membres de l'inégalité de la question 3 quand $n$ tend vers l'infini ?

## Solution

On écrit $a$, $b$, $c$ pour $a_n$, $b_n$, $c_n$ quand il n'y a pas d'ambiguïté, et on note
$P = 1 - 6abc$ la probabilité que trois parents soient compatibles. On sait que
$P \geq \frac{7}{9} > 0$.

**1.** Le descendant est de l'espèce A dans trois cas, où les parents sont toujours compatibles :
les trois parents sont A (probabilité $a^3$) ; deux parents sont B et un est A (probabilité
$3b^2a$, car il y a $3$ places pour le parent A) ; deux parents sont C et un est A (probabilité
$3c^2a$). Par définition de la probabilité conditionnelle,
$$a_{n+1} = \frac{a^3 + 3a(b^2 + c^2)}{1 - 6abc} ,$$
et de même
$$b_{n+1} = \frac{b^3 + 3b(a^2 + c^2)}{1 - 6abc}, \qquad c_{n+1} = \frac{c^3 + 3c(a^2 + b^2)}{1 - 6abc} .$$
Quand les parents sont compatibles, le descendant est d'une et d'une seule espèce, donc
$a_{n+1} + b_{n+1} + c_{n+1} = 1$.

**2.** Raisonnons par récurrence. C'est vrai pour $n = 0$. Supposons $1 > a > b > c > 0$ au
rang $n$.

- Le numérateur de $c_{n+1}$ est strictement positif car $c > 0$, donc $c_{n+1} > 0$.
- Pour comparer $a_{n+1}$ et $b_{n+1}$, on calcule
  $$a^3 + 3a(b^2 + c^2) - b^3 - 3b(a^2 + c^2) = (a^3 - 3a^2b + 3ab^2 - b^3) + 3c^2(a - b) .$$
  La première parenthèse vaut $(a - b)^3$, donc cette différence vaut
  $(a - b)((a - b)^2 + 3c^2)$, qui est strictement positif car $a > b$. Donc
  $a_{n+1} > b_{n+1}$.
- De même, $b_{n+1} - c_{n+1}$ a le signe de $(b - c)((b - c)^2 + 3a^2) > 0$, donc
  $b_{n+1} > c_{n+1}$.

Ainsi $a_{n+1} > b_{n+1} > c_{n+1} > 0$. Comme les trois nombres sont strictement positifs et de
somme $1$, chacun est strictement inférieur à $1$. La propriété est vraie au rang $n + 1$.

**3.** D'après la question 1,
$$\frac{c_{n+1}}{c_n} = \frac{c^2 + 3(a^2 + b^2)}{1 - 6abc} .$$

*Le numérateur.* Comme $(a - b)^2 \geq 0$, on a $2(a^2 + b^2) \geq (a + b)^2 = (1 - c)^2$. Donc
$$c^2 + 3(a^2 + b^2) \geq c^2 + \frac{3}{2}(1 - 2c + c^2) = \frac{3}{2} - 3c + \frac{5}{2}c^2 = f(c) .$$

*Le dénominateur.* On veut $1 - 6abc \leq g(c) = 1 - 6c^2 + 12c^3$, c'est-à-dire
$6abc \geq 6c^2(1 - 2c)$, ou encore, en divisant par $6c > 0$, $ab \geq c(1 - 2c)$. Or
$1 - 2c = a + b + c - 2c = a + b - c$, donc
$$ab - c(1 - 2c) = ab - ac - bc + c^2 = (a - c)(b - c) > 0 .$$

*Conclusion.* Le trinôme $f$ a pour discriminant $9 - 15 < 0$, donc $f(c) > 0$. Avec
$0 < 1 - 6abc \leq g(c)$, on obtient
$$\frac{c_{n+1}}{c_n} \geq \frac{f(c)}{1 - 6abc} \geq \frac{f(c)}{g(c)} .$$

**4.** *Comparaison de $f$ et $g$.* On calcule
$$f(x) - g(x) = \frac{1}{2} - 3x + \frac{17}{2}x^2 - 12x^3 = \frac{1}{2}\,(1 - 3x)(8x^2 - 3x + 1) ,$$
ce que l'on vérifie en développant le membre de droite. Le trinôme $8x^2 - 3x + 1$ a pour
discriminant $9 - 32 < 0$, il est toujours strictement positif. Pour $0 < x < \frac{1}{3}$, on
a donc $f(x) > g(x)$, et $g(x) \geq 1 - 6x^2 > 1 - \frac{6}{9} > 0$. Ainsi
$\frac{f(x)}{g(x)} > 1$ pour $0 < x < \frac{1}{3}$.

*La suite $(c_n)$ est croissante.* Comme $c_n$ est le plus petit des trois nombres $a_n$, $b_n$,
$c_n$ (question 2), dont la somme vaut $1$, on a $0 < c_n < \frac{1}{3}$. D'après la question 3,
$\frac{c_{n+1}}{c_n} > 1$, donc $c_{n+1} > c_n$. La suite $(c_n)$ est croissante et majorée par
$\frac{1}{3}$ : elle converge vers un nombre $\gamma$ tel que $0 < c_0 \leq \gamma \leq \frac{1}{3}$.

*La limite vaut $\frac{1}{3}$.* Supposons $\gamma < \frac{1}{3}$. Quand $n$ tend vers
l'infini, $\frac{c_{n+1}}{c_n}$ tend vers $\frac{\gamma}{\gamma} = 1$ (car $\gamma > 0$), et
$\frac{f(c_n)}{g(c_n)}$ tend vers $\frac{f(\gamma)}{g(\gamma)}$ (car $f$ et $g$ sont des
polynômes et $g(\gamma) > 0$). En passant à la limite dans l'inégalité de la question 3, on
obtiendrait $1 \geq \frac{f(\gamma)}{g(\gamma)}$, alors que $\frac{f(\gamma)}{g(\gamma)} > 1$.
C'est absurde, donc $\gamma = \frac{1}{3}$.

*Les deux autres suites.* On a $c_n < b_n$ et $2b_n < a_n + b_n = 1 - c_n$, donc
$$c_n < b_n < \frac{1 - c_n}{2} .$$
Les deux bornes tendent vers $\frac{1}{3}$, donc $(b_n)$ converge vers $\frac{1}{3}$ (théorème
des gendarmes). Enfin $a_n = 1 - b_n - c_n$ tend vers $1 - \frac{1}{3} - \frac{1}{3} = \frac{1}{3}$.

**Conclusion :** les trois suites $(a_n)$, $(b_n)$, $(c_n)$ convergent vers $\frac{1}{3}$.

**5.** Les deux modèles prévoient des évolutions opposées. Dans le modèle 1, l'espèce la plus
nombreuse au départ élimine peu à peu les deux autres. Dans le modèle 2, les trois espèces
tendent vers un équilibre, chacune représentant un tiers de la population.

Or on observe aujourd'hui trois espèces qui vivent ensemble. Si la vie existe sur Mars depuis
très longtemps, donc depuis un très grand nombre de générations, le modèle 1 prévoirait qu'il ne
reste pratiquement qu'une seule espèce. Le modèle 2 est donc le plus cohérent avec
l'observation. Il donne aussi une prédiction que l'on peut vérifier : les trois espèces devraient
être présentes en proportions voisines. (Si l'on observait au contraire une espèce très
majoritaire, il faudrait reconsidérer le modèle 1.)

**Bilan.** Dans le modèle 2, la règle « le descendant est de l'espèce minoritaire » avantage à
chaque génération l'espèce la plus rare : la proportion $c_n$ de l'espèce la moins nombreuse
augmente, et les trois proportions tendent vers $\frac{1}{3}$.

## Going further

- Montrer que, dans le modèle 2, la suite $(a_n)$ est décroissante. (On pourra montrer que
  $a_{n+1} \leq a_n$ revient à $a_n^2 \geq b_n^2 - b_nc_n + c_n^2$.)
- La question 4 montre que $c_n$ tend vers $\frac{1}{3}$, mais à quelle vitesse ? Calculer
  quelques termes à la calculatrice en partant de $a_0 = \text{0,5}$, $b_0 = \text{0,3}$,
  $c_0 = \text{0,2}$, et calculer le quotient $\frac{1/3 - c_{n+1}}{1/3 - c_n}$ de deux écarts
  successifs. Que remarque-t-on ?
