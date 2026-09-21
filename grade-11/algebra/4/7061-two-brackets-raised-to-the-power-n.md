---
id: "7061"
title: "Deux parenthèses à la puissance n"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, moyennes, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soit $n$ un entier naturel, et soient $a$ et $b$ deux réels strictement positifs.

Montrer que
$$\left(1 + \frac ab\right)^n + \left(1 + \frac ba\right)^n \geq 2^{n+1} .$$

Pour quels $a$ et $b$ y a-t-il égalité ?

## Hints

1. Deux faits élémentaires te suffisent. Le premier : pour $x, y \geq 0$,
   $x + y \geq 2\sqrt{xy}$.
2. Le second : pour $t > 0$, $t + \dfrac 1t \geq 2$.
3. Applique le premier aux deux termes de la somme. Que devient le produit
   $\left(1 + \frac ab\right)^n \left(1 + \frac ba\right)^n$ ?
4. Développe $\left(1 + \dfrac ab\right)\left(1 + \dfrac ba\right)$. Tu reconnaîtras une
   quantité du deuxième fait.

## Solution

**Deux outils.**

*Outil 1.* Pour tous réels $x, y \geq 0$ : $x + y \geq 2\sqrt{xy}$.

En effet, l'inégalité se réécrit $\left(\sqrt x - \sqrt y\right)^2 \geq 0$. Il y a égalité si
et seulement si $x = y$.

*Outil 2.* Pour tout réel $t > 0$ : $t + \dfrac1t \geq 2$.

C'est l'outil 1 appliqué à $x = t$ et $y = \dfrac 1t$, dont le produit vaut $1$. Il y a
égalité si et seulement si $t = 1$.

**La démonstration.**

Posons $u = \left(1 + \dfrac ab\right)^n$ et $v = \left(1 + \dfrac ba\right)^n$. Ce sont deux
réels strictement positifs. L'outil 1 donne
$$u + v \geq 2\sqrt{uv} .$$

Calculons le produit $uv$ :
$$uv = \left[\left(1 + \frac ab\right)\left(1 + \frac ba\right)\right]^n
= \left[1 + \frac ba + \frac ab + 1\right]^n
= \left[2 + \frac ab + \frac ba\right]^n .$$

Or, par l'outil 2 appliqué à $t = \dfrac ab > 0$, on a $\dfrac ab + \dfrac ba \geq 2$, donc
$$2 + \frac ab + \frac ba \geq 4 .$$

En élevant à la puissance $n$ (ce qui conserve l'inégalité entre nombres positifs) :
$$uv \geq 4^n .$$

Enfin
$$u + v \geq 2\sqrt{uv} \geq 2\sqrt{4^n} = 2 \times 2^n = 2^{n+1} . \qquad \blacksquare$$

**Le cas d'égalité.**

Il faut l'égalité dans les deux étapes.

- Dans l'outil 2 : $\dfrac ab = 1$, donc $a = b$.
- Dans l'outil 1 : $u = v$, ce qui est automatique dès que $a = b$.

Réciproquement, si $a = b$, les deux termes valent $2^n$ chacun, et la somme vaut bien
$2^{n+1}$.

$$\boxed{\text{Il y a égalité si et seulement si } a = b .}$$

## Going further

La démonstration n'utilise jamais la valeur de $n$ : elle marche aussi pour $n = 0$ (les deux
membres valent $2$) et même pour $n$ réel positif quelconque.

Le schéma est à retenir : pour minorer une **somme**, on passe par le **produit**, qui est
souvent beaucoup plus simple. Ici la somme ne se simplifie pas du tout, alors que le produit
se réduit à une seule quantité, $2 + \dfrac ab + \dfrac ba$.
