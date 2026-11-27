---
id: "40685"
title: "La suite 2, 3, 7, 43… et une borne pour les fractions de numérateur 1"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 50
tags: [fractions-egyptiennes, suite-recurrente, inegalite, rationnels, majoration, de-proche-en-proche]
adapted_from: null
see_also: ["40684", "40686", "40687"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 2 « Les nombres joviaux », partie II « Deux suites d'entiers », questions 1 et 2, et partie III, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

Soient $n \geqslant 1$ et $p \geqslant 2$ deux entiers. On dit que $p$ est *jovial d'ordre $n$*
s'il existe des entiers $a_1, \ldots, a_n$ tels que
$$2 \leqslant a_1 < a_2 < \cdots < a_n, \qquad a_n = p \qquad \text{et} \qquad \frac{1}{a_1} + \cdots + \frac{1}{a_n} = 1.$$
On admet les deux résultats suivants :

- $6$ est jovial d'ordre $3$, car $\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = 1$ ;
- si $p$ est jovial d'ordre $n$, alors $p(p + 1)$ est jovial d'ordre $n + 1$.

On définit les suites $(u_n)_{n \geqslant 1}$ et $(v_n)_{n \geqslant 1}$ par $u_1 = 1$ et, pour
tout entier $n \geqslant 1$,
$$v_n = 1 + u_n \qquad \text{et} \qquad u_{n+1} = u_n\,(1 + u_n).$$

1. Calculer $u_n$ et $v_n$ pour $n \leqslant 5$. Montrer que, pour tout $n \geqslant 3$, $u_n$ est
   un entier jovial d'ordre $n$.
2. Montrer que, pour tout $n \geqslant 1$, $v_{n+1} = v_1 v_2 \cdots v_n + 1$.

Pour tout entier $n \geqslant 1$, on note $\mathcal{H}_n$ la propriété suivante :

> si $x_1, \ldots, x_n$ sont des entiers strictement positifs et $a$ un nombre rationnel
> strictement positif tels que
> $$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant a \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} + \frac{1}{a} = 1,$$
> alors $a + 1 \leqslant v_{n+1}$ et $x_1 x_2 \cdots x_n\,(a + 1) \leqslant v_1 v_2 \cdots v_n\,v_{n+1}$.

3. Démontrer que la propriété $\mathcal{H}_1$ est vraie.

Dans la suite, $n \geqslant 2$ est un entier, et **on admet que la propriété
$\mathcal{H}_{n-1}$ est vraie**. On considère des entiers strictement positifs
$x_1, \ldots, x_n$ et un rationnel $a > 0$ tels que
$$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant a \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} + \frac{1}{a} = 1.$$

4. Montrer que $x_1 \geqslant 2$ et que $a \leqslant x_1 x_2 \cdots x_n$.
5. On suppose dans cette question que
   $$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{x_n - 1} \geqslant 1 \qquad \text{et que} \qquad x_n > x_{n-1}.$$

   a) Montrer qu'il existe un unique nombre rationnel $q > 0$ tel que
   $\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{q} = 1$.

   b) Montrer que $x_n - 1 \leqslant q$.

   c) En déduire que $q + 1 \leqslant v_n$, puis que $x_1 x_2 \cdots x_n \leqslant v_1 v_2 \cdots v_n$.

   d) En déduire que $a + 1 \leqslant v_{n+1}$ et
   $x_1 \cdots x_n\,(a + 1) \leqslant v_1 \cdots v_n\,v_{n+1}$.

## Hints

1. **Question 1.** Partir de $u_3 = 6$ et utiliser le second résultat admis pour passer d'un rang
   au suivant.
2. **Question 2.** Exprimer $v_{k+1} - 1$ en fonction de $v_k$ seulement.
3. **Question 2.** On trouve $v_{k+1} - 1 = (v_k - 1)\,v_k$. Enchaîner ces égalités de $k = n$
   jusqu'à $k = 1$.
