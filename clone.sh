#!/bin/sh

echo "Cloning repositories..."

DEVELOPER=$HOME/Developer
REMARKEMBEDDER=$DEVELOPER/@remark-embedder
KENTCDODDS=$DEVELOPER/KentCDodds
REMIX=$DEVELOPER/Remix
TESTINGLIBRARY=$DEVELOPER/TestingLibrary

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

# Kent C. Dodds
git clone git@github.com:kentcdodds/eslint-config-kentcdodds.git $KENTCDODDS/eslint-config-kentcdodds
git clone git@github.com:kentcdodds/generator-kcd-oss.git $KENTCDODDS/generator-kcd-oss
git clone git@github.com:kentcdodds/kcd-scripts.git $KENTCDODDS/kcd-scripts

# Remix
git clone git@github.com:remix-run/remix.git $REMIX/react-router
git clone git@github.com:remix-run/remix.git $REMIX/remix
git clone git@github.com:remix-run/blues-stack.git $REMIX/blues-stack
git clone git@github.com:remix-run/indie-stack.git $REMIX/indie-stack
git clone git@github.com:remix-run/grunge-stack.git $REMIX/grunge-stack

# Testing Library
git clone git@github.com:testing-library/eslint-plugin-testing-library.git $TESTINGLIBRARY/eslint-plugin-testing-library
git clone git@github.com:testing-library/eslint-plugin-jest-dom.git $TESTINGLIBRARY/eslint-plugin-jest-dom
