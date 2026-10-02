---
id: "1016"
title: "Des intérêts une fois par an, ou douze fois"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 35
tags: [suite-geometrique, pourcentages, exponentielle, placement, comparaison]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Euler's number"
  reference: "Handout-4820-5022.pdf, problèmes 21 à 25"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4820-5022.pdf"
---

## Statement

Une banque propose un placement au taux annuel de $6\,\%$. Vous y déposez $1000$ €.

Elle vous laisse le choix de la façon dont les intérêts sont versés :

- **formule A** : une fois par an, $6\,\%$ du capital est ajouté au capital ;
- **formule B** : une fois par mois, $\dfrac{6}{12} = \text{0,5}\,\%$ du capital est ajouté au capital ;
- **formule C** : une fois par jour, $\dfrac{6}{365}\,\%$ du capital est ajouté au capital.

Dans chaque cas, les intérêts versés produisent à leur tour des intérêts.

1. Pour chacune des trois formules, écrire le capital au bout d'un an sous forme d'une puissance, puis le calculer à l'euro près.
2. Écrire, pour chaque formule, le capital au bout de $t$ années. Calculer le capital au bout de $10$ ans.
3. La formule C est-elle beaucoup plus avantageuse que la formule B ? Que se passerait-il si la banque versait les intérêts toutes les heures, toutes les secondes ?
4. On note $V_n$ le capital au bout d'un an quand les intérêts sont versés $n$ fois dans l'année. Vérifier numériquement que $V_n$ s'approche de $1000 \times e^{\text{0,06}}$, où $e \approx \text{2,718}$ est le nombre d'Euler.

## Hints

1. Ajouter $6\,\%$, c'est multiplier par $1 + \frac{6}{100} = \text{1,06}$. Ajouter $\text{0,5}\,\%$, c'est multiplier par combien ?
2. Douze versements mensuels dans l'année : le capital est multiplié douze fois de suite par le même nombre.
3. Le capital suit une suite géométrique. Quelle est sa raison, dans chacune des trois formules ?
4. Pour la question 4, écrire $V_n = 1000\left(1 + \frac{\text{0,06}}{n}\right)^{n}$ et faire calculer $n = 1, 12, 365, 8760, \ldots$ à la machine.

## Solution

### Question 1 : au bout d'un an

**Formule A.** Un seul versement, de $6\,\%$ : le capital est multiplié par $\text{1,06}$.
$$1000 \times \text{1,06} = 1060 \text{ €}.$$

**Formule B.** Chaque mois, le capital est multiplié par $1 + \frac{\text{0,5}}{100} = \text{1,005}$. Sur douze mois, il est multiplié douze fois de suite par ce nombre :
$$1000 \times \text{1,005}^{12} \approx 1000 \times \text{1,06168} \approx 1062 \text{ €}.$$

**Formule C.** Chaque jour, le capital est multiplié par $1 + \frac{\text{0,06}}{365}$. Sur $365$ jours :
$$1000 \times \left(1 + \frac{\text{0,06}}{365}\right)^{365} \approx \text{1061,83} \approx 1062 \text{ €}.$$

La formule A rapporte $60$ €, la formule B $\text{61,68}$ €, la formule C $\text{61,83}$ €.

### Question 2 : au bout de $t$ années

Dans chaque formule, le capital suit une **suite géométrique**, de raison égale au facteur appliqué à chaque versement.

- Formule A : $C_A(t) = 1000 \times \text{1,06}^{\,t}$, car il y a $t$ versements en $t$ ans.
- Formule B : $C_B(t) = 1000 \times \text{1,005}^{\,12t}$, car il y a $12t$ versements.
- Formule C : $C_C(t) = 1000 \times \left(1 + \frac{\text{0,06}}{365}\right)^{365t}$.

Au bout de $10$ ans :

| | capital après $10$ ans |
|---|---|
| Formule A | $1000 \times \text{1,06}^{10} \approx \text{1790,85}$ € |
| Formule B | $1000 \times \text{1,005}^{120} \approx \text{1819,40}$ € |
| Formule C | $\approx \text{1822,03}$ € |

### Question 3 : jusqu'où cela peut-il monter ?

Passer de la formule A à la formule B rapporte environ $\text{28,55}$ € sur dix ans. Passer de la formule B à la formule C n'en rapporte que $\text{2,63}$ € de plus. **Le gain s'épuise très vite.**

Et si la banque versait les intérêts toutes les heures ($n = 8760$ fois par an), ou toutes les secondes ? Le capital au bout d'un an serait

| $n$ | $1$ | $12$ | $365$ | $8\,760$ | $31\,536\,000$ |
|---|---|---|---|---|---|
| $V_n$ (€) | $\text{1060,00}$ | $\text{1061,68}$ | $\text{1061,83}$ | $\text{1061,836}$ | $\text{1061,8365}$ |

Les valeurs se tassent. Découper l'année en tranches de plus en plus fines ne fait pas monter le capital indéfiniment : il existe une limite, et on ne peut pas la dépasser.

### Question 4 : la limite

Avec $n$ versements par an, chaque versement multiplie le capital par $1 + \frac{\text{0,06}}{n}$, donc
$$V_n = 1000\left(1 + \frac{\text{0,06}}{n}\right)^{n}.$$

Le tableau ci-dessus montre que $V_n$ se stabilise autour de $\text{1061,8365}$ €. Or
$$1000 \times e^{\text{0,06}} = 1000 \times \text{1,0618365} \ldots = \text{1061,8365} \ldots$$

C'est exactement la valeur observée. On dit que les intérêts sont alors **composés en continu**, et le capital au bout de $t$ années vaut $1000\,e^{\text{0,06}\,t}$.

**Conclusion.** Plus les intérêts sont versés souvent, plus le capital grandit, mais le gain est plafonné : avec un taux annuel de $6\,\%$, le mieux que l'on puisse espérer sur un an est $1000\,e^{\text{0,06}} \approx \text{1061,84}$ €, à comparer aux $1060$ € du versement unique. La différence, un peu moins de $2$ €, tient tout entière dans la façon de compter.

**Une remarque de vocabulaire.** On dit que la formule B a un **taux annuel effectif** de $\text{6,168}\,\%$ : c'est le taux qui, versé une seule fois dans l'année, donnerait le même résultat. C'est ce taux effectif qu'il faut comparer quand deux banques annoncent des rythmes de versement différents.

## Going further

1. Combien d'années faut-il pour doubler son capital avec la formule A ? avec la formule B ? (Réponses : environ $\text{11,9}$ ans et $\text{11,6}$ ans.)
2. Une carte de crédit annonce $\text{1,5}\,\%$ d'intérêts **par mois**. Quel est le taux annuel effectif ? Est-ce bien $18\,\%$ ?
3. Montrer que le taux annuel effectif de la formule B est $\left(1 + \frac{r}{12}\right)^{12} - 1$ et qu'il est toujours supérieur à $r$ dès que $r > 0$.
4. À quel taux annuel faudrait-il placer son argent pour que le capital soit multiplié par $e$ en un an, avec des intérêts composés en continu ?