4. **Question 3.** Avec une seule fraction : $x_1 \leqslant a$ entraîne
   $\frac{1}{x_1} \geqslant \frac{1}{a}$. Que peut valoir $x_1$ ?
5. **Question 4.** Réduire $\frac{1}{x_1} + \cdots + \frac{1}{x_n}$ au dénominateur commun
   $x_1 x_2 \cdots x_n$ : que peut-on dire du numérateur de $\frac{1}{a}$ ?
6. **Question 5 b.** Comparer $\frac{1}{q}$ et $\frac{1}{x_n - 1}$ grâce à l'hypothèse.
7. **Question 5 c.** Appliquer $\mathcal{H}_{n-1}$ aux entiers $x_1, \ldots, x_{n-1}$ et au
   rationnel $q$. Il faut vérifier que $x_{n-1} \leqslant q$ : penser que $x_{n-1}$ et $x_n$ sont
   des entiers.
8. **Question 5 d.** Poser $P = x_1 \cdots x_n$ et $V = v_1 \cdots v_n$, et utiliser
   $a \leqslant P \leqslant V$ et la question 2.

## Solution

**1.** On trouve :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|
| $u_n$ | $1$ | $2$ | $6$ | $42$ | $1806$ |
| $v_n$ | $2$ | $3$ | $7$ | $43$ | $1807$ |

Pour $n = 3$, $u_3 = 6$ est jovial d'ordre $3$ (premier résultat admis). Si $u_n$ est jovial
d'ordre $n$ pour un certain $n \geqslant 3$, alors $u_{n+1} = u_n(u_n + 1)$ est jovial d'ordre
$n + 1$ (second résultat admis). De proche en proche, $u_4 = 42$ est jovial d'ordre $4$,
$u_5 = 1806$ d'ordre $5$, et ainsi de suite : $u_n$ est jovial d'ordre $n$ pour tout
$n \geqslant 3$.

**2.** Pour tout $k \geqslant 1$,
$$v_{k+1} - 1 = u_{k+1} = u_k\,(1 + u_k) = (v_k - 1)\,v_k.$$
Appliquons cette égalité successivement pour $k = n$, puis $k = n - 1$, …, jusqu'à $k = 1$ :
$$v_{n+1} - 1 = (v_n - 1)\,v_n = (v_{n-1} - 1)\,v_{n-1} v_n = \cdots = (v_1 - 1)\,v_1 v_2 \cdots v_n.$$
Comme $v_1 - 1 = u_1 = 1$, on obtient $v_{n+1} = v_1 v_2 \cdots v_n + 1$.

On le vérifie sur les premiers termes : $2 + 1 = 3$, $2 \times 3 + 1 = 7$,
$2 \times 3 \times 7 + 1 = 43$.

**3.** Soient $x_1$ entier et $a$ rationnel, strictement positifs, avec $x_1 \leqslant a$ et
$\frac{1}{x_1} + \frac{1}{a} = 1$. Comme $\frac{1}{a} > 0$, on a $\frac{1}{x_1} < 1$, donc
$x_1 \geqslant 2$. Comme $x_1 \leqslant a$, on a $\frac{1}{a} \leqslant \frac{1}{x_1}$, donc
$1 \leqslant \frac{2}{x_1}$, soit $x_1 \leqslant 2$. Ainsi $x_1 = 2$, puis $\frac{1}{a} =
\frac{1}{2}$ et $a = 2$.

On a alors $a + 1 = 3 = v_2$ et $x_1(a + 1) = 6 = 2 \times 3 = v_1 v_2$. Les deux inégalités de
$\mathcal{H}_1$ sont vraies (ce sont même des égalités).

**4.** Comme $\frac{1}{x_2} + \cdots + \frac{1}{x_n} + \frac{1}{a} > 0$, on a $\frac{1}{x_1} < 1$,
donc $x_1 > 1$ : $x_1 \geqslant 2$.

