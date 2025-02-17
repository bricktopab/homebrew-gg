# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gg < Formula
  desc ""
  homepage "https://github.com/bricktopab/homebrew-gg"
  version "0.0.2"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bricktopab/gg/releases/download/0.0.2/gg_Darwin_x86_64.tar.gz"
      sha256 "abab878915b8ff56cf3d7063f31c5848da15a2183dcfb85b3b5daab23fb3a161"

      def install
        bin.install "gg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bricktopab/gg/releases/download/0.0.2/gg_Darwin_arm64.tar.gz"
      sha256 "6c43077e6e2a83673af9c535e03f48cedbfc4d44c3605dc4f4c47e5ad27c32dc"

      def install
        bin.install "gg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bricktopab/gg/releases/download/0.0.2/gg_Linux_x86_64.tar.gz"
        sha256 "3d59300fcb8aab4ed70710adcb0354d765bb1cb102921c431b9173cd4060571d"

        def install
          bin.install "gg"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bricktopab/gg/releases/download/0.0.2/gg_Linux_arm64.tar.gz"
        sha256 "e6f3264ff80f5ec0da028e518b558afdb8840cc8fea9fefd0ef179cd7856c8e2"

        def install
          bin.install "gg"
        end
      end
    end
  end

  def post_install
    system 'test ~/.zshrc && echo "unalias gg" >> ~/.zshrc'
  end
end
