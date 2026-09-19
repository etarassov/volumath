---
id: "0484"
title: "Bénéficiaire sur cinq mois, déficitaire sur l'année"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [absurde, sommes, regroupement, contre-exemple, nombres-relatifs]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 13, задача 5, с. 57"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Chaque mois, une entreprise note son résultat : un nombre positif si elle a fait un bénéfice,
un nombre négatif si elle a fait une perte. Le résultat sur une période de plusieurs mois est
la somme des résultats de ces mois.

a) L'entreprise peut-elle être bénéficiaire sur **n'importe quels** cinq mois consécutifs de
   l'année, et pourtant déficitaire sur l'année entière ?

b) Une telle situation peut-elle durer six années de suite ? Autrement dit : l'entreprise
   peut-elle être bénéficiaire sur n'importe quels cinq mois consécutifs, et déficitaire sur
   chacune des six années ?

## Hints

1. Pour a), cherche d'abord ce que la contrainte impose. Les mois $1$ à $5$ et les mois $6$ à
   $10$ sont bénéficiaires ; l'année est déficitaire. Que peut-on en déduire sur les mois $11$
   et $12$ réunis ?
2. Refais la même remarque avec les mois $3$ à $7$ et les mois $8$ à $12$ : que doit-il se
   passer pendant les mois $1$ et $2$ ? Cherche alors un exemple avec deux grosses pertes, une
   à chaque bout de l'année.
3. Pour b), compte les mois : cinq années font $60$ mois. Combien vaut $60 \div 5$ ?
4. Toujours pour b) : découpe ces $60$ mois en tranches de cinq mois consécutifs, puis calcule
   le résultat total de ces $60$ mois de deux façons différentes.

## Solution

### a) Oui, c'est possible

**Comment chercher.** Supposons qu'une telle année existe. Les mois $1$ à $10$ se découpent en
deux tranches de cinq mois consécutifs ($1$ à $5$ et $6$ à $10$), toutes deux bénéficiaires :
les dix premiers mois donnent donc un bénéfice. Comme l'année entière est déficitaire, les
mois $11$ et $12$ doivent perdre plus que ce bénéfice : ensemble, ils sont nettement négatifs.

De la même façon, les mois $3$ à $12$ se découpent en deux tranches ($3$ à $7$ et $8$ à $12$),
donc ils donnent un bénéfice ; les mois $1$ et $2$ doivent donc eux aussi être nettement
négatifs.

Il faut donc chercher un exemple avec une grosse perte à chaque bout de l'année. En voici un.

**Un exemple.** Résultats des douze mois, en milliers d'euros :

$$-5,\;\; 0,\;\; +2,\;\; +2,\;\; +2,\;\; -1,\;\; -2,\;\; +2,\;\; +2,\;\; +2,\;\; 0,\;\; -5$$

*Les huit tranches de cinq mois consécutifs.*

- mois $1$ à $5$ : $-5+0+2+2+2 = +1$
- mois $2$ à $6$ : $0+2+2+2-1 = +5$
- mois $3$ à $7$ : $2+2+2-1-2 = +3$
- mois $4$ à $8$ : $2+2-1-2+2 = +3$
- mois $5$ à $9$ : $2-1-2+2+2 = +3$
- mois $6$ à $10$ : $-1-2+2+2+2 = +3$
- mois $7$ à $11$ : $-2+2+2+2+0 = +4$
- mois $8$ à $12$ : $2+2+2+0-5 = +1$

Toutes ces sommes sont positives : l'entreprise est bien bénéficiaire sur n'importe quels cinq
mois consécutifs.

*L'année entière.*

$$-5+0+2+2+2-1-2+2+2+2+0-5 = -1$$

L'année est déficitaire. La réponse à la question a) est donc **oui**.

### b) Non, c'est impossible

**L'idée : on raisonne par l'absurde et on regroupe les mois par paquets de cinq.**

Supposons que la situation dure six années de suite. Ne regardons que les **cinq premières
années**, soit $5 \times 12 = 60$ mois, et calculons le résultat de ces $60$ mois de deux
façons.

*Première façon : par tranches de cinq mois.* Comme $60 = 12 \times 5$, ces $60$ mois se
découpent exactement en douze tranches de cinq mois consécutifs :

$$\text{mois } 1\text{ à }5,\quad 6\text{ à }10,\quad 11\text{ à }15,\quad \ldots,\quad
56\text{ à }60$$

Chacune de ces douze tranches est bénéficiaire, donc leur somme, c'est-à-dire le résultat des
$60$ mois, est un bénéfice : ce nombre est **positif**.

*Seconde façon : par années.* Ces mêmes $60$ mois sont exactement les cinq premières années.
Chacune est déficitaire, donc leur somme, c'est-à-dire le résultat des $60$ mois, est une
perte : ce nombre est **négatif**.

Le même nombre serait à la fois positif et négatif : c'est impossible. L'hypothèse de départ
est donc fausse.

**Conclusion.**

a) Oui, une telle année existe, l'exemple ci-dessus le montre.
b) Non, la situation ne peut pas durer six ans. Le raisonnement n'a utilisé que les cinq
premières années : elle ne peut même pas durer cinq ans.

## Going further

1. Reprendre la question a) en remplaçant « cinq mois consécutifs » par « quatre mois
   consécutifs ». Est-ce encore possible ? Même question avec « six mois consécutifs ». Que
   remarque-t-on sur ces nombres et sur $12$ ?
2. La question b) montre que la situation ne peut pas durer cinq années de suite. Elle peut en
   revanche durer deux années : essayer d'en construire un exemple. Attention, il faut aussi
   vérifier les tranches de cinq mois à cheval sur les deux années.
