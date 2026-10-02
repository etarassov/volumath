---
id: "11256"
title: "Au plus deux tiers de participants spéciaux"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [amis, groupes, majoration, proportion]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices communs, exercice 4 ; corrigé 2019-02_envoi-4-corr-def.pdf (énoncé reformulé : l'original appelle « amis indirects » deux participants différents joints par une chaîne d'amis de longueur n ⩾ 2, ce qui revient à « reliés » ici puisqu'une chaîne peut faire des allers-retours ; le corrigé recopie l'énoncé avec n ⩽ 2 au lieu de n ⩾ 2, et sa première étape est confuse ; la preuve ici reprend son idée finale, compter groupe par groupe)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Des participants arrivent à un stage. Certains d'entre eux sont déjà amis. L'amitié est
réciproque : si $A$ est ami avec $B$, alors $B$ est ami avec $A$. Pendant le stage, de nouvelles
amitiés se créent, et les anciennes restent. À la fin du stage, chaque participant a au moins un
ami.

On dit que deux participants différents $A$ et $B$ sont **reliés** s'il existe une chaîne de
participants $A = C_0, C_1, \ldots, C_n = B$, avec $n \geqslant 1$, dans laquelle deux participants
qui se suivent sont amis.

Un participant est **spécial** si le nombre de participants auxquels il est relié a exactement
doublé entre le début et la fin du stage.

Montrer qu'au plus les deux tiers des participants sont spéciaux.

## Hints

1. À un moment donné, range les participants en **groupes** : deux participants sont dans le même
   groupe quand ils sont reliés. Si le groupe d'un participant compte $s$ personnes, à combien de
   participants est-il relié ?
2. Pendant le stage, que deviennent les groupes du début ?
3. Un participant spécial était dans un groupe de $a$ personnes au début. Combien de personnes
   compte son groupe à la fin ?
4. Dans un groupe de la fin, combien de groupes du début peuvent contenir des participants
   spéciaux ?

## Solution

### Les groupes

Fixons un moment, le début ou la fin du stage. Le **groupe** d'un participant $A$ est formé de $A$ et
de tous les participants reliés à $A$.

Si $B$ et $C$ sont deux participants différents du groupe de $A$, alors $B$ et $C$ sont reliés : on
met bout à bout une chaîne qui va de $B$ à $A$ et une chaîne qui va de $A$ à $C$. Ainsi, deux
participants d'un même groupe sont toujours reliés, et deux groupes différents n'ont personne en
commun. Chaque participant est donc dans un seul groupe, et :

> si le groupe d'un participant compte $s$ personnes, ce participant est relié à exactement $s - 1$
> participants.

Un participant qui n'a aucun ami forme un groupe à lui seul, et il n'est relié à personne.

Pendant le stage, les anciennes amitiés restent, donc deux participants reliés au début le sont
encore à la fin. Chaque groupe du début est donc contenu tout entier dans un groupe de la fin : les
groupes de la fin s'obtiennent en réunissant des groupes du début.

### Un participant spécial

Soit $A$ un participant spécial. Notons $a$ le nombre de personnes de son groupe au début, et $b$ le
nombre de personnes de son groupe à la fin. Comme le nombre de participants auxquels il est relié a
doublé :
$$b - 1 = 2(a - 1) , \qquad \text{donc} \qquad b = 2a - 1 \qquad \text{et} \qquad a = \frac{b + 1}{2} .$$
À la fin, $A$ a au moins un ami, donc $b \geqslant 2$. Comme $b = 2a - 1$ est impair, on a même
$b \geqslant 3$.

Retenons que le groupe de départ de $A$ compte $\frac{b + 1}{2}$ personnes, c'est-à-dire **plus de
la moitié** de son groupe d'arrivée.

### Dans chaque groupe de la fin

Prenons un groupe $G$ de la fin, qui compte $b$ personnes, et supposons qu'il contienne au moins un
participant spécial. D'après ce qui précède, $b \geqslant 3$, et chaque participant spécial de $G$
vient d'un groupe du début de $\frac{b + 1}{2}$ personnes, contenu dans $G$.

Deux groupes différents du début n'ont personne en commun. S'il y avait deux tels groupes dans $G$,
ils compteraient ensemble $b + 1$ personnes, plus que $G$ tout entier : c'est impossible. Tous les
participants spéciaux de $G$ viennent donc d'un même groupe du début, et ils sont au plus
$\frac{b + 1}{2}$. Or, comme $b \geqslant 3$,
$$\frac{b + 1}{2} \leqslant \frac{2}{3}\,b \quad \text{car} \quad 3b + 3 \leqslant 4b .$$
Dans le groupe $G$, au plus les deux tiers des participants sont spéciaux. C'est vrai aussi pour un
groupe de la fin qui ne contient aucun participant spécial.

### Conclusion

On additionne sur tous les groupes de la fin. Dans chacun, le nombre de participants spéciaux est au
plus les deux tiers de son nombre de personnes. Comme chaque participant est dans un seul groupe, le
nombre total de participants spéciaux est au plus les deux tiers du nombre total de participants.

**Conclusion : au plus les deux tiers des participants sont spéciaux.**

## Going further

- Montre que les deux tiers peuvent être atteints. (Essaie avec trois participants.)
- Et si un participant est spécial quand le nombre de participants auxquels il est relié a
  **triplé** ? Montre qu'alors tous les participants peuvent être spéciaux.
