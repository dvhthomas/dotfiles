# Python
asdf plugin-add python
asdf install python latest
asdf global python latest

# Go
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest

# Ruby
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
asdf global ruby latest

# Java
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf install java adoptopenjdk-17.0.1+12
asdf global java adoptopenjdk-17.0.1+12

echo "source $HOME/.asdf/plugins/java/set-java-home.zsh" >> $HOME/.zshrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >> $HOME/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
    java_macos_integration_enable = yes
fi
