---
id: "7018"
title: "Trouver le coefficient k"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identite, developpement, coefficients]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours du matin, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Pour quelle valeur du nombre $k$ l'égalité
$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) + k\,abc$$
est-elle vraie **quels que soient** les nombres $a$, $b$ et $c$ ?

## Hints

1. Une égalité vraie pour tous les $a$, $b$, $c$ l'est en particulier pour des valeurs
   simples. Essaie $a = b = c = 1$.
2. Cela donne une valeur de $k$, mais cela ne prouve pas encore que l'égalité est vraie pour
   *tous* les $a$, $b$, $c$. Il faut développer les deux membres.
3. Développe les deux côtés et compare terme à terme. Seuls les termes en $abc$ vont poser
   problème.

## Solution

**Trouver le candidat.**

Si l'égalité est vraie pour tous les nombres, elle l'est pour $a = b = c = 1$. Elle donne
alors
$$2 \times 2 \times 2 = 3 \times 3 + k, \qquad \text{c'est-à-dire} \qquad 8 = 9 + k,$$
donc $k = -1$.

C'est la **seule valeur possible**. Mais cela ne démontre pas encore que $k = -1$ convient :
il faut vérifier l'égalité pour tous les $a$, $b$, $c$.

**Développer le membre de gauche.**

$$(a+b)(b+c) = ab + ac + b^2 + bc ,$$
puis
$$(ab + ac + b^2 + bc)(c+a) = abc + a^2 b + ac^2 + a^2 c + b^2 c + ab^2 + bc^2 + abc .$$
En regroupant :
$$(a+b)(b+c)(c+a) = a^2b + a^2c + ab^2 + b^2c + ac^2 + bc^2 + 2abc .$$

**Développer le membre de droite.**

$$(a+b+c)(ab+bc+ca) = a^2b + abc + a^2c + ab^2 + b^2c + abc + abc + bc^2 + ac^2 ,$$
c'est-à-dire
$$(a+b+c)(ab+bc+ca) = a^2b + a^2c + ab^2 + b^2c + ac^2 + bc^2 + 3abc .$$

**Comparer.**

Les deux développements ont exactement les mêmes six premiers termes. Ils ne diffèrent que
par le coefficient de $abc$ : $2$ à gauche, $3 + k$ à droite. L'égalité est donc vraie pour
tous $a$, $b$, $c$ si et seulement si
$$2 = 3 + k, \qquad \text{c'est-à-dire} \qquad k = -1 .$$

**Conclusion.** $\boxed{k = -1}$, et l'identité s'écrit
$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) - abc .$$

## Going further

Retiens la leçon de méthode : tester une valeur particulière sert à **deviner** la réponse, et
à éliminer toutes les autres, mais jamais à **démontrer** qu'elle convient. Ici l'essai
$a=b=c=1$ donnait $k=-1$ en trois secondes, et le développement était quand même nécessaire.

Cette identité est utile : elle relie les trois expressions symétriques de base
$a+b+c$, $ab+bc+ca$ et $abc$.
