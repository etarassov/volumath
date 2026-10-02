---
id: "0204"
title: "L'escalier mécanique qui s'allonge"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation, vitesse, escalier, modelisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 25, задача 1 (p. 61)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un matin, un homme est en retard au travail. Pour rattraper le temps perdu dans les embouteillages, il descend en courant l'escalier mécanique du métro. Il court au rythme de $2$ marches par seconde et il compte $140$ marches.

Le lendemain, son retard est encore plus grand. Il descend le même escalier mécanique, mais cette fois au rythme de $3$ marches par seconde, et il en compte $28$ de plus.

Voilà qui est étrange : plus on court vite, plus l'escalier semble long ! Combien de marches cet escalier mécanique a-t-il en tout ?

## Hints

1. Combien de secondes dure la première descente ? Et la deuxième ?
2. Pendant qu'il descend, l'escalier avance lui aussi : certaines marches arrivent en bas et disparaissent sans qu'il ait eu besoin de poser le pied dessus.
3. Le nombre total de marches est donc : les marches qu'il a descendues lui-même, plus les marches que l'escalier a fait défiler pendant sa descente.
4. Appelle $v$ le nombre de marches que l'escalier fait défiler en une seconde. Écris le nombre total de marches de deux façons, une pour chaque jour.
5. Les deux expressions décrivent le même escalier : elles sont égales. Tu obtiens une équation avec une seule inconnue.

## Solution

**L'idée.** Le nombre de marches de l'escalier ne change pas d'un jour à l'autre. On va l'écrire de deux façons différentes, puis dire que ces deux écritures sont égales.

**Étape 1. La durée de chaque descente.**

Premier jour : $140$ marches au rythme de $2$ marches par seconde, donc

$$\frac{140}{2} = 70 \text{ secondes.}$$

Deuxième jour : il compte $140 + 28 = 168$ marches, au rythme de $3$ marches par seconde, donc

$$\frac{168}{3} = 56 \text{ secondes.}$$

Il va plus vite, sa descente est plus courte.

**Étape 2. Comprendre d'où vient le paradoxe.**

Pendant que l'homme descend, l'escalier tourne. Des marches arrivent en bas et disparaissent sous le sol : celles-là, il n'a pas eu besoin de marcher dessus. L'escalier complet se partage donc en deux paquets :

$$\text{nombre total de marches} = \text{marches descendues par l'homme} + \text{marches escamotées par l'escalier.}$$

Le deuxième jour, la descente est plus courte, l'escalier a donc escamoté moins de marches : il en reste davantage à descendre soi-même. Voilà pourquoi il en compte plus.

**Étape 3. Mettre l'inconnue.**

Appelons $v$ le nombre de marches que l'escalier fait défiler en une seconde, et $N$ le nombre total de marches.

Premier jour, la descente dure $70$ secondes, l'escalier escamote $70v$ marches :

$$N = 140 + 70v.$$

Deuxième jour, la descente dure $56$ secondes :

$$N = 168 + 56v.$$

**Étape 4. Résoudre.**

Les deux expressions désignent le même nombre $N$ :

$$140 + 70v = 168 + 56v.$$

On regroupe les $v$ à gauche et les nombres à droite :

$$70v - 56v = 168 - 140,$$
$$14v = 28,$$
$$v = 2.$$

L'escalier fait donc défiler $2$ marches par seconde. On en déduit

$$N = 140 + 70 \times 2 = 140 + 140 = 280.$$

**Vérification.** Avec l'autre écriture : $168 + 56 \times 2 = 168 + 112 = 280$. C'est bien le même nombre.

**Conclusion.**

L'escalier mécanique compte $280$ marches.

## Going further

1. Combien de temps met un voyageur qui reste immobile sur cet escalier ?
2. Combien de marches l'homme compterait-il s'il descendait au rythme de $5$ marches par seconde ?
3. En courant de plus en plus vite, de combien de marches se rapproche-t-il sans jamais l'atteindre ?
