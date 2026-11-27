---
id: "40566"
title: "Trois compteurs qui finissent toujours par s'égaliser"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 60
tags: [probabilite, esperance, variable-aleatoire, independance, serie-harmonique, logarithme, suite-croissante, somme-geometrique, marche-aleatoire, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40565"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2016, mathématiques, série S"
  reference: "cg-2016-s-sujet.pdf, problème III « Allons dans ℂ », questions 5 à 7. L'événement S_k = 0 du sujet est reformulé sans nombres complexes, comme l'égalité de trois compteurs, et le calcul de p_3 est ajouté (question 1a)."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2016-s-sujet.pdf"
---

## Statement

On lance un dé équilibré à six faces de façon répétée, les lancers étant indépendants. Chaque
résultat reçoit un *type* d'après son reste dans la division par $3$ : le type $0$ pour $3$ et $6$,
le type $1$ pour $1$ et $4$, le type $2$ pour $2$ et $5$. À chaque lancer, chaque type a donc la
probabilité $\frac{1}{3}$.

Pour $k \geqslant 1$, on note $A_k$, $B_k$ et $C_k$ les nombres de résultats de type $0$, $1$ et $2$
parmi les $k$ premiers lancers. On dit qu'il y a **égalité au lancer $k$** lorsque
$A_k = B_k = C_k$, et on note $p_k$ la probabilité de cet événement.

On admet que $p_k = 0$ lorsque $k$ n'est pas un multiple de $3$, que $p_{3m} > 0$ pour tout
$m \geqslant 1$, et que, pour tout entier $m \geqslant 1$,
$$\frac{p_{3m+3}}{p_{3m}} = \frac{(3m+2)(3m+1)}{9(m+1)^2}.$$

1. a) Calculer $p_3$.

   b) Montrer que, pour tout entier $m \geqslant 1$, $\frac{m}{m+1} \leqslant \frac{p_{3m+3}}{p_{3m}}$.

   c) En déduire que $p_{3m} \geqslant \frac{2}{9m}$ pour tout entier $m \geqslant 1$.

Pour tout entier $n \geqslant 1$, on note $X_n$ la variable aléatoire égale au nombre d'entiers $k$
entre $1$ et $n$ tels qu'il y a égalité au lancer $k$.

2. a) Trouver des variables aléatoires de Bernoulli $Y_1, \ldots, Y_n$ telles que
   $X_n = Y_1 + \cdots + Y_n$.

   b) En utilisant que l'espérance d'une somme de variables aléatoires est la somme de leurs
   espérances, montrer que $E(X_n) = p_1 + p_2 + \cdots + p_n$.

   c) En déduire que $E(X_n)$ tend vers $+\infty$ quand $n$ tend vers $+\infty$.

Pour tout $n \geqslant 1$, on note $q_n = P(X_n > 0)$ la probabilité qu'il y ait au moins une
égalité au cours des $n$ premiers lancers. Le but de la question suivante est de montrer que la
suite $(q_n)$ tend vers $1$.

3. a) Montrer que la suite $(q_n)$ converge vers un réel $q$, et que $q_n \leqslant q \leqslant 1$
   pour tout $n \geqslant 1$.

   b) Montrer que, pour tous entiers $r \geqslant 1$ et $n \geqslant 1$,
   $P(X_n \geqslant r) \leqslant q^r$.

   c) En déduire que, pour tout entier $n \geqslant 1$, $E(X_n) \leqslant q + q^2 + \cdots + q^n$.

   d) Conclure.

## Hints

1. **Question 1a.** Il y a égalité au troisième lancer quand les trois résultats sont de trois types
   différents.
2. **Question 1c.** Raisonner par récurrence sur $m$, en partant de la valeur de $p_3$.
3. **Question 2a.** Prendre pour $Y_k$ la variable qui vaut $1$ s'il y a égalité au lancer $k$, et
   $0$ sinon.
4. **Question 2c.** Ne garder que les termes $p_3, p_6, p_9, \ldots$ et les minorer grâce à la
   question 1c. Pour montrer que $1 + \frac{1}{2} + \cdots + \frac{1}{M}$ tend vers $+\infty$,
   comparer $\frac{1}{m}$ et $\ln(m + 1) - \ln(m)$.
