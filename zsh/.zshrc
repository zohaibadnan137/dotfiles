# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Used for Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Used for pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Used for nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Used for LLVM
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# LLVM 19 aliases
export LLVM_19_PREFIX=$(brew --prefix llvm@19) # Store the prefix in a variable
alias clang-format="$LLVM_19_PREFIX/bin/clang-format"
alias clang-tidy="$LLVM_19_PREFIX/bin/clang-tidy"
alias clang-apply-replacements="$LLVM_19_PREFIX/bin/clang-apply-replacements"
unset LLVM_19_PREFIX # Remove the variable after use

# Other aliases
alias cl="clear"
alias claude="/Users/zohaibadnan137/.claude/local/claude"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
