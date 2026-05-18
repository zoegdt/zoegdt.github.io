---
title: ''
summary: 'Academic website of Zoe G. del Toro, also searchable as Zoe G del Toro and Zoe Garcia del Toro, PhD student in Quantum Information Theory at LIP6, Sorbonne Universite.'
date: 2026-04-08
type: landing

design:
  spacing: '2rem'

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: About Me
        education: Education
        interests: Research Interests
    design:
      spacing:
        padding: [1rem, 0, 0, 0]
      background:
        gradient_mesh:
          enable: false
      name:
        size: md
      avatar:
        size: medium
        shape: circle
  - block: collection
    id: papers
    content:
      title: Recent Publications
      text: ''
      count: 5
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation
      spacing:
        padding: [0, 0, 0, 0]
---
