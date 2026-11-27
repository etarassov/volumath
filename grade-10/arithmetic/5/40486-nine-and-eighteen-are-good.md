---
id: "40486"
title: "Décaler les chiffres : 9 et 18 sont bons"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [chiffres, divisibilite, somme-des-chiffres, restes, congruences, disjonction-de-cas, mots]
adapted_from: null
see_also: ["40484", "40485", "40487"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème III « Des chiffres pour des lettres », questions 4° (a à d) et 5°"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Un *mot de longueur $n$* est une suite de $n$ lettres choisies parmi les dix lettres $A$, $B$,
$C$, $D$, $E$, $F$, $G$, $H$, $I$, $J$.

Une *attribution* du mot $\omega$ est un nombre dont l'écriture décimale s'obtient en remplaçant
chaque lettre de $\omega$ par l'un des chiffres $0, 1, \ldots, 9$, de sorte que des lettres
identiques soient remplacées par le même chiffre, et que deux lettres différentes soient
remplacées par des chiffres différents. Le premier chiffre peut être $0$. Par exemple, $121$ et
$040 = 40$ sont des attributions du mot $GAG$, mais $333$ et $452$ n'en sont pas.

Un entier $d > 0$ est dit *bon* si **tout** mot a au moins une attribution divisible par $d$.

Notation : pour deux entiers $u$ et $v$, on écrit $u \equiv v \pmod{9}$ quand $u - v$ est un
multiple de $9$ ; pour des entiers positifs, cela veut dire qu'ils ont le même reste dans la
division par $9$. On peut additionner de telles relations, et les multiplier par un même entier.

Soit $\omega$ un mot de longueur $n$, et $a$ une attribution de $\omega$, écrite avec ses $n$
chiffres (y compris les éventuels zéros du début). On note $a'$ l'attribution de $\omega$ obtenue
à partir de $a$ en remplaçant les chiffres $0, 1, 2, 3, 4, 5, 6, 7, 8, 9$ par, respectivement,
$1, 2, 3, 4, 5, 6, 7, 8, 0, 9$ : on fait tourner les chiffres de $0$ à $8$, sans toucher aux $9$.
Par exemple, si $a = 1789$, alors $a' = 2809$. On note $k$ le nombre de chiffres $9$ dans
l'écriture de $a$.

1. Si $a$ a pour reste $r$ dans la division par $9$, quel est le reste de $a'$ ?
2. En déduire que, si $n - k$ n'est pas un multiple de $3$, alors $\omega$ a une attribution
   divisible par $9$.
3. Montrer qu'il en est de même si $n - k$ est un multiple de $3$, mais pas de $9$.
4. Montrer que $9$ est bon.
5. Montrer que $18$ est bon.

## Hints

1. **Question 1.** Un nombre et la somme de ses chiffres ont le même reste dans la division par
   $9$, car $10^i - 1 = 99\ldots9$. Comment change la somme des chiffres quand on passe de $a$ à
   $a'$ ? Attention au chiffre $8$.
2. **Question 2.** Recommencer l'opération : $a$, $a'$, $a''$, … sont toutes des attributions de
   $\omega$ avec le même nombre $k$ de chiffres $9$. Quels sont leurs restes ? Montrer que $a$ et
   les huit suivantes ont neuf restes différents.
3. **Question 3.** Ici, $a$, $a'$ et $a''$ ont trois restes différents, qui ont tous le même reste
   que $r$ dans la division par $3$. Il suffirait donc de trouver une attribution divisible par
   $3$ (et du même type).
4. **Question 3.** On a le choix de la lettre qui reçoit le chiffre $9$. Notons $c_Y$ le nombre de
   fois où la lettre $Y$ apparaît dans $\omega$. Si une lettre $Y$ est telle que $n - c_Y$ n'est
   pas un multiple de $3$, que se passe-t-il quand on lui donne le chiffre $9$ ?
5. **Question 3.** Sinon, tous les $c_Y$ ont le même reste que $n$ dans la division par $3$.
   Séparer les cas « $n$ multiple de $3$ » et « $n$ non multiple de $3$ ». Dans le second, y a-t-il
   un chiffre inutilisé ? Et si les dix lettres sont toutes présentes, que vaut la somme de leurs
   chiffres ?
6. **Question 4.** Il reste le cas où $n - k$ est un multiple de $9$. Reprendre les idées de la
   question 3, avec $9$ à la place de $3$.
7. **Question 5.** Un nombre est divisible par $18$ quand il est pair et divisible par $9$.
   Partir d'une attribution divisible par $9$, et remplacer chaque chiffre $x$ par $9 - x$.

## Solution

*Un rappel.* Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. En
effet, si $N$ a pour chiffres $u_0$ (unités), $u_1$ (dizaines), …, alors
$N - (u_0 + u_1 + \cdots) = u_1 \times 9 + u_2 \times 99 + u_3 \times 999 + \cdots$, et chaque
$10^i - 1 = 99\ldots9$ est un multiple de $9$. Les zéros du début ne changent ni le nombre ni la
somme de ses chiffres.

Pour une lettre $Y$ de $\omega$, notons $c_Y$ le nombre de fois où $Y$ apparaît dans $\omega$, et,
pour une attribution, $d_Y$ le chiffre donné à $Y$. La somme des chiffres de l'attribution est
$\sum_Y c_Y\,d_Y$, et $\sum_Y c_Y = n$.

**1.** Quand on passe de $a$ à $a'$, les $k$ chiffres $9$ ne changent pas. Chacun des $n - k$
autres chiffres augmente de $1$, sauf les $8$, qui deviennent des $0$, c'est-à-dire diminuent de
$8 = 9 - 1$. Si $a$ contient $h$ chiffres $8$, la somme des chiffres de $a'$ est donc celle de
$a$, plus $n - k$, moins $9h$. Ainsi
$$a' \equiv a + (n - k) \equiv r + (n - k) \pmod{9} .$$

**Conclusion :** le reste de $a'$ dans la division par $9$ est celui de $r + n - k$.

Remarquons que $a'$ est bien une attribution de $\omega$ : l'opération remplace des chiffres
égaux par des chiffres égaux et des chiffres différents par des chiffres différents. De plus
$a'$ a encore exactement $k$ chiffres $9$. On peut donc recommencer : en notant $a^{(j)}$ le
résultat de $j$ opérations successives, on obtient
$a^{(j)} \equiv r + j\,(n - k) \pmod{9}$.

**2.** Supposons que $n - k$ n'est pas un multiple de $3$, et considérons les neuf attributions
$a^{(0)} = a, a^{(1)}, \ldots, a^{(8)}$. Si deux d'entre elles, $a^{(i)}$ et $a^{(j)}$ avec
$0 \leq i < j \leq 8$, avaient le même reste, alors $9$ diviserait
$(r + j(n-k)) - (r + i(n-k)) = (j - i)(n - k)$. Comme le nombre premier $3$ ne divise pas
$n - k$, les deux facteurs $3$ de $9 = 3 \times 3$ devraient se trouver dans la décomposition de
$j - i$, donc $9$ diviserait $j - i$. C'est impossible, car $1 \leq j - i \leq 8$.

Les neuf attributions ont donc neuf restes différents, pris parmi les neuf restes possibles
$0, 1, \ldots, 8$. Elles les prennent tous, y compris $0$.

**Conclusion :** l'une des attributions $a, a', \ldots, a^{(8)}$ est divisible par $9$.

**3.** *Ce que donnent trois opérations.* Supposons que $n - k = 3m$, où $m$ n'est pas un multiple
de $3$. Les attributions $a$, $a'$, $a''$ ont pour restes ceux de $r$, $r + 3m$ et $r + 6m$. Ces
trois restes sont différents : $9$ ne divise ni $3m$ ni $6m$, sinon $3$ diviserait $m$ ou $2m$, donc
$m$. Ils ont aussi tous le même reste que $r$ dans la division par $3$. Or parmi $0, 1, \ldots, 8$,
il y a exactement trois nombres qui ont un reste donné dans la division par $3$. Si $3$ divise $r$,
ces trois nombres sont $0$, $3$ et $6$, et l'une des trois attributions est divisible par $9$.

On retient donc, pour toute attribution $b$ de $\omega$ ayant $k_b$ chiffres $9$ :

- (P1) si $n - k_b$ n'est pas un multiple de $3$, $\omega$ a une attribution divisible par $9$
  (question 2) ;
- (P2) si $n - k_b$ est un multiple de $3$ mais pas de $9$, et si $b$ est divisible par $3$,
  $\omega$ a une attribution divisible par $9$.

*Changer la lettre qui porte le 9.* Si $Y$ est une lettre de $\omega$, on obtient une attribution
où $Y$ porte le chiffre $9$ ainsi : si une lettre $X$ porte le $9$ dans $a$, on échange les
chiffres de $X$ et de $Y$ ; sinon, on donne simplement le chiffre $9$ à $Y$ à la place du sien.
Cette nouvelle attribution a exactement $c_Y$ chiffres $9$.

Revenons à $a$, avec $n - k$ multiple de $3$ mais pas de $9$.

*Cas A : une lettre $Y$ de $\omega$ est telle que $n - c_Y$ n'est pas un multiple de $3$.* On donne
le $9$ à $Y$ ; l'attribution obtenue a $c_Y$ chiffres $9$, et (P1) s'applique.

*Cas B : pour toute lettre $Y$, $n - c_Y$ est un multiple de $3$.*

- Si $n$ est un multiple de $3$, alors chaque $c_Y$ l'est aussi, donc la somme des chiffres
  $\sum_Y c_Y\,d_Y$ de $a$ est un multiple de $3$, et $a$ est divisible par $3$. (P2) s'applique à
  $b = a$.
- Si $n$ n'est pas un multiple de $3$, alors $k$ ne l'est pas non plus (car $n - k$ l'est), donc
  $k \neq 0$ et une lettre $X$ porte le chiffre $9$.
  - Si $\omega$ a au plus neuf lettres différentes, un chiffre $e$ n'est pas utilisé par $a$, et
    $e \neq 9$. En donnant le chiffre $e$ à $X$ au lieu de $9$, on obtient une attribution sans
    aucun $9$ : $k_b = 0$, et $n - 0 = n$ n'est pas un multiple de $3$. (P1) s'applique.
  - Si $\omega$ contient les dix lettres, les chiffres $d_Y$ sont $0, 1, \ldots, 9$, de somme
    $45$. Alors
    $$\sum_Y c_Y\,d_Y = n \times 45 + \sum_Y (c_Y - n)\,d_Y ,$$
    et chaque $c_Y - n$ est un multiple de $3$. La somme des chiffres de $a$ est donc un multiple
    de $3$, et (P2) s'applique à $b = a$.

**Conclusion :** si $n - k$ est un multiple de $3$ mais pas de $9$, $\omega$ a encore une
attribution divisible par $9$.

**4.** Soit $\omega$ un mot quelconque de longueur $n$, et $a$ une attribution de $\omega$ (il en
existe : on donne des chiffres différents aux lettres différentes), avec $k$ chiffres $9$. Si
$n - k$ n'est pas un multiple de $9$, les questions 2 et 3 donnent une attribution divisible par
$9$. Supposons donc que $9$ divise $n - k$.

- *Si une lettre $Y$ est telle que $9$ ne divise pas $n - c_Y$*, on lui donne le chiffre $9$ comme
  à la question 3 ; la nouvelle attribution a $c_Y$ chiffres $9$, et les questions 2 et 3
  s'appliquent à elle.
- *Sinon, $9$ divise $n - c_Y$ pour toute lettre $Y$.* La somme des chiffres de $a$ vérifie
  $$\sum_Y c_Y\,d_Y = n \sum_Y d_Y + \sum_Y (c_Y - n)\,d_Y \equiv n \sum_Y d_Y \pmod{9} .$$
  - Si $\omega$ contient les dix lettres, $\sum_Y d_Y = 45$, donc la somme des chiffres est un
    multiple de $9$ et $a$ est divisible par $9$.
  - Si $\omega$ a au plus neuf lettres différentes et si $9$ divise $n$, la somme des chiffres est
    encore un multiple de $9$, et $a$ est divisible par $9$.
  - Si $\omega$ a au plus neuf lettres différentes et si $9$ ne divise pas $n$, on fabrique une
    attribution sans chiffre $9$ (si une lettre porte le $9$ dans $a$, on lui donne à la place un
    chiffre inutilisé). Elle a $0$ chiffre $9$, et $n - 0 = n$ n'est pas un multiple de $9$ : les
    questions 2 et 3 s'appliquent à elle.

**Conclusion :** dans tous les cas, $\omega$ a une attribution divisible par $9$. Donc $9$ est
bon.

**5.** Soit $\omega$ un mot de longueur $n$. D'après la question 4, $\omega$ a une attribution $b$
divisible par $9$. Notons $c$ le nombre obtenu en remplaçant chaque chiffre $x$ de $b$ par
$9 - x$. L'échange $x \mapsto 9 - x$ envoie des chiffres égaux sur des chiffres égaux et des
chiffres différents sur des chiffres différents, donc $c$ est aussi une attribution de $\omega$.

Chiffre par chiffre, $b$ et $c$ s'additionnent sans retenue en $99\ldots9$ ($n$ chiffres $9$) :
$b + c = 10^n - 1$, qui est un multiple de $9$. Donc $c = (10^n - 1) - b$ est aussi un multiple
de $9$.

Les chiffres des unités de $b$ et de $c$ ont pour somme $9$, qui est impair : l'un des deux est
pair. Le nombre correspondant, $b$ ou $c$, est pair et multiple de $9$. Écrivons-le $9m$ : comme
$9$ est impair et $9m$ pair, $m$ est pair, et le nombre est $18 \times \frac{m}{2}$.

**Conclusion :** tout mot a une attribution divisible par $18$, donc $18$ est bon.

**Bilan.** En faisant tourner les chiffres de $0$ à $8$, on ajoute $n - k$ au reste dans la
division par $9$. En combinant cette opération avec le choix de la lettre qui porte le $9$, on a
montré que tout mot a une attribution divisible par $9$ : $9$ est bon. En remplaçant chaque
chiffre $x$ par $9 - x$, on en a déduit que $18$ est bon.

## Going further

- Pourquoi la rotation laisse-t-elle les $9$ en place plutôt que les $0$ ? Refaire la question 1
  avec l'opération qui fait tourner $1, 2, \ldots, 9$ sans toucher aux $0$.
- Comme $18$ est bon, ses diviseurs $1$, $2$, $3$, $6$, $9$ et $18$ sont tous bons. Le sujet
  affirmait, sans le demander, qu'il y a exactement $22$ nombres bons : les diviseurs de $18$,
  $24$, $45$, $50$, $60$ et $80$.
- Voir aussi les exercices 40484 (premiers exemples de nombres bons et mauvais), 40485 (au plus
  $27$ nombres bons) et 40487 (un nombre mauvais a une infinité de bloqueurs).
