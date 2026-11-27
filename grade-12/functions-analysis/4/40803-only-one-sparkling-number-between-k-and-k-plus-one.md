---
id: "40803"
title: "Un seul nombre pétillant entre k et k + 1"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [suites, recurrence, encadrement, carre-parfait, partie-entiere, limite, unicite, factorisation]
adapted_from: null
see_also: ["40801", "40802"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 1 « En pleine effervescence », partie 3 « Unicité », questions 10 à 13"
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

On considère un entier $k \geqslant 1$ fixé et la suite $(u_n)_{n \geqslant 1}$ définie par
$$u_1 = (k+1)^2 \quad \text{et, pour tout entier } n \geqslant 1, \quad u_{n+1} = (u_n - 1)^2.$$
On admet que, pour tout $n \geqslant 1$, $u_n$ est un entier et $u_n \geqslant 3$. On admet aussi
que, pour tout $n \geqslant 1$, il existe un unique réel $a_n \geqslant 1$ tel que
$a_n^{2^n} = u_n - 2$, et un unique réel $b_n \geqslant 1$ tel que $b_n^{2^n} = u_n - 1$.

Soit $\gamma$ un réel pétillant appartenant à l'intervalle $[k ; k+1[$. Pour tout entier
$n \geqslant 1$, on pose
$$v_n = \mathrm{E}(\gamma^{2^n}) + 2.$$

1. Démontrer que $u_n = v_n$ pour tout entier $n \geqslant 1$.
2. Démontrer que, pour tout entier $n \geqslant 1$, $a_n \leqslant \gamma \leqslant b_n$.
3. a) Soit $x$ et $y$ deux réels tels que $x \geqslant y \geqslant 1$. Démontrer que, pour tout
   entier $n \geqslant 1$,
   $$x^{2^n} - y^{2^n} \geqslant 2^n (x - y).$$

   b) Démontrer que les suites $(a_n)_{n \geqslant 1}$ et $(b_n)_{n \geqslant 1}$ convergent
   toutes les deux vers $\gamma$.
