---
id: "8212"
title: "L'entier k caché dans une identité"
grade: 10
theme: algebra
difficulty: 2
duration_min: 20
tags: [developpement, identites, polynomes, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 7"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Pour quels entiers $k$ l'égalité

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) + k\,abc$$

est-elle vraie quels que soient les réels $a$, $b$ et $c$ ?

## Hints

1. Une méthode sûre, un peu longue mais sans surprise : développer complètement les deux membres et comparer.
2. Une méthode plus rapide : l'égalité doit être vraie pour **tous** les réels. Choisis donc des valeurs de $a$, $b$, $c$ qui simplifient tout. Que se passe-t-il si tu prends $a = b = c = 1$ ?
3. Attention : une valeur particulière te donne un **candidat** pour $k$. Il faut ensuite vérifier que ce $k$-là convient vraiment pour tous les réels, c'est-à-dire faire le développement complet.

## Solution

**Une valeur particulière pour deviner $k$.**

Si l'égalité est vraie pour tous les réels, elle est en particulier vraie pour $a = b = c = 1$. Calculons les deux membres dans ce cas.

À gauche : $(1+1)(1+1)(1+1) = 2 \times 2 \times 2 = 8$.

À droite : $(1+1+1)(1 \cdot 1 + 1 \cdot 1 + 1 \cdot 1) + k \times 1 = 3 \times 3 + k = 9 + k$.

Donc $8 = 9 + k$, d'où

$$k = -1 .$$

Il n'y a donc **au plus** une valeur possible, et c'est $k = -1$. Il reste à vérifier qu'elle convient réellement.

**Le développement complet.**

*Membre de droite.* Développons d'abord $(a+b+c)(ab+bc+ca)$ en distribuant chacun des trois termes :

$$a(ab+bc+ca) = a^2 b + abc + a^2 c,$$
$$b(ab+bc+ca) = ab^2 + b^2 c + abc,$$
$$c(ab+bc+ca) = abc + bc^2 + ac^2 .$$

En additionnant :

$$(a+b+c)(ab+bc+ca) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 3abc .$$

*Membre de gauche.* Développons $(a+b)(b+c)$ d'abord :

$$(a+b)(b+c) = ab + ac + b^2 + bc .$$

Puis multiplions par $(c+a)$ :

$$(ab + ac + b^2 + bc)(c+a) = abc + a^2b + ac^2 + a^2c + b^2c + ab^2 + bc^2 + abc .$$

En regroupant :

$$(a+b)(b+c)(c+a) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 2abc .$$

*Comparaison.* Les six termes de degré $3$ « non symétriques » sont exactement les mêmes des deux côtés. Il ne reste que la différence sur le terme $abc$ :

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) - abc .$$

**Conclusion.**

$$\boxed{k = -1 \text{ est la seule valeur qui convient.}}$$

**À retenir.** L'identité

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) - abc$$

est classique et revient souvent : elle relie le produit des sommes deux à deux aux trois quantités $a+b+c$, $ab+bc+ca$ et $abc$, qui sont les briques de base de tout ce qui est symétrique en $a$, $b$, $c$.

## Going further

Vérifier de la même manière l'identité $a^3 + b^3 + c^3 - 3abc = (a+b+c)(a^2+b^2+c^2-ab-bc-ca)$, puis en déduire que si $a+b+c = 0$, alors $a^3+b^3+c^3 = 3abc$.
