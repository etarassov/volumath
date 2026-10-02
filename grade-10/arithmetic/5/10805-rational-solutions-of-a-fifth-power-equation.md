---
id: "10805"
title: "x⁵ + 2y⁵ + 5z⁵ = 11 en nombres rationnels"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [rationnels, congruences, puissances, descente-infinie, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Communs, exercice 6 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Existe-t-il des nombres rationnels $x$, $y$ et $z$, positifs ou nuls, tels que

$$x^5 + 2y^5 + 5z^5 = 11 \; ?$$

## Hints

1. Écris $x$, $y$ et $z$ comme des fractions avec un même dénominateur $d$ : $x = \dfrac{a}{d}$, $y = \dfrac{b}{d}$, $z = \dfrac{c}{d}$. Quelle équation en nombres entiers obtiens-tu ?
2. Dans cette équation, le membre de droite est un multiple de $11$. Regarde donc tout modulo $11$. Pour commencer, dresse la liste des restes possibles de $a^5$ dans la division par $11$.
3. Tu dois trouver que $a^5$ laisse toujours le reste $0$, $1$ ou $10$, et le reste $0$ seulement si $a$ est un multiple de $11$. Déduis-en que $a$, $b$ et $c$ sont tous les trois des multiples de $11$.
4. Montre qu'alors $d$ est aussi un multiple de $11$. Pour obtenir une contradiction, il suffit d'avoir choisi $d$ le plus petit possible au départ.

## Solution

**Réponse : non, de tels rationnels n'existent pas.**

On raisonne par l'absurde : on suppose que de tels $x$, $y$, $z$ existent.

### Étape 1 : se ramener à des entiers

Les trois nombres $x$, $y$, $z$ sont des fractions. On peut les écrire avec un dénominateur commun (par exemple le produit de leurs trois dénominateurs). Parmi tous les dénominateurs communs possibles, on choisit **le plus petit**, qu'on appelle $d$. On a donc
$$x = \frac{a}{d}, \qquad y = \frac{b}{d}, \qquad z = \frac{c}{d}$$
avec $a$, $b$, $c$ des entiers positifs ou nuls et $d \geqslant 1$. En remplaçant dans l'équation et en multipliant par $d^5$ :
$$a^5 + 2b^5 + 5c^5 = 11\,d^5 . \qquad (\star)$$

### Étape 2 : les puissances cinquièmes modulo 11

On regarde les restes dans la division par $11$. On utilise une règle simple : **le reste d'un produit ne dépend que des restes des facteurs.** En effet, si $a = 11q + r$ et $a' = 11q' + r'$, alors
$$a\,a' = 11\,(11qq' + qr' + rq') + r\,r',$$
donc $a\,a'$ a le même reste que $r\,r'$. Le reste de $a^5$ est donc celui de $r^5$, où $r$ est le reste de $a$.

On calcule $r^2$, puis $r^4 = (r^2)^2$, puis $r^5 = r^4 \times r$, en ne gardant à chaque fois que le reste. Le tableau donne les **restes dans la division par 11** :

| $a$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $a^2$ | $0$ | $1$ | $4$ | $9$ | $5$ | $3$ | $3$ | $5$ | $9$ | $4$ | $1$ |
| $a^4$ | $0$ | $1$ | $5$ | $4$ | $3$ | $9$ | $9$ | $3$ | $4$ | $5$ | $1$ |
| $a^5$ | $0$ | $1$ | $10$ | $1$ | $1$ | $1$ | $10$ | $10$ | $10$ | $1$ | $10$ |

Par exemple, pour $r = 2$ : $2^2 = 4$, $4^2 = 16$ qui a le reste $5$, et $5 \times 2 = 10$.

On retient deux choses :

- **$a^5$ laisse toujours le reste $0$, $1$ ou $10$** dans la division par $11$ ;
- **le reste $0$ n'apparaît que si $a$ est un multiple de $11$.**

Comme $10 = 11 - 1$, un nombre de reste $10$ s'écrit $11k - 1$. On peut donc écrire, dans tous les cas,
$$a^5 = 11k_1 + u, \qquad b^5 = 11k_2 + v, \qquad c^5 = 11k_3 + w \qquad \text{avec } u, v, w \in \{-1, 0, 1\} .$$

### Étape 3 : $a$, $b$ et $c$ sont des multiples de 11

En remplaçant dans $(\star)$ :
$$11\,(k_1 + 2k_2 + 5k_3) + (u + 2v + 5w) = 11\,d^5,$$
donc $u + 2v + 5w$ est un multiple de $11$. Or ce nombre est compris entre $-8$ et $8$. Le seul multiple de $11$ dans cet intervalle est $0$, donc
$$u + 2v + 5w = 0 .$$

- Si $w = 1$ ou $w = -1$, il faudrait $u + 2v = -5$ ou $u + 2v = 5$. Impossible, car $u + 2v$ est compris entre $-3$ et $3$.
- Donc $w = 0$, puis $u = -2v$. Comme $u$ vaut $-1$, $0$ ou $1$, cela force $v = 0$ et $u = 0$.

Ainsi $u = v = w = 0$ : d'après l'étape 2, **$a$, $b$ et $c$ sont tous les trois des multiples de $11$**.

### Étape 4 : $d$ aussi, d'où la contradiction

Écrivons $a = 11a'$, $b = 11b'$, $c = 11c'$. L'égalité $(\star)$ devient
$$11^5\,(a'^5 + 2b'^5 + 5c'^5) = 11\,d^5, \qquad \text{donc} \qquad d^5 = 11^4\,(a'^5 + 2b'^5 + 5c'^5) .$$
En particulier $d^5$ est un multiple de $11$. D'après le tableau, c'est seulement possible si $d$ est lui-même un multiple de $11$ : $d = 11d'$.

Mais alors
$$x = \frac{11a'}{11d'} = \frac{a'}{d'}, \qquad y = \frac{b'}{d'}, \qquad z = \frac{c'}{d'},$$
et $d'$ est un dénominateur commun **plus petit** que $d$. Cela contredit le choix de $d$ comme plus petit dénominateur commun.

### Conclusion

L'hypothèse de départ mène à une contradiction. **Il n'existe pas de rationnels $x, y, z \geqslant 0$ tels que $x^5 + 2y^5 + 5z^5 = 11$.**

*Remarque.* On n'a jamais utilisé que $x$, $y$, $z$ sont positifs : l'équation n'a pas non plus de solution en rationnels de signe quelconque.

## Going further

1. Pourquoi a-t-on choisi de travailler modulo $11$ ? Essaie modulo $5$ ou modulo $2$ : ces choix ne mènent à rien.
2. Montre de la même manière qu'il n'existe pas de rationnels $x$ et $y$ tels que $x^2 + y^2 = 3$. *Indication : travaille modulo $3$ ou modulo $4$.*
