---
id: "40966"
title: "Tout entier est une somme signée de puissances k-ièmes"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [divisibilite, restes, puissances, signes, construction, parite, unicite]
adapted_from: null
see_also: ["40964", "40965", "40967"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 2 « Sommes consécutives signées », partie 4 « Une initialisation incongrue » (questions 12 à 15) et partie 5 « Conclusion » (questions 16 et 17)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

On appelle *signe* un nombre égal à $+1$ ou à $-1$. On fixe un entier $k \geqslant 1$. On veut
montrer que tout entier $M \geqslant 1$ peut s'écrire

$$M = \varepsilon_1 \times 1^k + \varepsilon_2 \times 2^k + \cdots + \varepsilon_n \times n^k,$$

où $n \geqslant 1$ est un entier et $\varepsilon_1, \ldots, \varepsilon_n$ sont des signes.

On admet le résultat suivant, démontré dans une partie précédente.

> **(R)** Il existe $2^k$ signes $u_0, u_1, \ldots, u_{2^k - 1}$ et un entier $R_k \neq 0$ tels que,
> pour tout entier $n \geqslant 1$,
> $$u_0\,n^k + u_1\,(n+1)^k + \cdots + u_{2^k - 1}\,(n + 2^k - 1)^k = R_k.$$
> (Par exemple, pour $k = 2$ : $n^2 - (n+1)^2 - (n+2)^2 + (n+3)^2 = 4$.)

**Une initialisation.** Dans les questions 1 à 4, on fixe de plus un entier $r \geqslant 2$.

1. Soit $a$ et $b$ deux entiers. Démontrer que si $r$ divise $a - b$, alors $r$ divise
   $a^k - b^k$.

Dans les questions 2, 3 et 4, on fixe un entier $n \geqslant 1$.

2. Démontrer que $r$ divise $n^k + (n+1)^k + \cdots + (n + r^2 - 1)^k$.
3. Démontrer qu'il existe un entier $c$ compris entre $n$ et $n + r - 1$ tel que $r$ divise
   $c^k - 1$.
4. En déduire qu'il existe des signes $\varepsilon_n, \varepsilon_{n+1}, \ldots, \varepsilon_{n + r^2 - 1}$
   tels que $r$ divise
$$\left(\varepsilon_n\,n^k + \varepsilon_{n+1}\,(n+1)^k + \cdots + \varepsilon_{n + r^2 - 1}\,(n + r^2 - 1)^k\right) - 2.$$

**Conclusion.**

5. Démontrer que, pour tout entier $M \geqslant 1$, il existe un entier $n \geqslant 1$ et des
   signes $\varepsilon_1, \ldots, \varepsilon_n$ tels que
   $M = \varepsilon_1 \times 1^k + \varepsilon_2 \times 2^k + \cdots + \varepsilon_n \times n^k$.
6. Existe-t-il un entier $M \geqslant 1$ pour lequel une telle écriture est unique ?

## Hints

1. **Question 1.** Factoriser $a^k - b^k$ par $a - b$. On peut aussi dire que $a$ et $b$ ont le
   même reste dans la division par $r$, et regarder le reste d'un produit.
2. **Question 2.** Parmi $r^2$ entiers consécutifs, combien ont pour reste $0$ dans la division
   par $r$ ? Pour reste $1$ ? Utiliser la question 1 pour remplacer chaque $x^k$ par $\rho^k$, où
   $\rho$ est le reste de $x$.
3. **Question 3.** Parmi $r$ entiers consécutifs, l'un a pour reste $1$.
4. **Question 4.** Mettre le même signe devant tous les termes sauf un.
5. **Question 5.** Le bloc (R) permet d'ajouter ou de retirer $R_k$ à la fin d'une somme, aussi
   souvent qu'on veut. Il suffit donc d'atteindre une somme qui a le même reste que $M$ dans la
   division par $r = \lvert R_k \rvert$.
6. **Question 5.** Les blocs de la question 4, placés l'un après l'autre, ajoutent chacun
   $2$ au reste. Quel est le problème quand $r$ est pair ? Penser à la parité de la somme de départ :
   commencer par $1^k$, ou par $1^k + 2^k + 3^k$.
7. **Question 6.** Mettre bout à bout le bloc (R) et le bloc (R) avec tous ses signes changés.

## Solution

**1.** On vérifie en développant (les termes se simplifient deux à deux) que

$$a^k - b^k = (a - b)\left(a^{k-1} + a^{k-2} b + \cdots + a b^{k-2} + b^{k-1}\right).$$

Le second facteur est un entier. Si $r$ divise $a - b$, il divise donc $a^k - b^k$.

**2.** Notons $S = n^k + (n+1)^k + \cdots + (n + r^2 - 1)^k$. Les $r^2$ entiers
$n, n+1, \ldots, n + r^2 - 1$ forment $r$ paquets de $r$ entiers consécutifs. Dans chaque paquet,
chaque reste $\rho \in \{0, 1, \ldots, r-1\}$ apparaît exactement une fois. Donc chaque reste
$\rho$ apparaît exactement $r$ fois parmi nos $r^2$ entiers.

Si $x$ a pour reste $\rho$, alors $r$ divise $x - \rho$, donc $r$ divise $x^k - \rho^k$
(question 1). En retranchant à chaque terme de $S$ la puissance $\rho^k$ de son reste, on voit que

$$S - r\left(0^k + 1^k + \cdots + (r-1)^k\right)$$

est une somme de multiples de $r$, donc un multiple de $r$. Comme
$r\left(0^k + \cdots + (r-1)^k\right)$ est aussi un multiple de $r$, $S$ en est un.

**3.** Parmi les $r$ entiers consécutifs $n, n+1, \ldots, n + r - 1$, il y en a exactement un,
noté $c$, dont le reste dans la division par $r$ vaut $1$ (ce reste existe car $r \geqslant 2$).
Alors $r$ divise $c - 1$, donc $r$ divise $c^k - 1^k = c^k - 1$ par la question 1.

**4.** Soit $c$ l'entier de la question 3 ; il est bien parmi $n, \ldots, n + r^2 - 1$ car
$r \leqslant r^2$. Mettons le signe $+$ devant $c^k$ et le signe $-$ devant tous les autres
termes. La somme signée vaut $-S + 2c^k$, avec $S$ comme à la question 2. Alors

$$(-S + 2c^k) - 2 = -S + 2\,(c^k - 1),$$

et $r$ divise $S$ (question 2) et $c^k - 1$ (question 3), donc $r$ divise cette quantité.

**5.** Posons $r = \lvert R_k \rvert \geqslant 1$. Le bloc (R), placé juste après une somme qui
s'arrête en $n$ (donc en commençant à $n + 1$), ajoute exactement $R_k$ ; avec tous ses signes
changés, il ajoute $-R_k$. En plaçant plusieurs blocs l'un après l'autre, on peut donc ajouter à
une somme n'importe quel multiple de $r$, positif ou négatif.

*Il suffit donc de construire une somme signée $\Sigma = \varepsilon_1 1^k + \cdots + \varepsilon_m m^k$
telle que $r$ divise $M - \Sigma$.* En effet, on écrit alors $M - \Sigma = t\,r$ avec $t$ entier
relatif, et on ajoute $\lvert t \rvert$ blocs bien orientés.

*Si $r = 1$*, n'importe quelle somme convient, par exemple $\Sigma = 1^k$.

*Si $r \geqslant 2$*, on utilise la question 4 avec ce $r$.

- *Départ.* Si $M$ est impair, on part de $\Sigma_0 = 1^k$ ; si $M$ est pair, on part de
  $\Sigma_0 = 1^k + 2^k + 3^k$. Comme $x^k$ a la même parité que $x$, $\Sigma_0$ a la même
  parité que $M$ dans les deux cas. La somme s'arrête en $m_0 = 1$ ou $m_0 = 3$.
- *Ajouts de $2$.* La question 4, appliquée avec $n = m_0 + 1$, fournit $r^2$ termes consécutifs
  à placer après $\Sigma_0$ ; la nouvelle somme a le même reste que $\Sigma_0 + 2$ dans la
  division par $r$. On peut recommencer à la suite. Après $j$ tels blocs, on obtient une somme
  $\Sigma_j$ telle que $r$ divise $\Sigma_j - (\Sigma_0 + 2j)$.
- *Choix de $j$.* Posons $D = M - \Sigma_0$. Il faut trouver $j \geqslant 0$ tel que $r$ divise
  $D - 2j$.
  - Si $r$ est pair, $D$ est pair (même parité). On peut ajouter à $D$ un multiple de $r$ (qui
    est pair) pour obtenir un nombre $D' \geqslant 0$ et pair ; $j = \frac{D'}{2}$ convient,
    car $D - 2j = D - D'$ est un multiple de $r$.
  - Si $r$ est impair, on peut ajouter à $D$ un multiple de $r$ pour obtenir $D' \geqslant 0$, puis
    encore $r$ si $D'$ est impair (un impair plus un impair est pair). On obtient $D'' \geqslant 0$
    pair avec $D - D''$ multiple de $r$, et $j = \frac{D''}{2}$ convient.

