git:
  pkg:
    - installed

npm:
  pkg:
    - installed

nodejs:
  pkg:
    - installed

supervisor:
  npm:
    - installed
    - require:
      - pkg: nodejs
      - pkg: git