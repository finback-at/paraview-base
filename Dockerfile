FROM python:3.11.13-bookworm

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y locales vim less sudo \
    git cmake build-essential libgl1-mesa-dev libxt-dev \
    libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools \
    libqt5svg5-dev python3-dev python3-numpy libopenmpi-dev libtbb-dev \
    ninja-build qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools && \
    apt-get clean 

WORKDIR /root    
RUN git clone https://gitlab.kitware.com/paraview/paraview.git && \
    mkdir paraview_build && \
    cd paraview && \ 
    git checkout v6.0.0 && \
    git submodule update --init --recursive && \
    cd ../paraview_build && \
    cmake -GNinja -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_MPI=ON \
    -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_BUILD_TYPE=Release ../paraview && \
    ninja && \
    ninja install && \
    cd .. && \
    rm -rf paraview paraview_build
