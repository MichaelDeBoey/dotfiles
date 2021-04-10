#!/bin/sh

echo "Cloning repositories..."

DEVELOPER=$HOME/Developer
REMARKEMBEDDER=$DEVELOPER/@remark-embedder
CODESANDBOX=$DEVELOPER/CodeSandbox
KENTCDODDS=$DEVELOPER/KentCDodds

# Personal
git clone git@github.com:MichaelDeBoey/gatsby-plugin-instagram-embed.git $DEVELOPER/gatsby-plugin-instagram-embed
git clone git@github.com:MichaelDeBoey/gatsby-plugin-pinterest.git $DEVELOPER/gatsby-plugin-pinterest
git clone git@github.com:MichaelDeBoey/gatsby-remark-embedder.git $DEVELOPER/gatsby-remark-embedder
git clone git@github.com:MichaelDeBoey/michaeldeboey.be.git $DEVELOPER/michaeldeboey.be

# @remark-embedder
git clone git@github.com:remark-embedder/cache.git $REMARKEMBEDDER/cache
git clone git@github.com:remark-embedder/core.git $REMARKEMBEDDER/core
git clone git@github.com:remark-embedder/transformer-codesandbox.git $REMARKEMBEDDER/transformer-codesandbox
git clone git@github.com:remark-embedder/transformer-oembed.git $REMARKEMBEDDER/transformer-oembed

# CodeSandbox
git clone git@github.com:codesandbox/codesandbox-client.git $CODESANDBOX/codesandbox-client
git clone git@github.com:codesandbox/status-page.git $CODESANDBOX/status-page

# Kent C. Dodds
git clone git@github.com:kentcdodds/eslint-config-kentcdodds.git $KENTCDODDS/eslint-config-kentcdodds
git clone git@github.com:kentcdodds/generator-kcd-oss.git $KENTCDODDS/generator-kcd-oss
git clone git@github.com:kentcdodds/kcd-scripts.git $KENTCDODDS/kcd-scripts
