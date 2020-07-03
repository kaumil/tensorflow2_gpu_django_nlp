#using the latest image of tensorflow-gpu
FROM tensorflow/tensorflow:latest-gpu


RUN pip3 install numpy
RUN pip3 install SciPy pandas sklearn
RUN pip3 install nltk textblob stanford-corenlp
RUN pip3 install gensim spacy[cuda101] polyglot
RUN pip3 install django gunicorn

#Adding libraries for saving keras model architecture to images
RUN pip3 install pydot pydotplus graphviz
RUN apt-get install graphviz
