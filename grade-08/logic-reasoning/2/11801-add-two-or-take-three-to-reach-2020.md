---
id: "11801"
title: "Ajouter 2 ou enlever 3 pour atteindre 2020"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [jeu, strategie-gagnante, operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 1 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Martin et Théo jouent à un jeu. Martin écrit un nombre entier au tableau (positif, négatif ou nul, comme il veut).

Ensuite, Théo a le droit, autant de fois qu'il le souhaite, de faire l'une des deux opérations suivantes :

- effacer le nombre écrit et le remplacer par ce nombre augmenté de $2$ ;
- effacer le nombre écrit et le remplacer par ce nombre diminué de $3$.

Théo gagne s'il arrive à faire apparaître le nombre $2020$ au tableau après un nombre fini d'opérations. Sinon, c'est Martin qui gagne.

Lequel des deux joueurs peut être sûr de gagner, quoi que fasse l'autre ?

## Hints

1. Essaie avec quelques nombres de départ proches de $2020$ : $2018$, $2019$, $2021$, $2022$. Théo s'en sort-il ?
2. En enchaînant plusieurs opérations, Théo peut-il ajouter $1$ en tout au nombre écrit ? Et enlever $1$ en tout ?
3. Cherche combien de fois il faut ajouter $2$ et combien de fois il faut enlever $3$ pour que le total fasse $+1$.

## Solution

**C'est Théo qui gagne, quel que soit le nombre écrit par Martin.**

**Ajouter 1.** Supposons qu'un nombre $k$ soit écrit au tableau. Théo ajoute $2$, puis encore $2$, puis enlève $3$ :

$$k \;\longrightarrow\; k + 2 \;\longrightarrow\; k + 4 \;\longrightarrow\; k + 1 .$$

En trois opérations, il a remplacé $k$ par $k + 1$.

**Enlever 1.** Toujours à partir de $k$, Théo ajoute $2$ puis enlève $3$ :

$$k \;\longrightarrow\; k + 2 \;\longrightarrow\; k - 1 .$$

En deux opérations, il a remplacé $k$ par $k - 1$.

**La stratégie de Théo.** Appelons $k_0$ le nombre écrit par Martin.

- Si $k_0 = 2020$, Théo a déjà gagné.
- Si $k_0 < 2020$, Théo répète $2020 - k_0$ fois la manœuvre « ajouter 1 ». Le nombre augmente de $1$ à chaque fois et finit par valoir $2020$.
- Si $k_0 > 2020$, Théo répète $k_0 - 2020$ fois la manœuvre « enlever 1 », et le nombre finit aussi par valoir $2020$.

Dans tous les cas, Théo atteint $2020$ en un nombre fini d'opérations.

**Conclusion.** Théo a une stratégie gagnante : quel que soit le nombre de départ, il peut toujours obtenir $2020$.

## Going further

Que se passe-t-il si Théo peut seulement ajouter $2$ ou enlever $4$ ? Pour quels nombres de départ peut-il encore gagner ? Et avec « ajouter $6$ ou enlever $9$ » ?
