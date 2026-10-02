---
id: "7606"
title: "Ouvrir le coffre en six essais"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [strategie, principe-des-tiroirs, denombrement, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de sélection"
  reference: "stage_ete_2013.pdf, chapitre XII « Test de sélection du 4 juin 2013 », exercice 6, question a)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Le code secret du coffre-fort d'une association est une suite de $7$ chiffres **tous différents**, choisis parmi $0, 1, 2, \ldots, 9$.

On peut essayer d'ouvrir le coffre en composant à son tour une suite de $7$ chiffres tous différents. Le coffre s'ouvre dès qu'**au moins un** des $7$ chiffres composés se trouve à la bonne place, c'est-à-dire à la même place que dans le code secret.

Par exemple, si le code secret est $0123456$ et qu'on compose $9123407$, le coffre s'ouvre, car le $1$, le $2$ et le $3$ sont à la bonne place. En revanche $1234567$ ne l'ouvre pas.

On ne sait rien du code secret. Montrer qu'on peut malgré tout ouvrir le coffre à coup sûr en **au plus $6$ essais**.

## Hints

1. Le code secret utilise $7$ chiffres différents sur les $10$ possibles. Combien de chiffres sont donc **absents** du code ?
2. Regardez seulement les six chiffres $0, 1, 2, 3, 4, 5$. Combien d'entre eux, au minimum, figurent dans le code secret ?
3. Ces chiffres-là occupent des places dans le code. Combien d'entre eux, au minimum, occupent une place parmi les six premières ?
4. Il faut maintenant fabriquer six essais tels que chaque chiffre de $0$ à $5$ soit testé à chacune des six premières places. Pensez à faire tourner les chiffres.

## Solution

**Étape 1 : au moins deux « bonnes cibles » parmi les six premières places.**

Le code secret est formé de $7$ chiffres différents choisis parmi les $10$ chiffres $0$ à $9$. Il y a donc exactement $3$ chiffres qui **n'apparaissent pas** dans le code.

Considérons les six chiffres $0, 1, 2, 3, 4, 5$. Au plus $3$ d'entre eux peuvent être absents du code, donc

> **au moins $3$ des chiffres $0, 1, 2, 3, 4, 5$ figurent dans le code secret.**

Chacun de ces (au moins) trois chiffres occupe une place dans le code, parmi les places numérotées $1$ à $7$. Comme une place ne contient qu'un seul chiffre, **au plus un** d'entre eux occupe la septième place. Donc

> **au moins $2$ des chiffres $0, 1, 2, 3, 4, 5$ occupent une place parmi les six premières.**

Fixons-en un : appelons $d$ ce chiffre et $j$ sa place, avec $d \in \{0,1,2,3,4,5\}$ et $j \in \{1,2,3,4,5,6\}$.

**Étape 2 : six essais qui testent toutes les possibilités.**

Composons les six essais suivants. Dans chacun, la septième place contient toujours le chiffre $6$, et les six premières places contiennent les chiffres $0, 1, 2, 3, 4, 5$ dans un ordre qui tourne d'un cran à chaque essai :

$$0\,1\,2\,3\,4\,5\,\mathbf{6}$$
$$1\,2\,3\,4\,5\,0\,\mathbf{6}$$
$$2\,3\,4\,5\,0\,1\,\mathbf{6}$$
$$3\,4\,5\,0\,1\,2\,\mathbf{6}$$
$$4\,5\,0\,1\,2\,3\,\mathbf{6}$$
$$5\,0\,1\,2\,3\,4\,\mathbf{6}$$

Chacun de ces essais est bien formé de sept chiffres tous différents, donc il est autorisé.

Regardons une colonne quelconque parmi les six premières, disons la colonne $j$. En la lisant de haut en bas, on y trouve les six chiffres $0, 1, 2, 3, 4, 5$, chacun **exactement une fois** : c'est précisément l'effet de la rotation.

**Étape 3 : conclusion.**

D'après l'étape 1, le code secret contient le chiffre $d$ à la place $j$, avec $d$ entre $0$ et $5$ et $j$ entre $1$ et $6$. D'après l'étape 2, l'un de nos six essais porte le chiffre $d$ à la place $j$.

Cet essai a donc au moins un chiffre à la bonne place : **le coffre s'ouvre**.

Quel que soit le code secret, ces six essais suffisent.

## Going further

Peut-on faire mieux ? Non : **$6$ est le nombre minimal d'essais**. Autrement dit, quels que soient les $5$ essais qu'on décide de composer, il existe toujours un code secret que ces $5$ essais n'ouvrent pas.

La démonstration est nettement plus difficile que la question traitée ici, et c'était la seconde partie de l'exercice d'origine. En voici seulement l'idée : on range les $5$ essais dans un tableau de $5$ lignes et $7$ colonnes, puis on construit chiffre par chiffre un code $x_1 x_2 \ldots x_7$ en évitant à chaque place les chiffres déjà utilisés dans la colonne correspondante. Le point délicat est que ce procédé naïf risque de bloquer aux dernières places, et qu'il faut choisir les deux premiers chiffres avec soin pour que cela n'arrive pas.

Une erreur fréquente chez les candidats : croire qu'il suffit d'exhiber $6$ essais et un code que ces $6$ essais n'ouvrent pas pour prouver que $6$ est le minimum. Cela prouve seulement que *ces* $6$ essais-là sont mauvais, pas qu'aucun jeu de $5$ essais ne marche.
