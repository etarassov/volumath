---
id: "40723"
title: "Les nombres dont tous les facteurs premiers sont petits"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 35
tags: [nombres-premiers, decomposition-en-facteurs-premiers, logarithme, limite, croissances-comparees, denombrement, majoration]
adapted_from: null
see_also: ["40721", "40722", "40724", "40725"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 1 « Nombres pointus », partie III « Des ensembles à peu d'éléments », questions 9 et 10"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Soit $b$ un entier supérieur ou égal à $1$, et $f_b$ la fonction définie sur $]0 ; +\infty[$ par

$$f_b(x) = \frac{(\ln x)^b}{x}.$$

1. a) Soit $x > 1$, et $y = \frac{\ln x}{b}$. Démontrer que

   $$f_b(x) = \frac{b^b}{\left( \exp(y) / y \right)^b}.$$

   b) En déduire la limite de $f_b(x)$ quand $x$ tend vers $+\infty$.

Dans la suite, on fixe deux entiers $\ell \geq 1$ et $n \geq 2$. On note $A_\ell$ l'ensemble des
entiers supérieurs ou égaux à $1$ dont tous les facteurs premiers sont inférieurs ou égaux à
$2^\ell$ (le nombre $1$, qui n'a aucun facteur premier, appartient à $A_\ell$).

2. a) Quels sont les entiers de $1$ à $30$ qui appartiennent à $A_2$ ?

   b) On note $p_1, p_2, \ldots, p_k$ les nombres premiers inférieurs ou égaux à $2^\ell$, rangés
   dans l'ordre croissant. Soit $a$ un élément de $A_\ell$ tel que $a \leq n$. On écrit

   $$a = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k},$$

   où $\alpha_1, \ldots, \alpha_k$ sont des entiers naturels. Démontrer que chaque $\alpha_i$ est
   inférieur ou égal à $\frac{\ln n}{\ln 2}$.

   c) En déduire que le nombre d'éléments de $A_\ell$ inférieurs ou égaux à $n$ est au plus

   $$\left( \frac{\ln n}{\ln 2} + 1 \right)^{2^\ell}.$$

   d) On pose $b = 2^\ell$. Démontrer que le nombre d'éléments de $A_\ell$ inférieurs ou égaux à $n$
   est au plus

   $$\frac{2}{(\ln 2)^b} \times f_b(2n) \times n.$$

## Hints

1. **Question 1 b).** Quand $x$ tend vers $+\infty$, que fait $y$ ? Que sait-on de $\exp(y)/y$ ?
2. **Question 2 b).** Le facteur $p_i^{\alpha_i}$ est au plus égal à $a$, et $p_i \geq 2$.
3. **Question 2 c).** Un élément $a$ de $A_\ell$ est entièrement déterminé par la liste de ses
   exposants $(\alpha_1, \ldots, \alpha_k)$. Combien de valeurs chaque exposant peut-il prendre ?
   Et combien de nombres premiers y a-t-il au plus entre $1$ et $2^\ell$ ?
4. **Question 2 d).** Écrire $\frac{\ln n}{\ln 2} + 1$ comme un seul quotient de logarithmes.

## Solution

**1. a)** Comme $x > 1$, on a $\ln x > 0$, donc $y > 0$. De $y = \frac{\ln x}{b}$ on tire
$\ln x = by$, donc $x = \exp(by) = \left( \exp(y) \right)^b$. Ainsi

$$f_b(x) = \frac{(by)^b}{\left( \exp(y) \right)^b} = \frac{b^b\, y^b}{\left( \exp(y) \right)^b} = \frac{b^b}{\left( \exp(y)/y \right)^b}.$$

**1. b)** Quand $x$ tend vers $+\infty$, $\ln x$ tend vers $+\infty$, donc $y$ aussi. Par
croissances comparées, $\exp(y)/y$ tend vers $+\infty$ quand $y$ tend vers $+\infty$, donc sa
puissance $b$-ième aussi. Le numérateur $b^b$ est une constante, donc