5. **Question 3a.** Comparer les événements $X_n > 0$ et $X_{n+1} > 0$.
6. **Question 3b.** Raisonner par récurrence sur $r$. Découper l'événement $X_n \geqslant r$ selon
   le numéro $k$ du **premier** lancer où il y a égalité.
7. **Question 3b.** S'il y a égalité au lancer $k$, il y a de nouveau égalité au lancer $k + \ell$
   si et seulement si les lancers $k+1, \ldots, k+\ell$ contiennent autant de résultats de chacun des
   trois types. Cela ne dépend que de ces lancers-là, qui se comportent comme les $\ell$ premiers.
8. **Question 3c.** Écrire $E(X_n) = \sum_{x=1}^{n} x\, P(X_n = x)$, puis remplacer $x$ par la
   somme de $x$ termes égaux à $1$ et regrouper autrement.
9. **Question 3d.** Si $q < 1$, la somme $q + q^2 + \cdots + q^n$ reste bornée.

## Solution

**1. a)** Il y a égalité au troisième lancer quand $A_3 = B_3 = C_3 = 1$, c'est-à-dire quand les
trois résultats sont de trois types différents. Il y a $3 \times 2 \times 1 = 6$ ordres possibles
pour les trois types, et chaque suite de trois types a la probabilité $\left(\frac{1}{3}\right)^3$.

**Conclusion :** $p_3 = \frac{6}{27} = \frac{2}{9}$.

**b)** Soit $m \geqslant 1$. Comme $m + 1 > 0$, l'inégalité voulue équivaut, après multiplication par
$9(m+1)^2 > 0$, à
$$9m(m+1) \leqslant (3m+2)(3m+1), \quad \text{c'est-à-dire} \quad 9m^2 + 9m \leqslant 9m^2 + 9m + 2,$$
ce qui est vrai.

**c)** Récurrence sur $m \geqslant 1$. Pour $m = 1$ : $p_3 = \frac{2}{9}$, donc $p_3 \geqslant \frac{2}{9 \times 1}$.

Supposons $p_{3m} \geqslant \frac{2}{9m}$ pour un entier $m \geqslant 1$. D'après la question 1b,
comme $p_{3m} > 0$,
$$p_{3m+3} \geqslant \frac{m}{m+1}\, p_{3m} \geqslant \frac{m}{m+1} \times \frac{2}{9m} = \frac{2}{9(m+1)}.$$

**Conclusion :** $p_{3m} \geqslant \frac{2}{9m}$ pour tout $m \geqslant 1$.

**2. a)** Pour $1 \leqslant k \leqslant n$, notons $Y_k$ la variable aléatoire qui vaut $1$ s'il y a
égalité au lancer $k$, et $0$ sinon. C'est une variable de Bernoulli de paramètre $p_k$. Compter
les lancers $k \leqslant n$ où il y a égalité revient à additionner les $Y_k$ :
$X_n = Y_1 + \cdots + Y_n$.

**b)** Pour une variable de Bernoulli, $E(Y_k) = 1 \times p_k + 0 \times (1 - p_k) = p_k$. Donc
$$E(X_n) = E(Y_1) + \cdots + E(Y_n) = p_1 + \cdots + p_n.$$

**c)** Soit $n \geqslant 3$ et $M$ le nombre de multiples de $3$ entre $1$ et $n$ ; ce sont
$3, 6, \ldots, 3M$, et $3(M+1) > n$, donc $M + 1 > \frac{n}{3}$. Tous les $p_k$ sont positifs ou nuls,
donc en ne gardant que les termes $p_{3m}$ et en utilisant la question 1c,
$$E(X_n) \geqslant p_3 + p_6 + \cdots + p_{3M} \geqslant \frac{2}{9}\left(1 + \frac{1}{2} + \cdots + \frac{1}{M}\right).$$