Notons $P = x_1 x_2 \cdots x_n$. Pour chaque $i$, $\frac{1}{x_i} = \frac{P / x_i}{P}$, où
$P / x_i$ est un entier (le produit des autres $x_j$). Donc
$$\frac{1}{a} = 1 - \frac{1}{x_1} - \cdots - \frac{1}{x_n} = \frac{N}{P},$$
où $N = P - \frac{P}{x_1} - \cdots - \frac{P}{x_n}$ est un entier. Comme $\frac{1}{a} > 0$,
$N$ est un entier strictement positif, donc $N \geqslant 1$ et
$a = \frac{P}{N} \leqslant P$.

**5. a)** On a
$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} = 1 - \frac{1}{x_n} - \frac{1}{a} < 1$. Notons
$s = \frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}}$ : c'est un rationnel de $]0, 1[$. L'égalité
demandée équivaut à $\frac{1}{q} = 1 - s$, qui a une unique solution $q = \frac{1}{1 - s}$ ;
c'est un rationnel strictement positif.

**5. b)** Par hypothèse, $s + \frac{1}{x_n - 1} \geqslant 1$, donc
$\frac{1}{x_n - 1} \geqslant 1 - s = \frac{1}{q}$. Les deux nombres étant positifs,
$x_n - 1 \leqslant q$. (On a bien $x_n - 1 \geqslant 1$, car $x_n \geqslant x_1 \geqslant 2$.)

**5. c)** Les $x_i$ sont des entiers et $x_{n-1} < x_n$, donc $x_{n-1} \leqslant x_n - 1
\leqslant q$. Ainsi
$$x_1 \leqslant \cdots \leqslant x_{n-1} \leqslant q \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{q} = 1.$$
La propriété $\mathcal{H}_{n-1}$ s'applique : $q + 1 \leqslant v_n$ et
$x_1 \cdots x_{n-1}\,(q + 1) \leqslant v_1 \cdots v_{n-1} v_n$.

D'après la question b, $x_n \leqslant q + 1$, donc
$$x_1 \cdots x_{n-1}\,x_n \leqslant x_1 \cdots x_{n-1}\,(q + 1) \leqslant v_1 \cdots v_n.$$

**5. d)** Notons $P = x_1 \cdots x_n$ et $V = v_1 \cdots v_n$. On a $a \leqslant P$
(question 4) et $P \leqslant V$ (question c), donc, avec la question 2,
$$a + 1 \leqslant V + 1 = v_{n+1}.$$
De plus, tous ces nombres étant positifs,
$$P\,(a + 1) \leqslant P\,(P + 1) \leqslant V\,(V + 1) = v_1 \cdots v_n\,v_{n+1}.$$

**Bilan.** Les nombres $u_n$ ($6$, $42$, $1806$, …) sont joviaux d'ordre $n$, et $v_{n+1}$ vaut
le produit $v_1 \cdots v_n$ augmenté de $1$. La propriété $\mathcal{H}_1$ est vraie. Enfin, si
$\mathcal{H}_{n-1}$ est vraie, la conclusion de $\mathcal{H}_n$ est vraie pour tous les
$x_1 \leqslant \cdots \leqslant x_n \leqslant a$ qui vérifient les deux hypothèses de la
question 5 ; les autres cas restent à traiter.

## Going further

- Les autres cas : $x_n = x_{n-1}$ (exercice 40686), puis
  $\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{x_n - 1} < 1$ (exercice 40687), où l'on
  conclut que $\mathcal{H}_n$ est vraie pour tout $n$. On en déduit que $u_n$ est le **plus
  grand** entier jovial d'ordre $n$.
- La suite $2, 3, 7, 43, 1807, \ldots$ s'appelle la suite de Sylvester. Montrer que ses termes
  sont deux à deux premiers entre eux.
