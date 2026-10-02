---
id: "5506"
title: "Trois entiers dont la somme est le produit"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation-diophantienne, entiers-relatifs, majoration, disjonction-de-cas, valeur-absolue]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 30 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

On cherche les triplets de nombres entiers $(a\,;\,b\,;\,c)$ tels que
$$a + b + c = abc .$$

**a)** Trouver tous ceux dont les trois nombres sont des entiers **strictement positifs**.

**b)** Trouver tous ceux dont les trois nombres sont des entiers **relatifs** (positifs, négatifs ou nuls).

## Hints

1. Question a) : les trois nombres jouent le même rôle, donc on peut supposer $a \leqslant b \leqslant c$ et remettre l'ordre à la fin.
2. Avec $a \leqslant b \leqslant c$, majore la somme $a + b + c$ par quelque chose de très simple faisant intervenir $c$.
3. Tu obtiens $abc \leqslant 3c$, et $c$ est strictement positif : que peux-tu en déduire sur le produit $ab$ ? Il ne reste que trois cas à examiner.
4. Question b) : commence par le cas où l'un des trois nombres est nul. L'équation devient très simple.
5. Si aucun n'est nul, refais le raisonnement de la question a) en rangeant cette fois les **valeurs absolues** : $|a| \leqslant |b| \leqslant |c|$. Souviens-toi que $|a+b+c| \leqslant |a| + |b| + |c|$.
6. Un raccourci pour la fin : si $(a\,;\,b\,;\,c)$ est solution, que dire de $(-a\,;\,-b\,;\,-c)$ ?

## Solution

**a) Les entiers strictement positifs.**

Les trois inconnues jouent exactement le même rôle dans l'équation, donc on peut supposer
$$1 \leqslant a \leqslant b \leqslant c ,$$
quitte à remettre les solutions dans tous les ordres possibles à la fin.

Comme $a \leqslant c$ et $b \leqslant c$, on a $a + b + c \leqslant 3c$. L'équation donne donc
$$abc \leqslant 3c .$$
Comme $c > 0$, on peut diviser par $c$ :
$$ab \leqslant 3 .$$

Il n'y a plus que trois possibilités.

*Cas $ab = 1$ :* alors $a = b = 1$, et l'équation devient $1 + 1 + c = c$, soit $2 = 0$. Impossible.

*Cas $ab = 2$ :* alors $a = 1$ et $b = 2$, et l'équation devient $1 + 2 + c = 2c$, donc $c = 3$. On a bien $1 \leqslant 2 \leqslant 3$ : **le triplet $(1\,;\,2\,;\,3)$ convient.** Vérification : $1 + 2 + 3 = 6$ et $1 \times 2 \times 3 = 6$.

*Cas $ab = 3$ :* alors $a = 1$ et $b = 3$, et l'équation devient $1 + 3 + c = 3c$, donc $c = 2$. Mais on avait supposé $c \geqslant b = 3$ : ce cas est refusé. (Ce n'est d'ailleurs que le triplet $(1\,;\,2\,;\,3)$ mal rangé.)

**Conclusion :** les seules solutions en entiers strictement positifs sont $(1\,;\,2\,;\,3)$ et ses six façons d'être ordonné.

**b) Les entiers relatifs.**

*Premier cas : l'un des trois nombres est nul.* Supposons $c = 0$. Le produit $abc$ est alors nul, et l'équation devient
$$a + b = 0, \qquad \text{c'est-à-dire} \qquad b = -a .$$
Tous les triplets $(k\,;\,-k\,;\,0)$ conviennent, pour n'importe quel entier $k$, ainsi que leurs réordonnements. Vérification : la somme vaut $0$ et le produit aussi. Cela donne déjà une infinité de solutions, dont $(0\,;\,0\,;\,0)$.

*Deuxième cas : aucun des trois n'est nul.* Rangeons cette fois par valeur absolue :
$$1 \leqslant |a| \leqslant |b| \leqslant |c| .$$
Alors
$$|a|\,|b|\,|c| = |abc| = |a + b + c| \leqslant |a| + |b| + |c| \leqslant 3\,|c| ,$$
et comme $|c| \geqslant 1$ on peut diviser :
$$|a|\,|b| \leqslant 3 .$$

Comme $|a| \leqslant |b|$, cela laisse $(|a|\,;\,|b|)$ égal à $(1\,;\,1)$, $(1\,;\,2)$ ou $(1\,;\,3)$.

Pour étudier ces cas, il est commode de réécrire l'équation en isolant $c$ :
$$a + b + c = abc \quad \Longleftrightarrow \quad a + b = c\,(ab - 1) .$$

*Si $|a| = |b| = 1$ :* alors $ab$ vaut $1$ ou $-1$.
Si $ab = 1$, l'égalité devient $a + b = 0$, or $a$ et $b$ valent tous deux $1$ ou tous deux $-1$, donc $a + b = \pm 2 \neq 0$ : impossible.
Si $ab = -1$, alors $a + b = 0$ et l'égalité devient $0 = -2c$, donc $c = 0$ : exclu ici.

*Si $|a| = 1$ et $|b| = 2$ :* quatre sous-cas.

| $a$ | $b$ | $a + b = c(ab-1)$ | $c$ |
|---|---|---|---|
| $1$ | $2$ | $3 = c \times 1$ | $c = 3$ |
| $1$ | $-2$ | $-1 = c \times (-3)$ | $c = \tfrac{1}{3}$, pas entier |
| $-1$ | $2$ | $1 = c \times (-3)$ | $c = -\tfrac{1}{3}$, pas entier |
| $-1$ | $-2$ | $-3 = c \times 1$ | $c = -3$ |

On retrouve $(1\,;\,2\,;\,3)$, et on découvre $(-1\,;\,-2\,;\,-3)$. Vérification : $-1-2-3 = -6$ et $(-1)(-2)(-3) = -6$.

*Si $|a| = 1$ et $|b| = 3$ :* de la même façon, $(1\,;\,3)$ donne $c = 2$ et $(-1\,;\,-3)$ donne $c = -2$, ce qui contredit le rangement $|c| \geqslant |b| = 3$ ; les deux sous-cas mixtes donnent $c = \pm\tfrac{1}{2}$, qui n'est pas entier. Rien de nouveau.

**Conclusion.** Les solutions en entiers relatifs sont exactement :

- les triplets formés de $k$, $-k$ et $0$, dans n'importe quel ordre, pour tout entier $k$ ;
- les six réordonnements de $(1\,;\,2\,;\,3)$ ;
- les six réordonnements de $(-1\,;\,-2\,;\,-3)$.

**Un raccourci.** On pouvait deviner la famille négative sans refaire les calculs : si on remplace $(a\,;\,b\,;\,c)$ par $(-a\,;\,-b\,;\,-c)$, la somme change de signe et le produit aussi, puisqu'on change le signe de trois facteurs. Les deux membres changent donc de signe en même temps, et l'égalité est conservée. L'opposé d'une solution est une solution.

## Going further

1. Cherche les triplets d'entiers strictement positifs tels que $a + b + c = 2abc$. Puis $a + b + c = abc + 1$.
2. Même question avec quatre entiers strictement positifs : $a + b + c + d = abcd$.
3. L'équation $a + b + c = abc$ a-t-elle des solutions en nombres **rationnels** autres que celles trouvées ici ?
