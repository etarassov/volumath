---
id: "12272"
title: "Pierre partage, Clara efface"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [partage, sommes, nombres consecutifs, disjonction de cas, restes, carres, contre-exemple]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de février 2017"
  reference: "2017-10_ofm-2016-2017-test-fevrier.pdf et son corrigé, test du 15 février 2017, exercice 6 (groupe A, élèves nés en 2001 ou avant). Solution reprise du corrigé, avec les calculs de restes détaillés ; la construction de la question 1 a été vérifiée par ordinateur sur 3 000 répartitions"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-fevrier.pdf"
---

## Statement

1. Pierre répartit les entiers $1, 2, \ldots, 2012$ en deux groupes, chaque nombre allant dans un seul groupe, de sorte que les deux groupes aient la même somme.

   Sans même regarder comment Pierre a fait, Clara affirme qu'on peut effacer deux nombres dans chaque groupe de façon que les nombres restants aient encore la même somme dans les deux groupes.

   Prouver que Clara a raison.

2. Pierre répartit maintenant les entiers $1, 2, \ldots, 20$ en deux groupes de même somme, et Clara fait la même affirmation sans regarder.

   Prouver que, cette fois, Clara aurait mieux fait de regarder avant de parler : Pierre peut choisir sa répartition de façon que Clara ait tort.

## Hints

1. Pour la question 1, colorie en rouge les nombres du groupe qui contient $1$, et en bleu les autres. Regarde les endroits où deux nombres qui se suivent, $a$ et $a + 1$, n'ont pas la même couleur.
2. Suppose que $a$ est rouge et $a + 1$ bleu, et que plus loin $c$ est bleu et $c + 1$ rouge. Quels nombres Clara peut-elle effacer ? Attention, les quatre nombres doivent être différents.
3. Il reste les répartitions où la couleur change très peu de fois. Dans chacune, écris la somme des rouges, et utilise $1 + 2 + \cdots + 2012 = 2\,025\,078$. Les restes dans la division par $3$, ou le chiffre des unités, permettent de conclure.
4. Pour la question 2, mets tous les petits nombres dans le même groupe.

## Solution

On utilise la formule $1 + 2 + \cdots + m = \frac{m(m+1)}{2}$. On l'obtient en écrivant la somme deux fois, une fois dans l'ordre croissant et une fois dans l'ordre décroissant : en ajoutant terme à terme, on trouve $m$ fois le nombre $m + 1$.

### Question 1

La somme de tous les nombres vaut $\frac{2012 \times 2013}{2} = 2\,025\,078$, donc chaque groupe a pour somme $1\,012\,539$.

On colorie en **rouge** les nombres du groupe qui contient $1$, et en **bleu** les nombres de l'autre groupe. Les deux groupes ayant la même somme, Clara a raison dès qu'elle trouve deux rouges et deux bleus, tous différents, dont les sommes sont égales : en les effaçant, on retire la même quantité des deux groupes.

On dit qu'il y a un **changement en $a$** quand les nombres $a$ et $a + 1$ n'ont pas la même couleur.

**Étape 1. Le cœur de la preuve.**

Supposons qu'il y ait un changement en $a$ avec $a$ rouge et $a + 1$ bleu, et un changement en $c$ avec $c$ bleu et $c + 1$ rouge. Alors
$$a + (c + 1) = (a + 1) + c.$$
Clara peut donc effacer les rouges $a$ et $c + 1$, et les bleus $a + 1$ et $c$, à condition que les deux rouges soient différents, c'est-à-dire $a \neq c + 1$, et que les deux bleus soient différents, c'est-à-dire $c \neq a + 1$.

Il reste à trouver de tels changements. Comme $1$ est rouge, en parcourant les nombres de $1$ à $2012$, on commence par un paquet de rouges. Le premier changement va donc du rouge au bleu, le deuxième du bleu au rouge, le troisième du rouge au bleu, et ainsi de suite. On note $p_1 < p_2 < p_3 < \ldots$ les endroits où la couleur change.

**Étape 2. Au moins quatre changements.**

On prend $a = p_1$, qui va du rouge au bleu, et $c = p_4$, qui va du bleu au rouge. Comme $c > a$, on a $a \neq c + 1$. Comme $p_4 \geqslant p_1 + 3$, on a $c \neq a + 1$. Clara a raison.

**Étape 3. Exactement trois changements.**

On a un paquet de rouges de $1$ à $p_1$, puis un paquet de bleus de $p_1 + 1$ à $p_2$, puis un paquet de rouges de $p_2 + 1$ à $p_3$, puis un paquet de bleus de $p_3 + 1$ à $2012$.