*Minoration de la somme.* Pour tout réel $x > -1$, on a $\ln(1 + x) \leqslant x$ (la fonction
$x \mapsto \ln(1+x)$ est concave, et sa tangente en $0$ est la droite $y = x$). Avec
$x = \frac{1}{m}$ :
$$\ln(m+1) - \ln(m) = \ln\left(1 + \frac{1}{m}\right) \leqslant \frac{1}{m}.$$
En additionnant pour $m$ de $1$ à $M$, les termes se simplifient deux à deux et il reste
$$1 + \frac{1}{2} + \cdots + \frac{1}{M} \geqslant \ln(M + 1) - \ln(1) = \ln(M+1) > \ln\left(\frac{n}{3}\right).$$

Ainsi $E(X_n) \geqslant \frac{2}{9}\ln\left(\frac{n}{3}\right)$, et ce minorant tend vers $+\infty$.

**Conclusion :** $E(X_n)$ tend vers $+\infty$ quand $n$ tend vers $+\infty$.

**3. a)** S'il y a au moins une égalité au cours des $n$ premiers lancers, il y en a au moins une au
cours des $n + 1$ premiers. L'événement $X_n > 0$ est donc inclus dans l'événement $X_{n+1} > 0$,
et $q_n \leqslant q_{n+1}$. La suite $(q_n)$ est croissante et majorée par $1$, donc elle converge vers
un réel $q$, avec $q \leqslant 1$. Comme elle est croissante, chacun de ses termes est inférieur ou
égal à sa limite : $q_n \leqslant q$.

**b)** Convenons que $X_0 = 0$, ce qui permet d'écrire les formules ci-dessous aussi quand $k = n$.
Montrons par récurrence sur $r \geqslant 1$ la propriété : « pour tout $n \geqslant 0$,
$P(X_n \geqslant r) \leqslant q^r$ ».

*Pour $r = 1$.* $P(X_n \geqslant 1) = q_n \leqslant q$ si $n \geqslant 1$, et
$P(X_0 \geqslant 1) = 0 \leqslant q$.

*Passage de $r - 1$ à $r$, pour $r \geqslant 2$.* Supposons que $P(X_\ell \geqslant r - 1) \leqslant q^{r-1}$
pour tout $\ell \geqslant 0$. Soit $n \geqslant 1$. Pour $1 \leqslant k \leqslant n$, notons :

- $E_k$ l'événement « le premier lancer où il y a égalité est le lancer $k$ » ;
- $G_k$ l'événement « parmi les entiers $\ell$ de $1$ à $n - k$, au moins $r - 1$ sont tels que les
  lancers $k+1, \ldots, k+\ell$ contiennent autant de résultats de chacun des trois types ».

*Le lien avec $X_n$.* Supposons qu'il y ait égalité au lancer $k$, avec $A_k = B_k = C_k$. Pour
$\ell \geqslant 1$, notons $A'$, $B'$, $C'$ les nombres de résultats de chaque type parmi les lancers
$k+1, \ldots, k+\ell$. Alors $A_{k+\ell} = A_k + A'$, $B_{k+\ell} = B_k + B'$ et
$C_{k+\ell} = C_k + C'$, donc il y a égalité au lancer $k + \ell$ si et seulement si $A' = B' = C'$.

Si $X_n \geqslant r$, il y a au moins une égalité ; soit $k$ le premier lancer où il y en a une. Les
$r - 1$ égalités suivantes (au moins) ont lieu à des lancers $k + \ell$ avec
$1 \leqslant \ell \leqslant n - k$, donc $E_k$ et $G_k$ sont réalisés. Réciproquement, si $E_k$ et
$G_k$ sont réalisés, il y a une égalité au lancer $k$ et au moins $r - 1$ après, donc
$X_n \geqslant r$. Les événements $E_k$ étant deux à deux incompatibles,
$$P(X_n \geqslant r) = \sum_{k=1}^{n} P(E_k \cap G_k).$$

