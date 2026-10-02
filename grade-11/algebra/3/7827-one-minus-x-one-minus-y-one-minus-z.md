---
id: "7827"
title: "(1 − x)(1 − y)(1 − z) ≥ 8xyz"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, inegalite-arithmetico-geometrique, substitution, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe B, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois nombres réels positifs tels que
$$x + y + z = 1 .$$

Montrer que
$$(1 - x)(1 - y)(1 - z) \geq 8\,xyz .$$

## Hints

1. Ne développe surtout pas. Utilise d'abord la contrainte pour réécrire chacun des trois
   facteurs de gauche sans le $1$.
2. Comme $x + y + z = 1$, on a $1 - x = y + z$. Fais de même pour les deux autres.
3. Tu dois maintenant montrer que $(y+z)(z+x)(x+y) \geq 8xyz$. Minore chaque facteur
   séparément : pour deux réels positifs $u$ et $v$, que peux-tu dire de $u + v$ par rapport à
   $\sqrt{uv}$ ?
4. Multiplie les trois minorations et simplifie le produit des racines.

## Solution

**Étape 1 : on se débarrasse des $1$.**

De $x + y + z = 1$ on tire
$$1 - x = y + z, \qquad 1 - y = z + x, \qquad 1 - z = x + y .$$

L'inégalité à démontrer devient donc
$$(y + z)(z + x)(x + y) \geq 8\,xyz .$$

**Étape 2 : l'outil de base.**

Pour tous réels positifs $u$ et $v$,
$$\left(\sqrt{u} - \sqrt{v}\right)^2 \geq 0
\quad \Longrightarrow \quad u - 2\sqrt{uv} + v \geq 0
\quad \Longrightarrow \quad u + v \geq 2\sqrt{uv} .$$

**Étape 3 : on applique trois fois.**

$$y + z \geq 2\sqrt{yz}, \qquad z + x \geq 2\sqrt{zx}, \qquad x + y \geq 2\sqrt{xy} .$$

Les six membres sont positifs, donc on peut multiplier les trois inégalités :
$$(y+z)(z+x)(x+y) \geq 2\sqrt{yz} \times 2\sqrt{zx} \times 2\sqrt{xy}
 = 8\,\sqrt{yz \times zx \times xy} .$$

**Étape 4 : on simplifie la racine.**

$$yz \times zx \times xy = x^2 y^2 z^2 = (xyz)^2 ,$$
et comme $xyz \geq 0$,
$$\sqrt{(xyz)^2} = xyz .$$

D'où
$$(y+z)(z+x)(x+y) \geq 8\,xyz ,$$
c'est-à-dire exactement l'inégalité demandée.

**Cas d'égalité.** Il faut l'égalité dans les trois applications de l'étape 2, donc
$y = z$, $z = x$ et $x = y$ : les trois nombres sont égaux, et comme leur somme vaut $1$,
$$x = y = z = \frac{1}{3}.$$
On vérifie alors : $\left(\frac23\right)^3 = \frac{8}{27}$ et
$8 \times \left(\frac13\right)^3 = \frac{8}{27}$. C'est bien une égalité.
