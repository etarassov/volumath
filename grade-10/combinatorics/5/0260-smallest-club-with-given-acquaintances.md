---
id: "0260"
title: "Le plus petit club possible"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [double-comptage, divisibilite, parite, construction, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 1, задача 9"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Dans un club de mathématiques, chaque fille connaît exactement 5 filles et 6 garçons du
club, et chaque garçon connaît exactement 7 filles et 4 garçons du club.

Quel est le nombre minimal d'élèves que peut compter ce club ?

On suppose que se connaître est réciproque : si Claire connaît Hugo, alors Hugo connaît
Claire.

## Hints

1. Note $f$ le nombre de filles et $g$ le nombre de garçons. Compte de deux façons différentes le nombre de couples (une fille, un garçon) qui se connaissent : une fois en interrogeant les filles, une fois en interrogeant les garçons.
2. Tu obtiens $6f = 7g$. Comme 6 et 7 n'ont aucun facteur commun, qu'est-ce que cela impose à $f$ ? Et à $g$ ?
3. Il reste une contrainte cachée. Compte maintenant le nombre de **paires de filles** qui se connaissent. Combien de fois chaque paire est-elle comptée si tu additionnes les 5 connaissances de chaque fille ?
4. Ce nombre de paires vaut $\frac{5f}{2}$, et c'est un entier : donc $f$ est pair. Avec l'étape 2, quel est le plus petit $f$ possible ?
5. Une fois $f \ge 14$ et $g \ge 12$ établis, il reste le plus gros du travail : construire un exemple avec 14 filles et 12 garçons. Pour les connaissances fille–garçon, numérote tout le monde et sers-toi de la parité des numéros. Pour les connaissances entre filles, place-les en cercle.

## Solution

**L'idée : on compte deux fois la même chose, sous deux angles différents. Cela donne des
conditions de divisibilité, donc une borne. Ensuite il faut construire un exemple qui
atteint cette borne.**

Notons $f$ le nombre de filles et $g$ le nombre de garçons du club.

### Première partie : le club a au moins 26 élèves

**Étape 1. Compter les connaissances fille–garçon de deux façons.**

Appelons *couple mixte* une paire formée d'une fille et d'un garçon qui se connaissent.

- En interrogeant les filles : chaque fille connaît 6 garçons, ce qui donne $6f$ couples mixtes.
- En interrogeant les garçons : chaque garçon connaît 7 filles, ce qui donne $7g$ couples mixtes.

C'est le même nombre, compté deux fois de façons différentes. Donc
$$6f = 7g .$$

De cette égalité, 7 divise $6f$. Comme 7 est premier et ne divise pas 6, on en déduit que
**7 divise $f$**. De la même façon, 6 divise $7g$ et 6 n'a aucun facteur commun avec 7, donc
**6 divise $g$**.

**Étape 2. Compter les connaissances entre filles.**

Additionnons, pour chaque fille, le nombre de filles qu'elle connaît : on obtient $5f$. Mais
dans cette somme, chaque paire de filles qui se connaissent a été comptée deux fois, une
fois par chacune des deux. Le nombre de paires de filles qui se connaissent vaut donc
$$\frac{5f}{2} .$$

C'est un nombre entier, donc $5f$ est pair, donc **$f$ est pair**.

**Étape 3. Conclure la minoration.**

$f$ est divisible par 7 et $f$ est pair, donc $f$ est divisible par 14 :
$$f \ge 14 .$$
Alors $g = \dfrac{6f}{7} \ge \dfrac{6 \times 14}{7} = 12$, et le club compte au moins
$$14 + 12 = 26 \ \text{élèves}.$$

**Remarque.** L'étape 2 est indispensable. Sans elle, on croirait que $f = 7$ et $g = 6$
suffisent, c'est-à-dire 13 élèves. Mais avec 7 filles, il y aurait $\frac{5 \times 7}{2}$
paires de filles qui se connaissent, ce qui n'est pas un entier.

### Deuxième partie : 26 élèves suffisent

Il reste à montrer qu'un club de 14 filles et 12 garçons peut vraiment fonctionner.
Numérotons les filles de 1 à 14 et les garçons de 1 à 12.

**Les connaissances fille–garçon : on utilise la parité des numéros.**

Décidons qu'une fille et un garçon se connaissent exactement lorsque leurs deux numéros
ont la même parité.

- Parmi les numéros 1 à 12, il y a 6 numéros pairs et 6 numéros impairs. Chaque fille
  connaît donc exactement **6 garçons**.
- Parmi les numéros 1 à 14, il y a 7 numéros pairs et 7 numéros impairs. Chaque garçon
  connaît donc exactement **7 filles**.

**Les connaissances entre filles : on les place en cercle.**

Asseyons les 14 filles autour d'une table ronde, dans l'ordre de leurs numéros. Décidons que
chaque fille connaît ses 2 voisines de gauche, ses 2 voisines de droite, et la fille assise
juste en face d'elle.

Cela fait bien $2 + 2 + 1 = 5$ filles, à condition que ces cinq filles soient bien
distinctes. C'est le cas : autour d'une table de 14 places, la place opposée est à 7 rangs,
et 7 n'est ni 1, ni 2, ni 12, ni 13. De plus la relation est réciproque : si je suis en face
de toi, tu es en face de moi, et si tu es ma deuxième voisine de gauche, je suis ta deuxième
voisine de droite. Chaque fille connaît donc exactement **5 filles**.

**Les connaissances entre garçons : même idée.**

Asseyons les 12 garçons autour d'une autre table ronde et décidons que chacun connaît ses
2 voisins de gauche et ses 2 voisins de droite. Cela fait 4 garçons distincts, et la
relation est réciproque. Chaque garçon connaît donc exactement **4 garçons**.

**Vérification finale.** Dans ce club de 14 filles et 12 garçons :

| | filles connues | garçons connus |
|---|---|---|
| chaque fille | 5 | 6 |
| chaque garçon | 7 | 4 |

Toutes les conditions de l'énoncé sont satisfaites.

**Conclusion.** Le club compte au moins 26 élèves, et 26 est réalisable. Le nombre minimal
d'élèves est donc **26**, avec 14 filles et 12 garçons.

## Going further

1. Reprends le problème si chaque fille connaît 4 filles et 6 garçons, et chaque garçon
   7 filles et 4 garçons. Pourquoi la réponse tombe-t-elle bien plus bas ?
2. Pourquoi la condition « chaque garçon connaît 4 garçons » n'impose-t-elle rien sur la
   parité de $g$, alors que « chaque fille connaît 5 filles » impose que $f$ soit pair ?
3. Dans notre exemple, deux filles de numéros de parités différentes ne connaissent aucun
   garçon en commun, mais elles peuvent se connaître entre elles. Peux-tu construire un autre
   exemple à 26 élèves, assez différent de celui-ci ?
