---
id: "40729"
title: "Il n'existe qu'un seul nombre explosif"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [suites, suite-recurrente, derivee, limite, croissances-comparees, logarithme, unicite, raisonnement-par-l-absurde, dichotomie, calculatrice]
adapted_from: null
see_also: ["40726", "40727", "40728"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 2 « Un nombre explosif », partie III « Un unique nombre explosif », questions 12 à 14"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $f_n$ la fonction définie sur $]0 ; +\infty[$ par
$f_n(x) = \left( 1 + \frac{1}{x} \right)^n$. Pour un réel $c > 0$, la **suite associée à $c$** est
la suite $(x_n)$ définie par $x_1 = c$ et $x_{n+1} = f_n(x_n)$ pour tout $n \geq 1$. On dit que $c$
est **explosif** si la suite associée à $c$ tend vers $+\infty$.

Pour tout entier $n \geq 1$, on pose $y_n = \frac{n+1}{\ln(n+2)} - 1$ et, pour tout entier
$n \geq 9$, on note $I_n$ l'intervalle $\left[ y_{n-1} ; \frac{n}{\ln(y_n)} \right]$.

On admet les résultats suivants, démontrés dans d'autres parties du problème.

- **(A1)** Pour tout réel $x > 0$ et tout entier $n \geq 1$,
  $\exp\left( \frac{n}{x+1} \right) \leq f_n(x) \leq \exp\left( \frac{n}{x} \right)$.
- **(A2)** Pour tout entier $n \geq 8$, $y_n > \mathrm{e}$.
- **(A3)** L'ensemble des nombres explosifs est un intervalle $[\alpha ; \beta]$, avec
  $0 < \alpha \leq \beta$. Si $c$ est explosif, sa suite associée vérifie $x_n \in I_n$ pour tout
  $n \geq 9$.

On note $(\alpha_n)$ et $(\beta_n)$ les suites associées à $\alpha$ et à $\beta$, et $f_n'$ la
dérivée de $f_n$.

1. a) Démontrer que, pour tout entier $n \geq 9$ et tout réel $x \in I_n$,
   $$|f_n'(x)| \geq \left| f_n'\left( \frac{n}{\ln(y_n)} \right) \right|.$$

   b) En déduire que, pour tout entier $n \geq 9$ et tout réel $x \in I_n$,
   $$|f_n'(x)| \geq \frac{y_n\,(\ln(y_n))^2}{n} \exp\left( -\frac{1 + \ln(y_n)}{n + \ln(y_n)} \ln(y_n) \right).$$

   c) Démontrer que
   $$\lim_{n \to +\infty} \frac{y_n \ln(n)}{n} = 1 \qquad \text{et} \qquad \lim_{n \to +\infty} \frac{\ln(y_n)}{\ln(n)} = 1.$$

   d) En déduire qu'il existe un entier $N \geq 9$ tel que, pour tout entier $n \geq N$ et tout réel
   $x \in I_n$, $|f_n'(x)| \geq 2$.

2. Dans cette question, $N$ est un entier comme en 1. d).

   a) Démontrer que, pour tout entier $n \geq N$ et tous réels $x$, $y$ de $I_n$,
   $|f_n(x) - f_n(y)| \geq 2\,|x - y|$.

   b) Démontrer que, si $\alpha < \beta$, il existe un réel $C > 0$ tel que
   $|\alpha_n - \beta_n| \geq C \times 2^n$ pour tout entier $n \geq N$.

3. a) Démontrer qu'il n'existe qu'un seul nombre explosif.

   b) À la calculatrice, en décrivant l'algorithme utilisé, donner une valeur approchée à $10^{-2}$
   près du nombre explosif.

## Hints

1. **Question 1 a).** Calculer $f_n'(x)$ et vérifier que $|f_n'(x)|$ est un produit de deux
   fonctions positives et décroissantes de $x$.
2. **Question 1 b).** Avec $z = \frac{n}{\ln(y_n)}$, écrire $|f_n'(z)| = \frac{n}{z^2} f_{n-1}(z)$ et
   utiliser (A1) pour $f_{n-1}$. Puis comparer les deux exponentielles, en écrivant
   $y_n = \exp(\ln(y_n))$.
