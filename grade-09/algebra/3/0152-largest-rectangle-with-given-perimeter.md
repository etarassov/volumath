---
id: "0152"
title: "Le plus grand rectangle de périmètre 4"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [identites-remarquables, inegalites, carres, aire, perimetre, optimisation]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 16, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

a) Montrer que pour tous nombres $a$ et $b$, on a

$$a^2 + b^2 \geqslant 2ab$$

Dans quel cas a-t-on l'égalité ?

b) Le périmètre d'un rectangle est de $4$ cm. Quelle est la plus grande aire qu'il peut avoir ?

## Hints

1. Pour la question a), fais passer tout du même côté. Que devient $a^2 + b^2 - 2ab$ ?
2. Un carré est toujours positif ou nul, et il est nul seulement quand le nombre qu'on élève au carré est nul.
3. Pour la question b), appelle $a$ et $b$ les longueurs des deux côtés. Que vaut $a+b$ ? Et l'aire du rectangle ?
4. Développe $(a+b)^2$ et $(a-b)^2$, puis soustrais la seconde de la première. Tu vois apparaître l'aire.

## Solution

**Partie a).**

On fait passer tout du même côté et on reconnaît une identité remarquable :

$$a^2 + b^2 - 2ab = (a-b)^2$$

Un carré est toujours positif ou nul, donc $(a-b)^2 \geqslant 0$, c'est-à-dire

$$a^2 + b^2 - 2ab \geqslant 0 \qquad\text{donc}\qquad a^2 + b^2 \geqslant 2ab$$

Il y a égalité exactement quand $(a-b)^2 = 0$, donc quand $a - b = 0$, c'est-à-dire quand $a = b$.

**Partie b).**

Notons $a$ et $b$ les longueurs des deux côtés du rectangle, en centimètres, avec $a > 0$ et $b > 0$. Le périmètre vaut $2(a+b)$, donc

$$2(a+b) = 4 \qquad\text{c'est-à-dire}\qquad a + b = 2$$

L'aire vaut $S = ab$. On cherche la plus grande valeur possible de $ab$.

*L'idée : faire apparaître un carré, comme dans la question a).*

Développons les deux identités remarquables :

$$(a+b)^2 = a^2 + 2ab + b^2 \qquad\text{et}\qquad (a-b)^2 = a^2 - 2ab + b^2$$

En soustrayant la seconde de la première, les termes $a^2$ et $b^2$ disparaissent :

$$(a+b)^2 - (a-b)^2 = 4ab$$

Comme $a + b = 2$, cela donne

$$4ab = 2^2 - (a-b)^2 = 4 - (a-b)^2$$

Le carré $(a-b)^2$ est positif ou nul. On lui retire donc quelque chose de positif ou nul à $4$ :

$$4ab \leqslant 4 \qquad\text{donc}\qquad ab \leqslant 1$$

L'aire ne dépasse donc jamais $1$ cm².

*Peut-on atteindre $1$ ?* Il y a égalité seulement si $(a-b)^2 = 0$, c'est-à-dire $a = b$. Avec $a+b = 2$, on trouve $a = b = 1$. Le rectangle est alors le carré de côté $1$ cm, et son aire vaut bien $1$ cm².

**Autre méthode pour la partie b).**

De $a + b = 2$ on tire $b = 2 - a$, donc

$$S = ab = a(2-a) = 2a - a^2 = -\big(a^2 - 2a\big) = -\big(a^2 - 2a + 1\big) + 1 = 1 - (a-1)^2$$

On lit directement le résultat : $S$ vaut $1$ moins un carré, donc $S \leqslant 1$, avec égalité quand $a = 1$.

**Conclusion.**

La plus grande aire possible est $1$ cm², et elle est obtenue pour le carré de côté $1$ cm. Autrement dit, parmi tous les rectangles de même périmètre, c'est le carré qui a la plus grande aire.

## Going further

On peut retourner la question : parmi tous les rectangles d'aire $1$ cm², lequel a le plus petit périmètre ? La même identité $(a+b)^2 - (a-b)^2 = 4ab$ donne $(a+b)^2 = 4 + (a-b)^2 \geqslant 4$, donc $a + b \geqslant 2$ et le périmètre $2(a+b)$ vaut au moins $4$ cm. C'est encore le carré qui gagne.
