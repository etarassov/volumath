---
id: "7419"
title: "Des mots qui ne perdent jamais leurs x"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, mots, transformation, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : stratégies de base"
  reference: "stage_ete_2011.pdf, « Première période », incontournable stratégies de base, premier TD, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On écrit des « mots » avec les quatre lettres $x$, $y$, $z$ et $t$. On s'autorise à remplacer, à
n'importe quel endroit d'un mot, un groupe de deux lettres par un autre selon les trois règles
suivantes :
$$xy \ \longrightarrow\ yyx, \qquad xt \ \longrightarrow\ ttx, \qquad yt \ \longrightarrow\ ty.$$

Par exemple, $xxyy$ devient $xyyxy$ si on applique la première règle au $xy$ qui commence à la
deuxième lettre.

Deux mots sont dits **équivalents** si on peut passer de l'un à l'autre par une suite de telles
transformations.

Les paires de mots suivantes sont-elles équivalentes ?

1. $xxyy$ et $xyyyyx$
2. $xytx$ et $txyt$
3. $xy$ et $xt$

## Hints

1. Pour la première question, il suffit de trouver une suite de transformations. Cherche-la à la
   main.
2. Pour les deux autres, il faut au contraire montrer que c'est impossible. Cherche donc une
   quantité que **aucune** des trois règles ne change.
3. Compte les lettres de chaque sorte. Combien de $x$ chaque règle enlève-t-elle ? combien en
   ajoute-t-elle ? Et pour les $y$ ? pour les $t$ ?

## Solution

**1. $xxyy$ et $xyyyyx$ sont équivalents.**

Appliquons la règle $xy \to yyx$ deux fois :
$$xxyy \ \longrightarrow\ x\,yyx\,y \ \longrightarrow\ x\,yy\,yyx = xyyyyx.$$

Au premier coup on transforme le groupe $xy$ formé par la deuxième et la troisième lettre ; au
second coup, le groupe $xy$ formé par la quatrième et la cinquième lettre du mot $xyyxy$.

**Ce qui ne change jamais.**

Regardons ce que chaque règle fait au nombre de lettres de chaque sorte.

| règle | nombre de $x$ | nombre de $y$ | nombre de $t$ |
|---|---|---|---|
| $xy \to yyx$ | inchangé | $+1$ | inchangé |
| $xt \to ttx$ | inchangé | inchangé | $+1$ |
| $yt \to ty$ | inchangé | inchangé | inchangé |

Trois remarques en sortent.

- **Le nombre de $x$ ne change jamais.**
- **Un mot qui contient au moins un $y$ en contiendra toujours au moins un** (aucune règle
  n'enlève de $y$), et un mot qui n'en contient aucun n'en fabriquera jamais (la seule règle qui
  crée des $y$ en consomme déjà un).
- Pour les mêmes raisons, **la présence ou l'absence de $t$ ne change jamais**.

**2. $xytx$ et $txyt$ ne sont pas équivalents.**

Le mot $xytx$ contient deux $x$, le mot $txyt$ n'en contient qu'un. Or le nombre de $x$ est un
invariant : on ne peut pas passer de l'un à l'autre.

**3. $xy$ et $xt$ ne sont pas équivalents.**

Le mot $xy$ contient un $y$ et aucun $t$ ; le mot $xt$ contient un $t$ et aucun $y$. Or la
présence d'un $y$ est un invariant : le premier mot gardera toujours au moins un $y$, tandis que
le second n'en aura jamais.

## Going further

Avec ces trois règles, à partir du mot $xyt$, quels mots peut-on obtenir ? Décris-les tous.