3. **Question 1 c).** Écrire $\ln(n+2) = \ln(n) + \ln\left( 1 + \frac{2}{n} \right)$. Pour la seconde
   limite, partir de $y_n = \frac{y_n \ln(n)}{n} \times \frac{n}{\ln(n)}$ et prendre le logarithme.
4. **Question 1 d).** Montrer que le minorant de 1 b) tend vers $+\infty$ : son facteur devant
   l'exponentielle se comporte comme $\ln(n)$, et l'exponentielle tend vers $1$.
5. **Question 2 a).** Étudier les variations de $t \mapsto f_n(t) + 2t$ sur $I_n$.
6. **Question 2 b).** Montrer d'abord que $\alpha_N \neq \beta_N$ : chaque $f_n$ est strictement
   décroissante. Puis raisonner par récurrence à partir du rang $N$.
7. **Question 3 a).** Les deux nombres $\alpha_n$ et $\beta_n$ sont dans $I_n$. Quelle est au plus
   la longueur de $I_n$ ?
8. **Question 3 b).** Pour un réel $c$, si la suite associée sort de $I_k$ à un rang $k \geq 9$, on
   sait que $c$ n'est pas explosif. Peut-on savoir de quel côté de $\alpha$ se trouve $c$ ? Penser au
   sens de variation de $c \mapsto x_k$.

## Solution

**1. a)** Pour $x > 0$, la dérivée de $x \mapsto 1 + \frac{1}{x}$ est $-\frac{1}{x^2}$, donc

$$f_n'(x) = -\frac{n}{x^2} \left( 1 + \frac{1}{x} \right)^{n-1}, \qquad |f_n'(x)| = \frac{n}{x^2} \left( 1 + \frac{1}{x} \right)^{n-1}.$$

Les fonctions $x \mapsto \frac{n}{x^2}$ et $x \mapsto \left( 1 + \frac{1}{x} \right)^{n-1}$ sont
positives et décroissantes sur $]0 ; +\infty[$, donc leur produit $|f_n'|$ est décroissant. Pour
$x \in I_n$, on a $x \leq \frac{n}{\ln(y_n)}$, d'où l'inégalité demandée.

**1. b)** Soit $n \geq 9$ et posons $L = \ln(y_n)$, qui vérifie $L > 1$ d'après (A2), et
$z = \frac{n}{L}$. On a $\frac{n}{z^2} = \frac{n L^2}{n^2} = \frac{L^2}{n}$, et
$\left( 1 + \frac{1}{z} \right)^{n-1} = f_{n-1}(z)$. D'après (A1) appliqué à $f_{n-1}$ (avec
$n - 1 \geq 1$),

$$|f_n'(z)| = \frac{L^2}{n} f_{n-1}(z) \geq \frac{L^2}{n} \exp\left( \frac{n-1}{z+1} \right).$$

Or $z + 1 = \frac{n + L}{L}$, donc $\frac{n-1}{z+1} = \frac{(n-1)L}{n+L}$. Par ailleurs, en écrivant
$y_n = \exp(L)$, le membre de droite de l'inégalité demandée vaut

$$\frac{L^2}{n} \exp\left( L - \frac{(1+L)L}{n+L} \right) = \frac{L^2}{n} \exp\left( \frac{L(n+L) - L - L^2}{n+L} \right) = \frac{L^2}{n} \exp\left( \frac{(n-1)L}{n+L} \right).$$

C'est exactement le minorant obtenu. Avec la question a), l'inégalité est vraie pour tout $x \in I_n$.

**1. c)** *Première limite.* On a

$$\frac{y_n \ln(n)}{n} = \frac{n+1}{n} \times \frac{\ln(n)}{\ln(n+2)} - \frac{\ln(n)}{n}.$$

Or $\frac{\ln(n+2)}{\ln(n)} = 1 + \frac{\ln(1 + 2/n)}{\ln(n)}$ tend vers $1$, car le numérateur
$\ln(1 + 2/n)$ tend vers $0$ et le dénominateur vers $+\infty$. De plus $\frac{n+1}{n}$ tend vers $1$
et $\frac{\ln(n)}{n}$ tend vers $0$ par croissances comparées. La limite vaut donc $1 \times 1 - 0 = 1$.

