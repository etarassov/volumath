---
id: "4213"
title: "Les deux couloirs de la piste circulaire"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [cercle, perimetre, pi, litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Perimeter and Circumference"
  reference: "Handout-2142-1822.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2142-1822.pdf"
---

## Statement

Achille et la Tortue font la course sur une piste circulaire. Chacun doit rester dans son couloir.
Le couloir d'Achille est à $50$ m du centre de la piste, celui de la Tortue est $5$ m plus loin du
centre. Tous deux font $2$ tours complets et franchissent la même ligne d'arrivée.

**a)** Pour que la course soit équitable, quelle avance doit-on donner à la Tortue au départ ?

**b)** Même question si le couloir d'Achille est cette fois à $100$ m du centre, celui de la
Tortue étant toujours $5$ m plus loin.

**c)** Que remarque-t-on ?

## Hints

1. Le périmètre d'un cercle de rayon $R$ vaut $2\pi R$.
2. L'avance à donner, c'est exactement la différence entre les deux distances parcourues.
3. Pour la question c), refais le calcul en appelant $R$ le rayon du couloir d'Achille, sans le
   remplacer par un nombre.

## Solution

**a)** Achille parcourt $2$ tours d'un cercle de rayon $50$ m :
$$2 \times 2\pi \times 50 = 200\pi \text{ m}.$$

La Tortue parcourt $2$ tours d'un cercle de rayon $55$ m :
$$2 \times 2\pi \times 55 = 220\pi \text{ m}.$$

La Tortue parcourt donc $220\pi - 200\pi = 20\pi$ mètres de plus. Il faut lui accorder une avance
de
$$20\pi \approx \text{62,8} \text{ m}.$$

**b)** Achille : $2 \times 2\pi \times 100 = 400\pi$ m. La Tortue : $2 \times 2\pi \times 105 = 420\pi$ m.
La différence vaut encore
$$420\pi - 400\pi = 20\pi \approx \text{62,8} \text{ m}.$$

**c)** On obtient exactement la même avance. Ce n'est pas un hasard. Appelons $R$ le rayon du
couloir d'Achille ; celui de la Tortue vaut $R + 5$. La différence des distances parcourues vaut
$$2 \times 2\pi (R+5) - 2 \times 2\pi R = 4\pi (R + 5) - 4\pi R = 4\pi \times 5 = 20\pi.$$

Le rayon $R$ disparaît du calcul.

**Conclusion.** L'avance à donner est de $20\pi \approx \text{62,8}$ m dans les deux cas. Elle ne
dépend pas du tout de la taille de la piste : seuls comptent l'écart de $5$ m entre les deux
couloirs et le nombre de tours.

## Going further

Sur une piste d'athlétisme, les couloirs sont espacés d'environ $\text{1,22}$ m. Quelle avance
faut-il donner au couloir extérieur par rapport au couloir intérieur pour un seul tour de piste,
si les virages forment ensemble un cercle complet ?
(Réponse : $2\pi \times \text{1,22} \approx \text{7,7}$ m.)
