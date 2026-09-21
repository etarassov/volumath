---
id: "7310"
title: "Un nombre égal à la valeur de ses lettres"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 35
tags: [chiffres, alphabet, recherche, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de TPE », exercice 62 (résolu par Nicolas Klarsfeld) ; repris de stage_ete_2007.pdf, « En TPE », exercice 50"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On donne à chaque lettre de l'alphabet sa valeur de rang : $A$ vaut $1$, $B$ vaut $2$, $C$ vaut $3$, et ainsi de suite jusqu'à $Z$ qui vaut $26$.

La **valeur** d'un mot est la somme des valeurs de ses lettres. On ne compte ni les tirets, ni les espaces. Par exemple :

$$\text{DEUX} = 4 + 5 + 21 + 24 = 54 .$$

On cherche un entier qui soit égal à la valeur de son écriture en toutes lettres.

**a)** Montrer qu'aucun entier compris entre $1$ et $99$ ne convient.

**b)** Trouver un entier qui convient.

*(Pour information : les valeurs utiles sont* UN $= 35$, DEUX $= 54$, TROIS $= 81$, QUATRE $= 82$, CINQ $= 43$, SIX $= 52$, SEPT $= 60$, HUIT $= 58$, NEUF $= 46$, DIX $= 37$, ONZE $= 60$, DOUZE $= 71$, TREIZE $= 83$, QUATORZE $= 123$, QUINZE $= 92$, SEIZE $= 64$, VINGT $= 72$, TRENTE $= 82$, QUARANTE $= 97$, CINQUANTE $= 104$, SOIXANTE $= 107$, CENT $= 42$, ET $= 25$.*)

## Hints

1. Pour la question a), on n'a pas besoin de calculer la valeur exacte de chaque nombre : il suffit de la **minorer**.
2. Remarque que le plus petit mot de la liste, UN, vaut déjà $35$. Que peux-tu en conclure pour tous les nombres de $1$ à $34$ ?
3. Pour les nombres de $35$ à $99$, l'écriture commence par un mot de dizaine : TRENTE, QUARANTE, CINQUANTE, SOIXANTE, ou QUATRE-VINGT. Compare la valeur de ce seul mot avec le nombre lui-même.
4. Pour la question b), passe aux centaines. La valeur de CENT est seulement $42$, bien plus petite que $100$ : les grands nombres peuvent enfin rattraper leur valeur.
5. Cherche dans les deux cents : un nombre $200 + r$ s'écrit DEUX CENT puis $r$. Quelle équation cela donne-t-il sur la valeur de $r$ ?

## Solution

### a) Aucun entier de 1 à 99 ne convient

L'idée est simple : entre $1$ et $99$, **la valeur des lettres est toujours plus grande que le nombre lui-même**. Vérifions-le en séparant quelques tranches. Il suffit à chaque fois de minorer la valeur par celle d'un seul mot.

**Les nombres de $1$ à $34$.** Leur écriture contient au moins un mot, et le plus petit mot de la liste est UN, qui vaut $35$. La valeur est donc au moins $35$, donc strictement supérieure à $34$, donc au nombre lui-même.

**Les nombres de $35$ à $39$.** Ils s'écrivent TRENTE suivi d'autre chose. Or TRENTE vaut déjà $82$, donc la valeur dépasse $82 > 39$.

**Les nombres de $40$ à $49$.** Ils commencent par QUARANTE, qui vaut $97 > 49$.

**Les nombres de $50$ à $59$.** Ils commencent par CINQUANTE, qui vaut $104 > 59$.

**Les nombres de $60$ à $79$.** Ils commencent par SOIXANTE, qui vaut $107 > 79$. (En français, $72$ s'écrit SOIXANTE-DOUZE : le mot SOIXANTE est bien là.)

**Les nombres de $80$ à $99$.** Ils commencent par QUATRE-VINGT, dont la valeur est $82 + 72 = 154 > 99$.

Dans tous les cas, la valeur dépasse le nombre. **Aucun entier de $1$ à $99$ ne convient.**

### b) Un entier qui convient : 222

Passons aux centaines. Le mot CENT ne vaut que $42$ : en montant d'une centaine, le nombre gagne $100$ alors que son écriture ne gagne que $42$ (ou un peu plus). L'écart va donc se combler.

**Cherchons dans les deux cents.** Un tel nombre s'écrit $200 + r$ avec $0 \leqslant r \leqslant 99$, et son écriture est DEUX CENT suivie de celle de $r$. Or
$$\text{DEUX} + \text{CENT} = 54 + 42 = 96 .$$

La condition « le nombre est égal à la valeur de ses lettres » s'écrit donc
$$96 + \text{valeur}(r) = 200 + r , \qquad \text{c'est-à-dire} \qquad \text{valeur}(r) = 104 + r .$$

Il nous faut donc un petit nombre $r$ dont la valeur dépasse $r$ d'exactement $104$. Essayons $r = 22$, qui s'écrit VINGT-DEUX :
$$\text{VINGT} + \text{DEUX} = 72 + 54 = 126 = 104 + 22 . \quad \checkmark$$

Donc $n = 222$ convient. Vérifions directement : $222$ s'écrit DEUX CENT VINGT-DEUX, et

$$54 + 42 + 72 + 54 = 222 . $$

**Conclusion.** Le nombre $222$ est égal à la valeur des lettres de son écriture.

**Et c'est le plus petit.** On a vu qu'aucun nombre de $1$ à $99$ ne convient. Pour un nombre de $100$ à $199$, écrit CENT suivi de $r$, la condition devient $42 + \text{valeur}(r) = 100 + r$, c'est-à-dire $\text{valeur}(r) = 58 + r$ ; en parcourant les $100$ valeurs possibles de $r$ on constate qu'aucune ne marche (on frôle avec $r = 40$, qui donne $97 = 57 + 40$). Enfin, entre $200$ et $221$, la même condition $\text{valeur}(r) = 104 + r$ n'est jamais vérifiée. Donc $222$ est bien le plus petit.

## Going further

1. Il existe deux autres solutions inférieures à $1000$. Cherche-les dans les deux cents, en résolvant $\text{valeur}(r) = 104 + r$. *(Réponses : $232$ et $258$.)*
2. À partir de $400$, il n'y a plus aucune solution. Écris la condition pour un nombre $400 + r$ et compare le nombre demandé à $183$, qui est le plus grand écart possible entre la valeur d'un nombre $r$ inférieur à $100$ et $r$ lui-même. *(Cet écart record est atteint par $94$.)*
3. Et en anglais, où ONE, TWO, THREE… ont d'autres valeurs : existe-t-il un nombre égal à la valeur de ses lettres ?
