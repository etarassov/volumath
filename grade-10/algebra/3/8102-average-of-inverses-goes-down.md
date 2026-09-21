---
id: "8102"
title: "La moyenne des inverses diminue"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [fractions, inegalite, somme, moyenne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, Coupe Animath de printemps 2018"
  reference: "stage_ete_2018.pdf, chapitre II « Coupe Animath de printemps 2018 », énoncés destinés aux élèves de collège, exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Pour un entier $n \geq 1$, on note

$$S_n = 1 + \frac{1}{2} + \frac{1}{3} + \cdots + \frac{1}{n}.$$

C'est la somme des inverses des entiers de $1$ à $n$. La moyenne de ces $n$ inverses vaut donc $\dfrac{S_n}{n}$.

1. On pose $A = \dfrac{S_2}{2}$ et $B = \dfrac{S_3}{3}$. Montrer que $A > B$.
2. On pose $A = \dfrac{S_{2017}}{2017}$ et $B = \dfrac{S_{2018}}{2018}$. Montrer que $A > B$.

## Hints

1. Pour la question 1, tu peux simplement calculer les deux nombres et les comparer.
2. Pour la question 2, calculer $S_{2017}$ est hors de question. Débarrasse-toi plutôt des dénominateurs : $A > B$ revient à une inégalité entre deux produits.
3. Quel lien très simple y a-t-il entre $S_{2018}$ et $S_{2017}$ ?
4. Après simplification, il reste à comparer $S_{2017}$ à un nombre plus petit que $1$. Or $S_{2017}$ commence par $1$.

## Solution

**1. Le cas des petits nombres.**

On a $S_2 = 1 + \dfrac{1}{2} = \dfrac{3}{2}$, donc $A = \dfrac{3}{4}$.

On a $S_3 = 1 + \dfrac{1}{2} + \dfrac{1}{3} = \dfrac{6 + 3 + 2}{6} = \dfrac{11}{6}$, donc $B = \dfrac{11}{18}$.

Mettons au même dénominateur : $A = \dfrac{27}{36}$ et $B = \dfrac{22}{36}$. On a bien $A > B$.

**2. Le cas général.**

Les nombres $2017$ et $2018$ sont strictement positifs, donc multiplier par $2017 \times 2018$ ne change pas le sens d'une inégalité. Ainsi

$$A > B \quad \Longleftrightarrow \quad \frac{S_{2017}}{2017} > \frac{S_{2018}}{2018} \quad \Longleftrightarrow \quad 2018 \, S_{2017} > 2017 \, S_{2018}.$$

Or la somme $S_{2018}$ n'est autre que $S_{2017}$ à laquelle on a ajouté un terme de plus :

$$S_{2018} = S_{2017} + \frac{1}{2018}.$$

Le membre de droite devient donc

$$2017 \, S_{2018} = 2017 \, S_{2017} + \frac{2017}{2018}.$$

L'inégalité à démontrer s'écrit alors

$$2018 \, S_{2017} > 2017 \, S_{2017} + \frac{2017}{2018},$$

c'est-à-dire, en retranchant $2017 \, S_{2017}$ des deux côtés,

$$S_{2017} > \frac{2017}{2018}.$$

Cette dernière inégalité est évidente : tous les termes de $S_{2017}$ sont strictement positifs et le premier vaut $1$, donc $S_{2017} > 1$, alors que $\dfrac{2017}{2018} < 1$.

**Conclusion : $A > B$.**

Remarque : le calcul ne s'est jamais servi de la valeur $2017$. La même démonstration montre que $\dfrac{S_n}{n} > \dfrac{S_{n+1}}{n+1}$ pour tout $n \geq 1$ : la moyenne des inverses des $n$ premiers entiers diminue à chaque fois qu'on ajoute un terme.