- Si le premier paquet de bleus contient au moins deux nombres, alors $p_2 \neq p_1 + 1$. On prend $a = p_1$ et $c = p_2$, et Clara a raison.
- Si le second paquet de rouges contient au moins deux nombres, alors $p_3 \neq p_2 + 1$. On prend $c = p_2$, qui va du bleu au rouge, et $a = p_3$, qui va du rouge au bleu. Comme $a > c$, on a $c \neq a + 1$, et $a \neq c + 1$ par hypothèse. Clara a raison.
- Sinon, les deux paquets du milieu ne contiennent qu'un nombre chacun. En notant $k = p_1$, les rouges sont $1, 2, \ldots, k$ et $k + 2$. Leur somme vaut $1\,012\,539$, donc
$$\frac{k(k+1)}{2} + k + 2 = 1\,012\,539, \qquad \text{soit} \qquad k^2 + 3k = 2\,025\,074.$$
On regarde les restes dans la division par $3$. Le nombre $3k$ est un multiple de $3$, donc $k^2 + 3k$ a le même reste que $k^2$. Or, en écrivant $k = 3m$, $k = 3m + 1$ ou $k = 3m + 2$, on trouve $k^2 = 3 \times 3m^2$, $k^2 = 3(3m^2 + 2m) + 1$ ou $k^2 = 3(3m^2 + 4m + 1) + 1$ : un carré a pour reste $0$ ou $1$. Mais $2\,025\,074 = 3 \times 675\,024 + 2$ a pour reste $2$. Ce cas est donc impossible.

**Étape 4. Exactement deux changements.**

On a des rouges de $1$ à $p_1$, des bleus de $p_1 + 1$ à $p_2$, et des rouges de $p_2 + 1$ à $2012$. Si le paquet de bleus contient au moins deux nombres, alors $p_2 \neq p_1 + 1$, on prend $a = p_1$ et $c = p_2$, et Clara a raison. Sinon, le groupe bleu ne contient qu'un seul nombre, qui devrait valoir $1\,012\,539$. C'est impossible, puisque ce nombre est au plus $2012$.

**Étape 5. Au plus un changement.**

S'il n'y a aucun changement, tous les nombres sont rouges, et le groupe bleu, vide, n'a pas la même somme que le rouge. C'est impossible.

S'il y a exactement un changement, les rouges sont $1, 2, \ldots, k$ et les bleus $k + 1, \ldots, 2012$. Alors $\frac{k(k+1)}{2} = 1\,012\,539$, soit $k(k+1) = 2\,025\,078$. Regardons le chiffre des unités. Celui de $k(k+1)$ ne dépend que du chiffre des unités de $k$. Le tableau donne, sur la première ligne, le chiffre des unités de $k$, et sur la seconde, celui de $k(k+1)$ :

| $k$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| $k(k+1)$ | 0 | 2 | 6 | 2 | 0 | 0 | 2 | 6 | 2 | 0 |

Le produit $k(k+1)$ se termine donc par $0$, $2$ ou $6$, jamais par $8$. Ce cas est impossible aussi.

**Conclusion.** Dans tous les cas possibles, Clara trouve deux rouges et deux bleus à effacer : elle a raison.

### Question 2

La somme des nombres de $1$ à $20$ vaut $\frac{20 \times 21}{2} = 210$. Pierre met dans le premier groupe les nombres de $1$ à $14$, dont la somme vaut $\frac{14 \times 15}{2} = 105$, et dans le second les nombres de $15$ à $20$, dont la somme vaut $210 - 105 = 105$. Les deux groupes ont bien la même somme.

Si Clara efface deux nombres du premier groupe, elle retire au plus $13 + 14 = 27$. Si elle efface deux nombres du second groupe, elle retire au moins $15 + 16 = 31$. Les deux quantités retirées ne peuvent pas être égales, donc les sommes restantes ne sont jamais égales : avec cette répartition, Clara a tort.

## Going further

1. Montre que, pour les nombres de $1$ à $119$, Pierre peut aussi faire mentir Clara. Indication : mets dans le premier groupe les nombres de $1$ à $84$.
2. Avec les nombres de $1$ à $24$, la somme totale vaut $300$. Reprends la démonstration de la question 1 et vérifie que Clara a toujours raison dans ce cas.
3. Pierre peut faire mentir Clara avec la répartition « $1$ à $k$ d'un côté, $k + 1$ à $n$ de l'autre » exactement quand $2k(k+1) = n(n+1)$. Vérifie que c'est le cas pour $n = 20$ et $n = 119$.
