---
id: "40402"
title: "f(f(n)) ≤ n : les itérés finissent par osciller"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [decomposition-en-facteurs-premiers, exposants, puissances, inegalite, majoration, iteration, suite-decroissante, suites-d-entiers, periodicite]
adapted_from: null
see_also: ["40401", "40403"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 1 « Les premiers sont les derniers », question 4 (a à d)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Tout entier $n \geq 2$ s'écrit comme produit de facteurs premiers :
$$n = p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_k^{a_k}$$
où $p_1, \ldots, p_k$ sont des nombres premiers **distincts** et où les exposants
$a_1, \ldots, a_k$ sont des entiers strictement positifs. On échange les rôles des nombres
premiers et des exposants, en posant
$$f(n) = a_1^{p_1} \times a_2^{p_2} \times \cdots \times a_k^{p_k} ,$$
et on pose $f(1) = 1$. Par exemple, $720 = 2^4 \times 3^2 \times 5^1$, donc
$f(720) = 4^2 \times 2^3 \times 1^5 = 128$.

On note enfin $f^0(n) = n$ et $f^{i+1}(n) = f(f^i(n))$ pour tout entier $i \geq 0$ : ainsi
$f^1(n) = f(n)$, $f^2(n) = f(f(n))$ (ce n'est pas un carré), et ainsi de suite.

1. Pour tous entiers $a \geq 2$ et $b \geq 0$, montrer que $ab \leq a^b$.

2. Soit $k \geq 1$ et soit $a_1, \ldots, a_k, b_1, \ldots, b_k$ des entiers tels que
   $a_i \geq 2$ et $b_i \geq 0$ pour tout $i$. Montrer que
   $$a_1 b_1 + a_2 b_2 + \cdots + a_k b_k \leq a_1^{b_1} \times a_2^{b_2} \times \cdots \times a_k^{b_k} .$$

3. Montrer que $f(f(n)) \leq n$ pour tout entier $n \geq 1$.

4. Soit $n \geq 1$. Montrer qu'il existe un entier $r$ tel que $f^{i+2}(n) = f^i(n)$ pour tout
   entier $i \geq r$. Autrement dit, à partir d'un certain rang, la suite
   $f^0(n), f^1(n), f^2(n), \ldots$ est constante ou alterne entre deux valeurs.

## Hints

1. **Question 1.** Traiter à part le cas $b = 0$. Pour $b \geq 1$, écrire $a^b = a \times a^{b-1}$
   et comparer $a^{b-1}$ avec $2^{b-1}$, puis $2^{b-1}$ avec $b$.
2. **Question 2.** Si $x \geq 2$ et $y \geq 2$, montrer que $x + y \leq xy$. On pourra développer
   $(x - 1)(y - 1)$.
3. **Question 2.** Les indices $i$ pour lesquels $b_i = 0$ ajoutent $0$ à gauche et multiplient
   par $1$ à droite. Pour les autres, $a_i^{b_i} \geq 2$.
4. **Question 3.** Sur un exemple : $n = 2^6 \times 5^4$. Calculer $f(n)$, le décomposer en
   facteurs premiers, puis calculer $f(f(n))$. D'où viennent les nombres premiers de $f(n)$ ?
5. **Question 3.** Les exposants $a_i$ ne sont pas forcément premiers : décomposer chacun d'eux
   avec les nombres premiers $q_1, \ldots, q_s$ qui divisent au moins l'un des $a_i$, sous la
   forme $a_i = q_1^{e_{i1}} \times \cdots \times q_s^{e_{is}}$.
6. **Question 3.** L'exposant de $q_j$ dans $f(n)$ est $c_j = e_{1j} p_1 + \cdots + e_{kj} p_k$.
   Utiliser la question 2 deux fois : une fois pour majorer $c_j$, une fois pour majorer
   $e_{i1} q_1 + \cdots + e_{is} q_s$.
7. **Question 4.** Regarder séparément les termes de rang pair $f^0(n), f^2(n), f^4(n), \ldots$ :
   que dit la question 3 sur cette suite ? Une suite d'entiers positifs qui ne fait que décroître
   peut-elle décroître strictement une infinité de fois ?

## Solution

**1.** Si $b = 0$ : $ab = 0 \leq 1 = a^0$.

Si $b \geq 1$ : on montre d'abord que $2^{b-1} \geq b$ pour tout entier $b \geq 1$. C'est vrai
pour $b = 1$ ($1 \geq 1$). Quand on passe de $b$ à $b + 1$, le membre de gauche double et le
membre de droite augmente de $1$ : si $2^{b-1} \geq b$, alors
$2^b = 2 \times 2^{b-1} \geq 2b = b + b \geq b + 1$. De proche en proche, l'inégalité est vraie
pour tout $b \geq 1$. Comme $a \geq 2$, on a $a^{b-1} \geq 2^{b-1} \geq b$, donc
$$a^b = a \times a^{b-1} \geq a \times b .$$

**Conclusion :** $ab \leq a^b$ pour tous $a \geq 2$ et $b \geq 0$.

**2.** *Un lemme.* Si $x \geq 2$ et $y \geq 2$, alors $xy - x - y = (x - 1)(y - 1) - 1 \geq 1 \times 1 - 1 = 0$,
donc $x + y \leq xy$. Il en découle que pour des nombres $x_1, \ldots, x_m$ tous supérieurs ou
égaux à $2$,
$$x_1 + x_2 + \cdots + x_m \leq x_1 \times x_2 \times \cdots \times x_m .$$
En effet, on ajoute les nombres un par un. Si $x_1 + \cdots + x_j \leq x_1 \times \cdots \times x_j$,
alors, puisque ce produit $P$ est au moins $2$ et que $x_{j+1} \geq 2$,
$x_1 + \cdots + x_{j+1} \leq P + x_{j+1} \leq P \times x_{j+1}$.

*Retour à la question.* Les indices $i$ tels que $b_i = 0$ donnent $a_i b_i = 0$ dans la somme et
$a_i^{b_i} = 1$ dans le produit : on peut les retirer sans rien changer. S'il ne reste aucun
indice, l'inégalité s'écrit $0 \leq 1$. Sinon, pour chaque indice restant, $b_i \geq 1$, donc
$a_i^{b_i} \geq 2$, et $a_i b_i \leq a_i^{b_i}$ par la question 1. Avec le lemme :
$$a_1 b_1 + \cdots + a_k b_k \leq a_1^{b_1} + \cdots + a_k^{b_k} \leq a_1^{b_1} \times \cdots \times a_k^{b_k}$$
(les sommes et le produit ne portant que sur les indices restants).

**3.** Pour $n = 1$, $f(f(1)) = 1$. Soit $n \geq 2$, écrit $n = p_1^{a_1} \times \cdots \times p_k^{a_k}$.
Si tous les $a_i$ valent $1$, alors $f(n) = 1$ et $f(f(n)) = 1 \leq n$. Sinon, on appelle
$q_1, \ldots, q_s$ les nombres premiers qui divisent au moins l'un des exposants $a_i$, et on
décompose chaque exposant avec eux :
$$a_i = q_1^{e_{i1}} \times q_2^{e_{i2}} \times \cdots \times q_s^{e_{is}}$$
avec des $e_{ij} \geq 0$ (tous nuls si $a_i = 1$).

*La décomposition de $f(n)$.* On a $a_i^{p_i} = q_1^{e_{i1} p_i} \times \cdots \times q_s^{e_{is} p_i}$,
et en multipliant pour $i = 1, \ldots, k$ :
$$f(n) = q_1^{c_1} \times q_2^{c_2} \times \cdots \times q_s^{c_s}, \qquad \text{où } c_j = e_{1j} p_1 + e_{2j} p_2 + \cdots + e_{kj} p_k .$$
Chaque $q_j$ divise au moins un $a_i$, donc $c_j \geq 1$ : c'est bien la décomposition de $f(n)$
en facteurs premiers, et
$$f(f(n)) = c_1^{q_1} \times c_2^{q_2} \times \cdots \times c_s^{q_s} .$$

*Première majoration.* Les $p_i$ sont au moins égaux à $2$ et les $e_{ij}$ sont positifs ou
nuls : la question 2 donne
$c_j \leq p_1^{e_{1j}} \times \cdots \times p_k^{e_{kj}}$, donc
$$c_j^{q_j} \leq p_1^{e_{1j} q_j} \times \cdots \times p_k^{e_{kj} q_j} .$$
En multipliant ces inégalités pour $j = 1, \ldots, s$ (tout est positif), puis en regroupant les
puissances de chaque $p_i$ :
$$f(f(n)) \leq p_1^{d_1} \times p_2^{d_2} \times \cdots \times p_k^{d_k}, \qquad \text{où } d_i = e_{i1} q_1 + e_{i2} q_2 + \cdots + e_{is} q_s .$$

*Seconde majoration.* Les $q_j$ sont au moins égaux à $2$ : la question 2 donne cette fois
$d_i \leq q_1^{e_{i1}} \times \cdots \times q_s^{e_{is}} = a_i$. Comme $p_i \geq 2$, on en déduit
$p_i^{d_i} \leq p_i^{a_i}$, et donc
$$f(f(n)) \leq p_1^{a_1} \times \cdots \times p_k^{a_k} = n .$$

*Exemple.* $n = 2^6 \times 5^4 = 40\,000$ : $f(n) = 6^2 \times 4^5 = 2^{12} \times 3^2$, puis
$f(f(n)) = 12^2 \times 2^3 = 1152 \leq 40\,000$.

**Conclusion :** $f(f(n)) \leq n$ pour tout entier $n \geq 1$.

**4.** Posons $x_j = f^{2j}(n)$ (les termes de rang pair). Par la question 3,
$x_{j+1} = f(f(x_j)) \leq x_j$ : la suite $(x_j)$ est décroissante (au sens large). C'est une suite
d'entiers supérieurs ou égaux à $1$ qui part de $x_0 = n$. Chaque fois qu'elle décroît
strictement, elle perd au moins $1$ : elle ne peut donc décroître strictement qu'au plus $n - 1$
fois. Il existe donc un rang $j_0$ à partir duquel elle est constante.

De même, $y_j = f^{2j+1}(n)$ vérifie $y_{j+1} = f(f(y_j)) \leq y_j$, et il existe un rang $j_1$ à
partir duquel $(y_j)$ est constante.

Posons $r = 2 \times \max(j_0, j_1)$ et soit $i \geq r$.

- Si $i = 2j$ est pair, alors $j \geq j_0$, et $f^{i+2}(n) = x_{j+1} = x_j = f^i(n)$.
- Si $i = 2j + 1$ est impair, alors $2j + 1 \geq 2\max(j_0, j_1)$ donne $j \geq j_1$, et
  $f^{i+2}(n) = y_{j+1} = y_j = f^i(n)$.

**Conclusion :** à partir du rang $r$, on a $f^{i+2}(n) = f^i(n)$ : la suite des itérés est
constante (si $f^{r+1}(n) = f^r(n)$) ou alterne entre deux valeurs.

**Bilan.** Appliquer deux fois la fonction $f$ ne fait jamais grandir un nombre. Les itérés
d'un entier $n$ finissent donc toujours par se stabiliser sur un nombre fixe de $f$, comme
$225\,000 = 2^3 \times 3^2 \times 5^5$, ou sur une paire de nombres échangés par $f$, comme $8$
et $9$, ou $49$ et $128$.

## Going further

- Exemple : $720 \to 128 \to 49 \to 128 \to 49 \to \cdots$ Ici $f(f(720)) = 49$ est beaucoup plus
  petit que $720$. À partir de quel rang la suite des itérés de $36^{36}$ est-elle constante ?
- Pourquoi l'inégalité de la question 3 ne suffit-elle pas à montrer que $f(n) \leq n$ ? Trouver
  un $n$ tel que $f(n) > n$.
- Dans la suite du sujet, on cherchait quels nombres s'écrivent $f(m)$ : voir l'exercice 40403.