$$\lim_{x \to +\infty} f_b(x) = 0.$$

**2. a)** Ce sont les entiers dont tous les facteurs premiers sont au plus $4$, c'est-à-dire de la
forme $2^i \times 3^j$ :

$$1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27.$$

**2. b)** Soit $i$ entre $1$ et $k$. Le nombre $p_i^{\alpha_i}$ divise $a$, donc
$p_i^{\alpha_i} \leq a \leq n$. Comme $p_i \geq 2$, on a $2^{\alpha_i} \leq p_i^{\alpha_i} \leq n$.
La fonction $\ln$ est croissante, donc $\alpha_i \ln 2 \leq \ln n$, et comme $\ln 2 > 0$,

$$\alpha_i \leq \frac{\ln n}{\ln 2}.$$

**2. c)** Un élément $a$ de $A_\ell$ est déterminé par la liste $(\alpha_1, \ldots, \alpha_k)$ de
ses exposants : deux listes différentes donnent deux nombres différents, par unicité de la
décomposition en facteurs premiers, et de toute façon deux nombres égaux ont la même liste. Il y a donc
au plus autant d'éléments de $A_\ell$ inférieurs ou égaux à $n$ que de listes possibles.

D'après b), chaque $\alpha_i$ est un entier compris entre $0$ et $\frac{\ln n}{\ln 2}$ : il prend au
plus $\frac{\ln n}{\ln 2} + 1$ valeurs. Par le principe multiplicatif, il y a au plus
$\left( \frac{\ln n}{\ln 2} + 1 \right)^k$ listes. Enfin, il y a au plus $2^\ell$ nombres premiers
entre $1$ et $2^\ell$, donc $k \leq 2^\ell$, et comme $\frac{\ln n}{\ln 2} + 1 \geq 1$, élever ce
nombre à une puissance plus grande ne le diminue pas. Le nombre d'éléments cherché est donc au plus

$$\left( \frac{\ln n}{\ln 2} + 1 \right)^{2^\ell}.$$

**2. d)** On a $\frac{\ln n}{\ln 2} + 1 = \frac{\ln n + \ln 2}{\ln 2} = \frac{\ln(2n)}{\ln 2}$. Avec
$b = 2^\ell$, la borne de c) s'écrit donc

$$\frac{(\ln(2n))^b}{(\ln 2)^b} = \frac{2n}{(\ln 2)^b} \times \frac{(\ln(2n))^b}{2n} = \frac{2}{(\ln 2)^b} \times f_b(2n) \times n.$$

C'est exactement la borne demandée.

**Bilan.** Parmi les entiers de $1$ à $n$, ceux dont tous les facteurs premiers sont au plus $2^\ell$
sont au plus $\frac{2}{(\ln 2)^b} \times f_b(2n) \times n$, avec $b = 2^\ell$. Comme $f_b(2n)$ tend
vers $0$ quand $n$ tend vers $+\infty$, leur proportion parmi les entiers de $1$ à $n$ tend vers
$0$ : ces nombres sont rares.

## Going further

- Le sujet cherchait à montrer qu'il existe autant de nombres *pointus* consécutifs que l'on veut
  (un nombre est pointu s'il a au plus un facteur premier, ou si son plus grand facteur premier
  est au moins le double du suivant, voir l'exercice 40721). Un nombre qui n'est pas pointu est soit dans $A_\ell$, soit dans un autre
  ensemble rare étudié dans l'exercice 40724. La preuve se termine dans l'exercice 40725.
- La borne de la question 2 c) est très grossière : pour $\ell = 2$ et $n = 30$, elle vaut environ
  $(\text{5,9})^4$, soit plus de $1000$, alors qu'il n'y a que $12$ éléments. Pourquoi la borne
  est-elle quand même suffisante pour montrer que la proportion tend vers $0$ ?
