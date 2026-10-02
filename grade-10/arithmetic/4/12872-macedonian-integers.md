---
id: "12872"
title: "Les entiers macédoniens"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [factorielle, diviseurs, nombre-de-diviseurs, nombres-premiers, decomposition-en-facteurs-premiers, parite, puissances-de-deux, disjonction-de-cas, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test junior, exercice 2 ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (dans le cas où m est impair, on conclut ici plus vite : m − 1 et m + 1 sont deux puissances de 2 qui diffèrent de 2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

Pour un entier $c \geq 1$, on note $c!$ le produit $1 \times 2 \times \cdots \times c$ des $c$ premiers entiers (on lit « factorielle $c$ »).

On dit qu'un entier $c \geq 1$ est **macédonien** s'il existe un entier $m \geq 0$ tel que

- $m^3 - m = c!$ ;
- le nombre $m^2 - 1$ a au plus $6$ diviseurs positifs.

Déterminer tous les entiers macédoniens.

## Hints

1. Essayez les petites valeurs de $m$. Factorisez $m^3 - m$.
2. Si $m$ est impair, montrez que $8$ divise $m^2 - 1$. Que se passe-t-il si $m^2 - 1$ a en plus un diviseur premier impair ?
3. Si $m$ est pair, les nombres $m - 1$ et $m + 1$ n'ont aucun facteur premier commun. Montrez que l'un des deux est premier.
4. Si $p$ est ce nombre premier, comparez $p!$ et $c!$, puis $p!$ et $p(p + 1)(p + 2)$.

## Solution

La réponse : **les entiers macédoniens sont $3$ et $4$.**

### Ils conviennent

- Pour $m = 2$ : $m^3 - m = 8 - 2 = 6 = 3!$, et $m^2 - 1 = 3$ a deux diviseurs, $1$ et $3$. Donc $3$ est macédonien.
- Pour $m = 3$ : $m^3 - m = 27 - 3 = 24 = 4!$, et $m^2 - 1 = 8$ a quatre diviseurs, $1$, $2$, $4$ et $8$. Donc $4$ est macédonien.

Attention, il faut bien vérifier les deux conditions : pour $m = 5$, on a $m^3 - m = 120 = 5!$, mais $m^2 - 1 = 24$ a huit diviseurs, $1$, $2$, $3$, $4$, $6$, $8$, $12$ et $24$. Ce choix de $m$ ne montre donc pas que $5$ est macédonien.

### Une factorisation

Soit $c$ un entier macédonien, et $m$ un entier qui convient. On a

$$c! = m^3 - m = m(m^2 - 1) = (m - 1)\,m\,(m + 1).$$

Comme $c! \geq 1$, on a $m \neq 0$ et $m \neq 1$, donc $m \geq 2$. On sépare deux cas, selon la parité de $m$.

### Si m est impair

Alors $m \geq 3$, et $m - 1$ et $m + 1$ sont deux nombres pairs consécutifs : l'un des deux est un multiple de $4$. Leur produit $m^2 - 1$ est donc un multiple de $2 \times 4 = 8$.

Supposons que $m^2 - 1$ ait un diviseur premier impair $p$. Comme $p$ et $8$ n'ont pas de facteur premier commun, $8p$ divise $m^2 - 1$. Alors les huit nombres

$$1, \quad 2, \quad 4, \quad 8, \quad p, \quad 2p, \quad 4p, \quad 8p$$

sont des diviseurs de $m^2 - 1$. Ils sont distincts : les quatre premiers n'ont pas $p$ dans leur décomposition en facteurs premiers, les quatre derniers l'ont. C'est plus que $6$, ce qui est exclu.

Donc $m^2 - 1 = (m - 1)(m + 1)$ n'a pas d'autre facteur premier que $2$. Il en est de même de ses diviseurs $m - 1$ et $m + 1$ : ce sont deux puissances de $2$, au moins égales à $2$, qui diffèrent de $2$. Si la plus petite était au moins égale à $4$, les deux seraient des multiples de $4$, et leur différence $2$ aussi, ce qui est faux. Donc $m - 1 = 2$ et $m = 3$ : c'est le cas $c = 4$ déjà trouvé.

### Si m est pair

Le cas $m = 2$ donne $c = 3$, déjà trouvé. On suppose donc désormais $m \geq 4$, de sorte que $m - 1 \geq 3$ et $m + 1 \geq 5$.

**Les nombres $m - 1$ et $m + 1$ n'ont aucun facteur premier commun.** En effet, un tel facteur diviserait leur différence $2$, donc vaudrait $2$. Or $m - 1$ est impair.

**L'un des deux nombres $m - 1$ et $m + 1$ est premier.** Supposons le contraire. Alors $m - 1$ a un diviseur $u$ avec $1 < u < m - 1$, et $m + 1$ a un diviseur $v$ avec $1 < v < m + 1$. Formons les neuf produits $xy$, où $x$ est l'un des trois nombres $1$, $u$, $m - 1$ et $y$ l'un des trois nombres $1$, $v$, $m + 1$. Ce sont des diviseurs de $(m - 1)(m + 1) = m^2 - 1$. Ils sont distincts : comme $x$ et $y$ n'ont aucun facteur premier commun, on retrouve $x$ dans la décomposition de $xy$ en gardant les facteurs premiers de $m - 1$, et $y$ en gardant les autres. Alors $m^2 - 1$ aurait au moins $9$ diviseurs, ce qui est exclu.

On note $p$ celui des deux nombres qui est premier. On a $p \geq 3$.

**Une comparaison de factorielles.** Le nombre premier $p$ divise $m^2 - 1$, donc $c! = 1 \times 2 \times \cdots \times c$. Un nombre premier qui divise un produit divise l'un des facteurs, donc $p$ divise l'un des entiers $1$, $2$, ..., $c$, et $p \leq c$. Par conséquent, $p! \leq c!$.

D'autre part, $p = m - 1$ ou $p = m + 1$. Dans le premier cas, $c! = p(p + 1)(p + 2)$. Dans le second, $c! = (p - 2)(p - 1)p$, qui est plus petit. Dans les deux cas,

$$p! \leq c! \leq p\,(p + 1)(p + 2).$$

**Donc $p \leq 5$.** Supposons $p \geq 7$. Le produit $p! = 1 \times 2 \times \cdots \times p$ contient les facteurs $p$, $p - 1$ et $p - 2$, et aussi les facteurs $2$ et $3$, qui sont différents des trois premiers puisque $p - 2 \geq 5$. Donc

$$p! \geq p \times 2(p - 1) \times 3(p - 2).$$

Or $2(p - 1) = 2p - 2 > p + 1$ car $p > 3$, et $3(p - 2) = 3p - 6 > p + 2$ car $p > 4$. Donc $p! > p(p + 1)(p + 2)$, ce qui contredit l'encadrement. Ainsi $p = 3$ ou $p = 5$.

**On essaie ces deux valeurs.**

- Si $p = 3$ : $m - 1 = 3$ donne $m = 4$, et $m + 1 = 3$ donne $m = 2$, exclu. Pour $m = 4$, $m^3 - m = 60$, et $4! = 24 < 60 < 120 = 5!$ : $60$ n'est pas une factorielle.
- Si $p = 5$ : $m - 1 = 5$ donne $m = 6$, et $m + 1 = 5$ donne $m = 4$, déjà exclu. Pour $m = 6$, $m^3 - m = 210$, et $5! = 120 < 210 < 720 = 6!$ : $210$ n'est pas une factorielle.

Il n'y a donc aucune solution avec $m$ pair et $m \geq 4$.

### Conclusion

Les seules valeurs possibles de $m$ sont $2$ et $3$. **Les entiers macédoniens sont $3$ et $4$.**

## Going further

1. On remplace « au plus $6$ diviseurs » par « au plus $10$ diviseurs ». Montrez que $5$ et $6$ deviennent macédoniens.
2. Montrez qu'un entier $n \geq 1$ dont la décomposition en facteurs premiers est $p_1^{a_1} p_2^{a_2} \cdots p_r^{a_r}$ a exactement $(a_1 + 1)(a_2 + 1) \cdots (a_r + 1)$ diviseurs positifs. Retrouvez ainsi que $24$ a huit diviseurs.
