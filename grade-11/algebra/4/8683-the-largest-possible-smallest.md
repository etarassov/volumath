---
id: "8683"
title: "Le plus grand des plus petits"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [minimum, maximum, majoration, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 29 (niveau 1, trois étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $x$ et $y$ deux réels strictement positifs. On pose

$$s = \min\left(x, \ y + \frac{1}{x}, \ \frac{1}{y}\right) .$$

Quelle est la plus grande valeur que $s$ peut prendre ? Pour quels $x$ et $y$ est-elle atteinte ?

## Hints

1. Fais quelques essais numériques. Avec $x = 1$ et $y = 1$, que vaut $s$ ? Et avec $x = \text{1,5}$ et $y = \text{0,7}$ ?
2. Par définition du minimum, $s$ est inférieur ou égal à **chacune** des trois quantités. Écris les trois inégalités.
3. De $s \leqslant x$ tu peux déduire une majoration de $\frac{1}{x}$. De $s \leqslant \frac{1}{y}$ tu peux déduire une majoration de $y$.
4. Utilise ces deux majorations dans la troisième inégalité $s \leqslant y + \frac{1}{x}$.
5. Tu obtiendras une inégalité ne faisant intervenir que $s$. Résous-la.
6. Il reste à trouver $x$ et $y$ qui réalisent l'égalité : regarde ce que donnent $x = s$ et $y = \frac{1}{s}$.

## Solution

### Une majoration de $s$

Par définition du minimum, les trois inégalités suivantes sont vraies :

$$s \leqslant x, \qquad s \leqslant y + \frac{1}{x}, \qquad s \leqslant \frac{1}{y} .$$

Remarquons d'abord que $s > 0$, puisque les trois quantités sont strictement positives.

**Ce que donnent la première et la troisième.**

- De $0 < s \leqslant x$ on tire, en passant aux inverses (ce qui renverse l'inégalité) :
$$\frac{1}{x} \leqslant \frac{1}{s} .$$
- De $0 < s \leqslant \frac{1}{y}$ on tire de même $y \leqslant \frac{1}{s}$.

**On reporte dans la deuxième.**

$$s \ \leqslant \ y + \frac{1}{x} \ \leqslant \ \frac{1}{s} + \frac{1}{s} \ = \ \frac{2}{s} .$$

En multipliant par $s > 0$ :

$$s^2 \leqslant 2, \qquad \text{donc} \qquad s \leqslant \sqrt{2} .$$

### La valeur $\sqrt{2}$ est atteinte

Les inégalités utilisées deviennent des égalités quand $x = s$ et $y = \frac{1}{s}$. Essayons donc

$$x = \sqrt{2}, \qquad y = \frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2} .$$

Calculons les trois quantités :

$$x = \sqrt{2}, \qquad \frac{1}{y} = \sqrt{2}, \qquad y + \frac{1}{x} = \frac{1}{\sqrt 2} + \frac{1}{\sqrt 2} = \frac{2}{\sqrt 2} = \sqrt{2} .$$

Les trois valent $\sqrt{2}$, donc leur minimum vaut $\sqrt{2}$.

### Conclusion

$$\boxed{s_{\max} = \sqrt{2}, \text{ atteint pour } x = \sqrt{2} \text{ et } y = \frac{\sqrt{2}}{2} .}$$

## Going further

Remarque la structure de la réponse : l'optimum est atteint quand **les trois quantités sont égales**. C'est fréquent dans les problèmes de « maximiser un minimum » : tant qu'une des quantités est strictement plus grande que le minimum, on a de la marge, et on peut en général réajuster les variables pour faire monter le minimum.

Attention cependant, ce n'est pas une règle automatique : ici cela marche parce que les trois expressions s'ajustent librement. Il faut toujours vérifier, comme on l'a fait, que la configuration « tout est égal » est bien réalisable.

Pour continuer, une variante : quelle est la plus grande valeur possible de

$$\min\left(x, \ y + \frac{1}{x}, \ z + \frac{1}{y}, \ \frac{1}{z}\right)$$

pour $x, y, z > 0$ ? *(Indication : la même méthode donne une inégalité en $s$ ; la réponse n'est plus $\sqrt2$.)*