*Seconde limite.* Notons $r_n = \frac{y_n \ln(n)}{n}$, de sorte que $y_n = r_n \times \frac{n}{\ln(n)}$
(avec $r_n > 0$ pour $n \geq 8$). Alors $\ln(y_n) = \ln(r_n) + \ln(n) - \ln(\ln(n))$, et

$$\frac{\ln(y_n)}{\ln(n)} = \frac{\ln(r_n)}{\ln(n)} + 1 - \frac{\ln(\ln(n))}{\ln(n)}.$$

Comme $r_n$ tend vers $1$, $\ln(r_n)$ tend vers $0$, donc le premier terme tend vers $0$. En posant
$X = \ln(n)$, qui tend vers $+\infty$, le dernier terme est $\frac{\ln(X)}{X}$, qui tend vers $0$ par
croissances comparées. La limite vaut donc $1$.

**1. d)** Notons $m_n$ le minorant de 1. b), avec $L = \ln(y_n)$ :

$$m_n = \frac{y_n L^2}{n} \times \exp\left( -\frac{(1+L)L}{n+L} \right).$$

*Le premier facteur.* On l'écrit
$\frac{y_n L^2}{n} = \frac{y_n \ln(n)}{n} \times \left( \frac{L}{\ln(n)} \right)^2 \times \ln(n)$.
D'après c), il est le produit de deux facteurs qui tendent vers $1$ et de $\ln(n)$ qui tend vers
$+\infty$ : il tend vers $+\infty$.

*L'exponentielle.* On a $0 < \frac{(1+L)L}{n+L} \leq \frac{(1+L)L}{n}$, et

$$\frac{(1+L)L}{n} = \frac{1 + L}{\ln(n)} \times \frac{L}{\ln(n)} \times \frac{(\ln(n))^2}{n}.$$

Les deux premiers facteurs tendent vers $1$ d'après c). Pour le troisième,
$\frac{(\ln(n))^2}{n} = \left( \frac{\ln(n)}{\sqrt{n}} \right)^2 = \left( \frac{2 \ln(\sqrt{n})}{\sqrt{n}} \right)^2$
tend vers $0$ par croissances comparées. Donc $\frac{(1+L)L}{n+L}$ tend vers $0$, et l'exponentielle
tend vers $\exp(0) = 1$.

Ainsi $m_n$ tend vers $+\infty$. Il existe donc un entier $N \geq 9$ tel que $m_n \geq 2$ pour tout
$n \geq N$, et alors, d'après 1. b), $|f_n'(x)| \geq m_n \geq 2$ pour tout $n \geq N$ et tout
$x \in I_n$.

**2. a)** Soit $n \geq N$. Sur $I_n$, $f_n'(x) < 0$ et $|f_n'(x)| \geq 2$, donc $f_n'(x) \leq -2$. La
fonction $\varphi : t \mapsto f_n(t) + 2t$ a pour dérivée $f_n'(t) + 2 \leq 0$ sur l'intervalle $I_n$ :
elle y est décroissante. Soit $x$, $y$ dans $I_n$, par exemple $y \leq x$. Alors
$\varphi(x) \leq \varphi(y)$, c'est-à-dire $f_n(x) + 2x \leq f_n(y) + 2y$, soit

$$f_n(y) - f_n(x) \geq 2(x - y) \geq 0, \qquad \text{donc} \qquad |f_n(x) - f_n(y)| \geq 2|x - y|.$$

**2. b)** Supposons $\alpha < \beta$. Les deux nombres sont explosifs, donc, d'après (A3),
$\alpha_n$ et $\beta_n$ sont dans $I_n$ pour tout $n \geq 9$.

*On a $\alpha_N \neq \beta_N$.* Chaque $f_n$ est strictement décroissante, donc deux nombres
différents ont des images différentes. Comme $\alpha_1 = \alpha \neq \beta = \beta_1$, on obtient de
proche en proche $\alpha_2 \neq \beta_2$, $\alpha_3 \neq \beta_3$, …, et $\alpha_N \neq \beta_N$.

