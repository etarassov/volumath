---
id: "40403"
title: "Les valeurs prises par f : les exposants au moins égaux à 2"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [decomposition-en-facteurs-premiers, exposants, puissances, construction, surjectivite, antecedents, parite]
adapted_from: null
see_also: ["40401", "40402"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 1 « Les premiers sont les derniers », question 5 (a à d)"
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

On note $E$ l'ensemble des entiers $n \geq 2$ dont **tous** les exposants dans la décomposition
en facteurs premiers sont supérieurs ou égaux à $2$. Par exemple $72 = 2^3 \times 3^2$ appartient à
$E$, mais $720$ n'y appartient pas, à cause du facteur $5^1$.

1. Montrer que tout entier $a \geq 2$ peut s'écrire $a = 2\alpha + 3\beta$, où $\alpha$ et
   $\beta$ sont des entiers positifs ou nuls.

2. En déduire que pour tout $n$ appartenant à $E$, il existe un élément $m$ de $E$ tel que
   $f(m) = n$.

3. Donner un élément $m$ de $E$ tel que $f(m) = 2012^{2012}$.

4. Énoncer la réciproque de la question 2. Est-elle vraie ?

## Hints

1. **Question 1.** Distinguer le cas où $a$ est pair et le cas où $a$ est impair.
2. **Question 2.** Si $x \geq 2$ et $y \geq 2$ sont des entiers, que vaut $f(2^x \times 3^y)$ ?
   Attention, $x$ et $y$ sont ici des exposants, et $2^x \times 3^y$ est déjà décomposé.
3. **Question 2.** Écrire chaque exposant de $n$ sous la forme $a_i = 2\alpha_i + 3\beta_i$, et
   chercher deux entiers $x$ et $y$ tels que $x^2 \times y^3 = n$.
4. **Question 2.** Que se passe-t-il si tous les $\beta_i$ sont nuls ? Le nombre $2^x \times 3^1$
   n'est pas dans $E$.
5. **Question 3.** Décomposer $2012$. Le nombre $2012^{2012}$ est un carré : de quel nombre ?
6. **Question 4.** La réciproque dit : « si $n = f(m)$ pour un certain $m$ de $E$, alors $n$
   appartient à $E$ ». Soit $r$ un nombre premier qui divise $f(m)$. Pour trouver son exposant,
   décomposer chacun des exposants de $m$ en facteurs premiers.

## Solution

**1.** Si $a$ est pair, $a = 2 \times \frac{a}{2} + 3 \times 0$. Si $a$ est impair, alors
$a \geq 3$ et $a - 3$ est pair et positif ou nul : $a = 2 \times \frac{a - 3}{2} + 3 \times 1$.

**2.** *Un calcul utile.* Si $x \geq 2$ et $y \geq 2$, l'écriture $2^x \times 3^y$ est la
décomposition en facteurs premiers de ce nombre, avec les exposants $x$ et $y$, donc
$f(2^x \times 3^y) = x^2 \times y^3$. De même $f(2^x) = x^2$ et $f(3^y) = y^3$.

*Construction.* Soit $n = p_1^{a_1} \times \cdots \times p_k^{a_k}$ un élément de $E$ : tous les
$a_i$ sont au moins égaux à $2$. Par la question 1, on écrit $a_i = 2\alpha_i + 3\beta_i$, et on
pose
$$x = p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}, \qquad y = p_1^{\beta_1} \times \cdots \times p_k^{\beta_k} .$$
Alors
$$x^2 \times y^3 = p_1^{2\alpha_1 + 3\beta_1} \times \cdots \times p_k^{2\alpha_k + 3\beta_k} = n .$$
Comme $n \geq 2$, $x$ et $y$ ne valent pas $1$ tous les deux. Trois cas :

- si $x \geq 2$ et $y \geq 2$, on prend $m = 2^x \times 3^y$ ;
- si $y = 1$ (tous les $\beta_i$ sont nuls), alors $x \geq 2$ et on prend $m = 2^x$ ;
- si $x = 1$, alors $y \geq 2$ et on prend $m = 3^y$.