Avec ce $j$, on a $r \mid \Sigma_j - \Sigma_0 - 2j$ et $r \mid D - 2j = M - \Sigma_0 - 2j$, donc par
différence $r$ divise $M - \Sigma_j$. On termine avec les blocs (R).

**Conclusion :** tout entier $M \geqslant 1$ s'écrit
$\varepsilon_1 \times 1^k + \cdots + \varepsilon_n \times n^k$.

**6.** Non. Si une somme s'arrête en $n$, on peut lui ajouter le bloc (R) commençant en $n + 1$,
puis le bloc (R) avec tous ses signes changés commençant en $n + 1 + 2^k$. Le premier ajoute
$R_k$, le second $-R_k$ : la valeur ne change pas, mais l'écriture est différente (plus longue).
Tout entier a donc une infinité d'écritures.

**Bilan.** Pour toute puissance $k \geqslant 1$, tout entier $M \geqslant 1$ s'écrit
$\pm 1^k \pm 2^k \pm \cdots \pm n^k$, et cette écriture n'est jamais unique. Les blocs de
longueur $r^2$ règlent le reste de $M$ dans la division par $r = \lvert R_k \rvert$, et les blocs
(R) font le reste du chemin.

## Going further

- Pourquoi l'idée naïve « on part de $1^k$ et on ajoute des blocs (R) » ne suffit-elle pas ? Pour
  $k = 2$, quels entiers obtient-on ainsi ?
- Dans la suite du sujet, on remplaçait $x^k$ par une fonction polynomiale $P$ à coefficients
  entiers quelconque : voir l'exercice 40967. Quelle condition sur $P$ est évidemment
  nécessaire ?
