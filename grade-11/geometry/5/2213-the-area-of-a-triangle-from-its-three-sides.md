---
id: "2213"
title: "L'aire d'un triangle à partir de ses trois côtés"
grade: 11
theme: geometry
difficulty: 5
duration_min: 45
tags: [trigonometrie, al-kashi, aire, heron, identite]
adapted_from: null
see_also: ["7058"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Trigonometry #2"
  reference: "Handout-836-920.pdf, problèmes 11, 13 et 14"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-836-920.pdf"
---

## Statement

Soit $ABC$ un triangle de côtés $a = BC$, $b = CA$, $c = AB$, d'aire $S$. On pose

$$s = \frac{a + b + c}{2} \qquad (\text{c'est le demi-périmètre}).$$

1. Montrer que $S = \dfrac{1}{2}\,ab\,\sin\widehat{C}$.
2. En utilisant le théorème d'Al-Kashi $c^2 = a^2 + b^2 - 2ab\cos\widehat{C}$, montrer que

$$16 S^2 = 4a^2b^2 - \left(a^2 + b^2 - c^2\right)^2 .$$

3. En déduire la **formule de Héron** :

$$S = \sqrt{\,s\,(s-a)(s-b)(s-c)\,}.$$

4. Application : calculer l'aire du triangle de côtés $13$, $14$ et $15$.

## Hints

1. Pour la question 1, trace la hauteur issue de $A$ et exprime sa longueur dans le triangle rectangle qu'elle forme.
2. Pour la question 2, pars de $S = \frac12 ab\sin\widehat{C}$, élève au carré, et remplace $\sin^2\widehat{C}$ par $1 - \cos^2\widehat{C}$.
3. L'expression $4a^2b^2 - \left(a^2+b^2-c^2\right)^2$ est une **différence de deux carrés**. Factorise-la.
4. Chacun des deux facteurs obtenus est encore une différence de deux carrés. Recommence.
5. À la fin, remplace $a + b + c$ par $2s$, puis $-a+b+c$ par $2(s-a)$, et ainsi de suite.

## Solution

**1. L'aire avec un sinus.**

Soit $H$ le pied de la hauteur issue de $A$ sur la droite $(BC)$. L'aire du triangle vaut

$$S = \frac{1}{2} \times BC \times AH = \frac{1}{2}\,a\,AH .$$

Dans le triangle $AHC$, rectangle en $H$, le côté $[AH]$ est opposé à l'angle $\widehat{ACH}$ et l'hypoténuse est $[AC]$, de longueur $b$. Donc $AH = b \sin\widehat{ACH}$.

Si $\widehat{C}$ est aigu, $H$ est du même côté que $B$ et $\widehat{ACH} = \widehat{C}$. Si $\widehat{C}$ est obtus, $H$ tombe de l'autre côté de $C$ et $\widehat{ACH} = 180° - \widehat{C}$, mais alors $\sin\widehat{ACH} = \sin\widehat{C}$ tout de même. Dans les deux cas $AH = b\sin\widehat{C}$, d'où

$$S = \frac{1}{2}\,ab\,\sin\widehat{C}.$$

**2. On élimine l'angle.**

Élevons au carré :

$$S^2 = \frac{1}{4}a^2b^2\sin^2\widehat{C}, \qquad \text{donc} \qquad 16S^2 = 4a^2b^2\sin^2\widehat{C} = 4a^2b^2\left(1 - \cos^2\widehat{C}\right).$$

Le théorème d'Al-Kashi donne

$$\cos\widehat{C} = \frac{a^2 + b^2 - c^2}{2ab}, \qquad \text{donc} \qquad 4a^2b^2\cos^2\widehat{C} = 4a^2b^2 \times \frac{\left(a^2+b^2-c^2\right)^2}{4a^2b^2} = \left(a^2+b^2-c^2\right)^2 .$$

Par conséquent

$$16S^2 = 4a^2b^2 - \left(a^2 + b^2 - c^2\right)^2 .$$

**3. Deux différences de carrés de suite.**

*Première factorisation.* En posant $X = 2ab$ et $Y = a^2 + b^2 - c^2$, on reconnaît $X^2 - Y^2 = (X - Y)(X + Y)$ :

$$16S^2 = \left(2ab - a^2 - b^2 + c^2\right)\left(2ab + a^2 + b^2 - c^2\right).$$

*Deuxième factorisation.* Chaque parenthèse se réorganise autour d'une identité remarquable :

$$2ab - a^2 - b^2 + c^2 = c^2 - \left(a^2 - 2ab + b^2\right) = c^2 - (a-b)^2 = \big(c - (a-b)\big)\big(c + (a-b)\big),$$

$$2ab + a^2 + b^2 - c^2 = (a+b)^2 - c^2 = (a + b - c)(a + b + c).$$

Donc

$$16S^2 = (c - a + b)(c + a - b)(a + b - c)(a + b + c).$$

*On fait apparaître le demi-périmètre.* Comme $a + b + c = 2s$ :

$$-a + b + c = (a+b+c) - 2a = 2s - 2a = 2(s - a),$$
$$a - b + c = 2s - 2b = 2(s - b),$$
$$a + b - c = 2s - 2c = 2(s - c).$$

Ainsi

$$16S^2 = 2(s-a) \times 2(s-b) \times 2(s-c) \times 2s = 16\,s(s-a)(s-b)(s-c),$$

d'où

$$S^2 = s(s-a)(s-b)(s-c) .$$

Comme $S$ est une aire, elle est positive, et on peut prendre la racine carrée :

$$S = \sqrt{s(s-a)(s-b)(s-c)} .$$

*Remarque.* Les quatre facteurs sont bien positifs : l'inégalité triangulaire $a < b + c$ donne exactement $s - a > 0$, et de même pour les deux autres.

**4. Le triangle $13$, $14$, $15$.**

$$s = \frac{13 + 14 + 15}{2} = 21, \qquad s - a = 8, \qquad s - b = 7, \qquad s - c = 6 .$$

$$S = \sqrt{21 \times 8 \times 7 \times 6} = \sqrt{7056} = 84 .$$

**Conclusion.** L'aire du triangle de côtés $13$, $14$ et $15$ vaut exactement $84$.

*Contrôle.* On peut vérifier autrement : la hauteur issue du sommet opposé au côté $14$ vaut $\dfrac{2S}{14} = 12$, et le pied de cette hauteur partage le côté $14$ en $5$ et $9$, car $5^2 + 12^2 = 169 = 13^2$ et $9^2 + 12^2 = 225 = 15^2$. Tout est cohérent.

**Ce qu'il faut retenir.** L'aire ne dépend que des trois longueurs : les angles, qui apparaissaient pourtant dans les deux formules de départ, se sont entièrement éliminés. Le moteur du calcul est une double différence de carrés.

## Going further

1. Vérifier la formule de Héron sur le triangle rectangle $3$, $4$, $5$, puis sur le triangle équilatéral de côté $a$.
2. Que donne la formule lorsque $a = b + c$, c'est-à-dire lorsque le triangle est aplati ?
3. Parmi tous les triangles de périmètre fixé, lequel a la plus grande aire ? (Indication : le produit $(s-a)(s-b)(s-c)$ est à maximiser, avec $(s-a)+(s-b)+(s-c) = s$ fixé.)
4. Trouver un autre triangle à côtés entiers dont l'aire est entière.