*Récurrence.* Pour $n \geq N$, d'après a),
$|\alpha_{n+1} - \beta_{n+1}| = |f_n(\alpha_n) - f_n(\beta_n)| \geq 2|\alpha_n - \beta_n|$. Par récurrence,
$|\alpha_n - \beta_n| \geq 2^{n-N} |\alpha_N - \beta_N|$ pour tout $n \geq N$. Le réel
$C = \frac{|\alpha_N - \beta_N|}{2^N}$ est strictement positif, et $|\alpha_n - \beta_n| \geq C \times 2^n$
pour tout $n \geq N$.

**3. a)** Supposons $\alpha < \beta$. Pour $n \geq N$, $\alpha_n$ et $\beta_n$ sont dans $I_n$, donc
$|\alpha_n - \beta_n|$ est au plus la longueur de $I_n$. Comme $y_{n-1} > 0$ et $\ln(y_n) > 1$, cette
longueur est au plus $\frac{n}{\ln(y_n)} < n$. Avec 2. b), on obtient $C \times 2^n \leq n$, soit
$\frac{2^n}{n} \leq \frac{1}{C}$, pour tout $n \geq N$. Mais
$\frac{2^n}{n} = \frac{\exp(n \ln 2)}{n}$ tend vers $+\infty$ par croissances comparées : c'est une
contradiction. Donc $\alpha = \beta$, et l'ensemble des nombres explosifs est $[\alpha ; \alpha] = \{\alpha\}$.
**Il existe un unique nombre explosif.**

**3. b)** *Le sens de variation de $c \mapsto x_k$.* Pour $k$ fixé, notons $x_k(c)$ le $k$-ième terme
de la suite associée à $c$. La fonction $c \mapsto x_1(c) = c$ est croissante, et chaque $f_n$ est
strictement décroissante, donc $c \mapsto x_k(c)$ est strictement croissante si $k$ est impair et
strictement décroissante si $k$ est pair.

*Le test.* Soit $c > 0$. On calcule $x_2, x_3, \ldots$ et on s'arrête au premier rang $k \geq 9$ où
$x_k$ sort de $I_k$. Comme $x_k(\alpha) \in I_k$ :

- si $x_k(c) < y_{k-1}$, alors $x_k(c) < x_k(\alpha)$ : pour $k$ impair, $c < \alpha$ ; pour $k$ pair,
  $c > \alpha$ ;
- si $x_k(c) > \frac{k}{\ln(y_k)}$, alors $x_k(c) > x_k(\alpha)$ : pour $k$ impair, $c > \alpha$ ;
  pour $k$ pair, $c < \alpha$.

*La dichotomie.* Le test place $c = 1$ en dessous de $\alpha$ (la suite sort de $I_{12}$ par le
haut, au rang pair $12$) et $c = \text{1,4}$ au-dessus (elle sort de $I_{12}$ par le bas). On part de
l'intervalle $[1 ; \text{1,4}]$, on teste son milieu, et on garde la moitié qui contient $\alpha$.
Après six étapes (milieux testés : $\text{1,2}$, $\text{1,1}$, $\text{1,15}$, $\text{1,175}$,
$\text{1,1875}$, $\text{1,18125}$), on obtient $\text{1,18125} \leq \alpha \leq \text{1,1875}$,
intervalle de longueur $\frac{\text{0,4}}{2^6} < \text{0,01}$. Tous ses points sont à moins de
$\text{0,01}$ de $\text{1,19}$, donc **$\alpha \approx \text{1,19}$ à $10^{-2}$ près**. (En
poursuivant, on trouve $\alpha = \text{1,18745} \ldots$)

**Bilan.** Près de la suite d'un nombre explosif, les fonctions $f_n$ multiplient les écarts au
moins par $2$ à partir d'un certain rang. Deux nombres explosifs différents donneraient donc deux
suites dont l'écart grandit au moins comme $2^n$, alors qu'elles restent dans des intervalles $I_n$
de longueur inférieure à $n$. C'est impossible : il existe un unique nombre explosif, environ
$\text{1,19}$.

## Going further

- Il faut prendre $N$ assez grand : à la calculatrice, le minorant de 1. b) ne dépasse $2$ qu'à
  partir de $n = 151$.
- L'argument « une application qui écarte les points ne peut pas garder deux points dans un petit
  intervalle » est très général. Pourquoi, inversement, est-il si difficile de calculer une suite
  explosive à la calculatrice, même en partant d'une très bonne valeur approchée de $\alpha$ ?