*Indépendance.* L'événement $E_k$ ne dépend que des lancers $1$ à $k$, et l'événement $G_k$ ne
dépend que des lancers $k+1$ à $n$. Les lancers étant indépendants, $E_k$ et $G_k$ sont indépendants.
De plus, les lancers $k+1, \ldots, n$ se comportent exactement comme les lancers $1, \ldots, n-k$ :
la probabilité de $G_k$ est donc celle d'avoir au moins $r - 1$ égalités au cours des $n - k$
premiers lancers, c'est-à-dire $P(G_k) = P(X_{n-k} \geqslant r - 1) \leqslant q^{r-1}$ par
hypothèse de récurrence. Donc
$$P(X_n \geqslant r) = \sum_{k=1}^{n} P(E_k)\, P(G_k) \leqslant q^{r-1} \sum_{k=1}^{n} P(E_k).$$

Enfin, la réunion des événements incompatibles $E_1, \ldots, E_n$ est l'événement « il y a au moins
une égalité au cours des $n$ premiers lancers », donc $\sum_{k=1}^{n} P(E_k) = q_n \leqslant q$.
Ainsi $P(X_n \geqslant r) \leqslant q^{r-1} \times q = q^r$ (et pour $n = 0$, $P(X_0 \geqslant r) = 0$).

**Conclusion :** $P(X_n \geqslant r) \leqslant q^r$ pour tous $r \geqslant 1$ et $n \geqslant 1$.

**c)** La variable $X_n$ prend ses valeurs dans $\{0, 1, \ldots, n\}$. En écrivant chaque entier $x$
comme la somme de $x$ termes égaux à $1$ :
$$E(X_n) = \sum_{x=1}^{n} x\, P(X_n = x) = \sum_{x=1}^{n} \sum_{r=1}^{x} P(X_n = x).$$
Regroupons les termes selon $r$ : pour $r$ fixé entre $1$ et $n$, on additionne $P(X_n = x)$ pour
$x$ allant de $r$ à $n$, ce qui donne $P(X_n \geqslant r)$. Donc, avec la question 3b,
$$E(X_n) = \sum_{r=1}^{n} P(X_n \geqslant r) \leqslant q + q^2 + \cdots + q^n.$$

**d)** Supposons $q < 1$. Alors, comme $q \geqslant 0$,
$$E(X_n) \leqslant q + q^2 + \cdots + q^n = q\,\frac{1 - q^n}{1 - q} \leqslant \frac{q}{1 - q}$$
pour tout $n$ : la suite $(E(X_n))$ serait bornée, ce qui contredit la question 2c. Donc $q \geqslant 1$,
et comme $q \leqslant 1$, $q = 1$.

**Conclusion :** la suite $(q_n)$ converge vers $1$ : la probabilité qu'il y ait au moins une égalité
au cours des $n$ premiers lancers tend vers $1$.

**Bilan.** Le nombre moyen d'égalités au cours des $n$ premiers lancers tend vers l'infini, au moins
comme $\frac{2}{9}\ln\left(\frac{n}{3}\right)$. Or, si l'on avait une probabilité $q < 1$ d'avoir un
jour une égalité, chaque égalité supplémentaire coûterait un facteur $q$, et ce nombre moyen
resterait inférieur à $\frac{q}{1-q}$. Donc l'égalité des trois compteurs finit par se produire avec
une probabilité qui tend vers $1$.

## Going further

- Dans le sujet d'origine, chaque lancer est codé par l'un des nombres complexes $1$, $j$, $j^2$, où
  $j = e^{2i\pi/3}$, et il y a égalité au lancer $k$ exactement quand la somme des $k$ premiers codes
  est nulle : c'est une marche au hasard dans le plan, et l'on vient de montrer qu'elle revient
  presque sûrement à son point de départ. Le calcul de $p_{3m}$ est fait dans l'exercice 40565.
- Le résultat est lent à se manifester : un calcul sur ordinateur donne $q_{30} \approx \text{0,44}$
  et $q_{3000} \approx \text{0,67}$ seulement.
- Avec quatre types au lieu de trois (un dé à huit faces, et le reste dans la division par $4$), le
  même raisonnement ne marche plus : la probabilité d'avoir un jour quatre compteurs égaux est
  strictement inférieure à $1$. Où l'argument casse-t-il ?
