---
id: "7449"
title: "Le plus petit triangle dont un angle est le double d'un autre"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [triangles-semblables, bissectrice, al-kashi, equation-diophantienne, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des avancés, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Un triangle $ABC$ a ses trois côtés de longueurs entières. Ses angles vérifient
$$\widehat{A} = 2\,\widehat{B} \qquad \text{et} \qquad \widehat{C} > 90°.$$

Quel est le plus petit périmètre possible pour un tel triangle ?

Comme d'habitude on note $a = BC$, $b = CA$ et $c = AB$.

## Hints

1. Il faut traduire « $\widehat{A} = 2\widehat{B}$ » en une relation entre $a$, $b$ et $c$. Trace
   la bissectrice issue de $A$ et appelle $D$ son point d'intersection avec $[BC]$. Quels angles
   vaut-elle en $D$ ?
2. Deux choses apparaissent alors : un triangle isocèle, et deux triangles semblables. La
   relation cherchée est $a^2 = b(b+c)$.
3. L'autre condition, $\widehat{C} > 90°$, se traduit par $c^2 > a^2 + b^2$ grâce au théorème
   d'Al-Kashi.
4. Pour un triangle de périmètre minimal, $a$, $b$ et $c$ n'ont aucun facteur commun. Montre
   qu'alors $b$ et $b+c$ sont premiers entre eux, puis, avec $a^2 = b(b+c)$, que ce sont deux
   carrés.
5. Pose $b = m^2$ et $b+c = n^2$. Les deux conditions deviennent un encadrement du rapport
   $n/m$. Très peu de couples $(m, n)$ passent.

## Solution

### Étape 1 : traduire $\widehat{A} = 2\widehat{B}$ par la relation $a^2 = b(b+c)$

Notons $\beta = \widehat{B}$, de sorte que $\widehat{A} = 2\beta$.

Traçons la bissectrice issue de $A$ et notons $D$ son intersection avec le côté $[BC]$. Par
définition,
$$\widehat{BAD} = \widehat{DAC} = \beta.$$

**Un triangle isocèle.** Dans le triangle $ABD$, l'angle en $B$ vaut $\beta$ et l'angle en $A$
vaut aussi $\beta$. Il est donc isocèle, et
$$DA = DB.$$

**Deux triangles semblables.** Comparons les triangles $CAD$ et $CBA$ :

- ils ont l'angle en $C$ en commun ;
- $\widehat{CAD} = \beta = \widehat{CBA}$.

Ils sont donc semblables, avec la correspondance $C \leftrightarrow C$, $A \leftrightarrow B$,
$D \leftrightarrow A$. Les rapports des côtés correspondants sont égaux :
$$\frac{CA}{CB} = \frac{CD}{CA} = \frac{AD}{BA}, \qquad \text{c'est-à-dire} \qquad
\frac{b}{a} = \frac{CD}{b} = \frac{AD}{c}.$$

On en tire
$$CD = \frac{b^2}{a} \qquad \text{et} \qquad AD = \frac{bc}{a}.$$

**On recolle.** Comme $D$ est sur $[BC]$,
$$BD = a - CD = a - \frac{b^2}{a} = \frac{a^2 - b^2}{a}.$$

Et le triangle isocèle donne $AD = BD$ :
$$\frac{bc}{a} = \frac{a^2 - b^2}{a}, \qquad \text{donc} \qquad bc = a^2 - b^2,$$
c'est-à-dire
$$a^2 = b^2 + bc = b(b+c).$$

### Étape 2 : traduire $\widehat{C} > 90°$

Le théorème d'Al-Kashi dans le triangle donne
$$c^2 = a^2 + b^2 - 2ab\cos \widehat{C}.$$
L'angle $\widehat{C}$ est obtus exactement quand $\cos\widehat{C} < 0$, donc
$$\widehat{C} > 90° \qquad \Longleftrightarrow \qquad c^2 > a^2 + b^2.$$

### Étape 3 : on peut supposer $a$, $b$, $c$ sans facteur commun

Si $d$ divise $a$, $b$ et $c$, alors le triplet $\left(\frac ad, \frac bd, \frac cd\right)$
vérifie encore $a^2 = b(b+c)$ et $c^2 > a^2+b^2$ (les deux relations sont homogènes : chaque
membre est multiplié par $d^2$), et son périmètre est plus petit. Un triangle de périmètre
minimal vérifie donc
$$\mathrm{PGCD}(a, b, c) = 1.$$

**Alors $b$ et $c$ sont premiers entre eux.** En effet, si un nombre premier $p$ divisait $b$ et
$c$, il diviserait $b(b+c) = a^2$, donc il diviserait $a$ ; il diviserait alors les trois
longueurs, ce qui est exclu.

### Étape 4 : $b$ et $b+c$ sont des carrés

De $\mathrm{PGCD}(b, c) = 1$ on déduit $\mathrm{PGCD}(b, b+c) = 1$ : un diviseur commun de $b$ et
de $b+c$ diviserait leur différence $c$.

Or le produit de ces deux nombres premiers entre eux est un carré :
$$b \times (b+c) = a^2.$$

Quand deux entiers positifs premiers entre eux ont un produit qui est un carré, chacun des deux
est un carré. (Chaque nombre premier apparaît dans un seul des deux facteurs, donc avec l'exposant
qu'il a dans $a^2$, qui est pair.)

Il existe donc deux entiers $m$ et $n$, avec $0 < m < n$, tels que
$$b = m^2, \qquad b + c = n^2, \qquad a = mn,$$
et alors
$$c = n^2 - m^2.$$

### Étape 5 : les deux conditions deviennent un encadrement

Posons $t = \dfrac{n}{m} > 1$.

**L'inégalité triangulaire $a + b > c$.**
$$mn + m^2 > n^2 - m^2 \iff 2m^2 + mn - n^2 > 0 \iff 2 + t - t^2 > 0 \iff (t-2)(t+1) < 0,$$
donc $t < 2$. (Les deux autres inégalités triangulaires sont automatiques dès que $n > m$.)

**La condition $c^2 > a^2 + b^2$.**
$$\left(n^2 - m^2\right)^2 > m^2n^2 + m^4.$$
En divisant par $m^4$ :
$$\left(t^2 - 1\right)^2 > t^2 + 1 \iff t^4 - 2t^2 + 1 > t^2 + 1 \iff t^4 - 3t^2 > 0 \iff t^2 > 3.$$
Donc $t > \sqrt3$.

Au total :
$$\sqrt{3} < \frac{n}{m} < 2, \qquad \text{c'est-à-dire} \qquad m\sqrt3 < n < 2m.$$

### Étape 6 : la recherche du minimum

Le périmètre vaut
$$P = a + b + c = mn + m^2 + \left(n^2 - m^2\right) = mn + n^2 = n(m+n).$$

Cherchons les petits $m$ pour lesquels il existe un entier $n$ strictement compris entre
$m\sqrt3$ et $2m$. On utilise $\sqrt3 \approx \text{1,732}$.

| $m$ | $n$ doit être entre... | $n$ entier possible | périmètre $n(m+n)$ |
|---|---|---|---|
| $1$ | $\text{1,73}$ et $2$ | aucun | |
| $2$ | $\text{3,46}$ et $4$ | aucun | |
| $3$ | $\text{5,19}$ et $6$ | aucun | |
| $4$ | $\text{6,93}$ et $8$ | $n = 7$ | $7 \times 11 = 77$ |
| $5$ | $\text{8,66}$ et $10$ | $n = 9$ | $9 \times 14 = 126$ |

**Et pour $m \geqslant 5$ ?** On a $n > m\sqrt3$, donc
$$P = n(m+n) > m\sqrt3 \left(m + m\sqrt3\right) = m^2\left(\sqrt3 + 3\right) > \text{4,7} \, m^2.$$
Pour $m \geqslant 5$, cela donne $P > \text{4,7} \times 25 = \text{117,5} > 77$.

Le minimum est donc atteint pour $m = 4$, $n = 7$ :
$$a = mn = 28, \qquad b = m^2 = 16, \qquad c = n^2 - m^2 = 49 - 16 = 33.$$

### Vérification

Il reste à s'assurer que ce triangle existe vraiment et remplit bien toutes les conditions.

- **Inégalité triangulaire** : $16 + 28 = 44 > 33$, et les deux autres sont claires. Le triangle
  existe.
- **Les angles**, avec Al-Kashi :
  $$\cos\widehat{A} = \frac{b^2+c^2-a^2}{2bc} = \frac{256 + 1089 - 784}{2 \times 16 \times 33} = \frac{561}{1056},$$
  $$\cos\widehat{B} = \frac{a^2+c^2-b^2}{2ac} = \frac{784 + 1089 - 256}{2 \times 28 \times 33} = \frac{1617}{1848} = \frac{7}{8},$$
  $$\cos\widehat{C} = \frac{a^2+b^2-c^2}{2ab} = \frac{784 + 256 - 1089}{2 \times 28 \times 16} = \frac{-49}{896} < 0.$$
  Le cosinus de $\widehat{C}$ est négatif, donc $\widehat{C} > 90°$.
- **Le doublement de l'angle** : avec $\cos\widehat{B} = \dfrac78$,
  $$\cos\left(2\widehat{B}\right) = 2\cos^2\widehat{B} - 1 = 2 \times \frac{49}{64} - 1 = \frac{49}{32} - 1 = \frac{17}{32}.$$
  Et $\dfrac{561}{1056} = \dfrac{561 \div 33}{1056 \div 33} = \dfrac{17}{32}$. Les deux cosinus
  sont égaux, et les deux angles sont entre $0°$ et $180°$, donc
  $\widehat{A} = 2\widehat{B}$.

### Conclusion

Le plus petit périmètre possible est
$$\boxed{77},$$
atteint par le triangle de côtés $16$, $28$ et $33$.

## Going further

Que devient la réponse si on remplace la condition $\widehat{C} > 90°$ par $\widehat{C} < 90°$ ?
L'encadrement de $n/m$ change ; trouver le nouveau minimum.
