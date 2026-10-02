---
id: "7017"
title: "Cent chiffres, aucun zéro, divisible par la somme de ses chiffres"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [somme-des-chiffres, divisibilite, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique après-midi (Antoine Taveneaux), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Trouver un nombre entier qui s'écrit avec exactement **cent chiffres**, dont **aucun n'est un
zéro**, et qui est **divisible par la somme de ses chiffres**.

*(Il n'est pas demandé de les trouver tous : un seul exemple, justifié, suffit.)*

## Hints

1. On ne te demande pas de tomber juste par hasard : c'est une construction. Choisis d'abord
   la somme des chiffres que tu veux obtenir, puis fabrique le nombre autour.
2. Avec cent chiffres tous compris entre $1$ et $9$, la somme est comprise entre $100$ et
   $900$. Choisis une valeur commode dans cet intervalle.
3. Un nombre dont les trois derniers chiffres forment $125$ est divisible par $125$. Pourquoi ?

## Solution

**L'idée.** On va se débrouiller pour que la somme des chiffres soit exactement $125$, et que
le nombre soit divisible par $125$.

**Pourquoi $125$ ?** Un nombre à cent chiffres s'écrit
$$N = (\text{les } 97 \text{ premiers chiffres}) \times 1000 + (\text{les } 3 \text{ derniers chiffres}) .$$
Comme $1000 = 8 \times 125$ est un multiple de $125$, le premier morceau est toujours
divisible par $125$. Donc :

> $N$ est divisible par $125$ si et seulement si le nombre formé par ses **trois derniers
> chiffres** l'est.

Il suffit donc de terminer le nombre par $125$.

**La construction.** Fixons les trois derniers chiffres à $1$, $2$, $5$ : ils contribuent
$1 + 2 + 5 = 8$ à la somme des chiffres.

Il reste $97$ chiffres à choisir, tous non nuls, dont la somme doit valoir
$$125 - 8 = 117 .$$

Prenons $94$ chiffres égaux à $1$ (somme $94$) et trois chiffres bien choisis pour compléter :
il manque $117 - 94 = 23$, à répartir sur trois chiffres. Par exemple $5$, $9$ et $9$, puisque
$5 + 9 + 9 = 23$.

Le nombre
$$N = \underbrace{11\cdots1}_{94 \text{ fois}} 599\,125$$
convient.

**Vérification.**

- Il a $94 + 3 + 3 = 100$ chiffres. ✓
- Aucun chiffre n'est nul. ✓
- La somme de ses chiffres vaut $94 \times 1 + 5 + 9 + 9 + 1 + 2 + 5 = 94 + 23 + 8 = 125$. ✓
- Il se termine par $125$, donc il est divisible par $125$, c'est-à-dire par la somme de ses
  chiffres. ✓

## Going further

La même idée marche avec d'autres cibles. Si l'on vise une somme de chiffres égale à $100$,
il suffit de prendre les cent chiffres égaux à $1$ : le nombre $\underbrace{11\cdots1}_{100}$
est-il divisible par $100$ ? Non, il se termine par $1$. Le choix de $125$ n'était donc pas
innocent : c'est une puissance de $5$, et pour un nombre se terminant par $125$ la
divisibilité ne dépend que des trois derniers chiffres.
