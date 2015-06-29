BASE_DIR = $(pwd)

# Atom
ln -s $BASE_DIR/atom/config.cson ~/.atom/config.cson
ln -s $BASE_DIR/atom/keymap.cson ~/.atom/keymap.cson
ln -s $BASE_DIR/atom/snippets.cson ~/.atom/snippets.cson
ln -s $BASE_DIR/atom-jminuscula ~/.atom/packages/jminuscula

# Textmate
ln -s $BASE_DIR/tm_properties ~/.tm_properties
