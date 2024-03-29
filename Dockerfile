FROM flatironinstitute/triqs:3.2.0

WORKDIR /
USER root

ARG NB_USER=triqs
ARG NB_UID=1000
RUN usermod -u $NB_UID -l $NB_USER -d /home/$NB_USER -m triqs
USER $NB_USER
WORKDIR /home/$NB_USER/tutorials
CMD ["jupyter","lab","--ip","0.0.0.0"]
