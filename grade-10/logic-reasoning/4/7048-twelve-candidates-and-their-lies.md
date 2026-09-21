---
id: "7048"
title: "Douze candidats et leurs mensonges"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [menteurs, principe extremal, plus petit element]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des avancés"
  reference: "stage_junior_2012.pdf, mardi : combinatoire (principe extrémal), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Douze candidats à la mairie participent à un débat télévisé. Le débat dure depuis un moment
quand l'un d'eux déclare :

> « Depuis le début de l'émission, on a menti exactement **une** fois. »

Un deuxième prend alors la parole :

> « Maintenant, cela fait **deux** fois. »

Un troisième enchaîne :

> « **Trois** fois, maintenant. »

Et ainsi de suite, jusqu'au douzième, qui affirme qu'avant sa prise de parole on avait menti
exactement **douze** fois.

Chacun parle donc de ce qui s'est dit **avant** lui, et chacun annonce un nombre différent.
Le présentateur arrête là la discussion.

On sait qu'**au moins un** des douze candidats a annoncé le bon nombre.

Combien de candidats ont menti au total ?

## Hints

1. Numérote les candidats $C_1, \ldots, C_{12}$ dans l'ordre de leurs prises de parole.
   $C_k$ affirme : « il y a eu exactement $k$ mensonges avant moi ».
2. Puisqu'au moins un dit vrai, considère le **premier** qui dit vrai. Appelle-le $C_k$.
3. Que sait-on de $C_1, \ldots, C_{k-1}$, par définition de « premier » ?
4. Si $C_k$ dit vrai, combien y a-t-il eu de mensonges juste après qu'il a parlé ?
5. Regarde alors $C_{k+1}$ : que va-t-il annoncer, et est-ce possible ? Puis $C_{k+2}$, et
   ainsi de suite.

## Solution

**Mise en place.**

Notons $C_1, C_2, \ldots, C_{12}$ les candidats dans l'ordre où ils parlent. La déclaration de
$C_k$ est :
$$\text{« il y a eu exactement } k \text{ mensonges avant ma prise de parole ».}$$

Attention : ces mensonges comptent tout ce qui a été dit depuis le début de l'émission, pas
seulement les douze déclarations.

**Le premier qui dit vrai.**

L'énoncé nous dit qu'au moins un candidat a dit vrai. Il y a donc un **premier** candidat qui
dit vrai : appelons-le $C_k$. (C'est le principe du plus petit élément : dans un ensemble non
vide d'entiers positifs, il y en a un plus petit.)

Par définition de « premier », les candidats $C_1, \ldots, C_{k-1}$ ont tous menti.

**Le décompte après $C_k$.**

$C_k$ dit vrai : il y a donc eu exactement $k$ mensonges avant qu'il parle. Et comme sa propre
déclaration n'est pas un mensonge, **juste après qu'il a parlé, le total est toujours $k$.**

**Tous les suivants mentent.**

$C_{k+1}$ annonce qu'il y a eu $k+1$ mensonges avant lui. Or il y en a eu $k$ : il ment donc.
Et par ce mensonge même, le total passe à $k + 1$ après sa prise de parole.

$C_{k+2}$ annonce $k+2$ mensonges avant lui. Or il y en a eu $k+1$ : il ment donc, et le total
passe à $k+2$.

Et ainsi de suite : à chaque étape, l'annonce dépasse d'exactement un le décompte réel, donc
le candidat ment, et son mensonge fait rattraper le décompte d'une unité, ce qui remet la
même situation en place pour le suivant.

**Conclusion.**

Tous les candidats qui parlent après $C_k$ mentent. Et tous ceux qui parlent avant lui mentent
aussi. **Seul $C_k$ a dit vrai**, donc
$$\boxed{11 \text{ candidats ont menti.}}$$

## Going further

On peut préciser **qui** est ce candidat honnête : c'est le premier à avoir parlé.

En effet, supposons $k \geq 2$. On sait que $C_k$ dit vrai, donc il y a eu $k$ mensonges avant
lui. Or $C_{k-1}$ a menti, donc avant que $C_{k-1}$ ne parle, il y avait $k - 1$ mensonges.
Mais c'est exactement ce que $C_{k-1}$ a annoncé ! Il aurait donc dit vrai, ce qui contredit
le fait que $C_k$ soit le premier à dire vrai.

Donc $k = 1$ : **c'est le premier candidat qui a dit vrai**, et il y avait bien eu exactement
un mensonge avant qu'il ne prenne la parole.
