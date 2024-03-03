#!/bin/bash

pandoc resume.md \
--from=commonmark+auto_identifiers \
--template=template.html \
--metadata title="Thomas Demarcy's Résumé" \
--output=index.html