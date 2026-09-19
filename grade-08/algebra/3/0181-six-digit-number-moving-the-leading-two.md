---
id: "0181"
title: "Le 2 qui passe à la fin"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation, ecriture-decimale, mise-en-equation, chiffres]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 22, задача 7"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un nombre s'écrit avec six chiffres et commence par le chiffre $2$.

On efface ce $2$ au début et on le réécrit tout à la fin, sans toucher aux autres chiffres ni à leur ordre. Le nombre obtenu est alors **trois fois plus grand** que le nombre de départ.

Quel était le nombre de départ ?

## Hints

1. Un nombre de six chiffres qui commence par $2$, c'est un $2$ suivi d'un bloc de cinq chiffres. Donne un nom à ce bloc : appelons $x$ le nombre qu'il représente.
2. $x$ est un entier compris entre $0$ et $99\,999$. Il a le droit de commencer par des zéros, cela ne pose aucun problème.
3. Combien vaut le nombre de départ en fonction de $x$ ? Le $2$ est au rang des centaines de mille.
4. Quand le $2$ part à la fin, le bloc de cinq chiffres se décale d'un rang vers la gauche : il est donc multiplié par $10$. Que faut-il ajouter ensuite ?
5. Écris l'égalité « le nouveau nombre est le triple de l'ancien », puis résous l'équation.

## Solution

**L'idée :** on ne cherche pas les six chiffres un par un. On donne un seul nom au bloc de chiffres qu'on ne connaît pas, et on traduit l'énoncé par une équation.

**Étape 1. Nommer l'inconnue.**

Le nombre de départ est un $2$ suivi de cinq chiffres. Appelons $x$ le nombre formé par ces cinq derniers chiffres. C'est un entier avec $0 \leqslant x \leqslant 99\,999$ (il peut commencer par des zéros, cela ne change rien).

**Étape 2. Écrire les deux nombres avec $x$.**

Le $2$ occupe le rang des centaines de mille, donc le nombre de départ vaut

$$N = 200\,000 + x$$

Quand on déplace le $2$ à la fin, le bloc des cinq chiffres avance d'un rang vers la gauche : il est multiplié par $10$. Le $2$ vient se placer au rang des unités. Le nouveau nombre vaut donc

$$M = 10x + 2$$

Sur un exemple, si le nombre était $2\,|\,85714$, le nouveau serait $85714\,|\,2 = 857\,142$, et on a bien $85\,714 \times 10 + 2 = 857\,142$.

**Étape 3. Mettre en équation.**

L'énoncé dit que $M$ est le triple de $N$ :

$$10x + 2 = 3 \times (200\,000 + x)$$

**Étape 4. Résoudre.**

$$10x + 2 = 600\,000 + 3x$$
$$10x - 3x = 600\,000 - 2$$
$$7x = 599\,998$$
$$x = \frac{599\,998}{7} = 85\,714$$

**Étape 5. Revenir au nombre cherché.**

$$N = 200\,000 + 85\,714 = 285\,714$$

**Vérification.** En déplaçant le $2$ à la fin de $285\,714$, on obtient $857\,142$. Et

$$3 \times 285\,714 = 857\,142$$

C'est bien cela.

**Conclusion.** Le nombre de départ est $285\,714$.

## Going further

1. Le nombre $142\,857$ a une propriété étonnante du même genre. Calculer $142\,857 \times 2$, $\times 3$, $\times 4$, $\times 5$, $\times 6$, puis $\times 7$. Qu'observe-t-on ?
2. Reprendre le problème avec un nombre de six chiffres commençant par $1$, qu'on multiplie par $3$ en déplaçant ce $1$ à la fin. Quel nombre trouve-t-on ?
3. Existe-t-il un nombre de six chiffres commençant par $2$ qui soit seulement **doublé** quand on déplace son $2$ à la fin ? Mener le même calcul et conclure.
