---
id: "3624"
title: "Deux triplets arithmétiques et une équation du troisième degré"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [polynome, racines, suite-arithmetique, coefficients-et-racines, inequation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 20 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On cherche des nombres réels $a$, $b$, $c$, $p$, $q$, $r$ vérifiant toutes les conditions suivantes :

- $(a, b, c)$ est un triplet arithmétique strictement croissant, c'est-à-dire $a < b < c$ et $b - a = c - b$ ;
- $(p, q, r)$ est un triplet arithmétique strictement croissant, c'est-à-dire $p < q < r$ et $q - p = r - q$ ;
- $q$ est un entier strictement supérieur à $1$ ;
- les solutions de l'équation $x^3 - ax^2 + bx - c = 0$ sont exactement $p$, $q$ et $r$.

Parmi toutes les configurations possibles, quelle est la plus petite valeur de $p + q + r$ ?

## Hints

1. Si $p$, $q$, $r$ sont les trois racines du polynôme $x^3 - ax^2 + bx - c$, écris ce polynôme sous forme factorisée, développe, et identifie les coefficients.
2. Écris $p$ et $r$ en fonction de $q$ et de l'écart commun. Exprime alors $a$, $b$ et $c$ en fonction de $q$ et de cet écart.
3. Le fait que $(a, b, c)$ soit arithmétique se traduit par une seule égalité. Laquelle ?
4. Tu obtiens une expression pour le carré de l'écart. Elle doit être strictement positive : cela donne une inéquation sur $q$.

## Solution

**Étape 1. Relier les coefficients aux racines.**

Le polynôme $x^3 - ax^2 + bx - c$ est de degré $3$, de coefficient dominant $1$, et il admet $p$, $q$, $r$ pour racines. Ces trois racines sont distinctes puisque $p < q < r$, donc

$$x^3 - ax^2 + bx - c = (x - p)(x - q)(x - r)$$

Développons le membre de droite :

$$(x-p)(x-q)(x-r) = x^3 - (p+q+r)x^2 + (pq + qr + rp)x - pqr$$

En identifiant les coefficients :

$$a = p + q + r, \qquad b = pq + qr + rp, \qquad c = pqr$$

En particulier, la quantité cherchée $p + q + r$ n'est autre que $a$.

**Étape 2. Paramétrer le triplet $(p, q, r)$.**

Ce triplet est arithmétique strictement croissant, donc $q$ en est le terme du milieu. Notons $n > 0$ l'écart commun :

$$p = q - n, \qquad r = q + n$$

Calculons alors les trois coefficients.

$$a = (q-n) + q + (q+n) = 3q$$

$$b = (q-n)q + (q-n)(q+n) + q(q+n) = (q^2 - nq) + (q^2 - n^2) + (q^2 + nq) = 3q^2 - n^2$$

$$c = (q-n)\,q\,(q+n) = q(q^2 - n^2) = q^3 - qn^2$$

**Étape 3. Traduire que $(a, b, c)$ est arithmétique.**

Dire que $(a, b, c)$ est arithmétique, c'est dire que $b - a$ et $c - b$ sont égaux, c'est-à-dire

$$2b = a + c$$

En remplaçant :

$$2(3q^2 - n^2) = 3q + q^3 - qn^2$$
$$6q^2 - 2n^2 = 3q + q^3 - qn^2$$

Regroupons les termes en $n^2$ d'un côté :

$$qn^2 - 2n^2 = q^3 - 6q^2 + 3q$$
$$n^2(q - 2) = q(q^2 - 6q + 3)$$

**Étape 4. Écarter le cas $q = 2$.**

Si $q = 2$, le membre de gauche est nul, alors que le membre de droite vaut $2 \times (4 - 12 + 3) = -10$. C'est impossible. Donc $q \neq 2$, et comme $q$ est un entier strictement supérieur à $1$, on a $q \geqslant 3$, donc $q - 2 > 0$.

**Étape 5. Une inéquation sur $q$.**

On peut alors écrire

$$n^2 = \frac{q(q^2 - 6q + 3)}{q - 2}$$

Or $n > 0$, donc $n^2 > 0$. Comme $q > 0$ et $q - 2 > 0$, il faut

$$q^2 - 6q + 3 > 0$$

Mettons sous forme canonique :

$$q^2 - 6q + 3 = (q - 3)^2 - 6$$

La condition devient $(q-3)^2 > 6$. Comme $q \geqslant 3$, cela s'écrit $q - 3 > \sqrt{6}$. Or $\sqrt{6} \approx \text{2,449}$, donc $q - 3 \geqslant 3$ pour un entier, c'est-à-dire

$$q \geqslant 6$$

**Étape 6. Vérifier que $q = 6$ convient.**

Avec $q = 6$ :

$$n^2 = \frac{6 \times (36 - 36 + 3)}{4} = \frac{18}{4} = \frac{9}{2}$$

donc $n = \dfrac{3}{\sqrt{2}} = \dfrac{3\sqrt{2}}{2} > 0$. Les racines sont

$$p = 6 - \frac{3\sqrt{2}}{2} \approx \text{3,879}, \qquad q = 6, \qquad r = 6 + \frac{3\sqrt{2}}{2} \approx \text{8,121}$$

et elles forment bien un triplet arithmétique strictement croissant. Les coefficients valent

$$a = 18, \qquad b = 3 \times 36 - \frac{9}{2} = \frac{207}{2}, \qquad c = 6\left(36 - \frac{9}{2}\right) = 189$$

Vérifions que $(a, b, c)$ est arithmétique et strictement croissant :

$$b - a = \frac{207}{2} - 18 = \frac{171}{2}, \qquad c - b = 189 - \frac{207}{2} = \frac{171}{2}$$

Les deux écarts sont égaux et strictement positifs : toutes les conditions sont remplies.

**Étape 7. Conclure.**

D'après l'étape 1, $p + q + r = a = 3q$. Cette quantité est minimale quand $q$ l'est, et le plus petit $q$ possible est $6$ :

$$p + q + r = 3 \times 6 = 18$$

**Réponse.** La plus petite valeur de $p + q + r$ est $18$.

## Going further

L'énoncé demandait à $q$ d'être un entier. Sans cette contrainte, la condition $(q-3)^2 > 6$ donnerait $q > 3 + \sqrt{6}$, donc $p + q + r = 3q > 9 + 3\sqrt{6} \approx \text{16,35}$ : il n'y aurait plus de minimum atteint, seulement une borne inférieure dont on peut s'approcher autant qu'on veut sans jamais y arriver.

Remarquons aussi que la condition $a < b < c$ n'a pas eu besoin d'être imposée séparément : elle s'est trouvée vérifiée automatiquement pour $q = 6$. Pour un $q$ général, $b - a = \frac{c-a}{2}$, et on peut montrer que $c > a$ dès que $q \geqslant 6$, si bien que la croissance du triplet $(a, b, c)$ ne restreint rien de plus.
