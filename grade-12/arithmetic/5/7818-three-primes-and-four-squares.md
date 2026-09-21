---
id: "7818"
title: "Trois nombres premiers et quatre carrés"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres premiers, carres, factorisation, encadrement, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, Coupe Animath du 2 juin 2015, énoncés lycée, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $p$, $q$ et $r$ trois nombres premiers tels que chacun des trois nombres
$$pq + 1, \qquad pr + 1, \qquad qr - p$$
soit le carré d'un entier.

Prouver que $p + 2qr + 2$ est lui aussi le carré d'un entier.

## Hints

1. Écris $pq + 1 = a^2$. Alors $pq = a^2 - 1$, et $a^2 - 1$ se factorise. Que sais-tu d'un
   produit de deux nombres premiers qu'on écrit comme produit de deux entiers ?
2. Tu devrais obtenir que $q$ vaut $p - 2$ ou $p + 2$, et de même pour $r$. En particulier $p$,
   $q$, $r$ sont tous impairs.
3. L'énoncé est symétrique en $q$ et $r$, donc on peut supposer $q \leq r$. Il ne reste alors
   que trois configurations possibles.
4. Pour éliminer une configuration, la technique est toujours la même : montrer que $qr - p$ est
   coincé strictement entre deux carrés consécutifs, ou bien qu'il est plus petit qu'un carré,
   ce qui force une inégalité sur $q$.

## Solution

**Étape 1 : $q$ et $r$ sont à distance $2$ de $p$.**

Il existe un entier naturel $a$ tel que $pq + 1 = a^2$, donc
$$pq = a^2 - 1 = (a-1)(a+1).$$

Comme $p$ et $q$ sont premiers, $pq \geq 2 \times 2 = 4$, donc $a^2 \geq 5$ et $a \geq 3$. En
particulier $a - 1 \geq 2$ et $a + 1 \geq 4$ : les deux facteurs sont différents de $1$.

Or un produit de deux nombres premiers ne peut s'écrire comme produit de deux entiers tous deux
supérieurs à $1$ que d'une seule façon : les deux facteurs sont $p$ et $q$ dans un ordre ou dans
l'autre. Donc
$$\{p, q\} = \{a-1,\ a+1\},$$
et par conséquent $q = p + 2$ ou $q = p - 2$.

Le même raisonnement avec $pr + 1 = b^2$ donne $r = p + 2$ ou $r = p - 2$.

**Conséquence : $p$, $q$, $r$ sont impairs.** Si $p$ valait $2$, alors $q$ vaudrait $4$ ou $0$,
qui ne sont pas premiers. Donc $p$ est impair, et $q = p \pm 2$, $r = p \pm 2$ le sont aussi.

**Étape 2 : trois configurations.**

L'énoncé ne change pas si on échange $q$ et $r$ (les hypothèses et la conclusion sont
symétriques en $q$ et $r$). On peut donc supposer $q \leq r$. Il reste trois possibilités.

**Configuration 1 : $q = r = p + 2$.**

Alors $p = q - 2$ et
$$qr - p = q^2 - (q - 2) = q^2 - q + 2 .$$

Encadrons ce nombre. D'une part
$$q^2 - q + 2 < q^2 \iff 2 < q,$$
ce qui est vrai puisque $q$ est un nombre premier impair, donc $q \geq 3$. D'autre part
$$q^2 - q + 2 > (q-1)^2 = q^2 - 2q + 1 \iff q + 1 > 0,$$
ce qui est vrai.

Donc $qr - p$ est strictement compris entre les deux carrés consécutifs $(q-1)^2$ et $q^2$ : ce
n'est pas un carré. Cette configuration est impossible.

**Configuration 2 : $q = r = p - 2$.**

Alors $p = q + 2$ et
$$qr - p = q^2 - (q+2) = q^2 - q - 2 < q^2 .$$

Comme $qr - p$ est un carré strictement inférieur à $q^2$, il est au plus égal au carré
précédent :
$$q^2 - q - 2 \leq (q-1)^2 = q^2 - 2q + 1,$$
ce qui donne $q \leq 3$. Comme $q$ est un premier impair, $q = 3$, donc $r = 3$ et $p = 5$.

*Vérification :* $pq + 1 = 16 = 4^2$, $pr + 1 = 16 = 4^2$, $qr - p = 9 - 5 = 4 = 2^2$. Tout
convient. Et alors
$$p + 2qr + 2 = 5 + 2 \times 9 + 2 = 25 = 5^2 .$$

**Configuration 3 : $q = p - 2$ et $r = p + 2$.**

Alors
$$qr - p = (p-2)(p+2) - p = p^2 - p - 4 < p^2 .$$

Même argument : c'est un carré strictement inférieur à $p^2$, donc
$$p^2 - p - 4 \leq (p-1)^2 = p^2 - 2p + 1,$$
ce qui donne $p \leq 5$. Par ailleurs $q = p - 2$ est un premier impair, donc $q \geq 3$ et
$p \geq 5$. Donc $p = 5$, $q = 3$, $r = 7$.

*Vérification :* $pq + 1 = 16 = 4^2$, $pr + 1 = 36 = 6^2$, $qr - p = 21 - 5 = 16 = 4^2$. Tout
convient. Et alors
$$p + 2qr + 2 = 5 + 2 \times 21 + 2 = 49 = 7^2 .$$

**Conclusion.**

Les hypothèses ne laissent que deux triplets possibles, $(p,q,r) = (5,3,3)$ et
$(p,q,r) = (5,3,7)$ (à l'échange de $q$ et $r$ près). Dans les deux cas, $p + 2qr + 2$ vaut $25$
ou $49$, qui sont bien des carrés parfaits. La propriété demandée est donc démontrée.
