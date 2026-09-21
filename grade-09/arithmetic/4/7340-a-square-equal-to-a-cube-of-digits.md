---
id: "7340"
title: "Quand n² est le cube de la somme des chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [somme-des-chiffres, carre-parfait, cube, decomposition-en-facteurs-premiers, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe B », en TPE, exercice 58 (résolu par Lucas Boczkowski) ; repris dans stage_ete_2008.pdf, première mi-temps, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Trouver tous les entiers $n$ compris entre $1$ et $999$ tels que $n^2$ soit égal au **cube de la somme des chiffres de $n$**.

Autrement dit, en notant $s(n)$ la somme des chiffres de $n$ :
$$n^2 = s(n)^3 .$$

## Hints

1. Quelle est la plus grande somme de chiffres possible pour un nombre d'au plus trois chiffres ?
2. Pose $s = s(n)$. L'égalité dit que $s^3$ est un **carré parfait**. Que cela impose-t-il à $s$ ?
3. Pour répondre, décompose $s$ en facteurs premiers et regarde les exposants des deux côtés de $n^2 = s^3$.
4. Tu obtiendras une toute petite liste de valeurs possibles pour $s$. Pour chacune, calcule $n$, puis vérifie que sa somme de chiffres vaut bien $s$.

## Solution

Notons $s = s(n)$ la somme des chiffres de $n$.

### Étape 1 : s est un carré parfait

L'égalité $n^2 = s^3$ dit que $s^3$ est le carré d'un entier.

Regardons la décomposition en facteurs premiers. Si $p$ est un nombre premier, notons $a$ son exposant dans $s$ et $b$ son exposant dans $n$. Dans $s^3$ l'exposant de $p$ vaut $3a$, et dans $n^2$ il vaut $2b$. L'égalité $n^2 = s^3$ donne donc
$$3a = 2b .$$

Ainsi $3a$ est pair, et comme $3$ est impair, **$a$ est pair**. Cela vaut pour tout nombre premier $p$ : tous les exposants de $s$ sont pairs, donc

$$s \text{ est un carré parfait.}$$

### Étape 2 : s est petit

Comme $n \leqslant 999$, le nombre $n$ a au plus trois chiffres, donc
$$s = s(n) \leqslant 9 + 9 + 9 = 27 .$$

Les carrés parfaits inférieurs ou égaux à $27$ sont
$$1, \quad 4, \quad 9, \quad 16, \quad 25 .$$

### Étape 3 : on teste les cinq candidats

Pour chaque valeur de $s$, l'égalité $n^2 = s^3$ donne une seule valeur possible de $n$ (positive) :
$$n = \sqrt{s^3} = s \sqrt{s} .$$

| $s$ | $n = s\sqrt{s}$ | somme des chiffres de $n$ | est-ce $s$ ? |
|---|---|---|---|
| $1$ | $1$ | $1$ | **oui** |
| $4$ | $8$ | $8$ | non |
| $9$ | $27$ | $9$ | **oui** |
| $16$ | $64$ | $10$ | non |
| $25$ | $125$ | $8$ | non |

### Conclusion

$$\boxed{n = 1 \quad \text{et} \quad n = 27 .}$$

Vérifions : $1^2 = 1 = 1^3$, et $27^2 = 729 = 9^3$ avec $s(27) = 2 + 7 = 9$. $\checkmark$

## Going further

1. En poursuivant au-delà de $999$, la somme des chiffres reste petite alors que $n^2$ explose. Montre qu'aucun entier à quatre chiffres ne convient.
2. Plus généralement, montre qu'il n'existe aucune solution avec $n \geqslant 1000$. *(Indication : si $n$ a $c$ chiffres, alors $n \geqslant 10^{c-1}$ et $s(n) \leqslant 9c$, donc $n^2 \geqslant 10^{2c-2}$ et $s(n)^3 \leqslant 729 c^3$.)*
3. Cherche les entiers tels que $n^3 = s(n)^2$. Combien y en a-t-il ?
4. Et les entiers égaux au carré de la somme de leurs chiffres, $n = s(n)^2$ ?
