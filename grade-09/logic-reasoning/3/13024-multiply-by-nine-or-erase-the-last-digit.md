---
id: "13024"
title: "Multiplier par 9 ou effacer le dernier chiffre"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [algorithme, chiffre des unites, plus petit element, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices communs, exercice 7 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

On choisit un entier $a_0 \geqslant 1$, puis on construit une suite d'entiers $a_1, a_2, a_3, \ldots$ en appliquant à chaque étape la règle suivante :

- si le chiffre des unités de $a_i$ est strictement plus grand que $5$, alors $a_{i+1} = 9\,a_i$ ;
- si le chiffre des unités de $a_i$ est inférieur ou égal à $5$, on efface ce dernier chiffre, et le nombre qui reste est $a_{i+1}$.

Si l'on a effacé l'unique chiffre de $a_i$, il ne reste rien : la procédure s'arrête et il n'y a pas de terme $a_{i+1}$.

Par exemple, en partant de $a_0 = 27$, on obtient $27$, puis $243$, puis $24$, puis $2$, et la procédure s'arrête.

Peut-on choisir $a_0$ pour que la suite ne s'arrête jamais ?

## Hints

1. Essaie quelques valeurs de départ, par exemple $a_0 = 8$ ou $a_0 = 69$. Les nombres grandissent-ils sans fin ?
2. Quand on efface le dernier chiffre, le nombre diminue. Quand on multiplie par $9$, il augmente. Quel est le chiffre des unités de $9\,a_i$ si celui de $a_i$ vaut $6$, $7$, $8$ ou $9$ ? Que se passe-t-il à l'étape d'après ?
3. Suppose que la suite ne s'arrête jamais, et regarde le plus petit de tous ses termes.

## Solution

**Ce qui se passe en deux étapes.** Regardons un terme $a_i$ dont le chiffre des unités vaut $6$, $7$, $8$ ou $9$. Le terme suivant est $9\,a_i$, et son chiffre des unités est celui de $9 \times 6 = 54$, $9 \times 7 = 63$, $9 \times 8 = 72$ ou $9 \times 9 = 81$, c'est-à-dire $4$, $3$, $2$ ou $1$. Il est inférieur ou égal à $5$, donc à l'étape suivante on l'efface.

Or effacer le dernier chiffre d'un nombre revient à lui retirer ce chiffre, puis à diviser par $10$. Le résultat est donc au plus le nombre divisé par $10$. Ainsi
$$a_{i+2} \leqslant \frac{9\,a_i}{10} < a_i .$$

**Bilan.** Quel que soit le terme $a_i$ :

- si son chiffre des unités est au plus $5$, alors le terme suivant est obtenu en effaçant un chiffre, donc $a_{i+1} < a_i$ ;
- sinon, deux étapes plus tard, $a_{i+2} < a_i$.

Dans les deux cas, **un ou deux crans plus loin, on trouve un terme plus petit que $a_i$**, à condition que la suite ne se soit pas arrêtée avant.

**Raisonnement par l'absurde.** Supposons que la suite ne s'arrête jamais. Tous ses termes sont alors des entiers supérieurs ou égaux à $1$ (un terme ne peut pas valoir $0$ : effacer le dernier chiffre d'un nombre d'au moins deux chiffres laisse un nombre qui ne commence pas par $0$, et multiplier par $9$ un entier non nul donne un entier non nul).

Parmi ces entiers positifs, il y en a un plus petit que tous les autres : appelons-le $a_i$. Mais d'après le bilan, $a_{i+1}$ ou $a_{i+2}$ est strictement plus petit que $a_i$. C'est une contradiction.

**Conclusion.** Quel que soit le choix de $a_0$, la suite finit toujours par s'arrêter : il est impossible qu'elle soit infinie.

## Going further

1. Que se passe-t-il si l'on remplace « multiplier par $9$ » par « multiplier par $3$ » ? Et par « multiplier par $11$ » ?
2. Partant de $a_0 = 99$, combien de termes la suite compte-t-elle, $a_0$ compris, avant de s'arrêter ?
