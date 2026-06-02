#!/bin/bash
export DISABLE_AUTOBREW=1ç
conda-recipe-upstream-validator \
  --description "$SRC_DIR/DESCRIPTION" \
  --meta-yaml recipe/meta.yaml || exit 1
${R} CMD INSTALL --build . ${R_ARGS}
