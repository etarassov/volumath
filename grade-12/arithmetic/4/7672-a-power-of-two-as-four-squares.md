---
id: "7672"
title: "Une puissance de 2 en somme de quatre carrés"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [descente-infinie, congruences, carres, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 50 (deux étoiles, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n$ un entier, $n \geqslant 1$.

De combien de façons peut-on écrire $2^n$ comme somme de quatre carrés d'entiers **strictement positifs** ?

*Deux écritures qui ne diffèrent que par l'ordre des quatre nombres comptent pour une seule.*

## Hints

1. Faites les premiers cas à la main : $2$, $4$, $8$, $16$, $32$, $64$. Une règle très simple apparaît.
2. Supposons $a^2 + b^2 + c^2 + d^2 = 2^n$. Regardez cette égalité modulo $4$ : quels sont les restes possibles d'un carré ? Combien de $a$, $b$, $c$, $d$ peuvent être impairs ?
3. Si les quatre sont impairs, affinez : un carré impair vaut combien modulo $8$ ?
4. Si les quatre sont pairs, divisez tout par $4$. Vous retombez sur le même problème avec un exposant plus petit : c'est une **descente**.
5. Où la descente s'arrête-t-elle ? Distinguez selon la parité de $n$.

## Solution

### Premiers calculs

- $2^1 = 2$ : la plus petite somme de quatre carrés strictement positifs vaut $1+1+1+1 = 4 > 2$. Aucune écriture.
- $2^2 = 4 = 1 + 1 + 1 + 1$. Une écriture.
- $2^3 = 8$ : les carrés disponibles sont $1$ et $4$. On essaie $4+4$ (il manque deux carrés positifs), $4+1+1+1 = 7$, $1+1+1+1 = 4$. Aucune écriture.
- $2^4 = 16 = 4 + 4 + 4 + 4$. Une écriture (on vérifie qu'il n'y en a pas d'autre).

La règle se devine : **une écriture si $n$ est pair, aucune si $n$ est impair**. Démontrons-la.

### Deux congruences

Supposons

$$a^2 + b^2 + c^2 + d^2 = 2^n \qquad \text{avec } a, b, c, d \geqslant 1 \text{ et } n \geqslant 2 .$$

**Modulo 4.** Un carré vaut $0$ modulo $4$ s'il est pair, et $1$ s'il est impair. Comme $n \geqslant 2$, le membre de droite vaut $0$ modulo $4$. Donc le nombre $k$ de nombres impairs parmi $a, b, c, d$ vérifie

$$k \equiv 0 \pmod 4, \qquad \text{donc } k = 0 \text{ ou } k = 4 .$$

Autrement dit : **soit les quatre sont pairs, soit les quatre sont impairs.**

**Modulo 8, dans le cas « tous impairs ».** Si $m$ est impair, $m = 2\ell+1$ et

$$m^2 = 4\ell(\ell+1) + 1 \equiv 1 \pmod 8 ,$$

puisque $\ell(\ell+1)$, produit de deux entiers consécutifs, est pair. Donc si $a$, $b$, $c$, $d$ sont tous impairs,

$$2^n = a^2+b^2+c^2+d^2 \equiv 4 \pmod 8 .$$

Or $2^n \equiv 4 \pmod 8$ impose $n = 2$ : pour $n \geqslant 3$ on a $2^n \equiv 0 \pmod 8$.

Et pour $n = 2$, la seule possibilité avec quatre impairs strictement positifs est $a=b=c=d=1$, car $3^2 = 9 > 4$.

### La descente

Reprenons. Si $n \geqslant 3$, le cas « tous impairs » est exclu : les quatre nombres sont donc **pairs**. Écrivons $a = 2a'$, $b = 2b'$, $c = 2c'$, $d = 2d'$, avec $a', b', c', d' \geqslant 1$. En divisant par $4$ :

$$a'^2 + b'^2 + c'^2 + d'^2 = 2^{n-2} .$$

On a donc exactement les mêmes données, avec l'exposant diminué de $2$. De plus cette division est **réversible** : les écritures de $2^n$ correspondent une à une aux écritures de $2^{n-2}$.

Répétons l'opération tant que l'exposant reste supérieur ou égal à $3$.

- **Si $n$ est pair**, on descend jusqu'à l'exposant $2$. Là, une seule écriture existe : $1+1+1+1$. En remontant, chaque division par $2$ se défait en multipliant par $2$, donc $2^n$ admet **exactement une** écriture, à savoir
$$2^n = \left(2^{\frac{n-2}{2}}\right)^2 \times 4 , \qquad \text{c'est-à-dire } a = b = c = d = 2^{\frac{n-2}{2}} .$$
- **Si $n$ est impair**, on descend jusqu'à l'exposant $1$. Or $2^1 = 2$ ne s'écrit pas comme somme de quatre carrés strictement positifs, puisque le minimum d'une telle somme vaut $4$. Il n'y a donc **aucune** écriture.

### Conclusion

$$\boxed{\begin{aligned} &n \text{ pair} : \text{ exactement une écriture, } 2^n = 4 \times \left(2^{\frac{n-2}{2}}\right)^2 ,\\ &n \text{ impair} : \text{ aucune écriture.} \end{aligned}}$$

Par exemple $2^{10} = 1024 = 16^2 + 16^2 + 16^2 + 16^2$, et c'est la seule façon.

## Going further

**La descente infinie.** L'argument employé ici est le schéma classique de la descente : d'une solution on en fabrique une strictement « plus petite », jusqu'à atteindre un cas minimal que l'on sait traiter directement. Fermat en a fait un outil systématique au XVIIᵉ siècle. Ici la descente ne mène pas à une contradiction, mais à un décompte exact, ce qui est plus rare et plus satisfaisant.

**Le point clé est le modulo 8.** Le modulo $4$ laisse deux cas ouverts ; c'est le passage à $8$, en utilisant que tout carré impair vaut $1$ modulo $8$, qui élimine le cas gênant. Cette propriété, « $m$ impair $\Rightarrow m^2 \equiv 1 \pmod 8$ », est l'une des plus utiles de toute l'arithmétique élémentaire : retenez-la.

**Le théorème des quatre carrés.** Lagrange a démontré en 1770 que **tout** entier positif est somme de quatre carrés, si l'on autorise le carré $0$. Notre exercice montre que l'exigence « strictement positifs » change complètement la situation : elle rend certaines écritures impossibles, et rend les autres uniques.

**Une question pour prolonger.** Combien y a-t-il d'écritures de $3^n$ comme somme de quatre carrés strictement positifs ? Pour $n = 1$ et $n = 2$, aucune : on vérifie à la main que ni $3$ ni $9$ ne convient. Pour $n = 3$, il y en a exactement une, $27 = 1 + 1 + 9 + 16$. Pour $n = 4$, on en trouve déjà plusieurs. Le comportement est donc beaucoup plus irrégulier, parce que la descente utilisée ci-dessus repose entièrement sur les congruences modulo $4$ et $8$, qui sont propres au nombre premier $2$.
