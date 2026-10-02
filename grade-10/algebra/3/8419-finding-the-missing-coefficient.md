---
id: "8419"
title: "Retrouver le coefficient manquant"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [identite, developpement, calcul-litteral, cas-particulier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités et manipulations algébriques » (Auguste De Lambilly), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver le nombre réel $k$ tel que, pour **tous** réels $a$, $b$, $c$, on ait

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) + k \cdot abc.$$

## Hints

1. L'égalité doit être vraie pour tous les réels $a$, $b$, $c$. En particulier pour des valeurs que tu choisis toi-même, et qui rendent le calcul facile.
2. Essaie $a = b = c = 1$. Tu obtiens une équation à une inconnue, $k$.
3. Attention : ce calcul donne la **seule valeur possible** de $k$, mais il ne prouve pas encore que l'égalité est alors vraie pour tous les réels. Il reste à le vérifier.
4. Pour la vérification, développe les deux membres. Chacun est une somme de six termes du type $a^2 b$, plus un multiple de $abc$.

## Solution

### Première partie : trouver la valeur de $k$

Si un tel $k$ existe, l'égalité vaut en particulier pour $a = b = c = 1$.

- Membre de gauche : $(1+1)(1+1)(1+1) = 2 \times 2 \times 2 = 8$.
- Membre de droite : $(1+1+1)(1+1+1) + k \times 1 = 9 + k$.

Donc $8 = 9 + k$, c'est-à-dire $k = -1$.

**Aucune autre valeur n'est possible.** Reste à vérifier que $k = -1$ convient réellement.

### Seconde partie : vérifier que $k = -1$ convient

**Le membre de droite.** Développons $(a+b+c)(ab+bc+ca)$ en distribuant :

$$a \cdot (ab+bc+ca) = a^2 b + abc + a^2 c,$$
$$b \cdot (ab+bc+ca) = ab^2 + b^2 c + abc,$$
$$c \cdot (ab+bc+ca) = abc + bc^2 + ac^2.$$

En additionnant :

$$(a+b+c)(ab+bc+ca) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 3abc.$$

**Le membre de gauche.** Développons d'abord les deux premiers facteurs :

$$(a+b)(b+c) = ab + ac + b^2 + bc.$$

Puis multiplions par $(c+a)$ :

$$(ab + ac + b^2 + bc)(c+a) = \underbrace{abc + ac^2 + b^2c + bc^2}_{\text{multiplié par } c} + \underbrace{a^2b + a^2c + ab^2 + abc}_{\text{multiplié par } a}.$$

Soit

$$(a+b)(b+c)(c+a) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 2abc.$$

**La comparaison.** Les deux développements ont exactement les mêmes six premiers termes. Ils ne diffèrent que par le coefficient de $abc$ : $2$ à gauche, $3$ à droite. Donc

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) - abc,$$

et cette égalité est valable pour tous les réels $a$, $b$, $c$.

**Réponse :** $\boxed{k = -1}$.

## Going further

Cette identité est utile en soi : elle relie le produit $(a+b)(b+c)(c+a)$ aux trois quantités

$$s_1 = a+b+c, \qquad s_2 = ab+bc+ca, \qquad s_3 = abc,$$

qu'on appelle les **fonctions symétriques élémentaires** de $a$, $b$, $c$. Elle s'écrit alors

$$(a+b)(b+c)(c+a) = s_1 s_2 - s_3.$$

Ces trois quantités sont exactement celles qui apparaissent dans les coefficients d'un polynôme de degré $3$ dont $a$, $b$, $c$ sont les racines. C'est pourquoi beaucoup d'expressions symétriques se ramènent à elles.

Retenons aussi la méthode en deux temps : **des cas particuliers bien choisis** pour deviner la réponse, puis **un calcul complet** pour la valider. Le premier temps sans le second ne démontre rien.
