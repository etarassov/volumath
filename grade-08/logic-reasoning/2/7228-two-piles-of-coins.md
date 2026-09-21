---
id: "7228"
title: "Deux tas de pièces qu'on ne peut pas vider"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, operations]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Dernier jour : test final », Débutants, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Sur la table, il y a deux tas de pièces : l'un contient une pièce, l'autre n'en contient aucune.

On dispose de deux opérations, que l'on peut faire autant de fois qu'on veut et dans l'ordre qu'on
veut :

1. enlever une pièce d'un tas et ajouter trois pièces sur l'autre tas ;
2. enlever quatre pièces d'un tas.

(Une opération n'est possible que s'il y a assez de pièces pour l'effectuer.)

Montrer qu'on ne peut jamais arriver à ce que les deux tas soient vides.

## Hints

1. Oublie la répartition entre les deux tas : suis seulement le **nombre total** de pièces sur la
   table.
2. De combien ce total varie-t-il lors de l'opération 1 ? Lors de l'opération 2 ?
3. Quel est ce total au départ ? Et à l'arrivée, si les deux tas sont vides ?

## Solution

**La quantité à surveiller.**

Notons $N$ le nombre total de pièces sur la table, tous tas confondus.

Au départ, un tas contient une pièce et l'autre aucune, donc
$$N = 1 .$$

**L'effet des deux opérations.**

- Opération 1 : on enlève une pièce ici et on en ajoute trois là. Le total varie de
  $$-1 + 3 = +2 .$$
- Opération 2 : on enlève quatre pièces. Le total varie de
  $$-4 .$$

Dans les deux cas, la variation est un nombre **pair**.

**L'invariant.**

La parité de $N$ ne change donc jamais. Comme $N$ vaut $1$ au départ, qui est impair :

**à tout instant, le nombre total de pièces sur la table est impair.**

**Conclusion.**

Si les deux tas étaient vides, on aurait $N = 0$, qui est pair. C'est impossible.

**On ne peut donc jamais vider les deux tas.**

## Going further

On remarque que le raisonnement n'utilise jamais la répartition entre les deux tas : on a jeté
une grande partie de l'information et gardé juste ce qu'il fallait. C'est ce qui fait la force de
la méthode des invariants — et aussi sa difficulté, car il faut deviner quelle information garder.

Avec la même mise en scène mais des opérations « enlever une pièce d'un tas et en ajouter deux sur
l'autre » et « enlever trois pièces d'un tas », la parité ne serait plus conservée et il faudrait
chercher un autre argument — ou bien trouver une façon d'y arriver.
