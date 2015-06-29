BASE_DIR=$(pwd)

# Atom
ln -fs $BASE_DIR/atom/config.cson ~/.atom/config.cson
ln -fs $BASE_DIR/atom/keymap.cson ~/.atom/keymap.cson
ln -fs $BASE_DIR/atom/snippets.cson ~/.atom/snippets.cson
ln -Fs $BASE_DIR/atom-jminuscula ~/.atom/packages/jminuscula

# Textmate
ln -fs $BASE_DIR/tm_properties ~/.tm_properties

