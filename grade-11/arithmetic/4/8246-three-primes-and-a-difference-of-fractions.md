---
id: "8246"
title: "Trois nombres premiers et une différence de fractions"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, divisibilite, equation-diophantienne, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Modulo, TD » (Aline Cahuzac), exercice 10, d'après JBMO 2008. La liste finale imprimée dans le polycopié contient (5, 3, 7), qui n'est pas solution : le bon triplet est (3, 2, 7), et les valeurs de r des cas k = 2 et k = 4 y sont interverties."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les triplets $(p, q, r)$ de nombres premiers tels que

$$\frac{p}{q} - \frac{4}{r+1} = 1 .$$

## Hints

1. Commence par chasser les dénominateurs, puis range l'égalité de façon que $r+1$ et $r+5$
   apparaissent.
2. Tu obtiens $p(r+1) = q(r+5)$. Que se passe-t-il si $p = q$ ?
3. Sinon $p$ et $q$ sont deux nombres premiers distincts, donc premiers entre eux. Que divise
   alors $q$ ?
4. Pose $r + 1 = kq$ et reporte. Tu vas trouver une égalité très contraignante entre $k$, $p$
   et $q$.
5. Il reste trois valeurs de $k$ à examiner. Dans chacune, tu connais $p - q$ : deux nombres
   premiers dont la différence est imposée, ça ne laisse pas beaucoup de choix.

## Solution

**Réponse : les triplets solutions sont $(7, 3, 2)$, $(5, 3, 5)$ et $(3, 2, 7)$.**

**Mise en forme.**

Les dénominateurs $q$ et $r+1$ ne sont pas nuls. Multiplions l'égalité par $q(r+1)$ :

$$p(r+1) - 4q = q(r+1) .$$

On fait passer le terme en $q$ à droite :

$$p(r+1) = q(r+1) + 4q = q((r+1) + 4) = q(r+5) .$$

L'équation à résoudre est donc

$$(\star) \qquad p(r+1) = q(r+5) .$$

**Le cas $p = q$ est impossible.**

Si $p = q$, on peut simplifier $(\star)$ par $p$, ce qui donne $r + 1 = r + 5$, c'est absurde.
Donc $p \ne q$.

**$q$ divise $r+1$.**

$p$ et $q$ sont deux nombres premiers **distincts**, donc premiers entre eux. D'après $(\star)$,
$q$ divise $p(r+1)$ ; le lemme de Gauss donne alors que $q$ divise $r+1$.

Écrivons $r + 1 = kq$ avec $k$ entier, $k \ge 1$.

**Une égalité très contraignante.**

Reportons dans $(\star)$ :

$$p \times kq = q(r+5), \qquad \text{donc} \qquad pk = r + 5 .$$

Or $r + 5 = (r+1) + 4 = kq + 4$. Donc

$$pk = kq + 4, \qquad \text{c'est-à-dire} \qquad k(p - q) = 4 .$$

En particulier $k$ divise $4$, donc $k \in \{1, 2, 4\}$. On examine les trois cas.

**Cas $k = 1$.** Alors $p - q = 4$ et $r + 1 = q$, donc $r = q - 1$.

$r$ et $q$ sont deux nombres premiers consécutifs au sens des entiers : leur différence vaut
$1$. Deux entiers consécutifs sont de parités différentes, donc l'un des deux est pair ; comme
tous deux sont premiers, le pair vaut $2$. On a $r < q$, donc $r = 2$ et $q = 3$. Enfin
$p = q + 4 = 7$, qui est bien premier.

$$\boxed{(p, q, r) = (7, 3, 2)}$$

Vérification : $\dfrac{7}{3} - \dfrac{4}{3} = \dfrac{3}{3} = 1$. ✓

**Cas $k = 2$.** Alors $p - q = 2$ et $r + 1 = 2q$, donc $r = 2q - 1$.

Regardons le reste de $q$ dans la division par $3$.

- Si $q \equiv 1 \pmod 3$, alors $p = q + 2 \equiv 0 \pmod 3$, donc $3$ divise $p$ ; comme $p$ est
  premier, $p = 3$, d'où $q = 1$, qui n'est pas premier. Exclu.
- Si $q \equiv 2 \pmod 3$, alors $r = 2q - 1 \equiv 4 - 1 = 3 \equiv 0 \pmod 3$, donc $r = 3$,
  d'où $2q - 1 = 3$ et $q = 2$, puis $p = 4$, qui n'est pas premier. Exclu.
- Il reste $q \equiv 0 \pmod 3$, donc $q = 3$. Alors $p = 5$ et $r = 2 \times 3 - 1 = 5$, tous
  deux premiers.

$$\boxed{(p, q, r) = (5, 3, 5)}$$

Vérification : $\dfrac{5}{3} - \dfrac{4}{6} = \dfrac{5}{3} - \dfrac{2}{3} = 1$. ✓

**Cas $k = 4$.** Alors $p - q = 1$ et $r + 1 = 4q$.

Comme au cas $k = 1$, deux nombres premiers dont la différence vaut $1$ ne peuvent être que
$2$ et $3$, et ici $q < p$, donc $q = 2$ et $p = 3$. Il vient $r + 1 = 8$, donc $r = 7$, qui est
premier.

$$\boxed{(p, q, r) = (3, 2, 7)}$$

Vérification : $\dfrac{3}{2} - \dfrac{4}{8} = \dfrac{3}{2} - \dfrac{1}{2} = 1$. ✓

**Conclusion.**

Les seuls triplets de nombres premiers solutions sont

$$(7, 3, 2), \qquad (5, 3, 5), \qquad (3, 2, 7) .$$

## Going further

1. Où exactement a-t-on utilisé que $p$, $q$ et $r$ sont **premiers** ? Combien de solutions
   obtient-on si on demande seulement des entiers strictement positifs ?
2. Reprendre la même méthode pour $\dfrac{p}{q} - \dfrac{6}{r+1} = 1$.
3. Dans le cas $k = 2$, on a raisonné modulo $3$. Ce genre d'argument revient souvent :
   parmi trois entiers de la forme $q$, $q+2$, $2q-1$, pourquoi l'un au moins est-il toujours un
   multiple de $3$ ?
