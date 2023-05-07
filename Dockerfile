FROM jupyter/minimal-notebook
LABEL author="Arkadiusz Neuman"
USER root
RUN pip install pandas numpy matplotlib plotly fastai duckduckgo_search
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID