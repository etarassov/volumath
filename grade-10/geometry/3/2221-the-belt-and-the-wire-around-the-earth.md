---
id: "2221"
title: "La ceinture et le fil d'acier autour de la Terre"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, perimetre, proportionnalite, ordre-de-grandeur]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, A kaleidoscope of geometry problems"
  reference: "Handout-833-879.pdf, problem set 5, exercices 2 et 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-833-879.pdf"
---

## Statement

On suppose que la Terre est une boule parfaitement ronde de rayon $6400$ km.

**Partie A. La ceinture.**

On serre une ceinture autour d'une orange parfaitement ronde, le long d'un grand cercle. Puis on rallonge la ceinture de $1$ mètre et on l'écarte de l'orange de façon qu'elle se trouve à la même distance de la surface tout autour.

On recommence ensuite la même opération autour de l'équateur terrestre : on serre une ceinture, on la rallonge de $1$ mètre, et on l'écarte partout de la même distance.

1. Avant tout calcul, faire un pari : dans quel cas l'écart obtenu est-il le plus grand ?
2. Calculer les deux écarts. Une souris pourrait-elle passer sous la ceinture terrestre ?

**Partie B. Le fil d'acier.**

Un fil d'acier est tendu tout autour de l'équateur, plaqué contre le sol. On le refroidit de $1°$C : il se raccourcit alors de $\dfrac{1}{100\,000}$ de sa longueur. Il s'enfonce donc dans le sol, toujours à la même profondeur tout autour.

3. Avant tout calcul, faire un pari : de combien s'enfonce-t-il ? De quelques millimètres ? de quelques centimètres ? de quelques mètres ?
4. Calculer cette profondeur.

## Hints

1. La seule formule nécessaire est celle du périmètre d'un cercle : $P = 2\pi R$.
2. Partie A : si le périmètre augmente de $1$ mètre, de combien augmente le rayon ? Écris l'égalité et isole le nouveau rayon.
3. Le rayon de départ disparaît-il du calcul ?
4. Partie B : cette fois le périmètre est **multiplié** par un nombre, pas augmenté d'une constante. Le rayon est donc multiplié par le même nombre. Cela change tout.

## Solution

Le seul outil est la formule du périmètre d'un cercle de rayon $R$ :

$$P = 2\pi R, \qquad \text{donc} \qquad R = \frac{P}{2\pi}.$$

**Partie A. La ceinture rallongée de 1 mètre.**

Appelons $R$ le rayon de la boule (orange ou Terre) et $R'$ le rayon du cercle décrit par la ceinture rallongée. Les périmètres vérifient

$$2\pi R' = 2\pi R + 1 .$$

En divisant par $2\pi$ :

$$R' = R + \frac{1}{2\pi}, \qquad \text{donc} \qquad R' - R = \frac{1}{2\pi}.$$

**Le rayon de départ a disparu.** L'écart vaut

$$\frac{1}{2\pi} \approx \frac{1}{\text{6,28}} \approx \text{0,159}\ \text{m} \approx 16 \ \text{cm},$$

**pour l'orange comme pour la Terre.** Les deux écarts sont exactement les mêmes. Une souris passe donc sans problème sous la ceinture terrestre : il y a environ $16$ centimètres de jeu, tout autour de la planète.

C'est le résultat qui surprend le plus : on s'attend à ce qu'un mètre soit « noyé » dans les $40\,000$ kilomètres de l'équateur, alors qu'il donne le même écart que sur une orange. La raison est que l'écart de rayon ne dépend que de l'écart de périmètre, et pas du périmètre lui-même.

**Partie B. Le fil refroidi.**

Ici la situation est différente : le périmètre n'est pas diminué d'une longueur fixe, il est **multiplié** par le nombre

$$1 - \frac{1}{100\,000} = \text{0,99999}.$$

Le nouveau périmètre vaut donc $P' = P \times \text{0,99999}$, et comme le rayon est proportionnel au périmètre,

$$R' = R \times \left(1 - \frac{1}{100\,000}\right) = R - \frac{R}{100\,000}.$$

La profondeur d'enfoncement est donc

$$R - R' = \frac{R}{100\,000} = \frac{6\,400\,000 \ \text{m}}{100\,000} = 64 \ \text{m}.$$

**Conclusion.** Le fil s'enfonce de $64$ mètres, soit la hauteur d'un immeuble de vingt étages. Un refroidissement d'un seul degré suffit.

**Pourquoi les deux réponses sont-elles si différentes ?**

Dans la partie A, on **ajoute** une longueur fixe : l'effet sur le rayon est lui aussi fixe, et minuscule, quelle que soit la taille de la boule. Dans la partie B, on **multiplie** la longueur par un facteur : l'effet sur le rayon est proportionnel au rayon, donc gigantesque pour la Terre. Une même variation relative d'un cent millième porte sur $6400$ km, ce qui fait $64$ m.

## Going further

1. Le même fil d'acier est tendu autour d'une orange de rayon $4$ cm, puis refroidi de $1°$C. De combien s'enfonce-t-il ?
2. En marchant le long de l'équateur, ta tête parcourt une distance un peu plus grande que tes pieds. De combien, si tu mesures $\text{1,6}$ m ? Le résultat dépend-il du rayon de la Terre ?
3. De combien faudrait-il rallonger la ceinture terrestre pour qu'un homme de $2$ mètres passe debout dessous ?
