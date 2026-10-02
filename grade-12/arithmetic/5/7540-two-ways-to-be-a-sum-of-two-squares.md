---
id: "7540"
title: "Deux façons d'être une somme de deux carrés"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [somme-de-deux-carres, identite, nombres-premiers, lemme-deuclide, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 122 (une étoile). Le polycopié ne donne aucune solution pour cet exercice ; la démonstration ci-dessous a été écrite pour le club."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Certains entiers s'écrivent de plusieurs façons comme somme de deux carrés. Par exemple

$$25 = 3^2 + 4^2 = 0^2 + 5^2, \qquad 50 = 1^2 + 7^2 = 5^2 + 5^2 .$$

Soit $n$ un entier qui s'écrit de **deux façons différentes** comme somme de deux carrés d'entiers naturels : il existe $a \geqslant b \geqslant 0$ et $c \geqslant d \geqslant 0$ avec

$$n = a^2 + b^2 = c^2 + d^2 \qquad \text{et} \qquad (a, b) \neq (c, d).$$

Montrer que $n$ est un nombre composé.

## Hints

1. Raisonne par l'absurde : suppose $n$ premier, et cherche à montrer que les deux écritures sont en fait la même.
2. Cherche un produit dont on sache qu'il est un multiple de $n$. Développe $(ac+bd)(ad+bc)$ et regroupe les termes deux par deux.
3. Tu devrais trouver $(ac+bd)(ad+bc) = n\,(ab+cd)$. Si $n$ est premier, que peut-on dire de $ac+bd$ ou de $ad+bc$ ?
4. Il faut maintenant majorer ces deux quantités par $n$. Développe $(ac+bd)^2 + (ad-bc)^2$ : c'est une identité classique.
5. L'identité donne $(ac+bd)^2 + (ad-bc)^2 = n^2$. Donc $ac+bd \leqslant n$, avec égalité seulement si $ad = bc$. Exploite ce cas d'égalité.

## Solution

**Réponse : oui, un tel $n$ est toujours composé.**

D'abord, $n \geqslant 2$ : en effet $n = 0$ ne s'écrit que $0^2+0^2$ et $n = 1$ ne s'écrit que $0^2+1^2$, donc ni l'un ni l'autre n'a deux écritures. Il suffit donc de montrer que $n$ n'est pas premier.

**Raisonnons par l'absurde et supposons $n = p$ premier.**

**Étape 1. Une identité qui fait apparaître $n$.**

Développons le produit $(ac+bd)(ad+bc)$ :

$$(ac+bd)(ad+bc) = a^2cd + abc^2 + abd^2 + b^2cd .$$

Regroupons autrement :

$$= cd\,(a^2+b^2) + ab\,(c^2+d^2) = cd \cdot n + ab \cdot n ,$$

puisque $a^2+b^2$ et $c^2+d^2$ valent tous deux $n$. Donc

$$(\star) \qquad (ac+bd)(ad+bc) = n\,(ab+cd).$$

En particulier $n$ divise le produit $(ac+bd)(ad+bc)$.

**Étape 2. Les deux facteurs sont strictement positifs.**

Montrons $ac+bd > 0$. Sinon, comme $a, b, c, d \geqslant 0$, il faudrait $ac = 0$ et $bd = 0$.

- Si $a = 0$, alors $b = 0$ aussi (car $a \geqslant b \geqslant 0$) et $n = 0$ : exclu.
- Donc $a > 0$, et $ac = 0$ impose $c = 0$, donc $d = 0$ (car $c \geqslant d$), donc $n = 0$ : exclu.

Donc $ac + bd > 0$. Le même raisonnement, en échangeant les rôles de $c$ et $d$, donne $ad + bc > 0$.

**Étape 3. Les deux facteurs sont majorés par $n$.**

Voici l'identité clé, que l'on vérifie en développant les deux membres :

$$(\star\star) \qquad (a^2+b^2)(c^2+d^2) = (ac+bd)^2 + (ad-bc)^2 .$$

*Vérification.* À gauche : $a^2c^2 + a^2d^2 + b^2c^2 + b^2d^2$. À droite : $(a^2c^2 + 2abcd + b^2d^2) + (a^2d^2 - 2abcd + b^2c^2)$, les termes $\pm 2abcd$ s'annulent et il reste la même chose.

Comme les deux facteurs de gauche valent $n$, l'identité donne

$$(ac+bd)^2 + (ad-bc)^2 = n^2 ,$$

d'où $(ac+bd)^2 \leqslant n^2$, c'est-à-dire

$$0 < ac+bd \leqslant n, \qquad \text{avec égalité si et seulement si } ad = bc .$$

En échangeant $c$ et $d$ dans $(\star\star)$ on obtient de même

$$(ac-bd)^2 + (ad+bc)^2 = n^2, \qquad \text{donc} \qquad 0 < ad+bc \leqslant n, \quad \text{avec égalité si et seulement si } ac = bd .$$

**Étape 4. On utilise que $n$ est premier.**

D'après $(\star)$, le nombre premier $n$ divise le produit $(ac+bd)(ad+bc)$. Par le lemme d'Euclide, il divise l'un des deux facteurs. Or chacun est strictement compris entre $0$ et $n$ au sens large, donc le facteur divisible par $n$ vaut exactement $n$.

**Cas A : $ac+bd = n$.** L'étape 3 donne alors $ad = bc$.

Multiplions $ac + bd = a^2+b^2$ par $a$ :

$$a^2 c + abd = a^3 + ab^2 .$$

Or $abd = b \cdot (ad) = b \cdot (bc) = b^2 c$. Donc

$$a^2 c + b^2 c = a^3 + ab^2, \qquad \text{c'est-à-dire} \qquad c\,(a^2+b^2) = a\,(a^2+b^2).$$

Comme $a^2+b^2 = n > 0$, on simplifie : $c = a$. Alors $b^2 = n - a^2 = n - c^2 = d^2$, et comme $b, d \geqslant 0$, $b = d$.

Donc $(a,b) = (c,d)$ : les deux écritures sont la même, ce qui contredit l'hypothèse.

**Cas B : $ad+bc = n$.** L'étape 3 donne alors $ac = bd$.

Multiplions $ad + bc = a^2+b^2$ par $a$ :

$$a^2 d + abc = a^3 + ab^2 .$$

Or $abc = b \cdot (ac) = b \cdot (bd) = b^2 d$, donc $d\,(a^2+b^2) = a\,(a^2+b^2)$, d'où $d = a$. Puis $c^2 = n - d^2 = n - a^2 = b^2$, donc $c = b$.

On a donc $c = b$ et $d = a$, avec $a \geqslant b$ et $c \geqslant d$, c'est-à-dire $b \geqslant a$. Donc $a = b$, puis $c = d = a$ : là encore $(a,b) = (c,d)$, contradiction.

**Conclusion.** Les deux cas sont impossibles. L'hypothèse « $n$ premier » est donc fausse. Comme $n \geqslant 2$, le nombre $n$ est composé.

## Going further

L'identité $(\star\star)$ est connue sous le nom d'**identité de Brahmagupta-Fibonacci**. Elle dit qu'un produit de deux sommes de deux carrés est encore une somme de deux carrés, et c'est la clé de toute la théorie des sommes de deux carrés.

Le résultat démontré ici est en fait la moitié d'un théorème beaucoup plus précis, dû à Fermat :

> Un nombre premier impair $p$ s'écrit comme somme de deux carrés si et seulement si $p \equiv 1 \pmod 4$, et dans ce cas l'écriture est **unique**.

L'exercice redémontre justement cette unicité, sans avoir besoin du reste du théorème.

Deux pistes pour continuer :

1. Les deux écritures ne servent pas qu'à prouver que $n$ est composé : elles permettent de le **factoriser**. Essaie sur $221 = 14^2 + 5^2 = 11^2 + 10^2$. Pose $k = \mathrm{PGCD}(14-11,\, 10-5) = 1$ et $h = \mathrm{PGCD}(14+11,\, 10+5) = 5$, puis calcule $\dfrac{k^2+h^2}{2}$. Tu obtiens $13$, qui divise bien $221 = 13 \times 17$. C'est le point de départ de la *méthode de factorisation d'Euler*.
2. Combien d'écritures a $n = 5^2 \times 13 = 325$ ? Compte-les, puis essaie de deviner la règle générale à partir de la décomposition de $n$ en facteurs premiers.
