FROM epitechcontent/epitest-docker:latest 

ENV ZSH_CUSTOM=/root/

RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list && \
    sed -i 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
    zsh curl git wget x11-apps libsfml-dev mesa-utils libglu1-mesa-dev freeglut3-dev \
    && apt-get clean \
    && apt install -y libconfig-dev \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting \
    && git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting \
    && git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

RUN rm -rf /root/.oh-my-zsh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
    chsh -s $(which zsh) root
    
RUN cd / && \
    git clone https://github.com/libsdl-org/SDL.git -b SDL2 SDL

WORKDIR "/SDL"

RUN mkdir build/

RUN ./configure

RUN make

RUN make install

WORKDIR "/usr/app"

COPY Coding_Style_Checker.sh /root/
COPY .zshrc /root/.zshrc

CMD ["/bin/sh", "-c", "exec zsh"]