Dans chaque cas les exposants de $m$ sont au moins égaux à $2$, donc $m$ appartient à $E$, et le
calcul utile donne $f(m) = x^2 \times y^3 = n$.

Attention au deuxième cas : $m = 2^x \times 3^1$ donnerait bien $f(m) = x^2$, mais ce $m$ n'est
pas dans $E$.

**3.** $2012 = 2^2 \times 503$, donc $2012^{2012} = 2^{4024} \times 503^{2012}$. Les deux
exposants sont pairs : on prend $4024 = 2 \times 2012$ et $2012 = 2 \times 1006$, avec
$\beta = 0$ les deux fois. On trouve
$x = 2^{2012} \times 503^{1006} = (2^2 \times 503)^{1006} = 2012^{1006}$ et $y = 1$. Ainsi
$$m = 2^{2012^{1006}}$$
convient : c'est une puissance de $2$ d'exposant $2012^{1006} \geq 2$, donc $m$ est dans $E$, et
$f(m) = (2012^{1006})^2 = 2012^{2012}$.

Il y a d'autres réponses, par exemple en écrivant $4024 = 2 \times 2009 + 3 \times 2$.

**4.** La réciproque s'énonce : « si un entier $n$ s'écrit $n = f(m)$ avec $m$ dans $E$, alors $n$
appartient à $E$ ». **Elle est vraie.**

Soit $m = q_1^{b_1} \times \cdots \times q_s^{b_s}$ un élément de $E$, avec des $b_j \geq 2$. Alors
$f(m) = b_1^{q_1} \times \cdots \times b_s^{q_s} \geq 2^2$, donc $f(m) \geq 2$.

Soit $r$ un nombre premier qui divise $f(m)$. Décomposons chaque exposant $b_j$ en facteurs
premiers, et notons $v_j$ l'exposant de $r$ dans $b_j$ (avec $v_j = 0$ si $r$ ne divise pas
$b_j$). Dans $b_j^{q_j}$, le nombre premier $r$ apparaît avec l'exposant $v_j q_j$, donc dans
$f(m)$ il apparaît avec l'exposant
$$v_1 q_1 + v_2 q_2 + \cdots + v_s q_s .$$
Comme $r$ divise $f(m)$, l'un des $v_j$ au moins vaut $1$ ou plus, et alors l'exposant est au
moins $q_j \geq 2$. Tous les exposants de $f(m)$ sont donc au moins égaux à $2$ : $f(m)$
appartient à $E$.

**Conclusion :** l'image par $f$ d'un élément de $E$ est dans $E$, et tout élément de $E$ est
l'image d'un élément de $E$. Les valeurs de $f$ sur $E$ sont donc exactement les éléments de $E$.

**Bilan.** Le raisonnement de la question 4 n'utilise pas vraiment que $m$ est dans $E$ : pour
tout entier $m$, l'exposant de chaque nombre premier dans $f(m)$ est une somme de nombres
premiers multipliés par des entiers, donc il vaut $0$ ou au moins $2$. Avec la question 2, on
obtient : **les entiers qui s'écrivent $f(m)$ sont exactement $1$ et les éléments de $E$.**
C'est pourquoi l'équation $f(m) = 2$ n'a pas de solution, alors que $f(m) = 4$ en a.

## Going further

- Combien d'éléments de $E$ y a-t-il entre $1$ et $100$ ? Pour chacun, trouver un antécédent.
- Un élément de $E$ a-t-il toujours une infinité d'antécédents par $f$ (pas forcément dans
  $E$) ? On pourra penser à multiplier par des nombres premiers à la puissance $1$.
- Les questions précédentes du sujet étudiaient les itérés $f(f(n))$, $f(f(f(n)))$, … : voir
  les exercices 40401 et 40402.
