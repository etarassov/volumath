---
id: "7110"
title: "Les douze candidats"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [logique, mensonge, recurrence, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Avancés : combinatoire », l'après-midi (Pierre Bornsztein), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

Douze candidats au poste de maire participent à un débat télévisé. Le débat a commencé
depuis un moment déjà, et on ne sait pas combien de mensonges ont été prononcés jusque-là.

Voilà que le premier des douze déclare : « Depuis le début du débat, on a menti **une** fois. »
Un deuxième prend la parole : « Maintenant, cela fait **deux** fois. » Un troisième
s'exclame : « **Trois** fois, maintenant. » Et ainsi de suite, jusqu'au douzième qui affirme
qu'avant lui on a menti **douze** fois. Le présentateur arrête alors la discussion.

Ainsi, le $j$-ième de ces douze candidats affirme que, depuis le début du débat et jusqu'au
moment où il ouvre la bouche, il a été prononcé exactement $j$ mensonges. Chacune de ces
douze phrases est soit vraie, soit un mensonge, et ce sont les seules paroles prononcées
après le premier.

On sait qu'**au moins un** de ces douze candidats a dit la vérité.

Combien d'entre eux ont menti ?

## Hints

1. Appelle $C_1, C_2, \ldots, C_{12}$ les douze candidats, dans l'ordre où ils parlent. Ce
   qu'on cherche, c'est combien d'entre eux mentent.
2. Suppose que $C_k$ dit la vérité. Tu sais alors exactement combien de mensonges ont été
   prononcés avant lui. Et juste après lui ? A-t-il ajouté un mensonge ?
3. Que dit $C_{k+1}$ ? Son affirmation est-elle vraie ? Une fois que tu as répondu, tu
   connais le nombre de mensonges après $C_{k+1}$, et tu peux recommencer avec $C_{k+2}$.
4. Tu vas montrer que tous ceux qui parlent après un candidat sincère mentent. Peut-il y
   avoir deux candidats sincères ?

## Solution

Notons $C_1, C_2, \ldots, C_{12}$ les douze candidats dans l'ordre où ils prennent la
parole. Le candidat $C_j$ affirme : « il y a eu $j$ mensonges avant que je parle. »

**Étape 1 : après un candidat sincère, tout le monde ment.**

Supposons que $C_k$ dise la vérité. Alors, au moment où il parle, il y a eu exactement $k$
mensonges dans le débat. Et comme il dit la vérité, sa propre phrase n'en ajoute pas : juste
après lui, le compte est toujours de $k$ mensonges.

C'est alors au tour de $C_{k+1}$, qui affirme qu'il y a eu $k+1$ mensonges avant lui. Il y
en a $k$. Son affirmation est donc fausse : **$C_{k+1}$ ment**. Ce mensonge fait monter le
compte à $k+1$.

C'est au tour de $C_{k+2}$, qui affirme $k+2$ mensonges avant lui. Il y en a $k+1$. Il ment
donc lui aussi, et le compte passe à $k+2$.

On recommence ainsi de suite. À chaque fois, le candidat annonce un mensonge de trop, donc
il ment, et son mensonge fait monter le compte d'exactement un, ce qui remet la même
situation pour le suivant.

**Conclusion de l'étape 1 :** si $C_k$ dit la vérité, alors $C_{k+1}, C_{k+2}, \ldots,
C_{12}$ mentent tous.

**Étape 2 : il y a au plus un candidat sincère.**

Supposons que deux candidats $C_k$ et $C_m$ disent tous les deux la vérité, avec $k < m$.
D'après l'étape 1 appliquée à $C_k$, tous les candidats qui parlent après $C_k$ mentent, et
$C_m$ en fait partie. C'est une contradiction.

Il y a donc **au plus un** candidat sincère.

**Étape 3 : on conclut.**

L'énoncé affirme qu'il y a **au moins un** candidat sincère. Avec l'étape 2, il y en a donc
**exactement un**, et les onze autres mentent.

$$\boxed{11 \text{ candidats ont menti.}}$$

**Une vérification.** Une telle situation est-elle possible ? Oui. Supposons qu'un seul
mensonge ait été prononcé dans le débat avant que $C_1$ ne parle. Alors $C_1$, qui annonce
un mensonge, dit la vérité. D'après l'étape 1, $C_2, \ldots, C_{12}$ mentent tous, ce qui
fait bien onze menteurs, et l'on vérifie que chacun annonce à chaque fois un mensonge de
trop. Tout est cohérent.

## Going further

On peut préciser davantage : le candidat sincère est forcément $C_1$.

En effet, supposons que ce soit $C_k$ avec $k \geqslant 2$. Alors $C_{k-1}$ ment, et il y a
$k$ mensonges avant $C_k$. En retirant celui de $C_{k-1}$, il y en avait $k-1$ avant que
$C_{k-1}$ ne parle. Or $C_{k-1}$ annonçait justement $k-1$ mensonges : il disait donc la
vérité, ce qui contredit le fait qu'il ment.

Donc $k = 1$ : c'est le premier des douze qui dit vrai, et il y avait exactement un mensonge
dans le débat avant qu'il ne parle.
