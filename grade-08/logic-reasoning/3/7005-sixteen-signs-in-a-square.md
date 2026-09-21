---
id: "7005"
title: "Seize signes dans un carré"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, tableau]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, combinatoire après-midi (François Lo Jacomo), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

On dispose d'un tableau carré de $4 \times 4 = 16$ cases. Dans la case en haut à droite on
écrit le signe $-$, et dans les quinze autres le signe $+$.

```
+  +  +  -
+  +  +  +
+  +  +  +
+  +  +  +
```

On répète autant de fois qu'on veut l'opération suivante : on choisit **une ligne**, ou **une
colonne**, ou **l'une des deux grandes diagonales**, et on change tous les signes qu'elle
contient ($+$ devient $-$ et $-$ devient $+$).

Peut-on, au bout d'un certain nombre d'opérations, n'avoir plus que des $+$ dans le tableau ?

## Hints

1. Combien de cases une ligne contient-elle ? Une colonne ? Une diagonale ?
2. Une opération change donc toujours le même nombre de signes. Compte les $+$ avant et après.
3. Si une opération transforme $k$ signes $+$ en $-$, combien de $-$ deviennent des $+$ ?

## Solution

**La réponse est non.**

**Un invariant de parité.** Comptons les signes $+$ présents dans le tableau et appelons ce
nombre $p$.

Une ligne, une colonne et une diagonale contiennent toutes exactement **$4$ cases**. Quand on
retourne l'une d'elles, supposons qu'elle contienne $k$ signes $+$ et donc $4 - k$ signes $-$.
Après l'opération, elle contient $4 - k$ signes $+$.

Le nombre total de $+$ passe donc de $p$ à
$$p - k + (4 - k) = p + 4 - 2k .$$

La variation vaut $4 - 2k$, qui est un nombre **pair**. Donc la **parité de $p$ ne change
jamais**.

**La conclusion.** Au départ, il y a $15$ signes $+$ : $p = 15$ est impair. Il restera donc
impair pour toujours.

Or, si le tableau ne contenait que des $+$, on aurait $p = 16$, qui est pair.

C'est impossible : on n'obtiendra jamais un tableau entièrement rempli de $+$.

## Going further

Le raisonnement n'utilise que le fait qu'une ligne, une colonne ou une diagonale contient un
nombre **pair** de cases. Il vaut donc tout aussi bien pour un tableau $6 \times 6$, ou
$2n \times 2n$, avec un seul $-$ au départ.

En revanche, sur un tableau $5 \times 5$, chaque ligne a $5$ cases et la variation $5 - 2k$ est
impaire : la parité de $p$ change à chaque coup, l'argument tombe, et il faut chercher autre
chose.