4. Démontrer que $\gamma$ est l'unique réel pétillant contenu dans l'intervalle $[k ; k+1[$.

## Hints

1. **Question 1.** Raisonner par récurrence. Pour $n = 1$ : encadrer $\gamma^2$, puis
   $\mathrm{E}(\gamma^2)$, puis $v_1$.
2. **Question 1.** On sait que $v_1$ est un carré. Combien y a-t-il de carrés d'entiers entre
   $k^2 + 2$ et $(k+1)^2 + 1$ ?
3. **Question 1.** Pour l'hérédité, l'hypothèse $v_n = u_n$ donne un encadrement de
   $\gamma^{2^n}$ entre deux entiers consécutifs. Élever au carré, et recommencer le raisonnement
   de l'initialisation avec $u_n - 2$ à la place de $k$.
4. **Question 2.** Traduire $v_n = u_n$ en un encadrement de $\gamma^{2^n}$, et comparer avec
   $a_n^{2^n}$ et $b_n^{2^n}$.
5. **Question 3a.** Récurrence sur $n$ : factoriser $x^{2^{n+1}} - y^{2^{n+1}}$ comme une
   différence de deux carrés.
6. **Question 3b.** Appliquer la question 3a à $x = b_n$ et $y = a_n$ : que vaut
   $b_n^{2^n} - a_n^{2^n}$ ?
7. **Question 4.** Les suites $(u_n)$, $(a_n)$ et $(b_n)$ ne dépendent que de $k$, pas de
   $\gamma$.

## Solution

On utilise plusieurs fois le fait suivant : pour tout entier $n \geqslant 1$, la fonction
$x \mapsto x^{2^n}$ est strictement croissante sur $[0 ; +\infty[$. Donc, pour $x, y \geqslant 0$,
$x \leqslant y$ équivaut à $x^{2^n} \leqslant y^{2^n}$, et de même avec des inégalités strictes.

**1.** Récurrence sur $n \geqslant 1$.

*Initialisation.* On a $k \leqslant \gamma < k + 1$, avec $k \geqslant 1$, donc
$k^2 \leqslant \gamma^2 < (k+1)^2$. Comme $k^2$ est un entier inférieur ou égal à $\gamma^2$, on a
$\mathrm{E}(\gamma^2) \geqslant k^2$. Comme $\mathrm{E}(\gamma^2) \leqslant \gamma^2 < (k+1)^2$ et
que ce sont des entiers, $\mathrm{E}(\gamma^2) \leqslant (k+1)^2 - 1$. Donc
$$k^2 + 2 \leqslant v_1 \leqslant (k+1)^2 + 1.$$
Comme $\gamma$ est pétillant, $v_1$ est le carré d'un entier. Ce carré est strictement plus grand
que $k^2$, donc il est au moins égal à $(k+1)^2$, le carré suivant. Il est au plus égal à
$(k+1)^2 + 1$, qui est strictement plus petit que $(k+2)^2 = (k+1)^2 + 2k + 3$. Le seul carré
possible est $(k+1)^2$, donc $v_1 = (k+1)^2 = u_1$.

*Hérédité.* Supposons $v_n = u_n$ pour un entier $n \geqslant 1$, c'est-à-dire
$\mathrm{E}(\gamma^{2^n}) = u_n - 2$. Posons $N = u_n - 2$ ; c'est un entier et $N \geqslant 1$.
Alors
$$N \leqslant \gamma^{2^n} < N + 1.$$
Ces nombres sont positifs, donc en élevant au carré :
$N^2 \leqslant \gamma^{2^{n+1}} < (N+1)^2$. Exactement comme dans l'initialisation, on en déduit
$N^2 \leqslant \mathrm{E}(\gamma^{2^{n+1}}) \leqslant (N+1)^2 - 1$, puis
$$N^2 + 2 \leqslant v_{n+1} \leqslant (N+1)^2 + 1 < (N+2)^2.$$
Le nombre $v_{n+1}$ est un carré (car $\gamma$ est pétillant), strictement plus grand que $N^2$ et
strictement plus petit que $(N+2)^2$ : c'est donc $(N+1)^2$. Ainsi
$$v_{n+1} = (N+1)^2 = (u_n - 1)^2 = u_{n+1}.$$

**Conclusion :** $u_n = v_n$ pour tout $n \geqslant 1$.

**2.** Soit $n \geqslant 1$. D'après la question 1, $\mathrm{E}(\gamma^{2^n}) = u_n - 2$, donc
$$u_n - 2 \leqslant \gamma^{2^n} < u_n - 1, \quad \text{c'est-à-dire} \quad
a_n^{2^n} \leqslant \gamma^{2^n} < b_n^{2^n}.$$
Comme $a_n$, $b_n$ et $\gamma$ sont positifs, on en déduit $a_n \leqslant \gamma < b_n$, et en
particulier $a_n \leqslant \gamma \leqslant b_n$.

**3. a)** Fixons $x \geqslant y \geqslant 1$ et raisonnons par récurrence sur $n \geqslant 1$.

*Initialisation.* $x^2 - y^2 = (x - y)(x + y)$. Or $x - y \geqslant 0$ et $x + y \geqslant 2$, donc
$x^2 - y^2 \geqslant 2(x - y)$.

*Hérédité.* Supposons $x^{2^n} - y^{2^n} \geqslant 2^n(x - y)$. Comme
$x^{2^{n+1}} = (x^{2^n})^2$, on a
$$x^{2^{n+1}} - y^{2^{n+1}} = (x^{2^n} - y^{2^n})(x^{2^n} + y^{2^n}).$$
Le premier facteur est au moins $2^n(x - y)$, qui est positif ou nul, et le second est au moins
$1 + 1 = 2$ puisque $x, y \geqslant 1$. Donc
$x^{2^{n+1}} - y^{2^{n+1}} \geqslant 2^n(x-y) \times 2 = 2^{n+1}(x - y)$.

**Conclusion :** $x^{2^n} - y^{2^n} \geqslant 2^n(x - y)$ pour tout $n \geqslant 1$.

**b)** Soit $n \geqslant 1$. D'après la question 2, $b_n \geqslant a_n \geqslant 1$. La question 3a,
appliquée à $x = b_n$ et $y = a_n$, donne
$$1 = (u_n - 1) - (u_n - 2) = b_n^{2^n} - a_n^{2^n} \geqslant 2^n (b_n - a_n),$$
donc $0 \leqslant b_n - a_n \leqslant \frac{1}{2^n}$. Avec la question 2, on obtient
$$0 \leqslant \gamma - a_n \leqslant b_n - a_n \leqslant \frac{1}{2^n}
\quad \text{et} \quad 0 \leqslant b_n - \gamma \leqslant b_n - a_n \leqslant \frac{1}{2^n}.$$
Comme $\frac{1}{2^n}$ tend vers $0$, le théorème des gendarmes montre que $\gamma - a_n$ et
$b_n - \gamma$ tendent vers $0$.

**Conclusion :** $(a_n)$ et $(b_n)$ convergent toutes les deux vers $\gamma$.

**4.** Soit $\gamma'$ un réel pétillant de l'intervalle $[k ; k+1[$. Les suites $(u_n)$, $(a_n)$ et
$(b_n)$ ne dépendent que de $k$. Tout ce qui précède s'applique donc aussi à $\gamma'$, et la
question 3b montre que $(a_n)$ converge vers $\gamma'$. Une suite n'a qu'une limite, donc
$\gamma' = \gamma$.

**Conclusion :** $\gamma$ est le seul réel pétillant de l'intervalle $[k ; k+1[$.

**Bilan.** Un intervalle $[k ; k+1[$, avec $k \geqslant 1$ entier, contient au plus un réel
pétillant : s'il y en a un, c'est la limite commune des suites $(a_n)$ et $(b_n)$, qui ne
dépendent que de $k$. Pour savoir qu'il y en a effectivement un, il faut la partie « existence »
du problème (exercice 40802).

## Going further

- Dans la partie précédente du sujet (exercice 40802), on montrait que la limite $\alpha$ de
  $(a_n)$ est pétillante et vérifie $k < \alpha < k + 1$. Avec le résultat de cet exercice, chaque
  intervalle $[k ; k+1[$ contient donc exactement un réel pétillant, et comme $[0 ; 1[$ n'en
  contient aucun (exercice 40801), on les connaît tous.
- Notons $\alpha_k$ le réel pétillant de $[k ; k+1[$. Le carré d'un réel pétillant est encore
  pétillant (exercice 40801). Montrer que $\alpha_1^2 = \alpha_2$. Plus généralement, que vaut
  $\alpha_k^2$ ?
- La question 3a dit que l'écart entre deux nombres au moins égaux à $1$ est multiplié au moins
  par $2$ quand on les élève au carré. C'est ce « grossissement » qui rend l'encadrement de
  $\gamma$ aussi précis.
