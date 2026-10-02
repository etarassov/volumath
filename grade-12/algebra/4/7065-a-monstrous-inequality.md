---
id: "7065"
title: "Une inégalité aux exposants monstrueux"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, moyenne, exposants]
adapted_from: null
see_also: ["8440"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 3, d'après le test d'entrée OFM 2010"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Montrer que pour tout réel $x \geq 0$ :
$$1 + x^{2006} \geq \frac{(2x)^{2005}}{(1+x)^{2004}} .$$

## Hints

1. Ne te laisse pas impressionner par les exposants : ils ne servent qu'à masquer une
   inégalité très simple.
2. Comme $(1+x)^{2004} > 0$, tu peux multiplier des deux côtés. L'inégalité devient
   $\left(1 + x^{2006}\right)(1+x)^{2004} \geq (2x)^{2005}$.
3. Le seul outil nécessaire : pour $u, v \geq 0$, $u + v \geq 2\sqrt{uv}$.
4. Applique-le à $1 + x^{2006}$, puis à $1 + x$.
5. Multiplie les deux minorations obtenues, et compare les exposants.

## Solution

**Se débarrasser du dénominateur.**

Pour $x \geq 0$, on a $(1+x)^{2004} > 0$. L'inégalité à démontrer équivaut donc à
$$\left(1 + x^{2006}\right)(1+x)^{2004} \geq (2x)^{2005} .$$

**L'outil.**

Pour tous réels $u, v \geq 0$ :
$$u + v \geq 2\sqrt{uv} ,$$
car cette inégalité se réécrit $\left(\sqrt u - \sqrt v\right)^2 \geq 0$. Il y a égalité si et
seulement si $u = v$.

**Deux minorations.**

*Première minoration.* Avec $u = 1$ et $v = x^{2006}$ :
$$1 + x^{2006} \geq 2\sqrt{x^{2006}} = 2\,x^{1003} .$$

*Seconde minoration.* Avec $u = 1$ et $v = x$ :
$$1 + x \geq 2\sqrt x .$$

Les deux membres sont positifs, donc on peut élever à la puissance $2004$ :
$$(1+x)^{2004} \geq \left(2\sqrt x\right)^{2004} = 2^{2004}\,x^{1002} .$$

**Multiplier.**

Les quatre quantités en jeu sont positives, donc on peut multiplier les deux minorations :
$$\left(1 + x^{2006}\right)(1+x)^{2004}
\geq 2\,x^{1003} \times 2^{2004}\,x^{1002}
= 2^{2005}\,x^{2005} = (2x)^{2005} .$$

C'est exactement ce qu'on voulait. $\blacksquare$

**Cas d'égalité.**

Il faut l'égalité dans les deux minorations, donc $1 = x^{2006}$ et $1 = x$. Avec $x \geq 0$,
cela donne $x = 1$. Vérifions :
$$1 + 1 = 2 \qquad \text{et} \qquad \frac{2^{2005}}{2^{2004}} = 2 . \ \checkmark$$

## Going further

Regarde comment les exposants ont été choisis : $1003 + 1002 = 2005$, et
$2 \times 2^{2004} = 2^{2005}$. Tout s'ajuste exactement, ce qui est la signature d'un énoncé
fabriqué à partir de la solution.

On peut d'ailleurs écrire la version générale. Pour tout entier $n \geq 1$ et tout
$x \geq 0$ :
$$1 + x^{2n} \geq \frac{(2x)^{2n-1}}{(1+x)^{2n-2}} ,$$
et la démonstration est mot pour mot la même. L'énoncé de l'exercice est le cas $n = 1003$ :
les exposants gigantesques ne sont là que pour faire peur.
