---
id: "7518"
title: "Une somme alternée plus petite que 2/5"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [somme-alternee, regroupement, majoration, fractions]
adapted_from: null
see_also: ["7428"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 20 (une étoile ; solution p. 242, résolu par Tobias Parker)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Montrer que

$$\frac12 - \frac13 + \frac14 - \frac15 + \frac16 - \cdots - \frac{1}{999} + \frac{1}{1000} \;<\; \frac25.$$

La somme porte sur tous les dénominateurs de $2$ à $1000$, avec le signe $+$ devant les dénominateurs pairs et le signe $-$ devant les impairs.

## Hints

1. Il y a $999$ termes : il n'est pas question de tout calculer. Il faut **majorer**, c'est-à-dire remplacer la somme par quelque chose de plus grand mais de simple.
2. Regroupe les termes deux par deux. Attention : il y a deux façons de faire les paquets, $\left(\frac12 - \frac13\right) + \left(\frac14 - \frac15\right) + \cdots$ ou bien $\frac12 + \left(-\frac13 + \frac14\right) + \cdots$. Laquelle donne des paquets **négatifs** ?
3. Des paquets négatifs, c'est ce qu'on veut : on peut alors les jeter et la somme ne fait que diminuer.
4. Garde quand même quelques premiers termes à la main avant de commencer à jeter. Combien faut-il en garder pour tomber en dessous de $\frac25$ ?

## Solution

**Étape 1. Le bon regroupement.**

Regroupons ainsi : on garde les cinq premiers termes tels quels, puis on apparie les suivants en commençant par un terme négatif.

$$\frac12 - \frac13 + \frac14 - \frac15 + \frac16 \;+\; \left(-\frac17 + \frac18\right) + \left(-\frac19 + \frac1{10}\right) + \cdots + \left(-\frac1{999} + \frac1{1000}\right).$$

Ce découpage est licite : après $\frac16$, les dénominateurs restants sont $7, 8, 9, 10, \ldots, 999, 1000$, soit $994$ nombres, donc $497$ paquets complets. Le premier terme de chaque paquet est impair (donc négatif) et le second est pair (donc positif).

**Étape 2. Chaque paquet est négatif.**

Prenons un paquet quelconque, $-\dfrac{1}{2k+1} + \dfrac{1}{2k+2}$. Comme $2k+1 < 2k+2$, on a $\dfrac{1}{2k+1} > \dfrac{1}{2k+2}$, donc

$$-\frac{1}{2k+1} + \frac{1}{2k+2} \;<\; 0.$$

Tous les paquets sont strictement négatifs.

**Étape 3. On les supprime.**

Ajouter des quantités négatives ne fait que diminuer. Donc la somme complète est strictement inférieure à ce qui reste quand on retire tous les paquets, c'est-à-dire

$$\frac12 - \frac13 + \frac14 - \frac15 + \frac16.$$

**Étape 4. On calcule ce qui reste.**

Réduisons au dénominateur commun $60$ :

$$\frac12 - \frac13 + \frac14 - \frac15 + \frac16 = \frac{30 - 20 + 15 - 12 + 10}{60} = \frac{23}{60}.$$

**Étape 5. On compare à $\frac25$.**

$$\frac25 = \frac{24}{60} \;>\; \frac{23}{60}.$$

**Conclusion.** La somme est strictement inférieure à $\dfrac{23}{60}$, donc strictement inférieure à $\dfrac{2}{5}$.

## Going further

Pourquoi fallait-il garder cinq termes et pas moins ? Essayons d'en garder trois : $\frac12 - \frac13 + \frac14 = \frac{7}{12} = \frac{35}{60}$, ce qui est bien plus grand que $\frac{24}{60}$ : la majoration serait vraie mais inutile. En gardant cinq termes on descend à $\frac{23}{60}$, juste ce qu'il faut. C'est typique : on ajuste le nombre de termes gardés jusqu'à ce que la majoration devienne suffisante.

Et que vaut vraiment cette somme ? En la prolongeant à l'infini, on obtient

$$\frac12 - \frac13 + \frac14 - \frac15 + \cdots = 1 - \ln 2 \approx 0{,}3069,$$

à comparer à $\frac{2}{5} = 0{,}4$. La majoration grossière de l'exercice laisse donc encore beaucoup de marge, mais elle a l'avantage de tenir en cinq lignes.
