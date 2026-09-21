---
id: "7447"
title: "Trois inverses qui font 1"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [fractions, equation-diophantienne, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des moyens, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Trouver tous les triplets d'entiers $x$, $y$, $z$ vérifiant
$$0 < x \leqslant y \leqslant z \qquad \text{et} \qquad \frac{1}{x} + \frac{1}{y} + \frac{1}{z} = 1.$$

## Hints

1. L'énoncé impose $x \leqslant y \leqslant z$. Laquelle des trois fractions est donc la plus
   grande ?
2. Si les trois fractions valent $1$ en tout et que $\dfrac{1}{x}$ est la plus grande, combien
   vaut-elle au minimum ?
3. Cela donne un encadrement de $x$ : très peu de valeurs restent. Traite-les une par une.
4. Une fois $x$ fixé, tu obtiens une équation à deux inconnues du même type. Recommence le même
   encadrement, cette fois sur $y$.

## Solution

### L'idée : la plus grande des trois fractions

Comme $0 < x \leqslant y \leqslant z$, on a
$$\frac{1}{x} \geqslant \frac{1}{y} \geqslant \frac{1}{z}.$$

La plus grande des trois fractions est donc $\dfrac{1}{x}$. Leur somme vaut $1$, et trois nombres
dont le plus grand est $\dfrac1x$ ont une somme inférieure ou égale à $\dfrac{3}{x}$ :
$$1 = \frac1x + \frac1y + \frac1z \leqslant \frac{3}{x}, \qquad \text{donc} \qquad x \leqslant 3.$$

Par ailleurs $x \neq 1$ : sinon $\dfrac1x = 1$ à elle seule, et il resterait
$\dfrac1y + \dfrac1z = 0$, impossible avec des entiers strictement positifs.

Il ne reste donc que **deux valeurs possibles** : $x = 2$ ou $x = 3$.

### Premier cas : $x = 2$

L'équation devient
$$\frac1y + \frac1z = 1 - \frac12 = \frac12.$$

On recommence exactement le même encadrement. Comme $y \leqslant z$, la fraction $\dfrac1y$ est la
plus grande des deux, donc
$$\frac12 = \frac1y + \frac1z \leqslant \frac{2}{y}, \qquad \text{donc} \qquad y \leqslant 4.$$
Et $y \geqslant x = 2$. Trois valeurs à tester.

- **$y = 2$** : il reste $\dfrac1z = \dfrac12 - \dfrac12 = 0$. Impossible.
- **$y = 3$** : il reste $\dfrac1z = \dfrac12 - \dfrac13 = \dfrac16$, donc $z = 6$. Et on a bien
  $2 \leqslant 3 \leqslant 6$. **Solution $(2, 3, 6)$.**
- **$y = 4$** : il reste $\dfrac1z = \dfrac12 - \dfrac14 = \dfrac14$, donc $z = 4$. Et
  $2 \leqslant 4 \leqslant 4$. **Solution $(2, 4, 4)$.**

### Second cas : $x = 3$

L'équation devient
$$\frac1y + \frac1z = 1 - \frac13 = \frac23.$$

Le même encadrement donne
$$\frac23 \leqslant \frac2y, \qquad \text{donc} \qquad y \leqslant 3.$$
Et $y \geqslant x = 3$. Donc $y = 3$, et il reste
$$\frac1z = \frac23 - \frac13 = \frac13, \qquad \text{donc} \qquad z = 3.$$

**Solution $(3, 3, 3)$.**

### Conclusion

Les seuls triplets d'entiers vérifiant $0 < x \leqslant y \leqslant z$ et
$\dfrac1x + \dfrac1y + \dfrac1z = 1$ sont
$$\boxed{(2, 3, 6), \qquad (2, 4, 4), \qquad (3, 3, 3)}.$$

**La méthode à retenir.** Quand des inverses d'entiers ont une somme imposée et que les entiers
sont rangés dans l'ordre, la plus petite inconnue est coincée entre deux bornes très proches. On
la traite alors cas par cas, et le problème descend d'un cran à chaque fois.

## Going further

1. Si on enlève la condition $x \leqslant y \leqslant z$, combien y a-t-il de solutions en tout ?
   (Il suffit de compter les façons de ranger chaque triplet trouvé.)
2. Chercher de la même façon tous les triplets d'entiers $0 < x \leqslant y \leqslant z$ tels que
   $\dfrac1x + \dfrac1y + \dfrac1z = \dfrac12$.
