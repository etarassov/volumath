---
id: "0804"
title: "Les champignons d'Anya"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [partage, parts-egales, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 4, d'après Mathematical Olympiads for Middle School (Moscou), 2014"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Plusieurs enfants sont allés chercher des champignons.

Si Anya donne la moitié de ses champignons à Vita, tous les enfants auront le même nombre de champignons.

Si Anya donne tous ses champignons à Sasha, alors Sasha aura le même nombre de champignons que tous les autres enfants réunis.

Combien d'enfants sont allés chercher des champignons ?

*(Anya, Vita et Sasha sont trois enfants différents du groupe.)*

## Hints

1. Après le premier échange, tous les enfants ont le même nombre de champignons. Appelle ce nombre **une part**, et compte tout en parts.
2. Le nombre total de champignons ne change pas quand Anya en donne à Vita. S'il y a $n$ enfants, combien de parts font le total ?
3. Anya a donné la moitié de ses champignons et il lui reste une part : combien de parts avait-elle au départ ?
4. Vita finit avec une part après en avoir reçu une. Combien de champignons avait-elle au départ ?
5. Les enfants qui ne sont ni Anya ni Vita n'ont rien donné et rien reçu. Combien de parts avaient-ils au départ ? Sasha est l'un d'eux.
6. Écris maintenant le deuxième scénario en parts : Sasha se retrouve avec $3$ parts, et les autres réunis avec $n - 3$ parts.

## Solution

**Réponse : $6$ enfants.**

Notons $n$ le nombre d'enfants.

**Étape 1. Une unité bien choisie : la part.**

Après qu'Anya a donné la moitié de ses champignons à Vita, tous les enfants ont le même nombre de champignons. Appelons ce nombre **une part**, et comptons désormais tout en parts.

Un don ne change pas le nombre total de champignons. Après l'échange, les $n$ enfants ont une part chacun : le total vaut donc $n$ parts, avant comme après.

**Étape 2. Ce qu'avait Anya.**

Anya a donné la moitié de ses champignons, et il lui reste une part. Cette part est donc la moitié de ce qu'elle avait : **Anya avait $2$ parts au départ.**

**Étape 3. Ce qu'avait Vita.**

Vita a reçu la moitié des champignons d'Anya, c'est-à-dire une part, et elle se retrouve avec une part. Elle avait donc
$$1 \text{ part} - 1 \text{ part} = 0.$$

**Vita n'avait aucun champignon au départ** : elle est rentrée bredouille de la forêt.

**Étape 4. Ce qu'avaient les autres, dont Sasha.**

Les enfants qui ne sont ni Anya ni Vita n'ont rien donné et rien reçu. Après l'échange ils ont une part ; ils avaient donc déjà **une part** au départ. C'est en particulier le cas de Sasha.

**Étape 5. Le deuxième scénario.**

Anya donne maintenant ses $2$ parts à Sasha, qui en avait $1$. Sasha se retrouve avec
$$1 + 2 = 3 \text{ parts}.$$

Tous les autres enfants réunis (Anya, qui n'a plus rien, Vita, et les autres) possèdent le reste du total, soit
$$n - 3 \text{ parts}.$$

L'énoncé dit que ces deux quantités sont égales :
$$3 = n - 3, \qquad \text{donc} \qquad n = 6.$$

**Vérification.** Prenons une part $= 1$ champignon. Il y a $6$ enfants : Anya a $2$ champignons, Vita $0$, et les quatre autres (dont Sasha) $1$ chacun. Le total fait bien $2 + 0 + 4 = 6$.

- Anya donne la moitié de ses champignons, soit $1$, à Vita : chacun des six enfants a alors $1$ champignon. ✓
- Anya donne ses $2$ champignons à Sasha : Sasha en a $3$, et tous les autres réunis en ont $0 + 0 + 1 + 1 + 1 = 3$. ✓

**Conclusion.** $6$ enfants sont allés chercher des champignons.

## Going further

1. Dans ce problème, une donnée n'a jamais servi : le nombre total de champignons. Peux-tu dire pourquoi la réponse n'en dépend pas ?
2. Reprends le problème en remplaçant « le même nombre que tous les autres réunis » par « deux fois plus que tous les autres réunis ». Combien d'enfants y a-t-il alors ?
