#!/usr/bin/bash

pkgbuildFile=$(find -type f -name PKGBUILD)

# troca wxgtk3-runtime por wxwidgets-gtk3-3.0

sed -i '/depends=/s/wxgtk3-runtime/wxwidgets-gtk3-3.0/' $pkgbuildFile

# # Add ao depends ao pkgbuild
# sed -i "/\bdepends=/s/(/\('xpto\' 'xpto3\' 'xpto2\' /" $pkgbuildFile
# sed -i "/makedepends=/s/(/\('xpto\' 'xpto2\' 'xpto3\' /" $pkgbuildFile
# sed -i '/\bdepends=/!b; :a; n; a\    '\'xpto\' $pkgbuildFile

## Remove depends do pkgbuild
# sed -i "/\bdepends=/s/'xpto' //" $pkgbuildFile
# sed -i "/makedepends=/s/'xpto' //" $pkgbuildFile

# # Apagar bloco pkgver
# sed -i '/pkgver()/,/^$/d' $pkgbuildFile

# Cancelar workflow
# cancel () {
#   echo "Sem atualiza de versão"
#   echo "SAINDO...."
#   curl -s -H "Authorization: token ${{ github.token }}" \
#   -X POST "https://api.github.com/repos/${{ github.repository }}/actions/runs/${{ github.run_id }}/cancel"
#   sleep infinity
# }
# cancel
